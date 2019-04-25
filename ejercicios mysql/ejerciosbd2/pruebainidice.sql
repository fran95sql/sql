use alumnado;
 -- Para ver los índices de la tabla:
show index from comercial from alumnado;

-- Ver los registros con explain
explain select apellido, nombre from cliente where id = 1;
explain select apellido, nombre from comerciall where num_empleado =1;

-- Mejorar explain anterior añadiendo la pk
show columns from comercial;
alter table comercial modify num_empleado int not null primary key;
explain select apellido,nombre from comercial where num_empleado=2;

-- Hacen lo mismo: explain comercial;--describe comercial;--show columns from comercial;
-- Probamos a medir la eficacia que se pordría obtener con un join (left join en este caso) habiendo creado un índice
create index indicomercial on ventas (comercial); -- Añadir la pk a la tabla antes
explain select * from comercial left join ventas on ventas.comercial = comercial.cum_empleado;


/*Formas de hacer un índice en MySQL*/
create index indiceapellidos on alumnos(apellidos);
alter table alumnos add index indicesapellidos (apellidos);

/*Para sólo texto*/
create fulltext index indicenombre on alumnos(nombre, apellidos);
/*Para índice único*/
create unique index indiceapellidos on alumnos(apellidos);
alter table alumnos add unique index indicenombre (nombre);
/*Para uno compuesto*/
alter table alumnos add index  indinomapellidos (nombre, apellidos);
/*Para indizar partes de un campo*/
alter table alumnos add index indimonapellidos (nombre(10),apellidos(10));

/*Cálculo que incremente la comisión del comercial en u 5%*/
explain select * from comercial where (comision<20) +5;
-- Mejoramos la consulta:
explain select * from comercial where comision<20-5;
-- Opción b:
explain select * from comercial where (comision=5);

-- Explain prefijos a la izquierda
alter table cliente add inicial varchar(5);

update cliente set inicial = 'A' where id = 1;
update cliente set inicial = 'B' where id = 2;
update cliente set inicial = 'C' where id = 3;
update cliente set inicial = 'D' where id = 4;
update cliente set inicial = 'E' where id = 5;
update cliente set inicial = 'F' where id = 6;
update cliente set inicial = 'G' where id = 7;
update cliente set inicial = 'H' where id = 8;
-- Primera consulta:
explain select * from cliente where nombre='zoe' and inicial = 'A'; -- Prefijo a la izquierda (apellido, nombre, inicial)=>index prefijo a la izquierda + índice
-- Prefijos a la izquierda -> Respetar el orden de las consultas where.
-- aplicamos indice pero sin notación de prefijo a la izquierda

-- Optimizar secciones: 
explain select * from cliente, comercial,ventas where ventas.comercial = comercial.num_empleado and cliente.id = ventas.id; -- No óptimo
explain select * from comercial left join ventas on ventas.comercial = comercial.num_empleado;

-- Crear un índice en la tabla ventas sobre comercial
alter table ventas add index indexcomercial(comercial);
create index comercial on ventas (comercial);
explain select * left join ventas on ventas.comercial = comercial.num_empleado; -- no hemos mejorado NADA.
explain select * from comercial left join ventas on ventas.comercial = comercial.num_empleado where ventas.comercial is null;


-- Corrección de ejercicios pág 137:
-- 5.1 Di todas las formas de ver los índ
ices de la tabla cliente de ebanca;
use empresa;
show index /keys / indexesfrom cliente;
use mysql;
select * from information_schema statistics where table_name like 'clientes';

show create table clientes; -- Nos da el código de creación de la tabla clientes
-- 5.1.2
use ebanca;
optimize table clientes; -- Devuelve OK

-- 5.3 ¿Qué tablas y campos de ebanca se deben optimizar? Justificar
-- Crear índice:
use motorblog;
create fulltext index indicetext on noticias (titulo, contenido);

-- pag 158
-- Comando para eliminar los índices:
use ebanca;
show index from ebanca;
drop index cuenta on movimientos;
-- Para eliminar el índice del dni;

drop index id_movimiento on movimientos;
alter table  movimientos drop primary key;

-- Para crear un índice sobre el campo cod_cuenta de la tabla movimientos y mostrar el resultado con explain.
use ebanca;
explain select cod_cuenta from movimientos;
create index indcodcuenta on movimientos(cod_cuenta);
explain select cod_cuenta from movimientos;
