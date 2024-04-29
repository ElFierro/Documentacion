# Condicionales

Python admite las condiciones lógicas habituales de las matemáticas:

- Es igual a: a == b
- No es igual a: a != b
- Menos que: a < b
- Menor o igual a: a <= b
- Mayor que: a > b
- Mayor o igual a: a >= b

Estas condiciones se pueden utilizar de varias maneras, más comúnmente en "declaraciones if" y bucles.
## if 
para especificar un bloque de código que se ejecutará, si una condición especificada es verdadera
```python
a = 33
b = 200
if b > a:
  print("b is greater than a")    #b is greater than a
```
## Sangría
Python se basa en la sangría (espacios en blanco al principio de una línea) para definir el alcance en el código.

## elif
La palabra clave elif es para especificar una nueva condición para probar, si la primera condición es falsa
```python
a = 33
b = 33
if b > a:
  print("b is greater than a")
elif a == b:
  print("a and b are equal")     # a and b are equal
```
## Else
La palabra clave else captura cualquier cosa que no esté cubierta por las condiciones anteriores.
```python
a = 200
b = 33
if b > a:
  print("b is greater than a")
else:
  print("b is not greater than a")      #b is not greater than a
```
## Operadores Ternarios 

Si solo tiene una declaración para ejecutar, una para if y otra para else, puede ponerlas todas en la misma línea:
```python
a = 2
b = 330
print("A") if a > b else print("B")

a = 330
b = 330
print("A") if a > b else print("=") if a == b else print("B")     #=
```
## And
La palabra clave and es un operador lógico y se utiliza para combinar declaraciones condicionales:
```python
a = 200
b = 33
c = 500
if a > b and c > a:
  print("Both conditions are True")       #Both conditions are True
```
## Or
La palabra clave or es un operador lógico y se utiliza para combinar declaraciones condicionales:
```python
a = 200
b = 33
c = 500
if a > b or a > c:
  print("At least one of the conditions is True")   #At least one of the conditions is True
```
## Not
La palabra clave not es un operador lógico y se utiliza para invertir el resultado de la declaración condicional:
```python
a = 33
b = 200
if not a > b:
  print("a is NOT greater than b")     #a is NOT greater than b
```
## If anidado
Puede tener declaraciones if dentro de declaraciones if, esto se llama declaraciones anidadas if .
```python
x = 41

if x > 10:
  print("Above ten,")     #Above ten,
  if x > 20:
    print("and also above 20!")    #and also above 20!
  else:
    print("but not above 20.")
```
## La declaración del pase
Las declaraciones if no pueden estar vacías, pero si por alguna razón tiene una ifdeclaración sin contenido, introdúzcala passpara evitar recibir un error.
```python
a = 33
b = 200
if b > a:
  pass
```