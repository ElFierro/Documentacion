## Tipo de datos:

Los tipos de datos se dividen en dos grupos:

- Tipos de datos primitivos : incluye byte, short, int, long, float, double, boolean, y char
- Tipos de datos no primitivos como String, matrices y clases

#### Numericos:
Los tipos de números primitivos se dividen en dos grupos:

- Los tipos de enteros almacenan números enteros, positivos o negativos (como 123 o -456), sin decimales. Los tipos válidos son byte, short, int y long. El tipo que debe utilizar depende del valor numérico.

- Los tipos de coma flotante representan números con una parte fraccionaria que contienen uno o más decimales. Hay dos tipos: float y double.

```ssh
byte myNum = 100;
short myNum = 5000;
int myNum = 100000;
long myNum = 15000000000L;		
float myNum = 5.75f;
double myNum = 19.99d;
```

#### Decimales:
Debe utilizar un tipo de coma flotante siempre que necesite un número con un decimal, como 9,99 o 3,14515.

Los tipos de datos floa ty double pueden almacenar números fraccionarios. Tenga en cuenta que debe finalizar el valor con una "f" para flotantes y una "d" para dobles:

```ssh
float f1 = 35e3f;		//35000.0
double d1 = 12E4d;		//120000.0
```

###### Nota:
```ssh
La precisión de floates de sólo seis o siete dígitos decimales, mientras que las variables double 
tienen una precisión de unos 15 dígitos. Por lo tanto, es más seguro utilizar double para la mayoría 
de los cálculos.
```

#### Booleanos:

Muy a menudo, en programación, necesitará un tipo de datos que solo pueda tener uno de dos valores, como:

- SÍ NO
- ENCENDIDO APAGADO
- VERDADERO FALSO

Para esto, Java tiene un tipo de dato boolean, que solo puede tomar los valores true o false:

```ssh
boolean isJavaFun = true;
boolean isFishTasty = false;
```

#### Caracteres:

El tipo de datos char se utiliza para almacenar un solo carácter. El carácter debe estar entre comillas simples, como 'A' o 'c':
```ssh
char myGrade = 'B';		
char myVar1 = 65, myVar2 = 66, myVar3 = 67;	
```

#### String:

El tipo de datos String se utiliza para almacenar una secuencia de caracteres (texto). Los valores de cadena deben estar entre comillas dobles:

```ssh
String greeting = "Hello World";
System.out.println(greeting);
```