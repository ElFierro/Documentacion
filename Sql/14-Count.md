# Count()
  
La función COUNT() devuelve el número de filas que coinciden con un criterio específico.

#### Sintaxis:

```ssh
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
```

#### Ejemplos:

Encuentre el número total de productos en la Products tabla:

```sql
SELECT COUNT(*)
FROM Products;
```

Encuentre la cantidad de productos que Priceson superiores a 20:

```sql
SELECT COUNT(ProductID)
FROM Products
WHERE Price > 20;
```

## Distinct
 
Puede ignorar los duplicados utilizando la palabra clave DISTINCT en la función COUNT.

#### Ejemplo:

```sql
SELECT COUNT(DISTINCT Price)
FROM Products;
```

## Alias

Asigne un nombre a la columna contada utilizando la palabra clave AS.
 
#### Ejemplo:

```sql
SELECT COUNT(*) AS [number of records]
FROM Products;
```