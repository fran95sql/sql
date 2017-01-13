/* crear tabla con dni varvinary(256) porque el argoritmo es AES_256*/
/*create master key encryption by password ='MiClaveSegura';*/

/*create certificate MiPrimerCertificado with subject='DBAMemories Certificate',
EXPIRY_DATE='2017/01/01'*/

/*create symmetric key MiLlaveSimetrica
with
key_source='MyKeySource',
identity_value='MyIdentityValue',
algorithm=AES_256
encryption by certificate MiPrimerCertificado;*/

/*open symmetric key MiLlaveSimetrica DECRYPTION BY CERTIFICATE MiPrimerCertificado;*/

/*insert into alumno5 (dni,nombre,edad) 
values (ENCRYPTBYKEY(KEY_GUID('MiLlaveSimetrica'),'123456789'),'Juan',28);*/

/*close symmetric key MiLlaveSimetrica;*/

/*Desencriptamos */


/*OPEN SYMMETRIC KEY MiLlaveSimetrica DECRYPTION BY CERTIFICATE MiPrimerCertificado*/

/*select nombre,edad,CONVERT(VARCHAR(9),DECRYPTBYKEY(dni))as dni
from alumno5;*/

/*close symmetric key MiLlaveSimetrica;*/

