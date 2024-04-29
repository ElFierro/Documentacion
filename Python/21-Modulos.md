# Modulos
Considere que un módulo es lo mismo que una biblioteca de códigos.
Un archivo que contiene un conjunto de funciones que desea incluir en su aplicación.

## Crear un modulo
Para crear un módulo simplemente guarde el código que desee en un archivo con la extensión de archivo .py:
```python
#mymodule.py
def greeting(name):
  print("Hello, " + name)
```
## Utilice un módulo
Ahora podemos usar el módulo que acabamos de crear, usando la declaración import:

import mymodule
mymodule.greeting("Jonathan")		#Hello, Jonathan

## Variables en el módulo
El módulo puede contener funciones, como ya se ha descrito, pero también variables de todo tipo (matrices, diccionarios, objetos, etc.):
```python
#mymodule.py
person1 = {
	"name": "John",
	"age": 36,
	"country": "Norway"
}
```
#Importe el módulo llamado mymodule y acceda al diccionario person1:
```python
import mymodule
a = mymodule.person1["age"]
print(a)							#36
```
## Cambiar el nombre de un módulo

Puedes crear un alias cuando importas un módulo, usando la palabra clave as:
```python
import mymodule as mx

a = mx.person1["age"]
print(a)
```
## Módulos incorporados
Hay varios módulos integrados en Python, que puedes importar cuando quieras.
```python
import platform

x = platform.system()		#Windows
print(x)
```
## Importar desde módulo
Puede optar por importar solo partes de un módulo utilizando la palabra clave from.
```python
def greeting(name):
  print("Hello, " + name)

person1 = {
  "name": "John",
  "age": 36,
  "country": "Norway"
}
```
Importe solo el diccionario person1 del módulo:
```python
from mymodule import person1

print (person1["age"])
```