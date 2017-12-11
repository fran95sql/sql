use iesalandalus;
delimiter //
create procedure simpfrac(IN denom int, IN numerad int)
	begin
		declare contador int;
		set contador = 0;
		-- Creamos un bucle en el cual usamos un contador para ir simplificando las fracciones
		incremento: loop
		set contador = contador +1
if contador > 1 and (denom %contador =0) and (contador < denom) and (numerad %contador=0) and (contador < numerad)
	then
		begin
			set denom = denom /contador;
			set numerad = numerad/ contador;
		end;
else if (numerad= denom)
	then
		begin
			select 'El resultado es 1, no hace falta simplificar';
			leave incremento;
		end;
else if (denom < numerad) and (contador = denom)
	then
		leave incremento;
else if (denom > numerad) and (contador = numerad)
	then
		leave incremento;
end if;
end if;
end if;
end if;
select denom, numerad;
end loop incremento;
end;//
delimiter ;
