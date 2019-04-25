use iesalandalus2;
DELIMITER //
create procedure obmedia1 (IN medianota float)
    begin
        declare notamedtotal float;
        declare listaalumnos varchar (250);
        declare control int default false;
        declare cursornombreal cursor for select Nombre from alumno where nota > medianota;
        declare continue handler for not found set control = true;
        set notamedtotal = (select avg(nota) from alumno);
        if (medianota > notamedtotal) then
                    CREATE TEMPORARY TABLE alumno_tmp ( nombre VARCHAR(50) );
                    open cursornombreal;
                    bucle:loop
                        fetch cursornombreal into listaalumnos;
                        insert into alumno_tmp values(listaalumnos);
                        if control then
                            leave bucle;
                        end if;
                    end loop;
                    select * from alumno_tmp;
                    close cursornombreal;
         end if;
    end//