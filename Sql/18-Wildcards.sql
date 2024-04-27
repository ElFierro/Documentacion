--COMODIN
 
 --Se utiliza un carácter comodín para sustituir uno o más caracteres en una cadena.

  -- % Representa cero o más caracteres.
  -- _ Representa un solo caracter.
  -- [] Representa cualquier carácter entre corchetes *
  -- ^ Representa cualquier carácter que no esté entre paréntesis *
  -- - Representa cualquier carácter dentro del rango especificado *
  --{} Representa cualquier carácter escapado **

  --* No compatible con bases de datos PostgreSQL y MySQL.
  --** Compatible únicamente con bases de datos Oracle.

  %
 
      --El comodín % representa cualquier número de caracteres, incluso cero caracteres.

      --EJEMPLO:

      --Devuelve todos los clientes que contienen el patrón 'mer':

       SELECT * FROM Customers
       WHERE CustomerName LIKE '%mer%';

  _

     --El comodín _ representa un solo carácter.

     --EJEMPLO:

      --Devuelve todos los clientes que Citycomienzan con "L", seguidos de 3 caracteres cualesquiera y terminan con "on":

       SELECT * FROM Customers
       WHERE City LIKE 'L___on';

  []

     --El comodín [] devuelve un resultado si alguno de los caracteres incluidos coincide.

     --EJEMPLO:

      --El []comodín devuelve un resultado si alguno de los caracteres incluidos coincide.

       SELECT * FROM Customers
       WHERE CustomerName LIKE '[bsp]%';

  -

     --El comodín - le permite especificar una variedad de caracteres dentro del []comodín.

     --EJEMPLO:

     --Devuelve todos los clientes que comienzan con "a", "b", "c", "d", "e" o "f":

       SELECT * FROM Customers
       WHERE CustomerName LIKE '[a-f]%';

  --COMBINAR

     --Cualquier comodín, como % y _ , se puede utilizar en combinación con otros comodines.

     --EJEMPLO:

      --Devuelve todos los clientes que comienzan con "a" y tienen al menos 3 caracteres de longitud:

       SELECT * FROM Customers
       WHERE CustomerName LIKE 'a__%';

  --SIN COMODIN

     --Si no se especifica ningún comodín, la frase debe tener una coincidencia exacta para devolver un resultado.

     --EJEMPLO:

      --Devolver todos los clientes de España:

       SELECT * FROM Customers
       WHERE Country LIKE 'Spain';
