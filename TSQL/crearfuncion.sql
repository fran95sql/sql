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
