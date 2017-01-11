/*Ejercicio Media Aritmética*/
DECLARE
	@num decimal (4,3);
	SET @num = 4.012;
DECLARE 
	@num2 decimal (4,3);
	SET @num2 = 5.004;
DECLARE
	@num3 decimal (4,3);
	SET @num3 = 8.099;
DECLARE 
	@media decimal (4,3);
BEGIN
	SET @media = (@num+@num2+@num3)/3;
	print @media;
END

DECLARE @num smallint, @num2 smallint, @num3 smallint;

SET @num = 30;
SET @num2 = 10;
SET @num3 = 10;

DECLARE @suma int;
SET @suma = @num+@num2+@num3;

SELECT  CASE 
            WHEN @suma < 50 THEN sqrt(@num^2+@num2^2+@num3^2)
            WHEN @suma = 50 THEN @num^2+@num2^2+@num3^2
            WHEN @suma > 50 THEN CAST(@num as float)/(@num2*@num3)
        END
