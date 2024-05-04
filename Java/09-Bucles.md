# Bucles

## While
El bucle while recorre un bloque de código siempre que una condición especificada sea true:

#### Sintaxis
```ssh
while (condición) {
  //código a ejecutar   
  Declaración de incremento/decremento  
}
```

#### Ejemplo
```java
while (i < 5) {
	System.out.println(i);
	i++;
}
```
## Do while
Este bucle ejecutará el bloque de código una vez, antes de verificar si la condición es verdadera, luego repetirá 

#### Sintaxis
```ssh
do {
 //código a ejecutar 
}
while (condición);
```

#### Ejemplo
```java
do {
  System.out.println(i);
  i++;
}
while (i < 5);
```

## For
Cuando sepa exactamente cuántas veces desea recorrer un bloque de código, use el bucle for en lugar de un bucle while:

#### Sintaxis
```ssh
for (<inicialización>; <condición>; <incremento/decremento>){    
//sentencia o código a ejecutar    
}    
```
- **Inicialización** : es la condición inicial que se ejecuta una vez cuando comienza el ciclo. Aquí podemos inicializar la variable o podemos usar una variable ya inicializada. Es una condición opcional.
**Condición** : es la segunda condición que se ejecuta cada vez para probar la condición del bucle. Continúa la ejecución hasta que la condición sea falsa. Debe devolver un valor booleano verdadero o falso. Es una condición opcional.
**Incremento/Decremento** : Incrementa o disminuye el valor de la variable. Es una condición opcional.
**Declaración** : la declaración del bucle se ejecuta cada vez hasta que la segunda condición sea falsa.

#### Ejemplo
```java
for (int i = 0; i < 5; i++) {
  System.out.println(i);
}
```

## For anidado
Si tenemos un bucle for dentro de otro bucle, se conoce como bucle for anidado. El bucle interno se ejecuta completamente cada vez que se ejecuta el bucle externo.

```java
for (int i = 1; i <= 2; i++) {
  System.out.println("Outer: " + i); // Executes 2 times
  
  // Inner loop
  for (int j = 1; j <= 3; j++) {
    System.out.println(" Inner: " + j); // Executes 6 times (2 * 3)
  }
}  
```
 
## For each
El bucle for-each se utiliza para recorrer una matriz o colección en Java.

Funciona en base a elementos y no al índice. Devuelve elementos uno por uno en la variable definida.

#### Sintaxis
```shh
for (<tipo de datos> <variable> : <nombre_matriz>){    
//código a ejecutar    
}    
```

#### Ejemplo
```java
String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
for (String i : cars) {
  System.out.println(i);
}
```

## Break
La declaración break también se puede utilizar para salir de un bucle.

#### Ejemplo
```java
for (int i = 0; i < 10; i++) {
  if (i == 4) {
    break;
  }
  System.out.println(i);
}
```

## Continue
interrumpe una iteración, si se produce una condición específica, y continúa con la siguiente iteración en el bucle.

#### Ejemplo
```java
for (int i = 0; i < 10; i++) {
  if (i == 4) {
    continue;
  }
  System.out.println(i);
}
```