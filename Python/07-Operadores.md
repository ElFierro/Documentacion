```python
x = 5, y = 3
```

## Aritmeticos
Los operadores aritméticos se utilizan con valores numéricos para realizar operaciones matemáticas comunes:

```python
Z= x + y 	#8
Z= x - y 	#2
Z= x * y 	#15
Z= x / y 	#1.666
Z= x % y 	#2
Z= x // y 	#1
Z= x ** y 	#125
```
## Asignacion
Los operadores de asignación se utilizan para asignar valores a variables:
```python
x = 5
x += 3 	 #8
x -= 3 	 #2
x *= 3 	 #15
x /= 3 	 #1.666
x %= 3   #2
x //= 3  #1
x **= 3  #125
```
## Comparacion
Los operadores de comparación se utilizan para comparar dos valores:
```python
x == y 	#False
x != y 	#True
x > y 	#True
x < y 	#False
x >= y  #True
x <= y  #False
```
## Logicos
Los operadores lógicos se utilizan para combinar declaraciones condicionales
```python
x > 3 and x < 10	   #True
x > 3 or x < 4	       #True
not(x < 5 and x < 10)  #False
```
## Identidad
Los operadores de identidad se utilizan para saber si en realidad son el mismo objeto, con la misma ubicación de memoria
```python
x = ["apple", "banana"]
y = ["apple", "banana"]
z = x

x is z	#True
x is y	#False

x is not z #False
x is not y #True
```
## Membresia
Los operadores de membresía se utilizan para probar si una secuencia se presenta en un objeto:
```python
x = ["apple", "banana"]
"banana" in x	#True
"pineapple" not in x	#True
```