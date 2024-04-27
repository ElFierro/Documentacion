--AVG()

 --La función AVG() devuelve el valor promedio de una columna numérica.

 --SINTAXIS:

  SELECT AVG(column_name)
  FROM table_name
  WHERE condition;

 --EJEMPLO:

 --Devuelve el precio medio de los productos de la categoría 1:

   SELECT AVG(Price)
   FROM Products
   WHERE CategoryID = 1;

  --MAS ALTO QUE EL PROMEDIO

  --Devolver todos los productos con un precio superior al precio medio:

    SELECT * FROM Products
    WHERE price > (SELECT AVG(price) FROM Products);
    
  --Asigne un nombre a la columna AVG utilizando la palabra clave AS.

   SELECT AVG(Price) AS [average price]
   FROM Products;

  --AVG CON GROUP BY

   SELECT AVG(Price) AS AveragePrice, CategoryID
   FROM Products
   GROUP BY CategoryID;