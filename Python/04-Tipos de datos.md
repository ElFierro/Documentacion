# Tipos de datos integrados

En programación, el tipo de datos es un concepto importante.

Las variables pueden almacenar datos de diferentes tipos y diferentes tipos pueden hacer cosas diferentes.

Python tiene los siguientes tipos de datos integrados de forma predeterminada, en estas categorías:


- Tipo de texto:	      
    str

- Tipos numéricos:	  
    int, float, complex

- Tipos de secuencia:	  
    list, tuple, range

- Tipo de mapeo:	      
    dict

- Tipos de conjuntos:	  
    set,frozenset

- Tipo booleano:	      
    bool

- Tipos binarios:	      
    bytes, bytearray, memoryview

- Ninguno Tipo:	      
    NoneType

## Configuración del tipo de datos

En Python, el tipo de datos se establece cuando asignas un valor a una variable:

#### Texto
```python
#str
x = "Hello World"								
```

#### Numericos	
```python
#int
x = 20	
#float												
x = 20.5			
#complex								
x = 1j										
```

#### Secuencia
```python
#list	
x = ["apple", "banana", "cherry"]				
#tuple	
x = ("apple", "banana", "cherry")	
#range			
x = range(6)										
```

#### Mapeo
```python
#dict	
x = {"name" : "John", "age" : 36}				
```

#### Conjutos
```python
#set
x = {"apple", "banana", "cherry"}	
#frozenset				 	
x = frozenset({"apple", "banana", "cherry"})			
```

#### Booleanos
```python
#bool
x = True											
```

#### Binarios
```python
#bytes	
x = b"Hello"	
#bytearray								
x = bytearray(5)			
#memoryview							
x = memoryview(bytes(5))						
```

#### Sin tipo
```python
#NoneType
x = None										
```

#### Configuración del tipo de datos específico

Si desea especificar el tipo de datos, puede utilizar las siguientes funciones de constructor:

Texto
```python
x = str("Hello World")	
```

Numericos	
```python
x = int(20)	
x = float(20.5)	
x = complex(1j)	
```
Secuencia
```python
x = list(("apple", "banana", "cherry"))	
x = tuple(("apple", "banana", "cherry"))
x = range(6)
```
Mapeo
```python
x = dict(name="John", age=36)	
```
Conjutos
```python
x = set(("apple", "banana", "cherry"))	
x = frozenset(("apple", "banana", "cherry"))
```
Booleanos
```python
x = bool(5)	
```
Binarios
```python
x = bytes(5)	
x = bytearray(5)	
x = memoryview(bytes(5))
```

#### Número aleatorio
Python no tiene una random()función para crear un número aleatorio, pero Python tiene un módulo integrado llamado randomque se puede utilizar para crear números aleatorios:

Ejemplo
Importe el módulo aleatorio y muestre un número aleatorio entre 1 y 9:

```python
import random

print(random.randrange(1, 10))
```

#### Especificar un tipo de variable

Puede haber ocasiones en las que desee especificar un tipo en una variable. Esto se puede hacer con casting. Python es un lenguaje orientado a objetos y, como tal, utiliza clases para definir tipos de datos, incluidos sus tipos primitivos.

Enteros:
```python
x = int(1)   # x will be 1
y = int(2.8) # y will be 2
z = int("3") # z will be 3
```

Flotadores:
```python
x = float(1)     # x will be 1.0
y = float(2.8)   # y will be 2.8
z = float("3")   # z will be 3.0
w = float("4.2") # w will be 4.2
```

String:
```python
x = str("s1") # x will be 's1'
y = str(2)    # y will be '2'
z = str(3.0)  # z will be '3.0'
```