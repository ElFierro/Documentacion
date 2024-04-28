## Not null

La restricción NOT NULL obliga a una columna a NO aceptar valores NULL.

Ejemplo:

El siguiente SQL garantiza que las columnas "ID", "Apellido" y "Nombre" NO aceptarán valores NULL cuando se cree la tabla "Personas":

```sql
CREATE TABLE Persons (
ID int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255) NOT NULL,
Age int
);
```

#### Not null en un alter table:

Para crear una restricción NOT NULL en la columna "Edad" cuando la tabla "Personas" ya está creada, use el siguiente SQL:

Servidor SQL/Acceso MS:

```sql
ALTER TABLE Persons
ALTER COLUMN Age int NOT NULL;
```

Mi SQL/Oracle (versión anterior 10G):

```sql
ALTER TABLE Persons
MODIFY COLUMN Age int NOT NULL;
```

Oracle 10G y posteriores:

```sql
ALTER TABLE Persons
MODIFY Age int NOT NULL;
```