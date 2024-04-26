--NULL
 
 --No es posible probar valores NULL con operadores de comparación, como =, < o <>.
   
  --IS NULL
   --El operador IS NULL se utiliza para probar valores vacíos (valores NULL).

   --SINTAXIS:

    SELECT column_names
    FROM table_name
    WHERE column_name IS NULL;

   --EJEMPLOS:

    --El siguiente SQL enumera todos los clientes con un valor NULL en el campo "Dirección":
    SELECT CustomerName, ContactName, Address
    FROM Customers
    WHERE Address IS NULL;

  --IS NOT NULL

   --El operador IS NOT NULL se utiliza para probar valores que no estén vacíos (NO valores NULOS).

   --SINTAXIS:

    SELECT column_names
    FROM table_name
    WHERE column_name IS NOT NULL;

   --EJEMPLOS:

    --El siguiente SQL enumera todos los clientes con un valor en el campo "Dirección":
     SELECT column_names
     FROM table_name
     WHERE column_name IS NOT NULL;
