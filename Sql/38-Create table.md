## Create Database

La sentencia CREATE TABLE se utiliza para crear una nueva tabla en una base de datos.

#### Sintaxis:

```ssh
CREATE TABLE table_name (
  column1 datatype,
  column2 datatype,
  column3 datatype,
  ....
);
```

#### Ejemplo:

El siguiente ejemplo crea una tabla llamada "Personas" que contiene cinco columnas: ID de persona, Apellido, Nombre, Dirección y Ciudad:

```sql
CREATE TABLE Persons (
  PersonID int,
  LastName varchar(255),
  FirstName varchar(255),
  Address varchar(255),
  City varchar(255)
)
```

## Creando tabla de otra tabla:

```ssh
CREATE TABLE new_table_name AS
SELECT column1, column2,...
FROM existing_table_name
WHERE ....;
```

#### Ejemplo:

El siguiente SQL crea una nueva tabla llamada "TestTables" (que es una copia de la tabla "Clientes"): 

```sql
CREATE TABLE TestTable AS
SELECT customername, contactname
FROM customers;
```
