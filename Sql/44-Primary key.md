## Primary key

La restricción PRIMARY KEY identifica de forma única cada registro de una tabla.

#### Ejemplo:

El siguiente SQL crea un PRIMARY KEYen la columna "ID" cuando se crea la tabla "Personas":

MySQL:

```sql
CREATE TABLE Persons (
  ID int NOT NULL,
  LastName varchar(255) NOT NULL,
  FirstName varchar(255),
  Age int,
  PRIMARY KEY (ID)
);
```

Servidor SQL/Oracle/MS Access:

```sql
CREATE TABLE Persons (
  ID int NOT NULL PRIMARY KEY,
  LastName varchar(255) NOT NULL,
  FirstName varchar(255),
  Age int
);
```

## Varias columnas:
 
Para permitir la denominación de una restricción PRIMARY KEY y definir una restricción PRIMARY KEY en varias columnas

```sql
CREATE TABLE Persons (
  ID int NOT NULL,
  LastName varchar(255) NOT NULL,
  FirstName varchar(255),
   Age int,
  CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)
);
```

## clave primaria en alter table:

Para crear una restricción PRIMARY KEY en la columna "ID" cuando la tabla ya está creada, use el siguiente SQL:

```sql
ALTER TABLE Persons
ADD PRIMARY KEY (ID);
```

En varias columnas:

```sql
ALTER TABLE Persons
ADD CONSTRAINT PK_Person PRIMARY KEY (ID,LastName);
```

## Eliminar restriccion de clave primaria:

Para eliminar una restricción PRIMARY KEY, utilice el siguiente SQL:

MySQL:

```sql
ALTER TABLE Persons
DROP PRIMARY KEY;
```

Servidor SQL/Oracle/MS Access:

```sql
ALTER TABLE Persons
DROP CONSTRAINT PK_Person;
```
