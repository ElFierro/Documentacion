--SELECT
 --La sentencia SELECT se utiliza para seleccionar datos de una base de datos.

 --SINTAXIS:
  SELECT column1, column2, ...
  FROM table_name;

 --EJEMPLOS:
  SELECT CustomerName, City FROM Customers;

  --Si desea devolver todas las columnas, sin especificar cada nombre de columna, puede utilizar la sintaxis SELECT *:
   SELECT * FROM Customers;