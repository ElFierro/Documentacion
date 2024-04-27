## Insert into

La sentencia INSERT INTO se utiliza para insertar nuevos registros en una tabla.

Sintaxis:

Especifique tanto los nombres de las columnas como los valores que se insertarán:

```ssh
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```

Si está agregando valores para todas las columnas de la tabla, no necesita especificar los nombres de las columnas en la consulta SQL.

```ssh
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
```
Ejemplo:
 
La siguiente sentencia SQL inserta un nuevo registro en la tabla "Clientes":

```sql
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');
```

También es posible insertar varias filas en una sentencia.

```sql
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');
```