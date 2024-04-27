## Avg()

La función AVG() devuelve el valor promedio de una columna numérica.

Sintaxis:

```ssh
SELECT AVG(column_name)
FROM table_name
WHERE condition;
```

Ejemplos:

Devuelve el precio medio de los productos de la categoría 1:

```sql
SELECT AVG(Price)
FROM Products
WHERE CategoryID = 1;
```

#### Mas alto que el promedio

Devolver todos los productos con un precio superior al precio medio:

```sql
SELECT * FROM Products
WHERE price > (SELECT AVG(price) FROM Products);
```

Asigne un nombre a la columna AVG utilizando la palabra clave AS.

```sql
SELECT AVG(Price) AS [average price]
FROM Products;
```

#### Avg con group by

```sql
SELECT AVG(Price) AS AveragePrice, CategoryID
FROM Products
GROUP BY CategoryID;
```