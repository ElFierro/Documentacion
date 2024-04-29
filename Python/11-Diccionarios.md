# Diccionario
Los diccionarios se utilizan para almacenar valores de datos en pares clave:valor.

Los elementos del diccionario están ordenados,son modificables y no permiten duplicados.

## ¿Ordenado o desordenado?
A partir de la versión 3.7 de Python, los diccionarios están ordenados . 
En Python 3.6 y versiones anteriores, los diccionarios están desordenados .
	
## Cambiable
Los diccionarios se pueden cambiar, lo que significa que podemos cambiar, agregar o 
eliminar elementos una vez creado el diccionario.

Duplicados no permitidos
Los diccionarios no pueden tener dos elementos con la misma clave:
```python
thisdict = {				#{'brand': 'Ford', 'model': 'Mustang', 'year': 2020}
	"brand": "Ford",
	"model": "Mustang",
	"year": 1964,
	"year": 2020
}
```

## Longitud

Para determinar cuántos elementos tiene un diccionario, use la función len():
```python
len(thisdict)
```
## Elementos del diccionario
Los valores de los elementos del diccionario pueden ser de cualquier tipo de datos:
```python
thisdict = {					#{'brand': 'Ford', 'electric': False, 'year': 1964, 
	"brand": "Ford",    #'colors': ['red', 'white', 'blue']}
	"electric": False,
	"year": 1964,
	"colors": ["red", "white", "blue"]
}
```
## El constructor dict()
También es posible utilizar el constructor dict() para crear un diccionario.
```python
thisdict = dict(name = "John", age = 36, country = "Norway")
```
## Accediendo a elementos
Puede acceder a los elementos de un diccionario consultando su nombre clave, entre corchetes:
```python
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
thisdict["model"]			#Mustang
```
También hay un método llamado get()que te dará el mismo resultado:
```python
thisdict.get("model")   	#Mustang
```
## Obtener claves
El método keys() devolverá una lista de todas las claves del diccionario.
```python
thisdict.keys()			#dict_keys(['brand', 'model', 'year'])
```
## Obtener valores
El método values() devolverá una lista de todos los valores del diccionario.
```python
thisdict.values()		#['Ford', 'Mustang', 1964]
```
## Obtener artículos
El método items() devolverá cada elemento de un diccionario, como tuplas en una lista.
```python
thisdict.items()		#dict_items([('brand', 'Ford'), ('model', 'Mustang'), ('year', 1964)])
```
## Comprobar si la clave existe
Para determinar si una clave específica está presente en un diccionario, utilice la palabra clave in:
```python
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}

if "model" in thisdict:
  print("Yes, 'model' is one of the keys in the thisdict dictionary")
```
## cambiar valor
Puede cambiar el valor de un elemento específico consultando su nombre clave:
```python
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
thisdict["year"] = 2018			#{'brand': 'Ford', 'model': 'Mustang', 'year': 2018}
```
## Actualizar diccionario
El método update() actualizará el diccionario con los elementos del argumento dado.
```python
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}

thisdict.update({"year": 2020})		#{'brand': 'Ford', 'model': 'Mustang', 'year': 2020}
```
Si el artículo no existe, se agregará.

## Agregar elementos
Agregar un elemento al diccionario se realiza usando una nueva clave de índice y asignándole un valor:
```python
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
thisdict["color"] = "red"		#{'brand': 'Ford', 'model': 'Mustang', 'year': 1964, 'color': 'red'}
```
## Eliminar elementos
Existen varios métodos para eliminar elementos de un diccionario:

El método pop() elimina el elemento con el nombre de clave especificado:
```python
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
thisdict.pop("model")		#{'brand': 'Ford', 'model': 'Mustang'}
```
El método popitem() elimina el último elemento insertado
```python
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
thisdict.popitem()		#{'brand': 'Ford', 'model': 'Mustang'}
```
La palabra clave del elimina el elemento con el nombre de clave especificado:
```python
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
del thisdict["model"]	    #{'brand': 'Ford', 'year': 1964}
```
La palabra clave del también puede eliminar el diccionario por completo:
```python
del thisdict			#Eliminar por completo
```
El método clear() vacía el diccionario:
```python
thisdict.clear()		#{}
```
## Recorrer
Puede recorrer un diccionario mediante un bucle for.
```python
for x in thisdict:
  print(x)
```
También puedes usar el método values() para devolver valores de un diccionario:
```python
for x in thisdict.values():
  print(x)
```
Puedes usar el método keys() para devolver las claves de un diccionario:
```python
for x in thisdict.keys():
  print(x)
```
Recorra las claves y los valores utilizando el método items():
```python
for x, y in thisdict.items():
  print(x, y)
```
## Copiar un diccionario
No puedes copiar un diccionario simplemente escribiendo dict2 = dict1
```python
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
mydict = thisdict.copy()		
```
Otra forma de realizar una copia es utilizar la función incorporada dict().
```python
mydict = dict(thisdict)			
```
## Diccionarios anidados
Un diccionario puede contener diccionarios, esto se denomina diccionarios anidados.
```python
myfamily = {
  "child1" : {
    "name" : "Emil",
    "year" : 2004
  },
  "child2" : {
    "name" : "Tobias",
    "year" : 2007
  }
}
```
## Acceder a elementos

Para acceder a elementos de un diccionario anidado, utilice el nombre de los diccionarios, comenzando con el diccionario externo:
```python
myfamily["child2"]["name"]		#Tobias
```
#### Recorrer diccionarios anidados
Puede recorrer un diccionario utilizando un método items() como este:
```python
for x, obj in myfamily.items():
  print(x)

  for y in obj:
    print(y + ':', obj[y])
```