DECLARE
	@dni varchar, @nombre varchar, @curso tinyint;
DECLARE
	ras2 CURSOR FOR SELECT* FROM boi;
OPEN ras2; /*RESERVAMOS EL ESPACIO EN MEMORIA*/
WHILE @@FETCH_STATUS=0
  FETCH  ras2 INTO @dni,@nombre,@curso;
CLOSE ras2;
print @dni;
print @nombre;
print @curso;
DEALLOCATE ras2;/*LIBERAMOS EL ESPACIO EN MEMORIA*/
