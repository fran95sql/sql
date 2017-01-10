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


/*Los tipos de datos decimal y int son incompatibles con el operador '^'.*/
/*Raíz cuadrada de sus cuiadrados*/
DECLARE
	@num smallint;
	SET @num = 4;
DECLARE 
	@num2 smallint;
	SET @num2 = 5;
DECLARE
	@num3 smallint;
	SET @num3 = 8;
DECLARE 
	@raiz decimal (4,3);
BEGIN
	SET @raiz = sqrt(@num^2+@num^2+@num3^2);
	print @raiz;
END

/*Condicion si la suma es menor de 50 hacer raiz cuadrada de los cuadrados, si */
DECLARE
	@num smallint;
	SET @num = 30;
DECLARE 
	@num2 smallint;
	SET @num2 = 10;
DECLARE
	@num3 smallint;
	SET @num3 = 10;
DECLARE 
	@raiz decimal (4,3);
DECLARE
	@suma int;
DECLARE
	@cuadrado int;
DECLARE
	@div float;
BEGIN
	SET @suma = @num+@num2+@num3;
	IF (@suma < 50)
		BEGIN
			SET @raiz = sqrt(@num^2+@num2^2+@num3^2);
			print @raiz;
		END
	IF (@suma = 50)
		BEGIN
			SET @cuadrado = @num^2+@num2^2+@num3^2;
			print @cuadrado;
		END
	IF (@suma > 50)
		BEGIN
			SET @div = @num/(@num2*@num3);
			print @div;
		END
END
