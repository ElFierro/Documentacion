--PRIMARY KEY 

       --La restricción PRIMARY KEY identifica de forma única cada registro de una tabla.

       --EJEMPLO:

 --El siguiente SQL crea un PRIMARY KEYen la columna "ID" cuando se crea la tabla "Personas":

 -- MySQL:

 CREATE TABLE Persons (
   ID int NOT NULL,
   LastName varchar(255) NOT NULL,
   FirstName varchar(255),
   Age int,
   PRIMARY KEY (ID)
 );

  --Servidor SQL/Oracle/MS Access:

 CREATE TABLE Persons (
   ID int NOT NULL PRIMARY KEY,
   LastName varchar(255) NOT NULL,
   FirstName varchar(255),
   Age int
 );

 --VARIAS COLUMNAS:
 
  --Para permitir la denominación de una restricción PRIMARY KEY y definir una restricción PRIMARY KEY en varias columnas

 CREATE TABLE Persons (
  ID int NOT NULL,
  LastName varchar(255) NOT NULL,
  FirstName varchar(255),
   Age int,
  CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)
 );

 --CLAVE PRIMARIA SQL EN ALTER TABLE:

  --Para crear una restricción PRIMARY KEY en la columna "ID" cuando la tabla ya está creada, use el siguiente SQL:

 ALTER TABLE Persons
 ADD PRIMARY KEY (ID);

  --En varias columnas:

 ALTER TABLE Persons
 ADD CONSTRAINT PK_Person PRIMARY KEY (ID,LastName);

 --ELIMINAR UNA RESTRICCION DE CLAVE PRIMARIA:

  --Para eliminar una PRIMARY KEYrestricción, utilice el siguiente SQL:

 --MySQL:

  ALTER TABLE Persons
  DROP PRIMARY KEY;

 --Servidor SQL/Oracle/MS Access:

  ALTER TABLE Persons
  DROP CONSTRAINT PK_Person;
