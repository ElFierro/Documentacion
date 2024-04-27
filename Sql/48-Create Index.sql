--CREATE INDEX

 --La sentencia CREATE INDEX se utiliza para crear índices en tablas.

 --SINTAXIS:

  --CREAR INDICE

   --Crea un índice en una tabla. Se permiten valores duplicados:

     CREATE INDEX index_name
     ON table_name (column1, column2, ...);

  --CREAR ÍNDICE ÚNICO

   --Crea un índice único en una tabla. No se permiten valores duplicados:

     CREATE UNIQUE INDEX index_name
     ON table_name (column1, column2, ...);

  --EJEMPLO:

   --La siguiente declaración SQL crea un índice llamado "idx_lastname" en la columna "Apellido" en la tabla "Personas":

    CREATE INDEX idx_lastname
    ON Persons (LastName);
   
   --Si desea crear un índice en una combinación de columnas, puede enumerar los nombres de las columnas entre paréntesis, separados por comas:

    CREATE INDEX idx_pname
    ON Persons (LastName, FirstName);

   --ELIMINAR INDICE:

  --Acceso MS:

   DROP INDEX index_name ON table_name;

  --Servidor SQL:

   DROP INDEX table_name.index_name;

  --DB2/Oracle:

   DROP INDEX index_name;

  --MySQL:

    ALTER TABLE table_name
    DROP INDEX index_name;