--COUNT()
  
 --La función COUNT() devuelve el número de filas que coinciden con un criterio específico.

 --SINTAXIS:

  SELECT COUNT(column_name)
  FROM table_name
  WHERE condition;

 --EJEMPLOS:

  --Encuentre el número total de productos en la Products tabla:

   SELECT COUNT(*)
   FROM Products;

  --Encuentre la cantidad de productos que Priceson superiores a 20:

   SELECT COUNT(ProductID)
   FROM Products
   WHERE Price > 20;

  --DISTINCT
 
   --Puede ignorar los duplicados utilizando la palabra clave DISTINCT en la función COUNT.

   --EJEMPLO:

    SELECT COUNT(DISTINCT Price)
    FROM Products;

  --AS

  --Asigne un nombre a la columna contada utilizando la palabra clave AS.
 
  --EJEMPLO:
  
   SELECT COUNT(*) AS [number of records]
   FROM Products;
