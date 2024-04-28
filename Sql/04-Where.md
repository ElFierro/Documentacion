## Where
La cláusula WHERE se utiliza para filtrar registros.
Se utiliza para extraer sólo aquellos registros que cumplen una condición específica.

Sintaxis:

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

Ejemplo:

Seleccione todos los clientes de México:

```sql
SELECT * FROM Customers
WHERE Country='Mexico';
```

Seleccione todos los clientes con un CustomerID superior a 80:

```sql
SELECT * FROM Customers
WHERE CustomerID > 80;
```

La cláusula WHERE no solo se usa en sentencias SELECT, también se usa en UPDATE, DELETE, etc.

## Operadores:

```sql
=         Igual                           WHERE Price = 18;
>         Mas grande que                  WHERE Price > 30;
<         Menos que                       WHERE Price < 30;
>=        Mayor que o igual               WHERE Price >= 30;
<=        Menor o igual                   WHERE Price <= 30;
<>        No es igual. (!=)               WHERE Price <> 18;
BETWEEN   Entre un cierto rango           WHERE Price BETWEEN 50 AND 60;
LIKE      Buscar un patrón                WHERE City LIKE 's%';
IN        Multiples valores posibles      WHERE City IN ('Paris','London');
```