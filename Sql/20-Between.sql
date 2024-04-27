--BETWEEN
 
 --El operador BETWEEN selecciona valores dentro de un rango determinado. Los valores pueden ser números, texto o fechas.
 --El operador BETWEEN es inclusivo: se incluyen los valores inicial y final. 

 --SINTAXIS:

  SELECT column_name(s)
  FROM table_name
  WHERE column_name BETWEEN value1 AND value2;

 --EJEMPLO:

  --CON NUMEROS:

   --Selecciona todos los productos con un precio entre 10 y 20:

    SELECT * FROM Products
    WHERE Price BETWEEN 10 AND 20;

  --CON TEXTO:

   --La siguiente sentencia SQL selecciona alfabéticamente todos los productos con un ProductName entre Carnarvon Tigers y Mozzarella di Giovanni:

    SELECT * FROM Products
    WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
    ORDER BY ProductName;

  --CON FECHAS:

   --La siguiente instrucción SQL selecciona todos los pedidos con una fecha de pedido entre '01-julio-1996' y '31-julio-1996':

    SELECT * FROM Orders
    WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

--NOT BETWEEN

  --EJEMPLO:

   --CON NUMEROS:

   --Para mostrar los productos fuera del rango del ejemplo anterior, utilice NOT BETWEEN:

    SELECT * FROM Products
    WHERE Price NOT BETWEEN 10 AND 20;
  
  --EJEMPLO:

   --CON TEXTO:

    --La siguiente sentencia SQL selecciona todos los productos con un ProductName que no esté entre Carnarvon Tigers y Mozzarella di Giovanni:

    SELECT * FROM Products
    WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
    ORDER BY ProductName;
