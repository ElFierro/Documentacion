--IN
  
 --El operador IN le permite especificar múltiples valores en una cláusula WHERE.
 --El operador IN es una abreviatura de múltiples condiciones OR.

 --SINTAXIS:

  SELECT column_name(s)
  FROM table_name
  WHERE column_name IN (value1, value2, ...);


 --EJEMPLO:

  --Devolver todos los clientes de "Alemania", "Francia" o "Reino Unido"

   SELECT * FROM Customers
   WHERE Country IN ('Germany', 'France', 'UK');

  --CON SUBCONSULTA:

   --Devuelve todos los clientes que tienen un pedido en la tabla Pedidos :

     SELECT * FROM Customers
     WHERE CustomerID IN (SELECT CustomerID FROM Orders);

--NOT IN

 --Al usar la palabra clave NOT delante del operador IN, devuelve todos los registros que NO son ninguno de los valores de la lista.

 --EJEMPLO:

  --Devolver a todos los clientes que NO sean de "Alemania", "Francia" o "Reino Unido":

   SELECT * FROM Customers
   WHERE Country NOT IN ('Germany', 'France', 'UK');

  --CON SUBCONSULTA:

   --Devuelve todos los clientes que NO han realizado ningún pedido en la tabla Pedidos :

     SELECT * FROM Customers
     WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);