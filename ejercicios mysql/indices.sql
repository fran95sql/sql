
/*Formas de hacer un índice en MySQL*/
create index indiceapellidos on alumnos(apellidos);
alter table alumnos add index indicesapellidos (apellidos);

/*Para sólo taxto*/
create fulltext index indicenombre on alumnos(nombre, apellidos);
/*Para índice único*/
create unique index indiceapellidos on alumnos(apellidos);
alter table alumnos add unique index indicenombre (nombre);
/*Para uno compuesto*/
alter table alumnos add index  indinomapellidos (nombre, apellidos);
/*Para indizar partes de un campo*/
alter table alumnos add index indimonapellidos (nombre(10),apellidos(10));
