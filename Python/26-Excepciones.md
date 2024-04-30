# Excepciones
- try
El bloque try le permite probar un bloque de código en busca de errores.
- except
El bloque except le permite manejar el error.
- else
El bloque else te permite ejecutar código cuando no hay ningún error.
- finally
El bloque finally le permite ejecutar código, independientemente del resultado de los bloques try y except.

## Manejo de excepciones
Cuando ocurre un error, o una excepción como la llamamos, Python normalmente se detendrá y generará un mensaje de error.
Estas excepciones se pueden manejar usando la trydeclaración:
```python
try:			#El bloque try generará una excepción porque x no está definido
 print(x)
except:
 print("An exception occurred")			#An exception occurred
```
## Muchas excepciones
Puede definir tantos bloques de excepción como desee, por ejemplo, si desea ejecutar un bloque de código especial para un tipo especial de error:
```python
try:
 print(x)
except NameError:
 print("Variable x is not defined")			#Variable x is not defined
except:
 print("Something else went wrong")
```
## Else
Puede utilizar la palabra clave else para definir un bloque de código que se ejecutará si no se generaron errores:
```python
try:
 print("Hello")					#Hello
except:
 print("Something went wrong")
else:
 print("Nothing went wrong")		#Nothing went wrong
```
## Finally
El bloque finally, si se especifica, se ejecutará independientemente de si el bloque try genera un error o no.
```python
try:
 print(x)
except:
 print("Something went wrong")				#Something went wrong
finally:
 print("The 'try except' is finished")		#The 'try except' is finished
```
Esto puede resultar útil para cerrar objetos y limpiar recursos:
```python
try:
 f = open("demofile.txt")
 try:
  f.write("Lorum Ipsum")
 except:
  print("Something went wrong when writing to the file")
 finally:
  f.close()
except:
 print("Something went wrong when opening the file")  		#Something went wrong when writing to the file
```
## Generar una excepción
Como desarrollador de Python, puede optar por generar una excepción si se produce una condición.
Para lanzar (o generar) una excepción, use la raisepalabra clave.
```python
x = -1

if x < 0:
 raise Exception("Sorry, no numbers below zero")		#Exception: Sorry, no numbers below zero
```
La palabra clave raise se utiliza para generar una excepción.
Puede definir qué tipo de error generar y el texto que se imprimirá al usuario.
```python
x = "hello"

if not type(x) is int:
 aise TypeError("Only integers are allowed")			#TypeError: Only integers are allowed
```