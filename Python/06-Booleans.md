## Booleanos de Python
Los booleanos representan uno de dos valores: Trueo False.

## Valores booleanos
En programación a menudo necesitas saber si una expresión es Trueo False.

Puede evaluar cualquier expresión en Python y obtener una de dos respuestas, Trueo False.

#### Ejemplo
```python
print(10 > 9)
print(10 == 9)
print(10 < 9)
```

## Evaluar valores y variables
La función bool() le permite evaluar cualquier valor y darle Trueo False a cambio,

#### Ejemplo
Evaluar una cadena y un número:
```python
print(bool("Hello"))
print(bool(15))
```

## La mayoría de los valores son verdaderos
Casi cualquier valor se evalúa Truesi tiene algún tipo de contenido.

Cualquier cadena es True, excepto las cadenas vacías.

Cualquier número lo es True, excepto 0.

#### Ejemplo
Lo siguiente devolverá Verdadero:
```python
bool("abc")
bool(123)
bool(["apple", "cherry", "banana"])
```

## Algunos valores son falsos
De hecho, no hay muchos valores que se evalúen como False, excepto valores vacíos, como (), [], {}, ""el número 0y el valor None. Y, por supuesto, el valor Falsese evalúa como False.

#### Ejemplo
Lo siguiente devolverá Falso:
```python
bool(False)
bool(None)
bool(0)
bool("")
bool(())
bool([])
bool({})
```