-- exportamos desde bash
mysqldump -u root -p alumnado /*Es la bd*/ > /home/rafa/Documentos/bdalumnado.sql
/*mysqldump -u root -p --databases alummnado test > /home/rafa/Documentos/bdalumnado.sql*/
-- importamos desde bash
mysql -u root -p alumnado < alumnado /*Falla si existe antes, el script debe tener drop datatabase..*/
/*mysqldump --databases --add-drop-database -u root -p  alumnado > /home/rafa/alumnado.sql*/

/*Pruebas con mysql slap*/
select edades.edad from nombres,edades 
  where nombres.id = edades.id and nomnres.name ='Guillermo
    order by edades.edad;
 -- Desde bash
 mysqlslap -v/*Verbose*/ -u root -p --auto-generate-sql
 mysqlslap -u root --p --concurrency=60 --auto-generate--sql
 mysqlslap -u root --p --concurrency=60 > --iterations = 5 --auto-generate--sql
 mysqlslap -u root p --concurrency=60 > --iterations = 5 --number-of-queries = 200 --autogenerate-sql
msqlsla -v root -p --delimiter ";" --create= "create table t (i int); insert into t values (11);" --query="select * from t"
  --concurency=60 --iterations= 100
  
mysqlslap -u root -p --concurrency=5 --iteration= 100 --query=query.sql/*Consulta*/ --create=create.sqñ /*crea tablas*/

-- ej 6a 
-- explain select * from nombrePersonasPeli where id=45678 or name_pcode_cf = 'a432';
  -- Devuelve type idex_merge: Escanea la tabla con la combinación de índicesposteriormente combina los resultados.
-- 6b (uso de join)
explain select title from titulo
  join participantesPeli pi on  (titulo.id=pi.movie_id)
    where pi.id between 1 and 10;
   -- Devuelve  type range para la tabla pi, y type eq_reff (lee todas las filas con valores en el índice que coincidan:
   -- sólo con pk,unique, prefijo mas a la iizda de la clave).
   
   -- Ej c
   explain select title from title join participantesPeli pi on (titulo.id= pi.movie_id);
   -- Type: NULL no se utilizan índice para la consulta
