--CHECK  

--La restricción CHECK se utiliza para limitar el rango de valores que se puede colocar en una columna.

--EJEMPLO:

 --El siguiente SQL crea una restricción CHECK en la columna "Edad" cuando se crea la tabla "Personas"

 --MySQL:

  CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age>=18)
  );

 --Servidor SQL/Oracle/MS Access:

  CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK (Age>=18)
  );

 --VARIAS COLUMNAS:

 CREATE TABLE Persons (
 ID int NOT NULL,
 LastName varchar(255) NOT NULL,
 FirstName varchar(255),
 Age int,
 City varchar(255),
 CONSTRAINT CHK_Person CHECK (Age>=18 AND City='Sandnes')
 );

 --VERIFICACIÓN SQL EN ALTER TABLA

 --Para crear una restricción CHECK en la columna "Edad" cuando la tabla ya está creada, use el siguiente SQL:

 ALTER TABLE Persons
 ADD CHECK (Age>=18);

 --VARIAS COLUMNAS:

 ALTER TABLE Persons
 ADD CONSTRAINT CHK_PersonAge CHECK (Age>=18 AND City='Sandnes');

 --ELIMINAR RESTRICCION CHECK

 --Para eliminar una CHECKrestricción, utilice el siguiente SQL:

 --Servidor SQL/Oracle/MS Access:

 ALTER TABLE Persons
 DROP CONSTRAINT CHK_PersonAge;

 --MySQL:

 ALTER TABLE Persons
 DROP CHECK CHK_PersonAge;