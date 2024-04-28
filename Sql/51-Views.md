## Vistas

En SQL, una vista es una tabla virtual basada en el conjunto de resultados de una declaración SQL.
Una vista contiene filas y columnas, como una tabla real. 
Los campos de una vista son campos de una o más tablas reales de la base de datos.

Sentencia:

## Crear vista

Se crea una vista con la setencia CREATE VIEW.

#### Sintaxis:

```ssh
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

#### Ejemplo:

El siguiente SQL crea una vista que muestra todos los clientes de Brasil:

```sql
CREATE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = 'Brazil';
```

Consultar:

```sql
SELECT * FROM [Brazil Customers];
```

El siguiente SQL crea una vista que selecciona cada producto en la tabla "Productos" con un precio superior al precio promedio:

```sql
CREATE VIEW [Products Above Average Price] AS
SELECT ProductName, Price
FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products);
```

Consultar:

```sql
SELECT * FROM [Products Above Average Price];
```

## Crear o remplazar vistas

Una vista se puede actualizar con la sentencia  CREATE OR REPLACE VIEW.

#### Sintaxis:

```sql
CREATE OR REPLACE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

#### Ejemplo:

El siguiente SQL agrega la columna "Ciudad" a la vista "Clientes de Brasil":

```sql
CREATE OR REPLACE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName, City
FROM Customers
WHERE Country = 'Brazil';
```

## Eliminar vista

Una vista se elimina con la sentencia DROP VIEW.

#### Sintaxis:

```ssh
DROP VIEW view_name;
```

#### Ejemplo:

```sql
DROP VIEW [Brazil Customers];
```