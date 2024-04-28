# Listas
Los elementos de la lista están ordenados, modificables y permiten valores duplicados.

## Declaracion
Las listas se utilizan para almacenar varios elementos en una sola variable.

```python
mylist = ["apple", "banana", "cherry"]
```
## Ordenado
significa que los elementos tienen un orden definido y ese orden no cambiará.

## Cambiable
podemos cambiar, agregar y eliminar elementos en una lista después de haberla creado.

## Permite duplicados
Dado que las listas están indexadas, las listas pueden tener elementos con el mismo valor:
```python
mylist = ["apple", "cherry","banana", "cherry"]      #["apple", "cherry","banana", "cherry"]
```
## Longitud
Para determinar cuántos elementos tiene una lista, use la función len():
```python
len(mylist)    #3
```
## Tipos de datos
Una lista puede contener diferentes tipos de datos:
```python
list1 = ["abc", 34, True, 40, "male"]
```
## El constructor lista()
También es posible utilizar el constructor list() al crear una nueva lista.
```python
thislist = list(("apple", "banana", "cherry"))
```
## Acceder
Los elementos de la lista están indexados y puede acceder a ellos consultando el número de índice:
```python
thislist = ["apple", "banana", "cherry"]
mylist[1]     #banana
mylist[-1]    #cherry
mylist[1:2]   #["banana","cherry"]
mylist[:1]    #["apple", "banana"]
mylist[1:]    #["banana","cherry"]
mylist[-2:-1] #["banana","cherry"]
```
## Comprobar si existe un articulo
Para determinar si un elemento específico está presente en una lista, utilice la palabra clave in:
```python
thislist = ["apple", "banana", "cherry"]
if "apple" in mylist	#true
```
## Cambiar valor del artículo
Para cambiar el valor de un artículo específico, consulte el número de índice:
```python
thislist = ["apple", "banana", "cherry"]
thislist[1] = "blackcurrant"	                     #["apple", "blackcurrant", "cherry"]
thislist[0:2] = ["blackcurrant", "watermelon"]       #["apple", "blackcurrant", "watermelon"]
thislist[1:2] = ["blackcurrant", "watermelon"]       #['apple', 'blackcurrant', 'watermelon', 'cherry']
thislist[1:3] = ["watermelon"]                       #['apple', 'watermelon']
```
## Insertar elementos
El insert()método inserta un elemento en el índice especificado:
```python
thislist = ["apple", "banana", "cherry"]
thislist.insert(2, "watermelon")                     # ['apple', 'banana', 'watermelon', 'cherry']
```
## Agregar
Para agregar un elemento al final de la lista, use el método append()
```python
thislist = ["apple", "banana", "cherry"]
mylist.append("orange")    #['apple', 'banana', 'cherry', 'orange']    
```
## Ampliar
Para agregar elementos de otra lista a la lista actual, use el método extend().
```python
mylist = ["apple", "banana", "cherry"]
tropical = ["mango", "pineapple", "papaya"]
mylist.extend(tropical)      #['apple', 'banana', 'cherry', 'mango', 'pineapple', 'papaya']
```
## Agregar cualquier iterable

El método extend() no tiene que agregar listas, puede agregar cualquier objeto iterable (tuplas, conjuntos, diccionarios, etc.)
```python
thislist = ["apple", "banana", "cherry"]
thistuple = ("kiwi", "orange")   #tupla
mylist.extend(thistuple)	     #['apple', 'banana', 'cherry', 'kiwi', 'orange']
```

## Remover
El método remove() elimina el elemento especificado.
```python
mylist.remove("banana")     #['apple', 'cherry']
```
Si hay más de un elemento con el valor especificado, el método remove() elimina la primera aparición:
```python
mylist = ["apple", "banana", "cherry", "banana"]
mylist.remove("banana")    #["apple", "cherry", "banana"]
```
## Eliminar indice
El método pop() elimina el índice especificado.
```python
thislist = ["apple", "banana", "cherry"]
mylist.pop(1)     #["apple", "cherry"]
```
Si no especifica el índice, el método pop() elimina el último elemento.
```python
mylist.pop()   #["apple", "banana"]
```
La palabra del clave también elimina el índice especificado:
```python
del mylist[0]   #["banana", "cherry"]
```
Del también puede eliminar la lista por completo.
```python
del mylist     #eliminada por completo
```
## Limpiar la lista

