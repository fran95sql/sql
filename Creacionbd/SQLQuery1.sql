CREATE DATABASE bd1
	on PRIMARY
		/*Definimos el fichero de  */
		(
			NAME = 'bd1',
			FILENAME = 'c:\bD1\bdq.mdf',
			SIZE = 10MB,
			MAXSIZE=15MB,
			FILEGROWTH=15%
			)
		LOG ON
			/*Definimos el fichero de transacciones*/
			(
				NAME = 'bd1_log',
				FILENAME = 'c:\bD1\bdq.ldf',
				SIZE = 4 MB,
				MAXSIZE = 9MB,
				FILEGROWTH = 1 MB
			)
		
	;