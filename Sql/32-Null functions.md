# MYSQL:

La función MySQL IFNULL( te permite devolver un valor alternativo si una expresión es NULL:

```sql
SELECT ProductName, UnitPrice * (UnitsInStock + IFNULL(UnitsOnOrder, 0))
FROM Products;
```

o podemos usar la función, así: COALESCE()

```sql
SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
FROM Products;
```

## SERVIDOR SQL:

La función ISNULL() de SQL Server le permite devolver un valor alternativo cuando una expresión es NULL:

```sql
SELECT ProductName, UnitPrice * (UnitsInStock + ISNULL(UnitsOnOrder, 0))
FROM Products;
```

o podemos usar la función COALESCE(), así:

```sql
SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
FROM Products;
```

## ORACLE:

La función NVL() de Oracle logra el mismo resultado:

```sql
SELECT ProductName, UnitPrice * (UnitsInStock + NVL(UnitsOnOrder, 0))
FROM Products;
```

o podemos usar la función COALESCE(), así:

```sql
SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
FROM Products;
```