## Default 

La restricción DEFAULT se utiliza para establecer un valor predeterminado para una columna.

Ejemplo:

El siguiente SQL establece un valor DEFAULT para la columna "Ciudad" cuando se crea la tabla "Personas":

```sql
CREATE TABLE Persons (
  ID int NOT NULL,
  LastName varchar(255) NOT NULL,
  FirstName varchar(255),
  Age int,
  City varchar(255) DEFAULT 'Sandnes'
);
```

## Default en alter table

Para crear una DEFAULTrestricción en la columna "Ciudad" cuando la tabla ya está creada, use el siguiente SQL:

MySQL:

```sql
ALTER TABLE Persons
ALTER City SET DEFAULT 'Sandnes';
```

Servidor SQL:

```sql
ALTER TABLE Persons
ADD CONSTRAINT df_City
DEFAULT 'Sandnes' FOR City;
```

## Eliminar una restriccion default

Para eliminar una restricción DEFAULT, utilice el siguiente SQL:

MySQL:

```sql
ALTER TABLE Persons
ALTER City DROP DEFAULT;
```

Servidor SQL/Oracle/MS Access:

```sql
ALTER TABLE Persons
ALTER COLUMN City DROP DEFAULT;
```

Servidor SQL:

```sql
ALTER TABLE Persons
ALTER COLUMN City DROP DEFAULT;
```