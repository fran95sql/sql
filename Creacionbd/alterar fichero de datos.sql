ALTER DATABASE bD1
	ADD FILE (
		NAME = 'ficheroadicional',
		FILENAME = 'c:\bD1\ficheroadicional.ndf',
		SIZE = 10 MB,
		MAXSIZE = 100MB,
		FILEGROWTH = 80%
	);
