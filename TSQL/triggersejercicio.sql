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
