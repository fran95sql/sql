use iesalandalus;
delimiter //
create function primo (n integer)
	returns integer
	begin
		declare num integer;
        declare i integer;
        declare prim integer;
        if num < 2 
			then 
				return 0;
        elseif (n = 2)
			then
				return 1;
		else
			SET  prim=1;
            bucle:while (i <= sqrt(n)) DO
            if (n % i= 0)
				then
					set prim = 0;
				leave bucle;
			end if;
        set i = i+1;
        end while bucle;
        return (prim);
        end if;
	end;//