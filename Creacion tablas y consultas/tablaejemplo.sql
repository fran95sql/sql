create table Jefe (
	e# varchar (8) not null constraint PK_Jefe primary key,
	antigüedad tinyint
);

create table Empleado (
	e# varchar (8) not null constraint PK_Empleado primary key,
	nombre varchar (40),
	edad tinyint,
	salario numeric (6,2),
	constraint FK_Empleado foreign key (e#)  references Jefe (e#) on update cascade on delete cascade
);

create table Proyecto (
);
create table Trabaja (
	e# varchar(8) not null,
	p# varchar(8) not null,
	nhoras tinyint
);
