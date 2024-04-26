--SELECT DISTINCT
  
 --La sentencia SELECT DISTINCT se utiliza para devolver sólo valores distintos (diferentes).

 --SINTAXIS:

  SELECT DISTINCT column1, column2, ...
  FROM table_name;

 --EJEMPLO:
  
  --Seleccione todos los diferentes países de la tabla "Clientes":

   SELECT DISTINCT Country FROM Customers;

 --PALABRA CLAVE:

  COUNT()

  --EJEMPLO:

  --Al usar la palabra clave DISTINCT en una función llamada COUNT, podemos devolver el número de países diferentes.

   SELECT COUNT(DISTINCT Country) FROM Customers;
