/*Declaramos el procedimiento*/
CREATE PROCEDURE media4 @media4 float output
AS
BEGIN
	set @media4 = (select avg(edad) from Empleado);
END

/*Para ver los valores*/
declare @result float;
execute media4 @result output;
print @result
