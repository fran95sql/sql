use iesalandalus;
delimiter //
create procedure edad (IN fechanac date, OUT cadena varchar (40))
	begin
    -- Usamos la función timestampdiff(año|mes|dia,fechaintroducida,fechaactual) para calcular
    -- la diferencia de edad
		if timestampdiff(year,fechanac, curdate()) < 18
			then
				begin
					set cadena = 'El alumno debe tener 18 años o más';
				end;
		else
			begin
				update alumno set fecnam= fechanac;
                set cadena = 'OK';
            end;
		end if;
    end;//
