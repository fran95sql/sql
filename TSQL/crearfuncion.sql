create function suma (@a int, @b int)
returns int
begin
	DECLARE @c int
	BEGIN
	SET
	@c = @a + @b
	return @c
	END
END
/*Alternativa sin variable auxiliar*/
create function suma2
(@a int, @b int)
returns int
begin
	return @a+@b
end;
/*Para modificar una una función*/
alter function suma (@a int, @b int)
returns int
begin
	return @a+@b
end;
