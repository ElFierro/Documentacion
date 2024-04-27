--UNIQUE 

 --La restricción UNIQUE garantiza que todos los valores de una columna sean diferentes.

 --EJEMPLO:

 --El siguiente SQL crea una UNIQUErestricción en la columna "ID" cuando se crea la tabla "Personas":

 --Servidor SQL/Oracle/MS Access:

  CREATE TABLE Persons (
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
  );

  --MySQL:

  CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    UNIQUE (ID)
  );

  --VARIAS COLUMNAS:

   CREATE TABLE Persons (
   ID int NOT NULL,
   LastName varchar(255) NOT NULL,
   FirstName varchar(255),
   Age int,
   CONSTRAINT UC_Person UNIQUE (ID,LastName)
   );

 --UNIQUE SQL EN ALTER TABLE:

  --Para crear una restricción UNIQUE en la columna "ID" cuando la tabla ya está creada, use el siguiente SQL:

  ALTER TABLE Persons
  ADD UNIQUE (ID);

  --En varias columnas:

  ALTER TABLE Persons
  ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);

  --ELIMINAR UNIQUE

  --Para eliminar una UNIQUErestricción, utilice el siguiente SQL:

  --MySQL:

  ALTER TABLE Persons
  DROP INDEX UC_Person;
    
  --Servidor SQL/Oracle/MS Access:

  ALTER TABLE Persons
  DROP CONSTRAINT UC_Person;