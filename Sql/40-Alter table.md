## Alter table

La sentencia ALTER TABLE se utiliza para agregar, eliminar o modificar columnas en una tabla existente.
La sentencia ALTER TABLE también se utiliza para agregar y eliminar varias restricciones en una tabla existente.

#### Añadir columna:

Sintaxis:

```ssh
ALTER TABLE table_name
ADD column_name datatype;
```

Ejemplo:

```sql
ALTER TABLE Customers
ADD Email varchar(255);
```

#### Eliminar columna:

Sintaxis:

```ssh
ALTER TABLE table_name
DROP COLUMN column_name;
```

Ejemplo:

```sql
ALTER TABLE Customers
DROP COLUMN Email;
```

#### Renombrar columna:

Sintaxis:
```ssh
ALTER TABLE table_name
RENAME COLUMN old_name to new_name;
```

Servidor SQL:
```ssh
EXEC sp_rename 'table_name.old_name',  'new_name', 'COLUMN';
```

#### Modificar datos:

Servidor SQL/Acceso MS:

```ssh
ALTER TABLE table_name
ALTER COLUMN column_name datatype;
```

MYSQL

```ssh
ALTER TABLE table_name
MODIFY COLUMN column_name datatype;
```

Oracle

```ssh
ALTER TABLE table_name
MODIFY column_name datatype;
```

Ejemplo:

```sql
ALTER TABLE Persons
ALTER COLUMN DateOfBirth year;
```