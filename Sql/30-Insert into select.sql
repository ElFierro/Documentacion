--INSERT INTO SELECT

 --La sentencia INSERT INTO SELECT copia datos de una tabla y los inserta en otra tabla.
 --La sentencia INSERT INTO SELECT requiere que los tipos de datos en las tablas de origen y de destino coincidan.

 --NOTA:

  --Los registros existentes en la tabla de destino no se ven afectados.

 --SINTAXIS:

  --Copie todas las columnas de una tabla a otra tabla:

   INSERT INTO table2
   SELECT * FROM table1
   WHERE condition;

  --Copie solo algunas columnas de una tabla a otra tabla:

   INSERT INTO table2 (column1, column2, column3, ...)
   SELECT column1, column2, column3, ...
   FROM table1
   WHERE condition;

 --EJEMPLOS:

  --Copie "Proveedores" en "Clientes" (las columnas que no están llenas de datos contendrán NULL):

   INSERT INTO Customers (CustomerName, City, Country)
   SELECT SupplierName, City, Country FROM Suppliers;

  --Copie "Proveedores" en "Clientes" (llene todas las columnas):

   INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
   SELECT SupplierName, ContactName, Address, City, PostalCode, Country FROM Suppliers;

  --Copie sólo los proveedores alemanes en "Clientes":

   INSERT INTO Customers (CustomerName, City, Country)
   SELECT SupplierName, City, Country FROM Suppliers
   WHERE Country='Germany';