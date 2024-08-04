# Select into
La sentencia SELECT INTO copia datos de una tabla en una tabla nueva.

#### Sintaxis:

```ssh
SELECT *
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;
```

```ssh
SELECT column1, column2, column3, ...
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;
```

#### Ejemplos:

La siguiente sentencia SQL crea una copia de seguridad de los Clientes:

```sql
SELECT * INTO CustomersBackup2017
FROM Customers;
```

La siguiente sentencia SQL utiliza la cláusula IN para copiar la tabla en una nueva tabla en otra base de datos:

```sql
SELECT * INTO CustomersBackup2017 IN 'Backup.mdb'
FROM Customers;
```

La siguiente sentencia SQL copia solo unas pocas columnas en una nueva tabla:

```sql
SELECT CustomerName, ContactName INTO CustomersBackup2017
FROM Customers;
```

La siguiente sentencia SQL copia sólo los clientes alemanes en una nueva tabla:

```sql
SELECT * INTO CustomersGermany
FROM Customers
WHERE Country = 'Germany';
```

La siguiente sentencia SQL copia datos de más de una tabla en una tabla nueva:

```sql
SELECT Customers.CustomerName, Orders.OrderID
INTO CustomersOrderBackup2017
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
```

Consejo:

SELECT INTO también se puede utilizar para crear una tabla nueva y vacía utilizando el esquema de otra. 

```sql
SELECT * INTO newtable
FROM oldtable
WHERE 1 = 0;
```