El método clear() vacía la lista.
```python
thislist = ["apple", "banana", "cherry"]
mylist.clear()	#[]
```
## Recorrer una lista
Puede recorrer los elementos de la lista utilizando un bucle for:
```python
for x in mylist:
  print(x)
```
Puede recorrer los elementos de la lista mediante un bucle while.
```python
while i < len(thislist):
  print(thislist[i])
  i = i + 1
```
## Compresion
La comprensión de listas ofrece una sintaxis más corta cuando desea crear una nueva lista basada en los valores de una lista existente.

#### La sintaxis
```python
newlist = [expression for item in iterable if condition == True]
```
#### Ejemplo

```python
fruits = ["apple", "banana", "cherry", "kiwi", "mango"]
newlist = [x for x in fruits if x != "apple"]   #['banana', 'cherry', 'kiwi', 'mango']
```
### Expresión
La expresión es el elemento actual en la iteración, pero también es el resultado, que puede manipular antes de que termine como un elemento de lista en la nueva lista:

Establezca los valores en la nueva lista en mayúsculas:
```python
fruits = ["apple", "banana", "cherry", "kiwi", "mango"]
newlist = [x.upper() for x in fruits]  #['APPLE', 'BANANA', 'CHERRY', 'KIWI', 'MANGO']
```
### iterable
El iterable puede ser cualquier objeto iterable, como una lista, tupla, conjunto, etc.

Puedes usar la función range() para crear un iterable:
```python
newlist = [x for x in range(10)]
```
### Condición
La condición es como un filtro que solo acepta los elementos que se valoran en True.

Sólo acepte artículos que no sean "apple":
```python
newlist = [x for x in fruits if x != "apple"]
```
## ordenar
Los objetos de lista tienen un método sort() que ordenará la lista de forma alfanumérica, ascendente, de forma predeterminada:
```python
thislist = [100, 50, 65, 82, 23]
fruits.sort()	     #[23, 50, 65, 82, 100] ascendente

thislist = [100, 50, 65, 82, 23]
thislist.sort(reverse = True)     #[100, 82, 65, 50, 23] descendente
```
### Personalizar la función de clasificación

También puede personalizar su propia función utilizando el argumento de palabra clave key = function
```python
def myfunc(n):
  return abs(n - 50)

thislist = [100, 50, 65, 82, 23]
thislist.sort(key = myfunc)   #[50, 65, 23, 82, 100]
```
### Clasificación que no distingue entre mayúsculas y minúsculas
De forma predeterminada, el método sort() distingue entre mayúsculas y minúsculas, lo que da como resultado que todas las letras mayúsculas se ordenen antes que las minúsculas:
```
fruits = ["banana", "Orange", "Kiwi", "cherry"]
fruits.sort(key = str.lower)	  #['banana', 'cherry', 'Kiwi', 'Orange']
```
### Orden inverso

El método reverse() invierte el orden de clasificación actual de los elementos.
```python
thislist = ["banana", "Orange", "Kiwi", "cherry"]
thislist.reverse()      #['cherry', 'Kiwi', 'Orange', 'banana']
```
## Copiar

No puede copiar una lista simplemente escribiendo list2 = list1, porque: list2 solo será una referencia a list1

```python
thislist = ["apple", "banana", "cherry"]
```
Hay formas de hacer una copia, una es utilizar el método List integrado copy().

```python
mylist = thislist.copy()
mylist = list(thislist)
```
o tambien puede
```python
thislist = ["apple", "banana", "cherry"]
mylist = list(thislist)
```
## Unir
Hay varias formas de unir o concatenar dos o más listas en Python.

```python
list1 = ["a", "b", "c"]
list2 = [1, 2, 3]

list3 = list1 + list2 	#["a", "b", "c",1, 2, 3]
```
Otra forma de unir dos listas es agregando todos los elementos de la lista2 a la lista1, uno por uno:
```python
for x in list2:
  list1.append(x)	#["a", "b", "c",1, 2, 3]
```
o Utilice el método extend() para agregar list2 al final de list1:
```python
list1.extend(list2)      #["a", "b", "c",1, 2, 3]
```