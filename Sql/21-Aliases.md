## Alias
Los alias SQL se utilizan para dar un nombre temporal a una tabla o columna de una tabla.
Los alias se utilizan a menudo para hacer que los nombres de las columnas sean más legibles.

Sintaxis:

Cuando se utiliza alias en la columna:

```shh
SELECT column_name AS alias_name
FROM table_name;
```

Cuando se utiliza alias en la tabla:

```sql
SELECT column_name(s)
FROM table_name AS alias_name;
```

Ejemplos:

## Alias para columnas:

La siguiente instrucción SQL crea dos alias, uno para la columna CustomerID y otro para la columna CustomerName:

```sql
SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;
```

## Alias con espacios:

Si desea que su alias contenga uno o más espacios, como "My Great Products", encierre su alias entre corchetes o comillas dobles.
    
Uso de [corchetes] para alias con caracteres de espacio:

```sql
SELECT ProductName AS [My Great Products]
FROM Products;
```

Uso de "comillas dobles" para alias con caracteres de espacio:

```sql
SELECT ProductName AS "My Great Products"
FROM Products;
```

## Concatenar alias:

La siguiente sentencia SQL crea un alias denominado "Dirección" que combina cuatro columnas (Dirección, Código postal, Ciudad y País):

```sql
SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM Customers;
```

## MySQL

```sql
SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
FROM Customers;
```

## ORACLE

```sql
SELECT CustomerName, (Address || ', ' || PostalCode || ' ' || City || ', ' || Country) AS Address
FROM Customers;
```

## Alias para tablas:
  
Se aplican las mismas reglas cuando desea utilizar un alias para una tabla.

Usamos las tablas "Clientes" y "Pedidos", y les damos los alias de tabla "c" y "o" respectivamente (aquí usamos alias para acortar el SQL):

```sql
SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;
```