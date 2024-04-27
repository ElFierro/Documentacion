--NOT NULL 

 --La restricción NOT NULL obliga a una columna a NO aceptar valores NULL.

 --EJEMPLO:

 --El siguiente SQL garantiza que las columnas "ID", "Apellido" y "Nombre" NO aceptarán valores NULL cuando se cree la tabla "Personas":

  CREATE TABLE Persons (
  ID int NOT NULL,
  LastName varchar(255) NOT NULL,
  FirstName varchar(255) NOT NULL,
  Age int
  );

 --NOT NULL EN UN ALTER table:

  --Para crear una restricción NOT NULL en la columna "Edad" cuando la tabla "Personas" ya está creada, use el siguiente SQL:

 --Servidor SQL/Acceso MS:

  ALTER TABLE Persons
  ALTER COLUMN Age int NOT NULL;

 --Mi SQL/Oracle (versión anterior 10G):

  ALTER TABLE Persons
  MODIFY COLUMN Age int NOT NULL;
 
 --Oracle 10G y posteriores:

  ALTER TABLE Persons
  MODIFY Age int NOT NULL;