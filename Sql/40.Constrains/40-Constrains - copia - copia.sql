--ALTER TABLE

 --La sentencia ALTER TABLE se utiliza para agregar, eliminar o modificar columnas en una tabla existente.
 --La sentencia ALTER TABLE también se utiliza para agregar y eliminar varias restricciones en una tabla existente.

 --SINTAXIS:

  --AÑADIR COLUMNA:

   ALTER TABLE table_name
   ADD column_name datatype;

  --ELIMINAR COLUMNA:

   ALTER TABLE table_name
   DROP COLUMN column_name;

  --RENOMBRAR COLUMNA:

   ALTER TABLE table_name
   RENAME COLUMN old_name to new_name;

  --MODIFICAR TIPO DE DATOS:

   --Servidor SQL/Acceso MS:

      ALTER TABLE table_name
      ALTER COLUMN column_name datatype;

   --MYSQL

      ALTER TABLE table_name
      MODIFY COLUMN column_name datatype;
       
   --Oracle
  
      ALTER TABLE table_name
      MODIFY column_name datatype;

  --EJEMPLO:

   --AÑADIR COLUMNA:

     ALTER TABLE Customers
     ADD Email varchar(255);

   --ELIMINAR COLUMNA:

     ALTER TABLE Customers
     DROP COLUMN Email;

   --MODIFICAR TIPO DE DATOS:

     ALTER TABLE Persons
     ALTER COLUMN DateOfBirth year;
