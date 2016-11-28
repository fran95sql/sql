grant create table to Contabilidad; /* Le damos permisos a todos los de ese grupo/rol*/
grant select on pepe:notas to Juan; /* El operador de ámbito ":" indica quién es el propietario del objeto
/*permisos de sistema == permisos de instrucciones*/
grant create table to contar as Usuarioqueejecutalaorden with grant option Usuarioalquelepermitendarpermiso;