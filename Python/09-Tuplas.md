# Tuplas
Las tuplas se utilizan para almacenar varios elementos en una sola variable.
Los elementos de tupla están ordenados, no se pueden cambiar y permiten valores duplicados.

- ## Ordenado
Cuando decimos que las tuplas están ordenadas, significa que los elementos tienen un orden definido y ese orden no cambiará.

- ## Inmutable
Las tuplas no se pueden cambiar, lo que significa que no podemos cambiar, agregar o eliminar elementos una vez creada la tupla.

- ## Permitir duplicados
Como las tuplas están indexadas, pueden tener elementos con el mismo valor:
```python
thistuple = ("apple", "banana", "cherry", "apple", "cherry")
```
## Longitud de tupla
Para determinar cuántos elementos tiene una tupla, use la función len():
```python
thistuple = ("apple", "banana", "cherry")
len(thistuple)			#3
```
## Crear tupla con un solo elemento
Para crear una tupla con un solo elemento, debe agregar una coma después del elemento
```python
thistuple = ("apple",)
```
## Elementos de tupla: tipos de datos
Los elementos de tupla pueden ser de cualquier tipo de datos:
```python
tuple1 = ("abc", 34, True, 40, "male")
```
## El constructor tupla()
También es posible utilizar el constructor tuple() para crear una tupla.
```python
thistuple = tuple(("apple", "banana", "cherry"))
```
## Acceder a elementos de tupla
Puede acceder a elementos de tupla consultando el número de índice, entre corchetes:
```python
thistuple = ("apple", "banana", "cherry", "orange", "kiwi", "melon", "mango")

thistuple[1]					#"banana"
thistuple[-1]					#'mango'
thistuple[2:5]				#("cherry", "orange", "kiwi")
thistuple[:4]					#("apple", "banana", "cherry", "orange")
thistuple[2:]					#("cherry", "orange", "kiwi", "melon", "mango")
thistuple[-4:-1]			#("orange", "kiwi", "melon")
```
## Comprobar si el artículo existe
Para determinar si un elemento específico está presente en una tupla use la palabra clave in:
```python
thistuple = ("apple", "banana", "cherry")
if "apple" in thistuple		#True
```
## Actualizar tuplas
Las tuplas no se pueden cambiar, lo que significa que no se pueden cambiar, agregar ni eliminar elementos una vez creada la tupla.

pero puede convertirla en una lista, agregar sus elementos y convertirla nuevamente en una tupla.
```python
x = ("apple", "banana", "cherry")
```
#### Cambiar valores	
```python
thistuple = ("apple", "banana", "cherry")
y = list(thistuple)
y.append("orange")
```
o tambien se le permite agregar tuplas a tuplas:
```python
thistuple = ("apple", "banana", "cherry")
y = ("orange",)
thistuple += y
```
#### Eliminar elementos
No puedes eliminar elementos de una tupla, pero pude uede convertirla en una lista, eliminar sus elementos y convertirla nuevamente en una tupla.
```python
thistuple = ("apple", "banana", "cherry")
y = list(thistuple)
y.remove("apple")
```
O puedes eliminar la tupla por completo:
```python
thistuple = ("apple", "banana", "cherry")
del thistuple
```
## Desempaquetar
Cuando creamos una tupla, normalmente le asignamos valores. Esto se llama "empaquetar" una tupla:
```python
fruits = ("apple", "banana", "cherry")
```
Pero, en Python, también podemos extraer los valores nuevamente en variables. Esto se llama "desempaquetar":
```python
fruits = ("apple", "banana", "cherry")
(green, yellow, red) = fruits      	#green = "apple", yellow = "banana", red = "cherry"
```
#### Usando asterisco*
Si el número de variables es menor que el número de valores, puede agregar un * al nombre de a variable y los valores se asignarán a la variable como una lista:
```python
fruits = ("apple", "cherry", "strawberry")
(green, yellow, *red) = fruits		#green = 'apple', red = ['cherry', 'strawberry']
```
Si el asterisco se agrega a otro nombre de variable distinto del último, Python asignará valores a la variable hasta que el número de valores restantes coincida con el número de variables restantes.
```python
fruits = ("apple", "mango", "papaya", "pineapple", "cherry")
( *tropic, red) = fruits      # tropic = ['mango', 'papaya', 'pineapple'], red = 'cherry'
```
## Recorrer
Puede recorrer los elementos de la tupla utilizando un bucle for.
```python
thistuple = ("apple", "banana", "cherry")	
for x in thistuple:							
  	print(x)			
```
Utilice las funciones range() y len() para crear un iterable adecuado.
```python
thistuple = ("apple", "banana", "cherry")
for i in range(len(thistuple)):
  print(thistuple[i])
```
Puede recorrer los elementos de la tupla utilizando un bucle while.
```python
thistuple = ("apple", "banana", "cherry")
i = 0
while i < len(thistuple):
  print(thistuple[i])
  i = i + 1
```
## Unir tuplas
Para unir dos o más tuplas puedes utilizar el + operador:
```python
tuple1 = ("a", "b" , "c")
tuple2 = (1, 2, 3)
tuple3 = tuple1 + tuple2			#("a", "b" , "c",1, 2, 3)
```
#### Multiplicar tuplas
Si desea multiplicar el contenido de una tupla un número determinado de veces, puede utilizar el operador *:
```python
fruits = ("apple", "banana", "cherry")
mytuple = fruits * 2 			#('apple', 'banana', 'cherry', 'apple', 'banana', 'cherry')
```
## Metodos
```python
count()			#Devuelve el número de veces que aparece un valor especificado en una tupla
index()			#Busca en la tupla un valor específico y devuelve la posición donde se encontró
```