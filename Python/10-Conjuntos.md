# Conjuntos

Un conjunto es una colección desordenada , inmutable * y no indexada .	

## Desordenado
Significa que los elementos de un conjunto no tienen un orden definido.

## Inmutable
Los elementos del conjunto no se pueden cambiar, lo que significa que no podemos cambiarlos una vez creado el conjunto.

## No permite duplicados
Los conjuntos no pueden tener dos artículos con el mismo valor.
```python
thisset = {"apple", "banana", "cherry", "apple"}		#{"apple","cherry", "banana"}
```
Los valores True y 1 se consideran el mismo valor en conjuntos y se tratan como duplicados:
```python
thisset = {"apple", "banana", "cherry", True, 1, 2}		#{True, 2, 'banana', 'cherry', 'apple'}
```
Los valores False y 0 se consideran el mismo valor en conjuntos y se tratan como duplicados:
```python
thisset = {"apple", "banana", "cherry", False, True, 0}		#{False, True, 'cherry', 'apple', 'banana'}
```
## Obtener la longitud de un conjunto

Para determinar cuántos elementos tiene un conjunto, utilice la función len().
```python
len(thisset)
```
## Establecer elementos: tipos de datos

Un conjunto puede contener diferentes tipos de datos:
```python
set1 = {"abc", 34, True, 40, "male"}
```
## El constructor set()

También es posible utilizar el constructor set() para crear un conjunto.
```python
thisset = set(("apple", "banana", "cherry")) 
```
## Acceder

No puede acceder a elementos de un conjunto haciendo referencia a un índice o una clave.
```python
thisset = {"apple", "banana", "cherry"}		
for x in thisset:				
  print(x)
```							

#### Comprobar si un elemento existe
```python
print("banana" in thisset)
```
#### Cambiar elementos
Una vez que se crea un conjunto, no puede cambiar sus elementos, pero puede agregar elementos nuevos.

## Agregar elementos
Para agregar un elemento a un conjunto, utilice el método add().
```python
thisset = {"apple", "banana", "cherry"}
thisset.add("orange")			#{"apple","cherry", "banana", "orange"}	
```
## Agregar conjuntos
Para agregar elementos de otro conjunto al conjunto actual, use el método update().
```python
thisset = {"apple", "banana", "cherry"}
tropical = {"pineapple", "mango", "papaya"}
thisset.update(tropical)		#{'apple', 'mango', 'cherry', 'pineapple', 'banana', 'papaya'}
```
## Agregar cualquier iterable
El objeto del método update() no tiene por qué ser un conjunto, puede ser cualquier objeto iterable (tuplas, listas, diccionarios, etc.).
```python
thisset = {"apple", "banana", "cherry"}   #Set
mylist = ["kiwi", "orange"]		            #Lista
thisset.update(mylist)			#{'banana', 'cherry', 'apple', 'orange', 'kiwi'}
```
## Remover el artículo
Para eliminar un elemento de un conjunto, utilice método remove() o el discard().
```python
thisset = {"apple", "banana", "cherry"}
#Si el elemento a eliminar no existe, remove() generará un error.
thisset.remove("banana")		#{"apple","cherry"}
#Si el elemento a eliminar no existe, discard() no generará un error.
hisset.discard("banana")		#{"cherry","apple}
```
También puede utilizar el método pop() para eliminar un elemento, pero este método eliminará un elemento aleatorio, por lo que no puede estar seguro de qué elemento se elimina.
```python
thisset = {"apple", "banana", "cherry"}
x = thisset.pop()				#{'banana', 'cherry'}
```
El método clear() vacía el conjunto:
```python
thisset.clear()					#set()
```
La palabra clave del eliminará el conjunto por completo:
```python
del thisset						#La elimina por completo
```
## Recorrer conjuntos
Puede recorrer los elementos establecidos utilizando un bucle for:
```python
for x in thisset:	
print(x)				
```							
## Unir dos conjuntos
Los métodos union() y update() unen todos los elementos de ambos conjuntos.

- El método intersection() conserva SÓLO los duplicados.

- El método difference() mantiene los elementos del primer conjunto que no están en los otros conjuntos.

- El método symmetric_difference() mantiene todos los elementos EXCEPTO los duplicados.


#### Unión
El método union() devuelve un nuevo conjunto con todos los elementos de ambos conjuntos.
```python
set1 = {"a", "b", "c"}
set2 = {1, 2, 3}
set3 = set1.union(set2)			#{'b', 'c', 1, 3, 2, 'a'}
#Puede utilizar el operador | y obtendrá el mismo resultado.
set3 = set1 | set2		    	#{'b', 'c', 1, 3, 2, 'a'}
```
#### Unir varios conjuntos
Todos los métodos y operadores de unión se pueden utilizar para unir múltiples conjuntos.
```python
set1 = {"a", "b", "c"}
set2 = {1, 2, 3}
set3 = {"John", "Elena"}
set4 = {"apple", "bananas", "cherry"}
myset = set1.union(set2, set3, set4)
```
#### Unir un conjunto y una tupla
El método union() le permite unir un conjunto con otros tipos de datos, como listas o tuplas.
```python
x = {"a", "b", "c"}
y = (1, 2, 3)
z = x.union(y)
```
## Actualizar
El método update() inserta todos los elementos de un conjunto en otro.
```python
set1 = {"a", "b" , "c"}
set2 = {1, 2, 3}
set1.update(set2)				#{'b', 1, 2, 'a', 3, 'c'}
```
Ambos union() y update() excluirán cualquier elemento duplicado.

## intersection

El método intersection() devolverá un nuevo conjunto, que solo contiene los elementos que están presentes en ambos conjuntos.
```python
set1 = {"apple", "banana", "cherry"}
set2 = {"google", "microsoft", "apple"}

set3 = set1.intersection(set2)       #{'apple'}
```
Puede utilizar el operador & y obtendrá el mismo resultado.
```python
set3 = set1 & set2                   #{'apple'}
```
El método intersection_update() también conservará SÓLO los duplicados, pero cambiará el conjunto original en lugar de devolver un conjunto nuevo.
```python
set1.intersection_update(set2)      #{'apple'}
```
## difference
El método difference() devolverá un nuevo conjunto que contendrá solo los elementos del primer conjunto que no están presentes en el otro conjunto.
```python
set1 = {"apple", "banana", "cherry"}
set2 = {"google", "microsoft", "apple"}
set3 = set1.difference(set2)       #{'banana', 'cherry'}
```
Puede utilizar el operador - y obtendrá el mismo resultado.
```python
set3 = set1 - set2         #{'banana', 'cherry'}
```
Utilice el método difference_update() para conservar los elementos que no están presentes en ambos conjuntos:
```python
set1.difference_update(set2)  #{'banana', 'cherry'}
```
## symmetric_difference
El método symmetric_difference() mantendrá solo los elementos que NO estén presentes en ambos conjuntos.
```python
set1 = {"apple", "banana", "cherry"}
set2 = {"google", "microsoft", "apple"}
set3 = set1.symmetric_difference(set2)        #{'google', 'banana', 'microsoft', 'cherry'}
```
uede utilizar el operador ^ y obtendrá el mismo resultado.
```python
set3 = set1 ^ set2                #{'google', 'banana', 'microsoft', 'cherry'}
```
Utilice el método symmetric_difference_update() para conservar los elementos que no están presentes en ambos conjuntos:
```python
set1.symmetric_difference_update(set2)       #{'google', 'banana', 'microsoft', 'cherry'}
```