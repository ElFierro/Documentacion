--SELF UNION

 --Una autounión es una unión normal, pero la tabla está unida consigo misma.

 --SINTAXIS:

  SELECT column_name(s)
  FROM table1 T1, table1 T2
  WHERE condition;

 --EJEMPLO:

  --La siguiente sentencia SQL coincide con clientes que son de la misma ciudad:

   SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
   FROM Customers A, Customers B
   WHERE A.CustomerID <> B.CustomerID
   AND A.City = B.City
   ORDER BY A.City;