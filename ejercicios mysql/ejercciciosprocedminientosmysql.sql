-- use tests;
-- create view vista as select campo1, campo2 from tabla3 where campo1 > 5;
-- DELIMITER //
-- CREATE PROCEDURE tests.hola_a_todos()
	-- BEGIN
		-- select "Hola a todos";
	-- END//
-- show create procedure hola_a_todos;
-- call hola_a_todos;

-- DELIMITER //
-- CREATE procedure version_mysql()
	-- begin
		-- select version();
	-- end//
   -- call version_mysql();
   
-- DELIMITER //
-- create procedure fecha()
	-- language sql
    -- not deterministic
    -- comment 'OTRO EJEMPLO'
    -- select rand();
	-- //
-- call fecha();

DELIMITER //
create procedure muestra_esImpar(IN numero int)
	begin
		if(esImpar(numero) then select concat(numero, 'Es impar') as Resultado);
        else select concat(numero, 'Es par') as Resultado;
        end if;
	END;//