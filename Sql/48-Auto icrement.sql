--AUTO_INCREMENT

 --El incremento automático permite generar automáticamente un número único cuando se inserta un nuevo registro en una tabla.

 --SINTAXIS:

  --MySQL:

   --MySQL usa la palabra clave AUTO_INCREMENT para realizar una función de incremento automático.

  CREATE TABLE Persons (
    Personid int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (Personid)
  );

  --Para permitir que la secuencia AUTO_INCREMENT comience con otro valor, utilice la siguiente declaración SQL:

  ALTER TABLE Persons AUTO_INCREMENT=100;

  --SQL Server:

   --MS SQL Server utiliza la palabra clave IDENTITY para realizar una función de incremento automático.

    CREATE TABLE Persons (
      Personid int IDENTITY(1,1) PRIMARY KEY,
      LastName varchar(255) NOT NULL,
      FirstName varchar(255),
      Age int
    );

  --el valor inicial IDENTITY es 1 y se incrementará en 1 para cada nuevo registro.

  --ACCESS

    --MS Access utiliza la palabra clave AUTOINCREMENT para realizar una función de incremento automático.

    CREATE TABLE Persons (
      Personid AUTOINCREMENT PRIMARY KEY,
      LastName varchar(255) NOT NULL,
      FirstName varchar(255),
      Age int
    );

  --ORACLE

   --Tendrás que crear un campo de incremento automático con el objeto de secuencia (este objeto genera una secuencia numérica).

   --Utilice la siguiente sintaxis CREATE SEQUENCE:

    CREATE SEQUENCE seq_person
    MINVALUE 1
    START WITH 1
    INCREMENT BY 1
    CACHE 10;

   --Para insertar un nuevo registro en la tabla "Personas", tendremos que usar la función nextval

    INSERT INTO Persons (Personid,FirstName,LastName)
    VALUES (seq_person.nextval,'Lars','Monsen');