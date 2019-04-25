use iesalandalus;
delimiter //
 create trigger datosmat after update on alumno
	for each row
		begin
			set @nuevamat = new.numpatri;
            set @nuevanota = new.notacceso;
            insert into log_operaciones values (@nuevamat, concat(@nuevamat,OLD.numpatri,OLD.notacceso,new.notacceso));
        end;//

