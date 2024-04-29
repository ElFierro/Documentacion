# Funciones

Una función es un bloque de código que sólo se ejecuta cuando se llama.

Puede pasar datos, conocidos como parámetros, a una función.

Una función puede devolver datos como resultado.

## Creando una función
En Python una función se define usando la palabra clave def:
```python		
def my_function():
print("Hello from a function")
```
## Llamar a una función
Para llamar a una función, use el nombre de la función seguido de paréntesis:
```python
my_function()			#Hello from a function
```
## Argumentos
Los argumentos se especifican después del nombre de la función, dentro del paréntesis. Puedes agregar tantos argumentos como quieras, simplemente sepáralos con una coma.
```python
def my_function(fname):			#parametros
  print(fname + " Refsnes")
		  				#Argumentos
my_function("Emil")			#Emil Refsnes
my_function("Tobias")			#Tobias Refsnes
my_function("Linus")			#Linus Refsnes
```
## Argumentos arbitrarios, *args
Si no sabe cuántos argumentos se pasarán a su función, agregue un * antes del nombre del parámetro en la definición de la función
```python
def my_function(*kids):							
  print("The youngest child is " + kids[2])
		  				#Argumentos arbitrarios *args
my_function("Emil", "Tobias", "Linus")			#The youngest child is Linus
```
## Argumentos de palabras clave
También puede enviar argumentos con la sintaxis clave = valor.
De esta forma no importa el orden de los argumentos.
```python
def my_function(child3, child2, child1):
   print("The youngest child is " + child3)							#The youngest child is Linus

my_function(child1 = "Emil", child2 = "Tobias", child3 = "Linus") 	#clave=valor
```
## Argumentos arbitrarios, **kwargs
Si se desconoce el número de argumentos de palabras clave, agregue un doble **antes del nombre del parámetro:
```python
def my_function(**kid):								
print("His last name is " + kid["lname"])
		  				#Argumentos arbitrarios kwargs
my_function(fname = "Tobias", lname = "Refsnes")	#His last name is Refsnes
```
## Valor de parámetro predeterminado
Si llamamos a la función sin argumento, usa el valor predeterminado:
```python
def my_function(country = "Norway"):
  print("I am from " + country)

my_function("Sweden")	#I am from India

my_function()		#I am from Norway
```
## Lista como argumento
Puede enviar cualquier tipo de argumento de datos a una función (cadena, número, lista, diccionario, etc.)
```python
def my_function(food):
  for x in food:
    print(x)						#apple banana cherry	

fruits = ["apple", "banana", "cherry"]

my_function(fruits)
```
## Valores de retorno
Para permitir que una función devuelva un valor, use la declaración return:
```python
def my_function(x):
  return 5 * x 		
```
## Recursividad
Python también acepta la recursividad de funciones, lo que significa que una función definida puede llamarse a sí misma.
```python
def tri_recursion(k):
  if(k > 0):
	result = k + tri_recursion(k - 1)			#5 4 3 2 1 0
	print(result)			   #1+0 2+1 3+3 6+4 10+5 + 15+6
  else:						# 1   3   6  10   15     21  
	result = 0
	return result

tri_recursion(6)
```