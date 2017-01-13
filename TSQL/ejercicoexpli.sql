DECLARE
	@dni varchar, @nombre varchar, @curso tinyint, 
	ras2 CURSOR FOR SELECT* FROM boi;
OPEN ras2 FETCH ras2 INTO @dni, @nombre, @curso; /*RESERVAMOS EL ESPACIO EN MEMORIA*/
WHILE @@FETCH_STATUS=0
  FETCH  ras2 INTO @dni,@nombre,@curso;
  print @dni;
  print @nombre;
  print @curso;
CLOSE ras2;
DEALLOCATE ras2;/*LIBERAMOS EL ESPACIO EN MEMORIA*/
