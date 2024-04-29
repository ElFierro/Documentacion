# Matematicas 

Python tiene un conjunto de funciones matemáticas integradas, incluido un módulo matemático extenso, que le permite realizar tareas matemáticas con números.

## Funciones matemáticas integradas
Las funciones min() y max() se pueden usar para encontrar el valor más bajo o más alto en un iterable:
```python
x = min(5, 10, 25)		#5
y = max(5, 10, 25)		#25
```
La función abs() devuelve el valor absoluto (positivo) del número especificado:
```python
x = abs(-7.25)			#7.25
```
La función pow(x, y) devuelve el valor de x elevado a y (x y).
```python
x = pow(4, 3)			#64
```
## El módulo de matemáticas
Python también tiene un módulo integrado llamado math, que amplía la lista de funciones matemáticas.
Para usarlo, debes importar el mathmódulo:
```python
import math
```
El método math.sqrt(), por ejemplo, devuelve la raíz cuadrada de un número:
```python
x = math.sqrt(64)		#8.0
```
El método math.ceil() redondea un número hacia arriba a su entero más cercano y el método math.floor() redondea un número hacia abajo a su entero más cercano y devuelve el resultado:
```python
x = math.ceil(1.4)			#2
y = math.floor(1.4)			#1
```
La constante math.pi, devuelve el valor de PI (3.14...):
```python
x = math.pi 				#3.141592653589793
```