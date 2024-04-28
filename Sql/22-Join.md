## Join
 
Una cláusula JOIN se utiliza para combinar filas de dos o más tablas, en función de una columna relacionada entre ellas.

## INNER: 

La palabra clave INNER JOIN selecciona registros que tienen valores coincidentes en ambas tablas.

Sintaxis:

```ssh
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
```

Ejemplos:

Únase a Productos y Categorías con la palabra clave INNER JOIN:

```sql
SELECT ProductID, ProductName, CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;
```

## Nombrar columnas
    
Es una buena práctica incluir el nombre de la tabla al especificar columnas en la sentencia SQL.

Ejemplo:

Especifique los nombres de las tablas:

```sql     
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
```
 
## LEFT: 

La palabra clave LEFT JOIN devuelve todos los registros de la tabla de la izquierda (tabla1) y los registros coincidentes de 

la tabla de la derecha (tabla2).

Sintaxis:

```ssh
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;
```

Ejemplo:

La siguiente sentencia SQL seleccionará todos los clientes y cualquier pedido que puedan tener:

```sql
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;
 ```

## RIGHT:

La palabra clave RIGHT JOIN devuelve todos los registros de la tabla derecha (tabla2) y los registros coincidentes de la tabla izquierda (tabla1).

Sintaxis:

```ssh
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;
```

Ejemplo:

La siguiente sentencia SQL devolverá todos los empleados y cualquier pedido que hayan realizado:

```sql
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;
```

## FULL: 

La palabra clave FULL JOIN devuelve todos los registros cuando hay una coincidencia en los registros de la tabla izquierda (tabla1) o derecha (tabla2).

Sintaxis

```ssh
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;
```

Ejemplo:

La siguiente sentencia SQL selecciona todos los clientes y todos los pedidos:

```sql
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;
```