
/* A)
use cine;
explain select id, movie_id  from participantesPeli where movie_id = 19000;
-- id = 1 devuelve la cantidad de select que hace. Cambiaría con subconsultas */
/*
	-- B) FALTA REENVIAR LA RELACIÓN
    use cine;
    explain select n.id, n.name, ch.name as 'character name' pi.info as 'birthdate'
		from nombrePersonasPeli n join participantesPeli ci on 
*/
/* Ejercicio 2
	
    use cine;
    explain select * from participantesPeli where movie_id =(select id
		from titulo where title like 'Calla');
	-- Develve info sobre la primaria con id 1 como primary, y la segunda como subquery con id 2. El type ALL indica que recorre toda la tabla. 
    -- En el el select type indica que se usa la PK?
    */
    /* Ejercicio 3 
    use cine;
    explain select role, (select count(*) from participantesPeli pi where pi.role_id = tp.id and nr_order = 1) as 'numero' from tipoPapel tp where id in (1,2);
    -- in especifica rango
    -- Devuelve primary y dependent subquery (no se usn en subconsulta).*/

/* Ejercicio 4
use cine;
explain select title from titulo where id = 193025 UNION select title from tituloAlias where movie_id = 1930235;
-- El segundo id es UNION, luego da id null- es una tabla temporal.*/