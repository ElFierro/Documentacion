# Restricciones

Las restricciones SQL se utilizan para especificar reglas para los datos de una tabla.
Las restricciones se pueden especificar cuando se crea la tabla con la sentencia CREATE TABLE o después de crear la tabla con la sentencia ALTER TABLE.

#### Sintaxis:

```ssh
CREATE TABLE table_name (
  column1 datatype constraint,
  column2 datatype constraint,
  column3 datatype constraint,
  ....
);
```

Las restricciones se utilizan para limitar el tipo de datos que pueden incluirse en una tabla. 
Esto garantiza la precisión y confiabilidad de los datos de la tabla. 
Si hay alguna infracción entre la restricción y la acción de datos, la acción se cancela.

-Las restricciones pueden ser a nivel de columna o de tabla. 