# Clases y objetos
Casi todo en Python es un objeto, con sus propiedades y métodos.
Una clase es como un constructor de objetos o un "modelo" para crear objetos.

## Crear clases
Para crear una clase, use la palabra clave class:
```python	
class MyClass:
 x = 5
```
## Crear objeto
Ahora podemos usar la clase llamada MyClass para crear objetos:
```python	
p1 = MyClass()
```
## La función __init__()
Todas las clases tienen una función llamada __init__(), que siempre se ejecuta cuando se inicia la clase.
Utilice la función __init__() para asignar valores a las propiedades del objeto u otras operaciones que sean necesarias cuando se crea el objeto:
```python	
class Person:
 def __init__(self, name, age):
  self.name = name
  self.age = age

p1 = Person("John", 36)
```
## La función __str__()

La función __str__() controla lo que se debe devolver cuando el objeto de clase se representa como una cadena.
Si la función __str__() no está configurada, se devuelve la representación de cadena del objeto:
```python	
class Person:
 def __init__(self, name, age):
  self.name = name
  self.age = age

 def __str__(self):
  return f"{self.name}({self.age})"   #John(36)

p1 = Person("John", 36)
```
## Métodos de objetos
Los objetos también pueden contener métodos. Los métodos en los objetos son funciones que pertenecen al objeto.
```python	
class Person:
 def __init__(self, name, age):
  self.name = name
  self.age = age

 def myfunc(self):
  print("Hello my name is " + self.name)  #Hello my name is John

p1 = Person("John", 36)
p1.myfunc()
```
El parámetro self es una referencia a la instancia actual de la clase y se utiliza para acceder a variables que pertenecen a la clase.
	
## Modificar propiedades de objeto
Puede modificar propiedades en objetos como este:
```python	
p1.age = 40
```
## Eliminar propiedades del objeto
puede eliminar propiedades de objetos utilizando la palabra clave del:
```python	
del p1.age
```
## Eliminar objetos
Puede eliminar objetos utilizando la palabra clave del:
```python	
del p1
```