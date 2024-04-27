--FOREIGN KEY 

 --La restricción FOREIGN KEY se utiliza para evitar acciones que destruirían vínculos entre tablas.
 --Una FOREIGN KEY es un campo (o colección de campos) en una tabla, que hace referencia a PRIMARY KEY otra tabla.

 --EJEMPLO:

  --El siguiente SQL crea un FOREIGN KEYen la columna "PersonID" cuando se crea la tabla "Pedidos":

   --MySQL:

  CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
  );

   --Servidor SQL/Oracle/MS Access:

  CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL,
    PersonID int FOREIGN KEY REFERENCES Persons(PersonID)
  );

  --VARIAS COLUMNAS:

   CREATE TABLE Orders (
   OrderID int NOT NULL,
   OrderNumber int NOT NULL,
   PersonID int,
   PRIMARY KEY (OrderID),
   CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
   REFERENCES Persons(PersonID)
   );

  --CLAVE EXTRANJERA SQL EN ALTER TABLE
   
   --Para crear una restricción FOREIGN KEY en la columna "PersonID" cuando la tabla "Pedidos" ya está creada, utilice el siguiente SQL:

  ALTER TABLE Orders
  ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

  --EN VARIAS COLUMNAS:

   ALTER TABLE Orders
   ADD CONSTRAINT FK_PersonOrder
   FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

  --ELIMINAR RESTRICCION EN CLAVE EXTRANJERA

   Para eliminar una FOREIGN KEYrestricción, utilice el siguiente SQL:

  --MySQL:

   ALTER TABLE Orders
   DROP FOREIGN KEY FK_PersonOrder;

  --Servidor SQL/Oracle/MS Access:

   ALTER TABLE Orders
   DROP CONSTRAINT FK_PersonOrder;