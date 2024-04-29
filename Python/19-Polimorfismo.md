# Polimorfismo
La palabra "polimorfismo" significa "muchas formas" y en programación se refiere a métodos/funciones/operadores con el mismo nombre que se pueden ejecutar en muchos objetos o clases.

## Polimorfismo de función
Un ejemplo de una función de Python que se puede utilizar en diferentes objetos es la función len().
```python
#Cadena
x = "Hello World!"
len(x)            #12

#tupla
mytuple = ("apple", "banana", "cherry")
len(mytuple)       #3

#Diccionario
thisdict = {
  "brand": "Ford",
  "model": "Mustang"
}
len(thisdict)       #2
```
## Polimorfismo de clase
El polimorfismo se usa a menudo en métodos de clase, donde podemos tener varias clases con el mismo nombre de método.
Por ejemplo, digamos que tenemos tres clases: Car, Boaty y Plane, todas tienen un método llamado move():
```python
#Clases
class Car:
 def __init__(self, brand, model):
  self.brand = brand
  self.model = model

 def move(self):    #Car -> move()
  print("Drive!")

class Boat:
 def __init__(self, brand, model):
  self.brand = brand
  self.model = model

 def move(self):    #Boat -> move()
  print("Sail!")

class Plane:
 def __init__(self, brand, model):
  self.brand = brand
  self.model = model

 def move(self):    #Plane -> move()
  print("Fly!")

car1 = Car("Ford", "Mustang")       #Create a Car class
boat1 = Boat("Ibiza", "Touring 20") #Create a Boat class
plane1 = Plane("Boeing", "747")     #Create a Plane class

for x in (car1, boat1, plane1):
  x.move()					#Drive! Sail! Fly!
```
## Polimorfismo de clase de herencia
¿Qué pasa con las clases con clases secundarias con el mismo nombre? ¿Podemos usar polimorfismo allí?
```python
class Vehicle:
 def __init__(self, brand, model):
  self.brand = brand
  self.model = model

 def move(self):
   print("Move!")  

class Car(Vehicle):   #Ford Mustang Move! 
 pass

class Boat(Vehicle):  #Ibiza Touring 20 Sail!
 def move(self):
  print("Sail!")

class Plane(Vehicle):  #Boeing 747 Fly!
 def move(self):
  print("Fly!")

car1 = Car("Ford", "Mustang") #Create a Car object
boat1 = Boat("Ibiza", "Touring 20") #Create a Boat object
plane1 = Plane("Boeing", "747") #Create a Plane object

for x in (car1, boat1, plane1):
 print(x.brand)
 print(x.model)
 x.move()
```
En el ejemplo anterior puedes ver que la clase Car está vacía, pero hereda brand, model y move() de Vehicle.

Las clases Boat y Plane también heredan brand, model y move() de Vehicle, pero ambas anulan el método move().