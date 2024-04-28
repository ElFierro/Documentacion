## Select

La sentencia SELECT se utiliza para seleccionar datos de una base de datos.

#### Sintaxis:

```ssh
SELECT column1, column2, ...
FROM table_name;
```

#### Ejemplos:

```sql
SELECT CustomerName, City FROM Customers;

--Si desea devolver todas las columnas, sin especificar cada nombre de columna,
-- puede utilizar la sintaxis SELECT *:
SELECT * FROM Customers;
```