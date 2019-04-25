DECLARE
	@edadmedia real;
	select @edadmedia = avg(edad)
		from alumno;
PRINT 'La edad es:' + str(@edadmedia)
