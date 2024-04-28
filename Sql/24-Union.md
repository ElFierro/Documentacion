## Union

El operador UNION se utiliza para combinar el conjunto de resultados de dos o más sentencias SELECT.

- Cada sentencia SELECT dentro UNION debe tener el mismo número de columnas.
- Las columnas también deben tener tipos de datos similares.
- Las columnas de cada SELECTsentencia también deben estar en el mismo orden.
  
Sintaxis:

```ssh
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;
```

Ejemplo:

La siguiente sentencia SQL devuelve las ciudades alemanas (solo valores distintos) de las tablas "Clientes" y "Proveedores":

```sql
SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;
```

## ALL:

Sintaxis:

```ssh
SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;
```

Ejemplo:

La siguiente sentencia SQL devuelve las ciudades alemanas (también valores duplicados) de las tablas "Clientes" y "Proveedores":

```sql
SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;
```