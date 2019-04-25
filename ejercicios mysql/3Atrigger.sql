use iesalandalus;
 -- create table log_operaciones (id_usuario varchar (20),
 -- operacion varchar (50));
 delimiter //
 create trigger modificarnom before update  on alumno
	for each row
		begin
			if (new.notacceso >=5) then
				update alumno set nombre ='Alumno-a Aprobado' where notacceso >=5;
			end if;
		end;//
