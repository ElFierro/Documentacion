# variables​​​​

Las variables son contenedores para almacenar valores de datos.

## Creando variables

Una variable se crea en el momento en que se le asigna un valor por primera vez.


```python
x = 5
y = "John"
```

## Casting

Si desea especificar el tipo de datos de una variable, puede hacerlo mediante conversión.

```python
x = str(3)    # x will be '3'
y = int(3)    # y will be 3
z = float(3)  # z will be 3.0
```

## Obtener el tipo
Puede obtener el tipo de datos de una variable con la función type().

```python
x = 5
y = "John"
```

## Distingue mayúsculas y minúsculas

Los nombres de las variables distinguen entre mayúsculas y minúsculas.

```python
a = 4
A = "Sally"
#A will not overwrite a
```

## Nombres de variables

Una variable puede tener un nombre corto o un nombre más descriptivo (edad, nombre_auto, volumen_total). Reglas para variables de Python:

- El nombre de una variable debe comenzar con una letra o un carácter de subrayado.
- El nombre de una variable no puede comenzar con un número
- El nombre de una variable solo puede contener caracteres alfanuméricos y guiones bajos (Az, 0-9 y _).
- Los nombres de las variables distinguen entre mayúsculas y minúsculas (edad, Edad y EDAD son tres variables diferentes)
- Un nombre de variable no puede ser ninguna de las palabras clave de Python.

#### Nombres de variables de varias palabras

Los nombres de variables con más de una palabra pueden resultar difíciles de leer.
Hay varias técnicas que puede utilizar para hacerlos más legibles:

#### Camel Case

Cada palabra, excepto la primera, comienza con mayúscula:

```python
myVariableName = "John"
```

#### Pascal Case

Cada palabra comienza con una letra mayúscula:

```python
MyVariableName = "John"
```

#### Snake Case

Cada palabra está separada por un carácter de subrayado:

```python
my_variable_name = "John"
```

## Muchos valores para múltiples variables

Python te permite asignar valores a múltiples variables en una línea:

```python
x, y, z = "Orange", "Banana", "Cherry"
```

## Un valor para múltiples variables
Y puedes asignar el mismo valor a múltiples variables en una línea:

```python
x = y = z = "Orange"
```

## Desempaquetar una colección

Si tiene una colección de valores en una lista, tupla, etc. Python le permite extraer los valores en variables. A esto se le llama desempacar.

```python
fruits = ["apple", "banana", "cherry"]
x, y, z = fruits
```

## Variables globales
Las variables que se crean fuera de una función se conocen como variables globales.

Si crea una variable con el mismo nombre dentro de una función, esta variable será local y solo podrá usarse dentro de la función. 

```python
x = "awesome" #Variable global

def myfunc():
  x = "fantastic"    #Variable local
  print("Python is " + x) #Python is fantastic

myfunc()

print("Python is " + x) #Python is awesome
```

Para crear una variable global dentro de una función, puede usar la globalpalabra clave.

```python
def myfunc():
  global x
  x = "fantastic"

myfunc()

print("Python is " + x) #Python is fantastic
```