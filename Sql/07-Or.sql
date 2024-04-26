--OR 
 --El operador OR se utiliza para filtrar registros en función de más de una condición

 --SINTAXIS:

  SELECT column1, column2, ...
  FROM table_name
  WHERE condition1 OR condition2 OR condition3 ...;

 --EJEMPLO:

  --Seleccione todos los clientes de Alemania o España:

   SELECT *
   FROM Customers
   WHERE Country = 'Germany' OR Country = 'Spain';

 --COMBINACIONES:

  --AND y OR EJEMPLO: 

  --Seleccione todos los clientes españoles que comiencen con "G" o "R":

   SELECT * FROM Customers
   WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');
