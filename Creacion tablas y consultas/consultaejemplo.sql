/*Obtenemos el nombre de todos los jefes ordenados alfabeticamente*/
select nombre
from Empleado inner join Jefe on (Empleado.e# = Jefe.e#)
order by nombre ASC
;
/*Obtenemos el nombre de todos los empleados que tienen un sueldo superior al salario mínimo*/
select nombre
from Empleado
where (salario >  707.60);
