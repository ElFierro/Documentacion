# Json
JSON es una sintaxis para almacenar e intercambiar datos.
JSON es texto escrito con notación de objetos JavaScript.

Python tiene un paquete integrado llamado json, que se puede utilizar para trabajar con datos JSON.
```python
import json
```
## Convertir de JSON a Python
Si tiene una cadena JSON, puede analizarla utilizando el método json.loads().
```python 
import json

x =  '{ "name":"John", "age":30, "city":"New York"}' #Json 
y = json.loads(x)   # parse x:

#the result is a Python dictionary:
print(y["age"])       #30
```
## Convertir de Python a JSON
Si tiene un objeto Python, puede convertirlo en una cadena JSON utilizando el método json.dumps().
```python
import json

x = {     # a Python object (dict):
  "name": "John",
  "age": 30,
  "city": "New York"
}

y = json.dumps(x)  # convert into JSON:

#the result is a JSON string:
print(y)    #{"name": "John", "age": 30, "city": "New York"}
```
Puede convertir objetos Python de los siguientes tipos en cadenas JSON:

        
| list | json.dumps(["apple", "bananas"])|
| tuple | json.dumps(("apple", "bananas"))|
| str | json.dumps("hello")|
| int | json.dumps(42)|
| float | json.dumps(31.76)|
| True | json.dumps(True)|
| False | json.dumps(False) |
| None | json.dumps(None)|

Cuando convierte de Python a JSON, los objetos de Python se convierten al equivalente de JSON (JavaScript):

| Python   | Json      |
| -------- | --------- |
| dict | Object|
| list | Array|
| tuple | Array|
| str | String|
| int | Number|
| float | Number|
| True | true|
| False | false|
| None | null|

Convierta un objeto Python que contenga todos los tipos de datos legales:
```python
import json

x = {
 "name": "John",
 "age": 30,
 "married": True,
 "divorced": False,
 "children": ("Ann","Billy"),
 "pets": None,
 "cars": [
   {"model": "BMW 230", "mpg": 27.5},
   {"model": "Ford Edge", "mpg": 24.1}
 ]
}

print(json.dumps(x))
#{"name": "John", "age": 30, "married": true, "divorced": false, "children": ["Ann","Billy"], "pets": null, "cars":
#[{"model": "BMW 230", "mpg": 27.5}, {"model": "Ford Edge", "mpg": 24.1}]}
```
## Formatear el resultado
El ejemplo anterior imprime una cadena JSON, pero no es muy fácil de leer, sin sangrías ni saltos de línea.
El método json.dumps() tiene parámetros para facilitar la lectura del resultado:

Utilice el parámetro indent para definir el número de sangrías:
```python
json.dumps(x, indent=4)

{
 "name": "John",
 "age": 30,
 "married": true,
 "divorced": false,
 "children": [
  "Ann",
  "Billy"
 ],
 "pets": null,
 "cars": [
  {
   "model": "BMW 230",
   "mpg": 27.5
  },
  {
   "model": "Ford Edge",
   "mpg": 24.1
  }
 ]
}
```
Utilice el separatorsparámetro para cambiar el separador predeterminado:
```python
json.dumps(x, indent=4, separators=(". ", " = "))

{
 "name" = "John".
 "age" = 30.
 "married" = true.
 "divorced" = false.
 "children" = [
   "Ann".
   "Billy"
 ].
 "pets" = null.
 "cars" = [
  {
    "model" = "BMW 230".
    "mpg" = 27.5
  }.
  {
    "model" = "Ford Edge".
    "mpg" = 24.1
  }
 ]
}
```
## Ordenar el resultado
Utilice el parámetro sort_keys para especificar si el resultado debe ordenarse o no:

json.dumps(x, indent=4, sort_keys=True)
```python
{
 "age": 30,
 "cars": [
  {
    "model": "BMW 230",
    "mpg": 27.5
  },
  {
    "model": "Ford Edge",
    "mpg": 24.1
  }
 ],
 "children": [
  "Ann",
  "Billy"
 ],
 "divorced": false,
 "married": true,
 "name": "John",
 "pets": null
}
```