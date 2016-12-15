DECLARE
		@edad real;
		SET @edad = 25;
			IF (@edad < 30) AND (@edad >= 25)
				BEGIN
					PRINT 'JOVENES'
					PRINT 'QUE BIEN';
				END
