## Null
 
No es posible probar valores NULL con operadores de comparación, como =, < o <>.
   
#### IS NULL

El operador IS NULL se utiliza para probar valores vacíos (valores NULL).

Sintaxis:

```ssh
SELECT column_names
FROM table_name
WHERE column_name IS NULL;
```

Ejemplos:

El siguiente SQL enumera todos los clientes con un valor NULL en el campo "Dirección":
    
```sql
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;
```

#### IS NOT NULL

El operador IS NOT NULL se utiliza para probar valores que no estén vacíos (NO valores NULOS).

Sintaxis:

```ssh
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;
```

Ejemplos:

El siguiente SQL enumera todos los clientes con un valor en el campo "Dirección":

```sql
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;
```
