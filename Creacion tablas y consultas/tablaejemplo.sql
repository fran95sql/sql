create table Empleado (
	e# varchar (8) not null constraint PK_Empleado primary key,
	nombre varchar (40),
	edad tinyint,
	salario numeric (6,2),
);

create table Jefe (
	e# varchar (8) not null constraint PK_Jefe primary key,
	antigüedad tinyint
	constraint FK_Jefe foreign key (e#)  references Empleado (e#) on update cascade on delete cascade
);

create table Proyecto (
p# varchar(8) not null constraint PK_PROY primary key,
nombre varchar (40) not null,
ciudad varchar (40)
);

create table Trabaja (
	e# varchar(8) not null,
	p# varchar(8) not null,
	nhoras tinyint
	constraint PK_TRABAJA primary key (e#,p#),
	constraint FK_TRAB_E foreign key (e#) references Empleado (e#) on update cascade on delete cascade
);
