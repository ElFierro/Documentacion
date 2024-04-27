--LIKE
 --El operador LIKE se utiliza en una cláusula WHERE para buscar un patrón específico en una columna.
 --Hay dos comodines que se utilizan a menudo junto con el operador LIKE:

  --* El signo de porcentaje % representa cero, uno o varios caracteres.
  --* El signo de subrayado _ representa un solo carácter.

 --SINTAXIS:

  SELECT column1, column2, ...
  FROM table_name
  WHERE columnN LIKE pattern;

 --EJEMPLO:

  --Seleccione todos los clientes que comiencen con la letra "a":

   SELECT * FROM Customers
   WHERE CustomerName LIKE 'a%';

 --COMODIN:

 --El comodín _ representa un solo carácter.

 --EJEMPLO:

  --Devuelve todos los clientes de una ciudad que comienza con 'L' seguida de un carácter comodín, luego 'nd' y luego dos caracteres comodín:

   SELECT * FROM Customers
   WHERE city LIKE 'L_nd__';

 --El comodín % representa cualquier número de caracteres, incluso cero caracteres.

 --EJEMPLO:

  --Devuelve todos los clientes de una ciudad que contiene la letra 'L':

   SELECT * FROM Customers
   WHERE city LIKE '%L%';


 --COMIENZA CON:
 
  --Para devolver registros que comiencen con una letra o frase específica, agregue % al final de la letra o frase.

  --EJEMPLO:

   --Devolver todos los clientes que comiencen con 'La':

    SELECT * FROM Customers
    WHERE CustomerName LIKE 'La%';

 --TERMINA CON:

  --Para devolver registros que terminan con una letra o frase específica, agregue % al principio de la letra o frase.

  --EJEMPLO:

   --Devuelve todos los clientes que terminan en 'a':

    SELECT * FROM Customers
    WHERE CustomerName LIKE '%a';

   --También puedes combinar "empieza por" y "termina por":
   --Devuelve todos los clientes que comienzan con "b" y terminan con "s":

    SELECT * FROM Customers
    WHERE CustomerName LIKE 'b%s';

 --CONTIENE:

  --Para devolver registros que contengan una letra o frase específica, agregue % tanto antes como después de la letra o frase.

  --EJEMPLO:

   --Devolver todos los clientes que contengan la frase 'o'
  
    SELECT * FROM Customers
    WHERE CustomerName LIKE '%or%';

 --COMBINAR COMODINES

  --Cualquier comodín, como % y _ , se puede utilizar en combinación con otros comodines.

  --EJEMPLO:

   --Devuelve todos los clientes que comienzan con "a" y tienen al menos 3 caracteres de longitud:

    SELECT * FROM Customers
    WHERE CustomerName LIKE 'a__%';

 --SIN COMODIN:

  --Si no se especifica ningún comodín, la frase debe tener una coincidencia exacta para devolver un resultado.

  --EJEMPLO:

   --Devolver todos los clientes de España:

    SELECT * FROM Customers
    WHERE Country LIKE 'Spain';