--PROCEDIMIENTOS ALMACENADOS:

  CREATE PROCEDURE

 --Un procedimiento almacenado es un código SQL preparado que puede guardar, de modo que el código pueda reutilizarse una y otra vez.
 --También puede pasar parámetros a un procedimiento almacenado, de modo que el procedimiento almacenado pueda actuar
 -- en función de los valores de parámetro que se pasan.

 --SINTAXIS:

  CREATE PROCEDURE procedure_name
  AS
  sql_statement
  GO;

 --EJECUTAR: 

  EXEC procedure_name;

 --EJEMPLO:

  CREATE PROCEDURE SelectAllCustomers
  AS
  SELECT * FROM Customers
  GO;

  --EJECUTAR:
   
   EXEC SelectAllCustomers;

  --CON PARAMETRO:

   CREATE PROCEDURE SelectAllCustomers @City nvarchar(30)
   AS
   SELECT * FROM Customers WHERE City = @City
   GO;

  --EJECUTAR:

  EXEC SelectAllCustomers @City = 'London';

  --CON MULTIPLES PARAMETROS:

   CREATE PROCEDURE SelectAllCustomers @City nvarchar(30), @PostalCode nvarchar(10)
   AS
   SELECT * FROM Customers WHERE City = @City AND PostalCode = @PostalCode
   GO;

  --EJECUTAR:

   EXEC SelectAllCustomers @City = 'London', @PostalCode = 'WA1 1DP';