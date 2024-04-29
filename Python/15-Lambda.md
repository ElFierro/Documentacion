# Lambda	
Una función lambda es una pequeña función anónima.
Una función lambda puede tomar cualquier número de argumentos, pero solo puede tener una expresión.

Sintaxis
```ssh
lambda arguments : expression
```
Se ejecuta la expresión y se devuelve el resultado:
```python	
x = lambda a : a + 10
print(x(5))			#15
```
Las funciones Lambda pueden tomar cualquier número de argumentos:
```python	
x = lambda a, b : a * b
print(x(5, 6))		#30

x = lambda a, b, c : a + b + c
print(x(5, 6, 2))	#13
```
## ¿Por qué utilizar funciones Lambda?
El poder de lambda se muestra mejor cuando los usa como una función anónima dentro de otra función.

Utilice esa definición de función para crear una función que siempre duplique el número que envía:
```python
def myfunc(n):
  return lambda a : a * n

	mydoubler = myfunc(2)
	mytripler = myfunc(3)

	print(mydoubler(11))	#22
	print(mytripler(11))	#33
```