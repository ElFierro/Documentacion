--UPDATE
  
 --La sentencia UPDATE se utiliza para modificar los registros existentes en una tabla.

 --SINTAXIS:

  UPDATE table_name
  SET column1 = value1, column2 = value2, ...
  WHERE condition;

 --EJEMPLOS:

  --La siguiente sentencia SQL actualiza el primer cliente (CustomerID = 1) con una nueva persona de contacto y una nueva ciudad.

   UPDATE Customers
   SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
   WHERE CustomerID = 1;

   --Tenga cuidado al actualizar los registros. Si omite la cláusula WHERE, ¡TODOS los registros se actualizarán!

  --La siguiente sentencia SQL actualizará el nombre de contacto a "Juan" para todos los registros donde el país sea "México":

   UPDATE Customers
   SET ContactName='Juan'
   WHERE Country='Mexico';