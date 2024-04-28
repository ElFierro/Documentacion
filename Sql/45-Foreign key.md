## Foreign key
La restricción FOREIGN KEY se utiliza para evitar acciones que destruirían vínculos entre tablas.
Una FOREIGN KEY es un campo (o colección de campos) en una tabla, que hace referencia a PRIMARY KEY otra tabla.

#### Ejemplo:

El siguiente SQL crea un FOREIGN KEYen la columna "PersonID" cuando se crea la tabla "Pedidos":

MySQL:
```sql
CREATE TABLE Orders (
  OrderID int NOT NULL,
  OrderNumber int NOT NULL,
  PersonID int,
  PRIMARY KEY (OrderID),
  FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);
```

Servidor SQL/Oracle/MS Access:

```sql
CREATE TABLE Orders (
  OrderID int NOT NULL PRIMARY KEY,
  OrderNumber int NOT NULL,
  PersonID int FOREIGN KEY REFERENCES Persons(PersonID)
);
```

## En varias columnas:

```sql
CREATE TABLE Orders (
  OrderID int NOT NULL,
  OrderNumber int NOT NULL,
  PersonID int,
  PRIMARY KEY (OrderID),
  CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
  REFERENCES Persons(PersonID)
);
```

## Foreign key en alter table
  
Para crear una restricción FOREIGN KEY en la columna "PersonID" cuando la tabla "Pedidos" ya está creada, utilice el siguiente SQL:

```sql
ALTER TABLE Orders
ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);
```

Varias columnas:

```sql
ALTER TABLE Orders
ADD CONSTRAINT FK_PersonOrder
FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);
```

## Eliminar restriccion extranjera

Para eliminar una restricción FOREIGN KEY, utilice el siguiente SQL:

MySQL:

```sql
ALTER TABLE Orders
DROP FOREIGN KEY FK_PersonOrder;
```

Servidor SQL/Oracle/MS Access:

```sql
ALTER TABLE Orders
DROP CONSTRAINT FK_PersonOrder;
```