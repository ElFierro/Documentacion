--EXISTS
 --El operador EXISTS se utiliza para probar la existencia de cualquier registro en una subconsulta.
 --El operador EXIST devuelve VERDADERO si la subconsulta devuelve uno o más registros.

 --SINTAXIS:
 
  SELECT column_name(s)
  FROM table_name
  WHERE EXISTS
  (SELECT column_name FROM table_name WHERE condition);

 --EJEMPLO:

  --La siguiente sentencia SQL devuelve VERDADERO y enumera los proveedores con un precio de producto igual a 22:

   SELECT SupplierName
   FROM Suppliers
   WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price = 22);