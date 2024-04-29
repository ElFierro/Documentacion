# Iteradores 
Un iterador es un objeto que contiene un número contable de valores.

Un iterador es un objeto sobre el que se puede iterar, lo que significa que puede recorrer todos los valores.

Técnicamente, en Python, un iterador es un objeto que implementa el protocolo del iterador, que consta de los métodos __iter__() y __next__()

## Iterador vs Iterable
Las listas, tuplas, diccionarios y conjuntos son todos objetos iterables. Son contenedores iterables de los que puede obtener un iterador.
```python
mytuple = ("apple", "banana", "cherry")
myit = iter(mytuple)

print(next(myit))		#apple
print(next(myit))		#banana
print(next(myit))		#cherry
```

Las cadenas también son objetos iterables que contienen una secuencia de caracteres:
```python
mystr = "banana"
myit = iter(mystr)

print(next(myit))	#b
print(next(myit))	#a
print(next(myit))	#n
print(next(myit))	#a
print(next(myit))	#n
print(next(myit))	#a
```
## Recorriendo un iterador
También podemos usar un bucle for para iterar a través de un objeto iterable:
```python
mytuple = ("apple", "banana", "cherry")

for x in mytuple:
 print(x)
```
Iterar los caracteres de una cadena:
```python
mystr = "banana"

for x in mystr:
 print(x)
```
## Crear un iterador
Para crear un objeto/clase como iterador, debe implementar los métodos __iter__()y __next__() su objeto.

El método __iter__() actúa de manera similar, puede realizar operaciones (inicialización, etc.), pero siempre debe devolver el objeto iterador.
El método __next__() también le permite realizar operaciones y debe devolver el siguiente elemento de la secuencia.
```python
class MyNumbers:
 def __iter__(self):
  self.a = 1
  return self

 def __next__(self):
  x = self.a
  self.a += 1
  return x

myclass = MyNumbers()
myiter = iter(myclass)

print(next(myiter))		#1
print(next(myiter))		#2
print(next(myiter))		#3
print(next(myiter))		#4
print(next(myiter))		#5
```
## Detener iteracion
Para evitar que la iteración continúe para siempre, podemos usar la declaración StopIteration.
```python
class MyNumbers:
 def __iter__(self):
  self.a = 1
  return self

 def __next__(self):
  if self.a <= 20:
   x = self.a
   self.a += 1
   return x
  else:
   raise StopIteration

myclass = MyNumbers()
myiter = iter(myclass)

for x in myiter:
	print(x)		#1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
```