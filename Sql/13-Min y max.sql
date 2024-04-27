--MIN()

 --La función MIN() devuelve el valor más pequeño de la columna seleccionada.

 --SINTAXIS:

  SELECT MIN(column_name)
  FROM table_name
  WHERE condition;

 --EJEMPLOS:

  --Encuentra el precio más bajo:

   SELECT MIN(Price)
   FROM Products;

--MAX()

 --La función MAX() devuelve el valor más grande de la columna seleccionada.

 --SINTAXIS:

  SELECT MAX(column_name)
  FROM table_name
  WHERE condition; 

 --EJEMPLOS:

  --Encuentra el precio más alto:

   SELECT MAX(Price)
   FROM Products;

 --AS
  
  --Cuando usa MIN() o MAX(), la columna devuelta se llamará or de forma predeterminada. Para darle un nuevo nombre a la columna, use la palabra clave AS

  --EJEMPLO:

   SELECT MIN(Price) AS SmallestPrice
   FROM Products;