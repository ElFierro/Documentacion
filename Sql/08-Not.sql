--NOT
 --El operador NOT se utiliza en combinación con otros operadores para dar el resultado opuesto

 --SINTAXIS:
  SELECT column1, column2, ...
  FROM table_name
  WHERE NOT condition;

 --EJEMPLO:

  --Selecciona sólo los clientes que NO son de España:
   SELECT * FROM Customers
   WHERE NOT Country = 'Spain';

 --COMBINACIONES:

  --NOT LIKE EJEMPLO:

    --Seleccione clientes que no comiencen con la letra 'A':
     SELECT * FROM Customers
     WHERE CustomerName NOT LIKE 'A%';

  --NOT BETWEEN EJEMPLO:

    --Seleccione clientes con un ID de cliente que no esté entre 10 y 60:
     SELECT * FROM Customers
     WHERE CustomerID NOT BETWEEN 10 AND 60;

  --NOT IN EJEMPLO:

    --Seleccione clientes que no sean de París o Londres:
     SELECT * FROM Customers
     WHERE City NOT IN ('Paris', 'London');

  --NOT > EJEMPLO:

    --Seleccione clientes con un CustomerId no mayor a 50:
     SELECT * FROM Customers
     WHERE NOT CustomerID > 50;

  --NOT < EJEMPLO:

    --Seleccione clientes con un CustomerID no menor a 50:
     SELECT * FROM Customers
     WHERE NOT CustomerId < 50;
