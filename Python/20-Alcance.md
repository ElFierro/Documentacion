# Alcance

Una variable solo está disponible dentro de la región en la que se crea. Esto se llama alcance .

## Alcance local

Una variable creada dentro de una función está disponible solo dentro de esa función:
```python
def myfunc():
  x = 300		#Variable local - 300
  print(x)

myfunc()
```
## Función dentro de la función
Se puede acceder a la variable local desde una función dentro de la función:
```python
def myfunc():
  x = 300			#Variable local
  def myinnerfunc():
	print(x)		#300
  myinnerfunc()

myfunc()
```
## Alcance global

Una variable creada fuera de una función es global y cualquiera puede usarla:
```python
x = 300

def myfunc():
  print(x)		#300

myfunc()
  print(x)		#300
```
## Nombrar variables
Si opera con el mismo nombre de variable dentro y fuera de una función, Python las tratará como dos variables separadas, una disponible en el alcance global (fuera de la función) y otra disponible en el alcance local (dentro de la función):
```python
x = 300

def myfunc():
  x = 200
  print(x)		#200

myfunc()

print(x)		#300
```

## Palabra clave global
Si usa la palabra clave global, la variable pertenece al alcance global:
```python
def myfunc():
  global x
  x = 300

myfunc()

print(x)	#300
```

Además, utilice la palabra clave global si desea realizar un cambio en una variable global dentro de una función.
```python
x = 300

def myfunc():
  global x
  x = 200

myfunc()

  print(x)		#200
```