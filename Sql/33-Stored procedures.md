## Procedimientos almacenados

## Create procedures

Un procedimiento almacenado es un código SQL preparado que puede guardar, de modo que el código pueda reutilizarse una y otra vez.
También puede pasar parámetros a un procedimiento almacenado, de modo que el procedimiento almacenado pueda actuar en función de los valores de parámetro que se pasan.

Sintaxis:

```ssh
CREATE PROCEDURE procedure_name
AS
sql_statement
GO;
```

Ejecutar: 

```sql
EXEC procedure_name;
```

Ejemplo:

```sql
CREATE PROCEDURE SelectAllCustomers
AS
SELECT * FROM Customers
GO;
```

Ejecutar:

```sql
EXEC SelectAllCustomers;
```

## Con parametro:

```sql
CREATE PROCEDURE SelectAllCustomers @City nvarchar(30)
AS
SELECT * FROM Customers WHERE City = @City
GO;
```

Ejecutar:

```sql
EXEC SelectAllCustomers @City = 'London';
```

## Con multiples parametros:

```sql
CREATE PROCEDURE SelectAllCustomers @City nvarchar(30), @PostalCode nvarchar(10)
AS
SELECT * FROM Customers WHERE City = @City AND PostalCode = @PostalCode
GO;
```

Ejecutar:

```sql
EXEC SelectAllCustomers @City = 'London', @PostalCode = 'WA1 1DP';
```