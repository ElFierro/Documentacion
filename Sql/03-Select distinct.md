## Select distinct
La sentencia SELECT DISTINCT se utiliza para devolver sólo valores distintos (diferentes).

Sintaxis:

```sql
SELECT DISTINCT column1, column2, ...
FROM table_name;
```

Ejemplo:

Seleccione todos los diferentes países de la tabla "Clientes":

```sql
SELECT DISTINCT Country FROM Customers;
```

#### COUNT()

Ejemplo:

Al usar la palabra clave DISTINCT en una función llamada COUNT, podemos devolver el número de países diferentes.

```sql
SELECT COUNT(DISTINCT Country) FROM Customers;
```