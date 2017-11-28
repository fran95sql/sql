/*DELIMITER //
create procedure proc9 ()
	BEGIN
		DECLARE cont int;
        set cont = 0;
        loop_label: loop
        insert into tabla1 values (cont);
        set cont = cont +1;
        if cont >=5
			then
				leave loop_label;
		end if;
		end loop;
	end//
    */
   -- call proc9;
   select * from tabla1;