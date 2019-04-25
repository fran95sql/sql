use mysql;
create database iesalandalus;
use iesalandalus;
create table alumno (numpatri int not null primary key auto_increment, 
	nombre varchar (20),
    apellido varchar (20),
    fecnam date,
    sex varchar(1),
    notacceso numeric (4,2),
    direccion varchar (40),
    poblac varchar (20),
    cp smallint,
    ciudad varchar (15)
);