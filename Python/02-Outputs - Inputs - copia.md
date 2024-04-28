## variables​​​​

Las variables son contenedores para almacenar valores de datos.

#### Creando variables

Python no tiene ningún comando para declarar una variable.

Una variable se crea en el momento en que se le asigna un valor por primera vez.

Ejemplo

```python
x = 5
y = "John"
print(x)
print(y)
```

#### Casting

Si desea especificar el tipo de datos de una variable, puede hacerlo mediante conversión.

Ejemplo

```python
x = str(3)    # x will be '3'
y = int(3)    # y will be 3
z = float(3)  # z will be 3.0
```

#### Obtener el tipo
Puede obtener el tipo de datos de una variable con la función type().

```python
x = 5
y = "John"
print(type(x))
print(type(y))
```

#### ¿Comillas simples o dobles?
Las variables de cadena se pueden declarar mediante comillas simples o dobles:

Ejemplo

```python
x = "John"
# is the same as
x = 'John'
```

#### Distingue mayúsculas y minúsculas

Los nombres de las variables distinguen entre mayúsculas y minúsculas.

Ejemplo
Esto creará dos variables:

```python
a = 4
A = "Sally"
#A will not overwrite a
```

#### Nombres de variables

Una variable puede tener un nombre corto (como xey) o un nombre más descriptivo (edad, nombre_auto, volumen_total). Reglas para variables de Python:

- El nombre de una variable debe comenzar con una letra o un carácter de subrayado.
- El nombre de una variable no puede comenzar con un número
- El nombre de una variable solo puede contener caracteres alfanuméricos y guiones bajos (Az, 0-9 y _).
- Los nombres de las variables distinguen entre mayúsculas y minúsculas (edad, Edad y EDAD son tres variables diferentes)
- Un nombre de variable no puede ser ninguna de las palabras clave de Python .

Ejemplo

Nombres de variables legales:

```python
myvar = "John"
my_var = "John"
_my_var = "John"
myVar = "John"
MYVAR = "John"
myvar2 = "John"
```

#### Nombres de variables de varias palabras

Los nombres de variables con más de una palabra pueden resultar difíciles de leer.
Hay varias técnicas que puede utilizar para hacerlos más legibles:

Camel Case

Cada palabra, excepto la primera, comienza con mayúscula:

```python
myVariableName = "John"
```

Pascal Case

Cada palabra comienza con una letra mayúscula:

```python
MyVariableName = "John"
```

Snake Case

Cada palabra está separada por un carácter de subrayado:

```python
my_variable_name = "John"
```

#### Muchos valores para múltiples variables

Python te permite asignar valores a múltiples variables en una línea:

Ejemplo

```python
x, y, z = "Orange", "Banana", "Cherry"
print(x)
print(y)
print(z)
```

#### Un valor para múltiples variables
Y puedes asignar el mismo valor a múltiples variables en una línea:

Ejemplo

```python
x = y = z = "Orange"
print(x)
print(y)
print(z)
```

#### Desempaquetar una colección

Si tiene una colección de valores en una lista, tupla, etc. Python le permite extraer los valores en variables. A esto se le llama desempacar .

Ejemplo
Descomprimir una lista:

```python
fruits = ["apple", "banana", "cherry"]
x, y, z = fruits
print(x)
print(y)
print(z)
```

#### Variables globales
Las variables que se crean fuera de una función (como en todos los ejemplos anteriores) se conocen como variables globales.

Ejemplo

Cree una variable fuera de una función y úsela dentro de la función

```python
x = "awesome"

def myfunc():
  print("Python is " + x)

myfunc()
```

Si crea una variable con el mismo nombre dentro de una función, esta variable será local y solo podrá usarse dentro de la función. La variable global con el mismo nombre quedará como estaba, global y con el valor original.

Ejemplo
Crear una variable dentro de una función, con el mismo nombre que la variable global

```python
x = "awesome"

def myfunc():
  x = "fantastic"
  print("Python is " + x)

myfunc()

print("Python is " + x)
```

#### La palabra clave global

Normalmente, cuando creas una variable dentro de una función, esa variable es local y solo se puede usar dentro de esa función.

Para crear una variable global dentro de una función, puede usar la globalpalabra clave.

Ejemplo
Si usa la globalpalabra clave, la variable pertenece al alcance global:

```python
def myfunc():
  global x
  x = "fantastic"

myfunc()

print("Python is " + x)
```

Además, utilice la globalpalabra clave si desea cambiar una variable global dentro de una función.

Ejemplo
Para cambiar el valor de una variable global dentro de una función, consulte la variable usando la globalpalabra clave:

```python
x = "awesome"

def myfunc():
  global x
  x = "fantastic"

myfunc()

print("Python is " + x)
```