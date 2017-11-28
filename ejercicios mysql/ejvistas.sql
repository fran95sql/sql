use tests;
/*create table t6 (s1 int not null primary key, 
	nombre varchar(10),
    apellidos varchar(10),
    tlf int (9));*/
-- insert into t6 values (1,'Beatriz','Lara', 950101010);
-- insert into t6 values (2,'Ras212','Boi', 950101010);0
-- insert into t6 values (13,'Dat','Boi', 950101012);
-- create view vistacolesp (idmatricula, nombrematricula) as
	-- select s1, nombre from t6 where s1 =1;
    -- select * from vistacolesp;

-- Ej 3
/* create algorithm = temptable (tabla temporal) view vistanombrenota (s1, nombre, calificacion) as
select a.s1, a.nombre, m.calificacion from nota m, t6 a
where a.s1 = m.s1;
select nombre from vistanombrenota order by nombre;*/

-- Ej4 
	/*create view vista4 (s1, nombre) as select s1,nombre from t6;
    alter view vista4 (s1, nombre) as select s1, upper(nombre) from t6;
    select * from vista4;*/
-- Ej5
-- create or replace view mostrarcol as select s1, nombre from t6
	-- where s1 = 3 with local check option;
    -- update mostrarcol set nombre="Maripili";
    select * from mostrarcol;
    