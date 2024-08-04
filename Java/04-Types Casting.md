# CONVERSION Y CASTEO

La conversión de tipos es cuando asigna un valor de un tipo de datos primitivo a otro tipo.

En Java, existen dos tipos de conversión:

- **Ampliación de conversión (automáticamente)**: conversión de un tipo más pequeño a un tamaño de tipo más grande
`byte`-> `short`-> `char`-> `int`-> `long`-> `float`->`double`

```java
//CONVERSION
int myInt = 9;
double myDouble = myInt;
```

- **Reducción de conversión (manualmente)**: conversión de un tipo más grande a un tipo de tamaño más pequeño
`double`-> `float`-> `long`-> `int`-> `char`-> `short`->`byte`

```java
//CASTEO
 double myDouble = 9.78d;
int myInt = (int) myDouble;
```