-- use tests;
-- Ej Relación 1
/*DELIMITER //
create procedure suma (IN numero1 int, numero2 int, out resultado int)
	begin
        set resultado = numero1 + numero2;
	end //
DELIMITER;
call suma(1,2, @resultado);
select @resultado;*/

-- Ej 2
/*DELIMITER //
create procedure suma_enteros (out resultado int)
	begin
		declare numero1 int default 4;
        declare numero2 int;
        set numero2 = 4;
        set resultado = numero1+numero2;
	end //
DELIMITER ;
set @resultado = 0;
call suma_enteros(@resultado);
select @resultado;
*/
use tests
DELIMITER //
create procedure ifeelse (in p input)