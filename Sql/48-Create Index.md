## Create index

La sentencia CREATE INDEX se utiliza para crear índices en tablas.

Sintaxis:

Crea un índice en una tabla. Se permiten valores duplicados:

```sql
CREATE INDEX index_name
ON table_name (column1, column2, ...);
```

#### Crear indice unico

Crea un índice único en una tabla. No se permiten valores duplicados:

```sql
CREATE UNIQUE INDEX index_name
ON table_name (column1, column2, ...);
```

Ejemplo:

La siguiente declaración SQL crea un índice llamado "idx_lastname" en la columna "Apellido" en la tabla "Personas":

```sql
CREATE INDEX idx_lastname
ON Persons (LastName);
```

Si desea crear un índice en una combinación de columnas, puede enumerar los nombres de las columnas entre paréntesis, separados por comas:

```sql
CREATE INDEX idx_pname
ON Persons (LastName, FirstName);
```

#### Eliminar indice:

Acceso MS:

```sql
DROP INDEX index_name ON table_name;
```

Servidor SQL:

```sql
DROP INDEX table_name.index_name;
```

DB2/Oracle:

```sql
DROP INDEX index_name;
```

MySQL:

```sql
ALTER TABLE table_name
DROP INDEX index_name;
```