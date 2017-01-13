/*  Paso 1: definimos el inicio de sesión: 
use master
create login ejemplo
with password = '1234';*/

Creación del usuario:
create user Juan for login ejemplo;
/*alter user Juan for login ejemplo
with password = '1234'; --- no funciona en SQL SERVER 2014*/
/* Se genera asigna por defecto el permiso Public, pero no nos permite conectar
luego le asignamos permisos para conectarse */
grant connect to Juan (seleccionar bd);
