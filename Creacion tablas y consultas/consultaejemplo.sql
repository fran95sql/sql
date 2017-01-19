/*Obtenemos el nombre de todos los jefes ordenados alfabeticamente*/
select nombre
from Empleado inner join Jefe on (Empleado.e# = Jefe.e#)
order by nombre ASC
;
