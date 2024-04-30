# Expresiones regulares 

Una expresión regular, o expresión regular, es una secuencia de caracteres que forma un patrón de búsqueda.
RegEx se puede utilizar para comprobar si una cadena contiene el patrón de búsqueda especificado.

## Módulo de expresión regular
Python tiene un paquete integrado llamado re, que puede usarse para trabajar con expresiones regulares.
```python
import re
```
##### Ejemplo:

Busque si la cadena comienza con "The" y termina con "Spain":
```python
txt = "The rain in Spain"
x = re.search("^The.*Spain$", txt)  #True
```
## Funciones de expresiones regulares
El módulo re ofrece un conjunto de funciones que nos permiten buscar una cadena para una coincidencia:

| Funcion   | Descripcion                                                                         |
| ----------| ----------------------------------------------------------------------------------- |
| findall()	| 	Devuelve una lista que contiene todas las coincidencias.| 
| search()	| 	Devuelve un objeto Match si hay una coincidencia en cualquier parte de la cadena.| 
| split()		| 	Devuelve una lista donde la cadena se ha dividido en cada coincidencia| 
| sub()			| Reemplaza una o varias coincidencias con una cadena| 

## Metacaracteres
Los metacaracteres son caracteres con un significado especial:
- []
```python
txt = "The rain in Spain"
x = re.findall("[a-m]", txt)         #['h', 'e', 'a', 'i', 'i', 'a', 'i']
```
- \	
```python
txt = "That will be 59 dollars"
x = re.findall("\d", txt)           #['5', '9']
```
- .
```python
txt = "hello planet"
x = re.findall("he..o", txt)       #['hello']
```
- ^	
```python
txt = "hello planet"                #Check if the string starts with 'hello':
x = re.findall("^hello", txt)       #True
```
- $
```python
txt = "hello planet"                 #Check if the string ends with 'planet':
x = re.findall("planet$", txt)       #True
```
- *
```python
txt = "hello planet"
#Search for a sequence that starts with "he", followed by 0 or more  (any) characters, and an "o":
x = re.findall("he.*o", txt)        #['hello']
```
- +	
```python
txt = "hello planet"
#Search for a sequence that starts with "he", followed by 1 or more  (any) characters, and an "o":
x = re.findall("he.+o", txt)          #['hello']
```

- ?
```python
txt = "hello planet"
#Search for a sequence that starts with "he", followed by 0 or 1  (any) character, and an "o":
x = re.findall("he.?o", txt)         #[]
```
- {}	
```python
txt = "hello planet"
#Search for a sequence that starts with "he", followed excactly 2 (any) characters, and an "o":
x = re.findall("he.{2}o", txt)       #['hello']
```
- |	
```python
txt = "The rain in Spain falls mainly in the plain!"   #Check if the string contains either "falls" or "stays":
x = re.findall("falls|stays", txt)       #['falls']
```
## Secuencias especiales
Una secuencia especial es un \ seguido por uno de los caracteres de la lista siguiente y tiene un significado especial:

- \A				
```python
txt = "The rain in Spain"        #Check if the string starts with "The":
x = re.findall("\AThe", txt)    #['The']
```
- \b	
```python
txt = "The rain in Spain"   #Check if "ain" is present at the beginning of a WORD:
x = re.findall(r"\bain", txt)     #[]
```
```python
txt = "The rain in Spain"
#Check if "ain" is present at the end of a WORD:
x = re.findall(r"ain\b", txt)     #['ain', 'ain']
```
- \B	
```python
txt = "The rain in Spain"
#Check if "ain" is present, but NOT at the beginning of a word:
x = re.findall(r"\Bain", txt)     #['ain', 'ain']
```
```python
txt = "The rain in Spain"
#Check if "ain" is present, but NOT at the end of a word:
x = re.findall(r"ain\B", txt)     #[]
```

- \d
```python
txt = "The rain in Spain"
#Check if the string contains any digits (numbers from 0-9):
x = re.findall("\d", txt)         #[]
```

- \D	
```python
txt = "The rain"
#Return a match at every no-digit character:
x = re.findall("\D", txt)		 #	['T', 'h', 'e', ' ', 'r', 'a', 'i', 'n']								
```

