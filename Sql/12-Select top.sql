--SELECT TOP
 
 --La cláusula SELECT TOP se utiliza para especificar el número de registros a devolver.

 --SINTAXIS:

  --SQL Server/MS Access:

   SELECT TOP number|percent column_name(s)
   FROM table_name
   WHERE condition;

  --MySQL:

   SELECT column_name(s)
   FROM table_name
   WHERE condition
   LIMIT number;

  --Oracle:

   SELECT column_name(s)
   FROM table_name
   ORDER BY column_name(s)
   FETCH FIRST number ROWS ONLY;

 --EJEMPLO:

  --La siguiente instrucción SQL selecciona los primeros tres registros de la tabla "Clientes", donde el país es "Alemania":

   --SQL Server/MS Access:

      SELECT TOP 3 * FROM Customers
      WHERE Country='Germany';

   --MySQL:

      SELECT * FROM Customers
      WHERE Country='Germany'
      LIMIT 3;

   --Oracle:

      SELECT * FROM Customers
      WHERE Country='Germany'
      FETCH FIRST 3 ROWS ONLY;