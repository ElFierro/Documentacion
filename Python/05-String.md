## String

## Asignar cadena a una variable
La asignación de una cadena a una variable se realiza con el nombre de la variable seguido de un signo igual y la cadena:

Ejemplo
```python
a = "Hello"
```

## Cadenas multilínea
Puede asignar una cadena de varias líneas a una variable utilizando tres comillas:

Ejemplo

Puedes utilizar tres comillas dobles:

```python
a = """Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."""
```

## Las cadenas son matrices
Como muchos otros lenguajes de programación populares, las cadenas en Python son matrices de bytes que representan caracteres Unicode.

Sin embargo, Python no tiene un tipo de datos de carácter, un solo carácter es simplemente una cadena con una longitud de 1.

Se pueden utilizar corchetes para acceder a los elementos de la cadena.

Ejemplo
```python
a = "Hello, World!"
print(a[1])    #e
```

## Bucle a través de una cuerda
Dado que las cadenas son matrices, podemos recorrer los caracteres de una cadena con un bucle for.

Ejemplo
Recorra las letras de la palabra "plátano":

```python
for x in "banana":
  print(x)          #b  a  n  a  n  a
```

## Longitud de la cuerda
Para obtener la longitud de una cadena, use la len()función.

Ejemplo
La función len() devuelve la longitud de una cadena:

```python
a = "Hello, World!"
print(len(a))    #13
```

## Verificar cadena
Para comprobar si una determinada frase o carácter está presente en una cadena, podemos utilizar la palabra clave in.

Ejemplo
Compruebe si "free" está presente en el siguiente texto:

```python
txt = "The best things in life are free!"
print("free" in txt)       #True
```

## Verificar si no existe en cadena

Para comprobar si una determinada frase o carácter NO está presente en una cadena, podemos utilizar la palabra clave not in.

Ejemplo
Compruebe si "caro" NO está presente en el siguiente texto:
```python
txt = "The best things in life are free!"
print("expensive" not in txt)    #True
```

## Cortar string

Puede devolver una variedad de caracteres utilizando la sintaxis de segmento.

Especifique el índice inicial y el índice final, separados por dos puntos, para devolver una parte de la cadena.

Ejemplo:
```python
b = "Hello, World!"
print(b[2:5])   #llo
```

Al omitir el índice inicial, el rango comenzará en el primer carácter:
```python
b = "Hello, World!"
print(b[:5])   #Hello
```

Al omitir el índice final , el rango irá hasta el final:
```python
b = "Hello, World!"
print(b[2:])   #llo, World!
```

Utilice índices negativos para comenzar el segmento desde el final de la cadena:
```python
b = "Hello, World!"
print(b[-5:-2])    #orl
```

## Mayúsculas
Ejemplo
El método upper() devuelve la cadena en mayúsculas:
```python
a = "Hello, World!"
print(a.upper())     #HELLO, WORLD!
```

## Minúscula
Ejemplo
El método lower() devuelve la cadena en minúsculas:
```python
a = "Hello, World!"
print(a.lower())     #hello, world!
```

## Eliminar espacios en blanco
El espacio en blanco es el espacio antes y/o después del texto real y muy a menudo desea eliminar este espacio.

Ejemplo
El método strip() elimina cualquier espacio en blanco desde el principio o el final:
```python
a = " Hello, World! "
print(a.strip())   #"Hello, World!"
```

## Remplazar cadena
Ejemplo
El método replace() reemplaza una cadena con otra cadena:
```python
a = "Hello, World!"
print(a.replace("H", "J"))  #Jello, World!
```

## Cadena dividida
El método split() devuelve una lista donde el texto entre el separador especificado se convierte en los elementos de la lista.

Ejemplo
El método split() divide la cadena en subcadenas si encuentra instancias del separador:
```python
a = "Hello, World!"
print(a.split(",")) # returns ['Hello', ' World!']
```

## Concatenación de cadenas
Para concatenar o combinar dos cadenas, puede utilizar el operador +.

Ejemplo
Fusionar variable a con variable b en variable c:

```python
a = "Hello"
b = "World"
c = a + " "+ b     #Hello World
```

## Formatear cadenas
Para especificar una cadena como cadena f, simplemente coloque un fdelante del literal de cadena y agregue llaves {} como marcadores de posición para variables y otras operaciones.

Ejemplo
Crea una cadena f:

```python
age = 36
txt = f"My name is John, I am {age}"   #My name is John, I am 36
```
Un marcador de posición puede incluir un modificador para formatear el valor.

Se incluye un modificador agregando dos puntos :seguidos de un tipo de formato legal, como .2flo que significa un número de punto fijo con 2 decimales:

Ejemplo
Muestra el precio con 2 decimales:
```python
price = 59
txt = f"The price is {price:.2f} dollars"    #The price is 59.00 dollars
```

Un marcador de posición puede contener código Python, como operaciones matemáticas:

Ejemplo
Realice una operación matemática en el marcador de posición y devuelva el resultado:
```python
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