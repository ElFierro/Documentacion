# Check 

La restricción CHECK se utiliza para limitar el rango de valores que se puede colocar en una columna.

#### Ejemplo:

El siguiente SQL crea una restricción CHECK en la columna "Edad" cuando se crea la tabla "Personas"

MySQL:

```sql
CREATE TABLE Persons (
  ID int NOT NULL,
  LastName varchar(255) NOT NULL,
  FirstName varchar(255),
  Age int,
  CHECK (Age>=18)
);
```

Servidor SQL/Oracle/MS Access:

```sql
CREATE TABLE Persons (
  ID int NOT NULL,
  LastName varchar(255) NOT NULL,
  FirstName varchar(255),
  Age int CHECK (Age>=18)
);
```

## En varias columnas:

```sql
CREATE TABLE Persons (
  ID int NOT NULL,
  LastName varchar(255) NOT NULL,
  FirstName varchar(255),
  Age int, 
  City varchar(255),
  CONSTRAINT CHK_Person CHECK (Age>=18 AND City='Sandnes')
);
```

## Check en alter table

Para crear una restricción CHECK en la columna "Edad" cuando la tabla ya está creada, use el siguiente SQL:

```sql
ALTER TABLE Persons
ADD CHECK (Age>=18);
```

Varias columnas:

```sql
ALTER TABLE Persons
ADD CONSTRAINT CHK_PersonAge CHECK (Age>=18 AND City='Sandnes');
```

## Eliminar restricciones check

Para eliminar una restricción CHECK, utilice el siguiente SQL:

Servidor SQL/Oracle/MS Access:

```sql
ALTER TABLE Persons
DROP CONSTRAINT CHK_PersonAge;
```

MySQL:

```sql
ALTER TABLE Persons
DROP CHECK CHK_PersonAge;
```