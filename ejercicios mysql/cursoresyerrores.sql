-- use tests;
-- delimiter //
-- create procedure inserta_valores()
-- begin
		-- declare s,num int;
        -- declare nom varchar(10);
        -- declare curs cursor for select s1, nombre from t4 where nombre='ana';
        -- select count(*) from t4 where nombre ='ana' into num;
        -- open curs;
        -- repeat
			-- fetch curs into s,nom;
            -- insert into t9 values(s, nom);
            -- set num = num -1;
			-- until (num = 0)
		-- end repeat;
        -- close curs;
	-- end //
    
    -- Versión con handler
-- use tests;
-- delimiter //
-- create procedure inserta_valoresh()
	-- begin
		-- declare s,num int;
        -- declare nom varchar(10);
        -- declare fin int default 0;
        -- declare curs cursor for select s1, nombre from t4 where nombre='ana';
        -- declare continue handler for not found set fin = 1;
        -- select count(*) from t4 where nombre ='wwwow' into num;
        -- open curs;
        -- etiqueta:loop
			-- fetch curs into s,nom;
            -- if fin=1 then leave etiqueta;
            -- end if;
            -- insert into t9 values(s, nom);
            -- set num = num -1;
			-- end loop etiqueta;
       -- close curs;
	-- end //

-- Gestión de errores modifcando el error
/*use tests;
delimiter //
create procedure insera_nombre(in nuevos1 int, in nuevoombre varchar(10))
	begin
		declare clavereperida int default 0;
				declare exit handler for 2888 set claverepetida = 1;
                insert into t4 values (nuevos1, nuevoombre);
                select concat ('El nombre del alumno',nuevoombre,'ya se ha creado') as 'salida';
        if claverepetida = 1
			then
				select concat ('error al insertar',nuevonombre, ': identificador duplicado') as 'salida';
		end if;
    end//
*/
use motorblog;
delimiter //
	create procedure ejercicio1 ()
		-- read sql data
        begin
			declare autor, vautor, cont, tcont, mes int;
			declare fin bool;
			declare autor_cursor cursor for select id_autor from autores;
            -- Inicamos un contador para obtener el máximo
            declare noticiacursor cursor for select count(*) from noticias where autor_id = vautor and month(fecha_pub) = 11;
            -- si no existen noticias continuamos
            declare continue handler for not found set fin = 1;
            -- definimos el mes anterior
            set cont = 0;
            -- abrimos el cursor
            open autor_cursor;
            autor_loop: LOOP
				fetch autor_cursor into vautor values()
					if fin = 1
						then leave autor_loop;
					end if;
                    open noticia_cursor into tcont;
                    fetch noticia_cursor into tcont;
					if tcount > cont
						then 
							begin
								set autor = vautor;
                                set cont = tcont;
                            end;
					end if;
					close noticia_cursor;
                    set fin=0;
				end loop autor_loop;
                close autor_cursor;
                -- devolvemos el autor que más noticias tiene
                select concat('el autor ', (select login from autores where id_autor= vautor), 'tiene', cont, 'noticias en el mes ', 11);
			end; //