DECLARE
		@edad real;
		SET @edad = 25;
			IF (@edad < 30) AND (@edad >= 15)
				PRINT 'JOVENES';
