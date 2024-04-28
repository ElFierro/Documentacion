## Unique 

La restricción UNIQUE garantiza que todos los valores de una columna sean diferentes.

Ejemplo:

El siguiente SQL crea una restricción UNIQUE en la columna "ID" cuando se crea la tabla "Personas":

Servidor SQL/Oracle/MS Access:

```sql
CREATE TABLE Persons (
  ID int NOT NULL UNIQUE,
  LastName varchar(255) NOT NULL,
  FirstName varchar(255),
  Age int
);
```

MySQL:

```sql
CREATE TABLE Persons (
  ID int NOT NULL,
  LastName varchar(255) NOT NULL,
  FirstName varchar(255),
  Age int,
  UNIQUE (ID)
);
```

#### Varias columnas:

```sql
CREATE TABLE Persons (
  ID int NOT NULL,
  LastName varchar(255) NOT NULL,
  FirstName varchar(255),
  Age int,
  CONSTRAINT UC_Person UNIQUE (ID,LastName)
);
```

#### Unique en un alter table:

Para crear una restricción UNIQUE en la columna "ID" cuando la tabla ya está creada, use el siguiente SQL:

```sql
ALTER TABLE Persons
ADD UNIQUE (ID);
```

En varias columnas:

```sql
ALTER TABLE Persons
ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);
```

#### Eliminar unique

Para eliminar una UNIQUErestricción, utilice el siguiente SQL:

MySQL:

```sql
ALTER TABLE Persons
DROP INDEX UC_Person;
```

Servidor SQL/Oracle/MS Access:

```sql
ALTER TABLE Persons
DROP CONSTRAINT UC_Person;
```