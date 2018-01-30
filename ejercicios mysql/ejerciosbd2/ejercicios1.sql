-- exportamos desde bash
mysqldump -u root -p alumnado /*Es la bd*/ > /home/rafa/Documentos/bdalumnado.sql
/*mysqldump -u root -p --databases alummnado test > /home/rafa/Documentos/bdalumnado.sql*/
-- importamos desde bash
mysql -u root -p alumnado < alumnado /*Falla si existe antes, el script debe tener drop datatabase..*/
/*mysqldump --databases --add-drop-database -u root -p  alumnado > /home/rafa/alumnado.sql*/
