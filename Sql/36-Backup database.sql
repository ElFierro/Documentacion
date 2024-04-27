--BACKUP DATABASE

 --La sentencia BACKUP DATABASE se utiliza en SQL Server para crear una copia de seguridad completa de una base de datos SQL existente.

 --SINTAXIS:

  BACKUP DATABASE databasename
  TO DISK = 'filepath';

 --EJEMPLO:

  BACKUP DATABASE testDB
  TO DISK = 'D:\backups\testDB.bak';

--SENTENCIA BACKUP CON DIFERENCIAL:

--Una copia de seguridad diferencial solo respalda las partes de la base de datos que han cambiado desde la última copia de seguridad completa de la base de datos.

 --SINTAXIS:

  BACKUP DATABASE databasename
  TO DISK = 'filepath'
  WITH DIFFERENTIAL;

 --EJEMPLO:

  BACKUP DATABASE testDB
  TO DISK = 'D:\backups\testDB.bak'
  WITH DIFFERENTIAL;

  --CONSEJO:

   --Una copia de seguridad diferencial reduce el tiempo de la copia de seguridad (ya que solo se respaldan los cambios).