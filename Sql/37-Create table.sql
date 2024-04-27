--CREATE TABLE

 --La sentencia CREATE TABLE se utiliza para crear una nueva tabla en una base de datos.

 --SINTAXIS:

  CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
  );

  --CREANDO TABLA DE OTRA TABLA:

   CREATE TABLE new_table_name AS
    SELECT column1, column2,...
    FROM existing_table_name
    WHERE ....;

 --EJEMPLO:

  --El siguiente ejemplo crea una tabla llamada "Personas" que contiene cinco columnas: ID de persona, Apellido, Nombre, Dirección y Ciudad:

   CREATE TABLE Persons (
   PersonID int,
   LastName varchar(255),
   FirstName varchar(255),
   Address varchar(255),
   City varchar(255)
   )

  --CREANDO TABLA DE OTRA TABLA:

  --El siguiente SQL crea una nueva tabla llamada "TestTables" (que es una copia de la tabla "Clientes"): 

   CREATE TABLE TestTable AS
   SELECT customername, contactname
   FROM customers;
