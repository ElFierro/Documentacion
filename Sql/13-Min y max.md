## Min()

La función MIN() devuelve el valor más pequeño de la columna seleccionada.

Sintaxis:
```ssh
SELECT MIN(column_name)
FROM table_name
WHERE condition;
```

Ejemplos:

Encuentra el precio más bajo:

```sql
SELECT MIN(Price)
FROM Products;
```

## MAX()

La función MAX() devuelve el valor más grande de la columna seleccionada.

Sintaxis:

```ssh
SELECT MAX(column_name)
FROM table_name
WHERE condition; 
```

Ejemplos:

Encuentra el precio más alto:

```sql
SELECT MAX(Price)
FROM Products;
```

#### Alias
Cuando usa MIN() o MAX(), la columna devuelta se llamará or de forma predeterminada. Para darle un nuevo nombre a la columna, use la palabra clave AS

Ejemplo:

```sql
SELECT MIN(Price) AS SmallestPrice
FROM Products;
```