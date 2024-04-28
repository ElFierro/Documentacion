## Select top
 
La cláusula SELECT TOP se utiliza para especificar el número de registros a devolver.

#### Sintaxis:

## SQL Server/MS Access:

```ssh
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;
```

## MySQL:

```sql
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;
```

## Oracle:

```sql
SELECT column_name(s)
FROM table_name
ORDER BY column_name(s)
FETCH FIRST number ROWS ONLY;
```

#### Ejemplo:

La siguiente instrucción SQL selecciona los primeros tres registros de la tabla "Clientes", donde el país es "Alemania":

## SQL Server/MS Access:

```sql
SELECT TOP 3 * FROM Customers
WHERE Country='Germany';
```

## MySQL:

```sql
SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;
```

## Oracle:

```sql
SELECT * FROM Customers
WHERE Country='Germany'
FETCH FIRST 3 ROWS ONLY;
```