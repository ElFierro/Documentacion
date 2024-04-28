# String

## Asignar cadena a una variable
La asignación de una cadena a una variable se realiza con el nombre de la variable seguido de un signo igual y la cadena:

```python
a = "Hello"
```
Puede asignar una cadena de varias líneas a una variable utilizando tres comillas:

```python
a = """Lorem ipsum dolor sit amet,
ut labore et dolore magna aliqua."""
```

## Las cadenas son matrices
Se pueden utilizar corchetes para acceder a los elementos de la cadena.

Ejemplo
```python
a = "Hello, World!"
print(a[1])    #e
```

## Bucle a través de una cuerda
Dado que las cadenas son matrices, podemos recorrer los caracteres de una cadena con un bucle for.

```python
for x in "banana":
  print(x)          #b  a  n  a  n  a
```

## Longitud de la cuerda
Para obtener la longitud de una cadena, use la len()función.

```python
a = "Hello, World!"
print(len(a))    #13
```

## Verificar cadena
Para comprobar si una determinada frase o carácter está presente en una cadena, podemos utilizar la palabra clave in.

```python
txt = "The best things in life are free!"
print("free" in txt)       #True
```

## Verificar si no existe en cadena

Para comprobar si una determinada frase o carácter NO está presente en una cadena, podemos utilizar la palabra clave not in.

```python
txt = "The best things in life are free!"
print("expensive" not in txt)    #True
```

## Cortar string

Especifique el índice inicial y el índice final, separados por dos puntos, para devolver una parte de la cadena.

Ejemplo:
```python
b = "Hello, World!"
print(b[2:5])   #llo
print(b[:5])   #Hello
print(b[2:])   #llo, World!
print(b[-5:-2])    #orl
```

## Mayúsculas
El método upper() devuelve la cadena en mayúsculas:
```python
a = "Hello, World!"
print(a.upper())     #HELLO, WORLD!
```

## Minúscula
El método lower() devuelve la cadena en minúsculas:
```python
a = "Hello, World!"
print(a.lower())     #hello, world!
```

## Eliminar espacios en blanco
El espacio en blanco es el espacio antes y/o después del texto real y muy a menudo desea eliminar este espacio.

```python
a = " Hello, World! "
print(a.strip())   #"Hello, World!"
```

## Remplazar cadena
El método replace() reemplaza una cadena con otra cadena:
```python
a = "Hello, World!"
print(a.replace("H", "J"))  #Jello, World!
```

## Cadena dividida
El método split() devuelve una lista donde el texto entre el separador especificado se convierte en los elementos de la lista.

```python
a = "Hello, World!"
print(a.split(",")) # returns ['Hello', ' World!']
```

## Concatenación de cadenas
Para concatenar o combinar dos cadenas, puede utilizar el operador +.

```python
a = "Hello"
b = "World"
c = a + " "+ b     #Hello World
```

## Formatear cadenas
Para especificar una cadena como cadena f, simplemente coloque un fdelante del literal de cadena y agregue llaves {} como marcadores de posición para variables y otras operaciones.

```python
age = 36
txt = f"My name is John, I am {age}"   #My name is John, I am 36

price = 59
txt = f"The price is {price:.2f} dollars"    #The price is 59.00 dollars

txt = f"The price is {20 * 59} dollars"   #The price is 1180 dollars
```

## Scape caracter
```python
'It\'s alright.'		#It\'s alright.
"one \\ (backslash)."	       #one \ (backslash).
"Hello\nWorld!"			#Hello
			#World
"Hello\tWorld!"			#Hello	World!
"Hello \bWorld!"		#HelloWorld!
```