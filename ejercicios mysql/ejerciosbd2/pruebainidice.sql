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





