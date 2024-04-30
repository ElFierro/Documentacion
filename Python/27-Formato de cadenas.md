# Formato de cadenas
Para asegurarnos de que una cadena se muestre como se espera, podemos formatear el resultado con el método format().

## F-string 
Le permite formatear partes seleccionadas de una cadena.
Para especificar una cadena como cadena f, simplemente coloque un fdelante del literal de cadena, así:
```python
txt = f"The price is 49 dollars"   #The price is 49 dollars
```
## Marcadores de posición y modificadores
Para formatear valores en una cadena f, agregue marcadores de posición {}; un marcador de posición puede contener variables, operaciones, funciones y modificadores para formatear el valor.
```python
price = 59
txt = f"The price is {price} dollars"     #The price is 59 dollars
```
Un marcador de posición también puede incluir un modificador para dar formato al valor.

Se incluye un modificador agregando dos puntos :seguidos de un tipo de formato legal, como .2flo que significa un número de punto fijo con 2 decimales:
```python
price = 59
txt = "The price is {:.2f} dollars"		#The price is 49.00 dollars

txt = f"The price is {95:.2f} dollars"   #The price is 95.00 dollars
```
## Realizar operaciones en cuerdas F
Puede realizar operaciones de Python dentro de los marcadores de posición.
```python
txt = f"The price is {20 * 59} dollars"    #The price is 1180 dollars

price = 59
tax = 0.25
txt = f"The price is {price + (price * tax)} dollars"   The price is 73.75 dollars
```
Puede realizar declaraciones if...else dentro de los marcadores de posición:
```python
price = 49
txt = f"It is very {'Expensive' if price>50 else 'Cheap'}"
It is very Cheap
```
## Ejecutar funciones en F-Strings
Puede ejecutar funciones dentro del marcador de posición:
```python
fruit = "apples"
txt = f"I love {fruit.upper()}"
print(txt)     #I love APPLES
```
La función no tiene que ser un método integrado de Python, puedes crear tus propias funciones y usarlas:
```python
def myconverter(x):
  return x * 0.3048

txt = f"The plane is flying at a {myconverter(30000)} meter altitude"
```
## Más modificadores
Hay varios otros modificadores que se pueden usar para formatear valores:
```python
price = 59000
txt = f"The price is {price:,} dollars"    #The price is 59,000 dollars
```
## Format()
El método format() también utiliza llaves como marcadores de posición {}, pero la sintaxis es ligeramente diferente:
```python
price = 49
txt = "The price is {} dollars"
print(txt.format(price))
```
## Múltiples valores

Si desea utilizar más valores, simplemente agregue más valores al método format():
```python
quantity = 3
itemno = 567
price = 49
myorder = "I want {} pieces of item number {} for {:.2f} dollars."
print(myorder.format(quantity, itemno, price))       #I want 3 pieces of item number 567 for 49.00 dollars.
```
## Números de índice
Puede utilizar números de índice para asegurarse de que los valores se coloquen en los marcadores de posición correctos
```python
quantity = 3
itemno = 567
price = 49
myorder = "I want {0} pieces of item number {1} for {2:.2f} dollars."
print(myorder.format(quantity, itemno, price))		#I want 3 pieces of item number 567 for 49.00 dollars.
```
Además, si desea hacer referencia al mismo valor más de una vez, utilice el número de índice:
```python
age = 36
name = "John"
txt = "His name is {1}. {1} is {0} years old."
print(txt.format(age, name))					#His name is John. John is 36 years old.
```
## Índices nombrados
También puede usar índices con nombre ingresando un nombre dentro de las llaves {carname}, pero luego debe usar nombres cuando pasa los valores de los parámetros txt.format(carname = "Ford"):
```python
myorder = "I have a {carname}, it is a {model}."
print(myorder.format(carname = "Ford", model = "Mustang"))
```