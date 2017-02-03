/*Evitamos que hayan más de 3 empleados*/
CREATE TRIGGER limitaempleado
ON Empleado
FOR INSERT
AS
IF ((select count(e#) from Empleado) > 3)
	BEGIN
		ROLLBACK TRANSACTION
		print 'No se ha cumplido la condicion';
	END
ELSE
	print 'El empleado ha sido registrado';
/*Impedir que un empleado supere el sueldo medio*/
CREATE TRIGGER salario
ON Empleado
FOR UPDATE
AS
	BEGIN
		DECLARE C1 CURSOR FOR (select salario from Empleado);
		DECLARE @salmedio float, @salario float;
		SET @salmedio = (select avg(salario) from Empleado);
		OPEN C1
		FETCH C1 into @salario;
		WHILE @@FETCH_STATUS = 0
			BEGIN
				IF (@salario < @salario)
					BEGIN
					print('No cumple la restricción');
					END
			FETCH C1 into @salario;
			END
		CLOSE C1;
		DEALLOCATE C1;
	END
