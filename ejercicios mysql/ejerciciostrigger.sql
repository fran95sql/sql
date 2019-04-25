/*use ebanca;
delimiter //
create trigger comprobar_saldo before update on movimientos
	for each row
		begin
			if new.cantidad <0 then set new.cantidad = 0;
            elseif new.cantidad > 100 then set new.cantidad=100;
            end if;
        end; //
        */
use tests;
-- create table t05 (s1 int not null, nombre varchar(40), primary key (s1))engine = innodb;
/*delimiter //
create trigger actualiza_t5 before update on t05
	for each row
	begin
		set @nomantes = old.nombre;
        set @nomahora = new.nombre;
	end // 
  Comprobamos:  */
-- insert into t05 values(1,'ana');
-- insert into t05 values(2, 'pepe');
update t05 set nombre= 'AnaMaria';
select @nomantes;
select @nomahora;

	