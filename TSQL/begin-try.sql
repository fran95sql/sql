/* Gestión de errores*/
DECLARE
	@divisor int,
	@dividendo int,
	@resulatado int
SET @divisor = 8;
SET @dividendo = 8;

BEGIN TRY
	SET @resulatado = @dividendo/@divisor;	
END TRY
/*Aquí no debe haber código intermedio*/
BEGIN CATCH
	PRINT 'ERROR. NO SE PUEDE DIVDIR ENTRE 0';
END CATCH
PRINT @resulatado;

/*PARA TRANSACCIONES*/
BEGIN TRY
  delete from producto
  where (id = @identificador)
END TRY
BEGIN CATCH
	PRINT 'ESE USUARIO NO EXISTE';
END CATCH

BEGIN CATCH
  IF @@ERROR <> 0
   BEGIN
    PRINT 'BORRADO NO POSIBLE';
   END
END CATCH

BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

/*Utilizando RAISERROR y forzando la salida*/
DECLARE
	@edad int,
	@edad2 int
SET @edad = 8;
SET @edad2 = 90;
IF (@edad2 >65)
	BEGIN
	RAISERROR('No es posible',9,1);
	set noexec on
	END
PRINT @edad2;
set noexec off
print 'hola';
