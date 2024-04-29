## Herencia
La herencia nos permite definir una clase que hereda todos los métodos y propiedades de otra clase.
**La clase principal** es la clase de la que se hereda, también llamada clase base.
**La clase hija** es la clase que hereda de otra clase, también llamada clase derivada.

## Clase padre
Cualquier clase puede ser una clase principal, por lo que la sintaxis es la misma que la de crear cualquier otra clase:
```python		
class Person:
 def __init__(self, fname, lname):
  self.firstname = fname
  self.lastname = lname

 def printname(self):
  print(self.firstname, self.lastname)
```
## Clase hija
Para crear una clase que herede la funcionalidad de otra clase, envíe la clase principal como parámetro al crear la clase secundaria:
```python		
class Student(Person):
 pass

x = Student("Mike", "Olsen")
x.printname()     #"Mike Olsen"
```
## Funcion __init__
Cuando agrega la función __init__(), la clase secundaria ya no heredará la __init__()función principal.
Para mantener la herencia de la función principal, agregue una llamada a la función __init__() principal :__init__()
```python		
class Student(Person):
 def __init__(self, fname, lname):
  Person.__init__(self, fname, lname)
```
#### función super()
Python también tiene una función super() que hará que la clase hija herede todos los métodos y propiedades de su clase padre:
```python		
class Student(Person):
 def __init__(self, fname, lname):
  super().__init__(fname, lname)
```
Al usar la función super(), no es necesario usar el nombre del elemento principal; automáticamente heredará los métodos y propiedades de su elemento principal.

## Agregar propiedades
Agregue una propiedad llamada graduationyear a la clase Student:
```python		
class Student(Person):
 def __init__(self, fname, lname, year):
   super().__init__(fname, lname)
   self.graduationyear = year

x = Student("Mike", "Olsen", 2019)
```
## Agregar métodos
Agregue un método llamado welcome a la clase Student:
```python		
class Person:
 def __init__(self, fname, lname):
  self.firstname = fname
  self.lastname = lname

 def printname(self):
  print(self.firstname, self.lastname)

class Student(Person):
 def __init__(self, fname, lname, year):
  super().__init__(fname, lname)
  self.graduationyear = year

 def welcome(self):
  print("Welcome", self.firstname, self.lastname, "to the class of", self.graduationyear)

x = Student("Mike", "Olsen", 2019)   #Welcome Mike Olsen to the class of 2019
x.welcome()
```