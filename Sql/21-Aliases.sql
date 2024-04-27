--AS
 --Los alias SQL se utilizan para dar un nombre temporal a una tabla o columna de una tabla.
 --Los alias se utilizan a menudo para hacer que los nombres de las columnas sean más legibles.

 --SINTAXIS:

  --Cuando se utiliza alias en la columna:

   SELECT column_name AS alias_name
   FROM table_name;

  --Cuando se utiliza alias en la tabla:

   SELECT column_name(s)
   FROM table_name AS alias_name;

 --EJEMPLO:

  --ALIAS PARA COLUMNAS:

  --La siguiente instrucción SQL crea dos alias, uno para la columna CustomerID y otro para la columna CustomerName:

  SELECT CustomerID AS ID, CustomerName AS Customer
  FROM Customers;

  --ALIAS CON ESPACIOS:

    --Si desea que su alias contenga uno o más espacios, como "My Great Products", encierre su alias entre corchetes o comillas dobles.
    
     --Uso de [corchetes] para alias con caracteres de espacio:

    SELECT ProductName AS [My Great Products]
    FROM Products;

    --Uso de "comillas dobles" para alias con caracteres de espacio:

    SELECT ProductName AS "My Great Products"
    FROM Products;

  --CONCATENAR ALIAS:

    --La siguiente sentencia SQL crea un alias denominado "Dirección" que combina cuatro columnas (Dirección, Código postal, Ciudad y País):

    SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
    FROM Customers;

    --MySQL

      SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
      FROM Customers;

    --ORACLE

      SELECT CustomerName, (Address || ', ' || PostalCode || ' ' || City || ', ' || Country) AS Address
      FROM Customers;

  --ALIAS PARA TABLAS:
  
    --Se aplican las mismas reglas cuando desea utilizar un alias para una tabla.

    --Usamos las tablas "Clientes" y "Pedidos", y les damos los alias de tabla "c" y "o" respectivamente (aquí usamos alias para acortar el SQL):
  
     SELECT o.OrderID, o.OrderDate, c.CustomerName
     FROM Customers AS c, Orders AS o
     WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;