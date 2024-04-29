# Bucles
Python tiene dos comandos de bucle primitivos:

- mientras bucles
- para bucles	

## WHILE
Con el bucle while podemos ejecutar un conjunto de declaraciones siempre que una condición sea verdadera.
```python
i = 1
while i < 6:			# 1 2 3 4 5 
  print(i)
  i += 1
```
#### Break
Con la sentencia break podemos detener el ciclo incluso si la condición while es verdadera:
```python
i = 1
while i < 6:
  print(i)
	if i == 3:		# 1 2 3
		break
	i += 1
```
#### Continue 
Con la instrucción continue podemos detener la iteración actual y continuar con la siguiente:
```python
i = 1
while i < 6:
  i += 1
	if i == 3:		# 1 2 4 5 6
		continue
	print(i)
```
#### Else
Con la instrucción else podemos ejecutar un bloque de código una vez cuando la condición ya no sea verdadera:
```python

i = 1
while i < 6:
	print(i)
	i += 1 								## 1 2 3 4 5 i is no longer less than 6
else:	
	print("i is no longer less than 6")
```
## FOR
Un bucle for se utiliza para iterar sobre una secuencia (es decir, una lista, una tupla, un diccionario, un conjunto o una cadena).
```python
fruits = ["apple", "banana", "cherry"]
for x in fruits:					#apple banana cherry
	print(x)
```
#### Cadenas
Incluso las cadenas son objetos iterables y contienen una secuencia de caracteres:
```python
for x in "banana":							#b a n a n a
	print(x)
```
#### Break
Con la instrucción break podemos detener el ciclo antes de que haya recorrido todos los elementos:
```python
for x in fruits:
  print(x)
	if x == "banana":
		break
```
#### Continue
Con la instrucción continue podemos detener la iteración actual del bucle y continuar con la siguiente:
```python
for x in fruits:
	if x == "banana":
		continue
  print(x)
```
#### Rango()
Para recorrer un conjunto de código un número específico de veces, podemos usar la función range()
```python
for x in range(6):
  print(x)			# 0 1 2 3 4 5
```
tiene por defecto 0 como valor inicial, es posible especificar el valor inicial agregando un parámetro:
```python
for x in range(2, 6):
  print(x)			#2 3 4 5 
```
por defecto incrementa la secuencia en 1,es posible especificar el valor de incremento agregando un tercer parámetro:
```python
for x in range(2, 30, 3): 
  print(x)				#2 5 8 11 14 17 20 23 26 29
```
#### Else
La palabra clave else en un for especifica un bloque de código que se ejecutará cuando finalice el bucle:
```python
for x in range(6):
	print(x)
else:
	print("Finally finished!")			#0 1 2 3 4 5 Finally finished!
```
#### For anidado
Un bucle anidado es un bucle dentro de un bucle.
```python
adj = ["red", "big", "tasty"]
fruits = ["apple"]

for x in adj:
	for y in fruits:
		print(x, y) #red apple	big apple 	tasty apple 
```
#### La declaración del pase
os bucles forl no pueden estar vacíos, pero si por alguna razón tiene un bucle for sin contenido, ingrese la declaración pass para evitar recibir un error.
```python
for x in [0, 1, 2]:
  pass
```
