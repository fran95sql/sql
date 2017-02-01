CREATE FUNCTIOM  mediae (@c float)
RETURNS float
BEGIN
  SET
  @c = (select sum(edad) from Empleado)/(select count(edad) from Empleado):
 return @c;
 END
 
 CREATE FUNCTION lista (@nombre varchar)
  returns table as
    return(select nombre from Empleado);
