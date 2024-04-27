--CASE
 --La expresión CASE pasa por condiciones y devuelve un valor cuando se cumple la primera condición (como una sentencia si-entonces-si no). 
 --Entonces, una vez que una condición es verdadera, dejará de leer y devolverá el resultado. 
 --Si ninguna condición es verdadera, devuelve el valor de la ELSEcláusula.

 --Si no hay ninguna parte ELSE y ninguna condición es verdadera, devuelve NULL.

 --SINTAXIS:

  CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
  END;

 --EJEMPLO:

  --El siguiente SQL pasa por las condiciones y devuelve un valor cuando se cumple la primera condición:

   SELECT OrderID, Quantity,
   CASE
   WHEN Quantity > 30 THEN 'The quantity is greater than 30'
   WHEN Quantity = 30 THEN 'The quantity is 30'
   ELSE 'The quantity is under 30'
   END AS QuantityText
   FROM OrderDetails;