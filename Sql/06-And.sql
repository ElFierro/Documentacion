--AND 
  
 --El operador AND se utiliza para filtrar registros en función de más de una condición

 --SINTAXIS:

  SELECT column1, column2, ...
  FROM table_name
  WHERE condition1 AND condition2 AND condition3 ...;

 --EJEMPLO: 

  --Selecciona todos los clientes de España que empiezan por la letra 'G':

   SELECT *
   FROM Customers
   WHERE Country = 'Spain' AND CustomerName LIKE 'G%';

 --COMBINACIONES:

  --AND y OR EJEMPLO: 

  --Seleccione todos los clientes españoles que comiencen con "G" o "R":

   SELECT * FROM Customers
   WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');