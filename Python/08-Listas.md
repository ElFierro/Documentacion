## Listas
Los elementos de la lista están ordenados, modificables y permiten valores duplicados.

## Declaracion
Las listas se utilizan para almacenar varios elementos en una sola variable.

mylist = ["apple", "banana", "cherry"]

## Ordenado
significa que los elementos tienen un orden definido y ese orden no cambiará.

## Cambiable
podemos cambiar, agregar y eliminar elementos en una lista después de haberla creado.

## Permite duplicados
Dado que las listas están indexadas, las listas pueden tener elementos con el mismo valor:

mylist = ["apple", "cherry","banana", "cherry"]#["apple", "cherry","banana", "cherry"]

## Longitud
Para determinar cuántos elementos tiene una lista, use la función len():

len(mylist)#3

## Tipos de datos
Una lista puede contener diferentes tipos de datos:

list1 = ["abc", 34, True, 40, "male"]

## El constructor lista()
También es posible utilizar el constructor list() al crear una nueva lista.

thislist = list(("apple", "banana", "cherry"))

## Acceder
Los elementos de la lista están indexados y puede acceder a ellos consultando el número de índice:

mylist[1]     #banana
mylist[-1]    #cherry
mylist[1:2]   #["banana","cherry"]
mylist[:1]    #["apple", "banana"]
mylist[1:]    #["banana","cherry"]
mylist[-2:-1] #["banana","cherry"]

## Comprobar si existe un articulo
Para determinar si un elemento específico está presente en una lista, utilice la palabra clave in:

if "apple" in mylist	#true

# Cambiar valor del artículo
Para cambiar el valor de un artículo específico, consulte el número de índice:


	mylist[1] = "blackcurrant"	#["apple", "blackcurrant", "cherry"]
	mylist[0:2] = ["blackcurrant", "watermelon"]#["apple", "blackcurrant", "watermelon"]

	#Si inserta más elementos de los que reemplaza, los nuevos elementos se insertarán donde especificó y 
	#los elementos restantes se moverán en consecuencia:
	
	mylist[1:2] = ["blackcurrant", "watermelon"]#["apple", "blackcurrant", "watermelon", "cherry"]

	#Insertar
insert()
	mylist.insert(2, "watermelon")#['apple', 'banana', 'watermelon', 'cherry']

#agregar
	append()
mylist.append("orange")#['apple', 'banana', 'cherry', 'orange']

#ampliar
	extend()
tropical = ["mango", "pineapple", "papaya"]
mylist.extend(tropical)#['apple', 'banana', 'cherry', 'mango', 'pineapple', 'papaya']

#Agregar cualquier iterable
thistuple = ("kiwi", "orange")#tupla
mylist.extend(thistuple)	#['apple', 'banana', 'cherry', 'kiwi', 'orange']

	#Remover
remove()
	mylist.remove("banana")#['apple', 'cherry']

	#Si hay más de un elemento con el valor especificado, el remove()método elimina la primera aparición:

	mylist = ["apple", "banana", "cherry", "banana"]
	mylist.remove("banana")#["apple", "cherry", "banana"]

#Eliminar indice
	pop	()
mylist.pop(1)#["apple", "cherry"]

#Si no especifica el índice, el método pop() elimina el último elemento.
mylist.pop()#["apple", "banana"]

	del	
del mylist[0]#["banana", "cherry"]

#La delpalabra clave también puede eliminar la lista por completo.

del mylist#eliminada por completo

	clear()

#La lista aún permanece, pero no tiene contenido.
mylist.clear()	#[]

	#Recorrer una lista

for x in mylist:#apple
  print(x)#banana
  #cherry

	#Compresion
#La comprensión de listas ofrece una sintaxis más corta cuando desea crear una nueva lista basada en los valores de una 
#lista existente.

fruits = ["apple", "banana", "cherry", "kiwi", "mango"]

#Sintaxis normal
newlist = []

for x in fruits:
  if "a" in x:
    newlist.append(x)#["apple", "banana", "mango"]

#Aplicando compresion
	newlist = [x for x in fruits if "a" in x]#["apple", "banana", "mango"]

	renge()
newlist = [x for x in range(10)]#[0,1,2,3,4,5,6,7,8,9]

newlist = [x for x in range(10) if x < 5]   	#[0,1,2,3,4]

	newlist = [x if x != "banana" else "orange" for x in fruits]	#['apple', 'orange', 'cherry', 'kiwi', 'mango']

	#ordenar
sort()
	thislist = [100, 50, 65, 82, 23]
	fruits.sort()	#[23, 50, 65, 82, 100] ascendente

	#La clasificación que distingue entre mayúsculas y minúsculas, lo que da como resultado que todas 
	#las letras mayúsculas se ordenen antes que las minúsculas:

	fruits = ["banana", "Orange", "Kiwi", "cherry"]
	fruits.sort(key = str.lower)	#['banana', 'cherry', 'Kiwi', 'Orange']

	thislist.sort(reverse = True)	#[100, 82, 65, 50, 23] descendente

	thislist = ["banana", "Orange", "Kiwi", "cherry"]
	thislist.reverse()#['cherry', 'Kiwi', 'Orange', 'banana']

#Personalizar la función

	def myfunc(n):
  return abs(n - 50)

	thislist = [100, 50, 65, 82, 23]
	thislist.sort(key = myfunc)	#[50, 65, 23, 82, 100]

	#Copiar
thislist = ["apple", "banana", "cherry"]

#No puede copiar una lista simplemente escribiendo list2 = list1, porque: list2solo será una referencia a list1
mylist = thislist.copy()
mylist = list(thislist)

	#Unir
list1 = ["a", "b", "c"]
list2 = [1, 2, 3]

list3 = list1 + list2 	#["a", "b", "c",1, 2, 3]

for x in list2:
  list1.append(x)	#["a", "b", "c",1, 2, 3]

  list1.extend(list2)#["a", "b", "c",1, 2, 3]