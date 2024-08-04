# Comodin
 
 Se utiliza un carácter comodín para sustituir uno o más caracteres en una cadena.

- % Representa cero o más caracteres.
- _ Representa un solo caracter.
- [] Representa cualquier carácter entre corchetes *
- ^ Representa cualquier carácter que no esté entre paréntesis *
- -Representa cualquier carácter dentro del rango especificado *
- {} Representa cualquier carácter escapado **

## %
 
El comodín % representa cualquier número de caracteres, incluso cero caracteres.

#### Ejemplo:

Devuelve todos los clientes que contienen el patrón 'mer':

```sql
SELECT * FROM Customers
WHERE CustomerName LIKE '%mer%';
```

## _

El comodín _ representa un solo carácter.

#### Ejemplo:

Devuelve todos los clientes que Citycomienzan con "L", seguidos de 3 caracteres cualesquiera y terminan con "on":

```sql
SELECT * FROM Customers
WHERE City LIKE 'L___on';
```

## []

#### Ejemplo:

El comodín [] devuelve un resultado si alguno de los caracteres incluidos coincide.

```sql
SELECT * FROM Customers
WHERE CustomerName LIKE '[bsp]%';
```

## -

El comodín - le permite especificar una variedad de caracteres dentro del comodín [].

#### Ejemplo:

Devuelve todos los clientes que comienzan con "a", "b", "c", "d", "e" o "f":

```sql
SELECT * FROM Customers
WHERE CustomerName LIKE '[a-f]%';
```

## Combinar

Cualquier comodín, como % y _ , se puede utilizar en combinación con otros comodines.

#### Ejemplo:

Devuelve todos los clientes que comienzan con "a" y tienen al menos 3 caracteres de longitud:

```sql
SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';
```

## Sin comodin

Si no se especifica ningún comodín, la frase debe tener una coincidencia exacta para devolver un resultado.

#### Ejemplo:

Devolver todos los clientes de España:

```sql
SELECT * FROM Customers
WHERE Country LIKE 'Spain';
```
