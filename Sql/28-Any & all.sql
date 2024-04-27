--ANY Y ALL

 --Los operadores ANY y ALL le permiten realizar una comparación entre un valor de una sola columna y un rango de otros valores.

  --ANY
   --significa que la condición será verdadera si la operación es verdadera para cualquiera de los valores del rango.

      --SINTAXIS:

       SELECT column_name(s)
       FROM table_name
       WHERE column_name operator ANY
       (SELECT column_name
       FROM table_name
       WHERE condition);

      --EJEMPLO:

      --La siguiente instrucción SQL enumera el Nombre del producto si encuentra CUALQUIER registro en la tabla Detalles del
      -- pedido que tenga una Cantidad igual a 10 
      
       SELECT ProductName
       FROM Products
       WHERE ProductID = ANY
       (SELECT ProductID
       FROM OrderDetails
       WHERE Quantity = 10);

  --ALL

     --ALL significa que la condición será verdadera solo si la operación es verdadera para todos los valores del rango. 

     --SINTAXIS:
      SELECT column_name(s)
      FROM table_name
      WHERE column_name operator ALL
      (SELECT column_name
      FROM table_name
      WHERE condition);

    -- EJEMPLO:

      --La siguiente instrucción SQL enumera el Nombre del producto si TODOS los registros en la tabla Detalles del pedido tienen una Cantidad igual a 10.

       SELECT ProductName
       FROM Products
       WHERE ProductID = ALL
       (SELECT ProductID
       FROM OrderDetails
       WHERE Quantity = 10);
    