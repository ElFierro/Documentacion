# Not
El operador NOT se utiliza en combinación con otros operadores para dar el resultado opuesto

#### Sintaxis:

```sql
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;
```

#### Ejemplo:

```sql
Selecciona sólo los clientes que NO son de España:
SELECT * FROM Customers
WHERE NOT Country = 'Spain';
```

## Combinaciones:

#### Ejemplo not like:

```sql
Seleccione clientes que no comiencen con la letra 'A':
SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'A%';
```

#### Ejemplo not between:

```sql
Seleccione clientes con un ID de cliente que no esté entre 10 y 60:
SELECT * FROM Customers
WHERE CustomerID NOT BETWEEN 10 AND 60;
```

#### Ejemplo not in:

```sql
Seleccione clientes que no sean de París o Londres:
SELECT * FROM Customers
WHERE City NOT IN ('Paris', 'London');
```

#### Ejemplo not >:

```sql
Seleccione clientes con un CustomerId no mayor a 50:
SELECT * FROM Customers
WHERE NOT CustomerID > 50;
```

#### Ejemplo not <:

```sql
Seleccione clientes con un CustomerID no menor a 50:
SELECT * FROM Customers
WHERE NOT CustomerId < 50;
```
