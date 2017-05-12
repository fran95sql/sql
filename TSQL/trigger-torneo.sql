create trigger minimos
on participa
for insert
as
BEGIN
	DECLARE @diferencia int;
	DECLARE @idtorneo int;

	SET @idtorneo = (select idtorneo from inserted);
	SET @diferencia = 8-(select count(nickjugador) from participa where (idtorneo = @idtorneo));

if ((select count(nickjugador) from inserted where(idtorneo = @idtorneo)) > 20)
		BEGIN
			print 'hay demasiados jugadores'
			ROLLBACK TRANSACTION
		END
if ((select count(nickjugador) from participa where(idtorneo = @idtorneo)) < 8)
	BEGIN
		print  @diferencia;
		print'jugadores restantes para iniciar el torneo';
	END
END
