# Having

La cláusula HAVING se agregó a SQL porque la palabra clave WHERE no se puede usar con funciones agregadas.

#### Sintaxis:

```ssh
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);
```

#### Ejemplo:

La siguiente sentencia SQL enumera la cantidad de clientes en cada país. Incluya solo países con más de 5 clientes:

```sql
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;
```

La siguiente sentencia SQL indica si los empleados "Davolio" o "Fuller" han registrado más de 25 pedidos:

```sql
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE LastName = 'Davolio' OR LastName = 'Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;
```