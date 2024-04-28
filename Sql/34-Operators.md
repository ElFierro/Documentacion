## Operadores

#### Aritmeticos:

```sql
+  --Add 
-  --Subtract 
*  --Multiply 
/  --Divide 
%  --Modulo
```

#### Bit

```sql
&  --Bitwise AND
|  --Bitwise OR
^  --Bitwise exclusive OR
```

#### Comparacion:

```sql
=  --Equal to 
>  --Greater than 
<  --Less than 
>= --Greater than or equal to 
<= --Less than or equal to 
<> --Not equal to
```

#### Compuestos: 

```sql
+=  --Add equals
-=  --Subtract equals
*=  --Multiply equals
/=  --Divide equals
%=  --Modulo equals
&=  --Bitwise AND equals
^-= --Bitwise exclusive equals
|*= --Bitwise OR equals
```

#### Logicos:

```sql
ALL      --VERDADERO si todos los valores de la subconsulta cumplen la condición
AND      --VERDADERO si todas las condiciones separadas por AND son VERDADERAS
ANY      --VERDADERO si alguno de los valores de la subconsulta cumple la condición
BETWEEN  --VERDADERO si el operando está dentro del rango de comparaciones
EXISTS   --VERDADERO si la subconsulta devuelve uno o más registros
IN       --VERDADERO si el operando es igual a uno de una lista de expresiones
LIKE     --VERDADERO si el operando coincide con un patrón
NOT      --Muestra un registro si la(s) condición(es) NO ES VERDADERA
OR       --VERDADERO si alguna de las condiciones separadas por OR es VERDADERA
SOME     --VERDADERO si alguno de los valores de la subconsulta cumple la condición
```