## And 
  
El operador AND se utiliza para filtrar registros en función de más de una condición

Sintaxis:

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;
```

Ejemplo: 

Selecciona todos los clientes de España que empiezan por la letra 'G':

```sql
SELECT *
FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%';
```

#### Combinaciones:

Ejemplo And y Or: 

Seleccione todos los clientes españoles que comiencen con "G" o "R":

```sql
SELECT * FROM Customers
WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');
```