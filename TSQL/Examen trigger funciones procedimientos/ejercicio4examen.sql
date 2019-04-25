CREATE FUNCTION precioart (@idart int)
RETURNS TABLE
return (select nombre as nombre, sum(cantidad*precio)  as precio
from Producto inner join LineaPedido on (LineaPedido.producto = Producto.id)
where (id = @idart)
group by nombre)