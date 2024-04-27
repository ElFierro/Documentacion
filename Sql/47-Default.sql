--DEFAULT 

 --La restricción DEFAULT se utiliza para establecer un valor predeterminado para una columna.

  --EJEMPLO:

   --El siguiente SQL establece un valor DEFAULT para la columna "Ciudad" cuando se crea la tabla "Personas":

  CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
  );

   SQL DEFAULT en ALTER TABLA

  --Para crear una DEFAULTrestricción en la columna "Ciudad" cuando la tabla ya está creada, use el siguiente SQL:

   --MySQL:

    ALTER TABLE Persons
    ALTER City SET DEFAULT 'Sandnes';

   --Servidor SQL:

    ALTER TABLE Persons
    ADD CONSTRAINT df_City
    DEFAULT 'Sandnes' FOR City;

   --ELIMINAR una restricción PREDETERMINADA

  --Para eliminar una DEFAULTrestricción, utilice el siguiente SQL:

  --MySQL:

   ALTER TABLE Persons
   ALTER City DROP DEFAULT;
  
  --Servidor SQL/Oracle/MS Access:

   ALTER TABLE Persons
   ALTER COLUMN City DROP DEFAULT;
  
  --Servidor SQL:

   ALTER TABLE Persons
   ALTER COLUMN City DROP DEFAULT;