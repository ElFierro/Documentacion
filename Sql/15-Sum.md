## Sum()
 
La función SUM() devuelve la suma total de una columna numérica.

#### Sintaxis:

```ssh
SELECT SUM(column_name)
FROM table_name
WHERE condition;
```

#### Ejemplos:

Devuelve el número de pedidos realizados para el producto con ProductID 11:

```sql
SELECT SUM(Quantity)
FROM OrderDetails
WHERE ProductId = 11;
```

Devuelve la suma de todos los campos Quantity de la tabla OrderDetails:

```sql
SELECT SUM(Quantity)
FROM OrderDetails;
```

Utilice una expresión dentro de la función SUM():

```sql
SELECT SUM(Quantity * 10)
FROM OrderDetails;
```

Une OrderDetails con Products y usa SUM() para encontrar la cantidad total:

```sql
SELECT SUM(Price * Quantity)
FROM OrderDetails
LEFT JOIN Products ON OrderDetails.ProductID = Products.ProductID;
```

Asigne un nombre a la columna resumida utilizando la palabra clave AS.

```sql
SELECT SUM(Quantity) AS total
FROM OrderDetails;
```

Aquí usamos la función SUM() y la cláusula GROUP BY para devolver el valor de cantidad de cada OrderID en la tabla OrderDetails:

```sql
SELECT OrderID, SUM(Quantity) AS [Total Quantity]
FROM OrderDetails
GROUP BY OrderID;
```