--ORDER BY

 --La palabra clave ORDER BY se utiliza para ordenar el conjunto de resultados en orden ascendente o descendente.

 --SINTAXIS:

  SELECT column1, column2, ...
  FROM table_name
  ORDER BY column1, column2, ... ASC|DESC;

 --EJEMPLO:
  
  --Ordene los productos alfabéticamente por ProductName:

   SELECT * FROM Products
   ORDER BY ProductName;

 --DESC

 --La palabra clave ORDER BY ordena los registros en orden ascendente de forma predeterminada. Para ordenar los registros en 
 --orden descendente, utilice la palabra clave DESC.
  
 --EJEMPLOS:

  --Ordene los productos por ProductName en orden inverso:

   SELECT * FROM Products
   ORDER BY ProductName DESC;

  --Ordenar por varias columnas

   SELECT * FROM Customers
   ORDER BY Country, CustomerName;

 --COMBINACIONES:

  --EJEMPLO ASC Y DESC:

  --ordenar de forma ascendente por "País" y descendente por la columna "Nombre de cliente"

   SELECT * FROM Customers
   ORDER BY Country ASC, CustomerName DESC;
