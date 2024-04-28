## GROUP BY

El extracto GROUP BY agrupa filas que tienen los mismos valores en filas de resumen
La sentencia GROUP BY se usa a menudo con funciones agregadas (COUNT(), MAX(), MIN(), SUM(), AVG()) para agrupar el conjunto de resultados en una o más columnas.

Sintaxis:

```ssh
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);
```

Ejemplos:

La siguiente sentencia SQL enumera la cantidad de clientes en cada país, ordenados de mayor a menor:

```sql
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;
```

La siguiente sentencia SQL enumera la cantidad de pedidos enviados por cada remitente:

```sql
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;
```