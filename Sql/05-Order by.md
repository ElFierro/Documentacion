## Order by

La palabra clave ORDER BY se utiliza para ordenar el conjunto de resultados en orden ascendente o descendente.

Sintaxis

```sql
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;
```

Ejemplo:
  
Ordene los productos alfabéticamente por ProductName:

```sql
SELECT * FROM Products
RDER BY ProductName;
```

## DESC

La palabra clave ORDER BY ordena los registros en orden ascendente de forma predeterminada. Para ordenar los registros en orden descendente, utilice la palabra clave DESC.
  
Ejemplos:

Ordene los productos por ProductName en orden inverso:

```sql
SELECT * FROM Products
ORDER BY ProductName DESC;
```

Ordenar por varias columnas

```sql
SELECT * FROM Customers
ORDER BY Country, CustomerName;
```

## Combinaciones:

Ejemplos Desc y Asc:

ordenar de forma ascendente por "País" y descendente por la columna "Nombre de cliente"

```sql
SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;
```