## Bucles

## While
//El bucle while recorre un bloque de código siempre que una condición especificada sea true:

#### Sintaxis
```ssh
while (condition) {
  // code block to be executed
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
  // code block to be executed
}
while (condition);
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
for (statement 1; statement 2; statement 3) {
  // code block to be executed
}
```

#### Ejemplo
```java
for (int i = 0; i < 5; i++) {
  System.out.println(i);
}
```

## For anidado
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
También hay un bucle " for-each ", que se utiliza exclusivamente para recorrer los elementos de una matriz :

#### Sintaxis
```shh
for (type variableName : arrayName) {
  // code block to be executed
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