- \s
```python
txt = "The rain in Spain"
#Return a match at every white-space character:
x = re.findall("\s", txt)    #[' ', ' ', ' ']
```
- \S
```python
txt = "The rain"
#Return a match at every NON white-space character:
x = re.findall("\S", txt)         # ['T', 'h', 'e', 'r', 'a', 'i', 'n',]
```
- \w	
```python
txt = "The 1 rain"
#Return a match at every word character (characters from a to Z, digits from 0-9, and the underscore _ character):
x = re.findall("\w", txt)      #['T', 'h', 'e', '1', 'r', 'a', 'i', 'n']
```
- \W
```python
txt = "The rain in Spain!"
#Return a match at every NON word character (characters NOT between a and Z. Like "!", "?" white-space etc.):
x = re.findall("\W", txt)     #[' ', ' ', ' ', '!']
```
- \Z
```python
txt = "The rain in Spain"
#Check if the string ends with "Spain":
x = re.findall("Spain\Z", txt)   #['Spain']
```
## Conjuntos
Es un conjunto de caracteres dentro de un par de corchetes []con un significado especial:
- [arn]		
```python
txt = "The rain in Spain"
#Check if the string has any a, r, or n characters:
x = re.findall("[arn]", txt)     #['r', 'a', 'n', 'n', 'a', 'n']
```
- [a-n]		
```python
txt = "The rain in Spain"
#Check if the string has any characters between a and n:
x = re.findall("[a-n]", txt)   #['h', 'e', 'a', 'i', 'n', 'i', 'n', 'a', 'i', 'n']
```
- [^arn]	
```python
txt = "The rain in Spain"
#Check if the string has other characters than a, r, or n:
x = re.findall("[^arn]", txt)    #['T', 'h', 'e', ' ', 'i', ' ', 'i', ' ', 'S', 'p', 'i']
```
- [0123]	
```python
txt = "The rain in Spain"
#Check if the string has any 0, 1, 2, or 3 digits:
x = re.findall("[0123]", txt)    #[]  
```

- [0-9]	
```python
txt = "8 times before 11:45 AM"
#Check if the string has any digits:
x = re.findall("[0-9]", txt)   #['8', '1', '1', '4', '5']
```

-[0-5][0-9]	
```python
txt = "8 times before 11:45 AM"
#Check if the string has any two-digit numbers, from 00 to 59:
x = re.findall("[0-5][0-9]", txt)   #['11', '45']
```
- [a-zA-Z]
```python
txt = "8 times before 11:45 AM"
#Check if the string has any characters from a to z lower case, and A to Z upper case:
x = re.findall("[a-zA-Z]", txt)      #['t', 'i', 'm', 'e', 's', 'b', 'e', 'f', 'o', 'r', 'e', 'A', 'M']
```
- [+]	
```python
txt = "8 times before 11:45 AM"
#Check if the string has any + characters:
x = re.findall("[+]", txt)
```
## La función findall()
La función findall() devuelve una lista que contiene todas las coincidencias.
```python
txt = "The rain in Spain"
x = re.findall("ai", txt)			#['ai', 'ai']
```
Devuelve una lista vacía si no se encontró ninguna coincidencia:
```python
xt = "The rain in Spain"
x = re.findall("Portugal", txt)		#[]
```
## La función de search()
	
La función search() busca una coincidencia en la cadena y devuelve un objeto Match si hay una coincidencia.
```python
txt = "The rain in Spain"
x = re.search("\s", txt)			#3
```
Si no se encuentran coincidencias, Nonese devuelve el valor:
```python
txt = "The rain in Spain"
x = re.search("Portugal", txt)		#None
```
## La función split()

La función split() devuelve una lista donde la cadena se ha dividido en cada coincidencia:
```python
txt = "The rain in Spain"			#['The', 'rain', 'in', 'Spain']
x = re.split("\s", txt)
```
Puede controlar el número de apariciones especificando el parámetro maxsplit:
```python
txt = "The rain in Spain"
x = re.split("\s", txt, 1)			#['The', 'rain in Spain']
```
## La función sub()
	
La función sub() reemplaza las coincidencias con el texto de tu elección:
```python
txt = "The rain in Spain"
x = re.sub("\s", "9", txt)		  #The9rain9in9Spain
```
Puede controlar el número de reemplazos especificando el count parámetro:
```python
txt = "The rain in Spain"
x = re.sub("\s", "9", txt, 2)		#The9rain9in Spain
```
## Objeto Match
Un objeto Match es un objeto que contiene información sobre la búsqueda y el resultado.
Si no hay ninguna coincidencia, se devolverá el valor None, en lugar del objeto coincidente.
```python
txt = "The rain in Spain"
x = re.search("ai", txt)			#<_sre.SRE_Match object; span=(5, 7), match='ai'>
```
El objeto Match tiene propiedades y métodos utilizados para recuperar información sobre la búsqueda y el resultado:
```python
txt = "The rain in Spain"
x = re.search(r"\bS\w+", txt)
```
- .span() devuelve una tupla que contiene las posiciones inicial y final de la coincidencia.
```python
txt = "The rain in Spain"
x = re.search(r"\bS\w+", txt)
print(x.span())			#(12, 17)
```
- .string() devuelve la cadena pasada a la función
```python
txt = "The rain in Spain"
x = re.search(r"\bS\w+", txt)
print(x.string)				#The rain in Spain
```
- group() devuelve la parte de la cadena donde hubo una coincidencia
```python
txt = "The rain in Spain"
x = re.search(r"\bS\w+", txt)
print(x.group())			#Spain
```