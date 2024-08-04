# Estructuras de Control

En Java, las estructuras de control permiten dirigir el flujo de ejecución del programa en función de condiciones o repetición de bloques de código. A continuación, se presentan las principales estructuras de control: `if`, `else`, `switch`, y los bucles (`for`, `while`, `do-while`).

## 1. Estructura `if`

La estructura `if` se usa para ejecutar un bloque de código solo si se cumple una condición específica.

### Sintaxis

```java
if (condición) {
    // Código a ejecutar si la condición es verdadera
}
```

### Ejemplo

```java
int numero = 10;

if (numero > 0) {
    System.out.println("El número es positivo.");
}
```

## 2. Estructura `else`

La estructura `else` se usa junto con `if` para ejecutar un bloque de código cuando la condición del `if` es falsa.

### Sintaxis

```java
if (condición) {
    // Código a ejecutar si la condición es verdadera
} else {
    // Código a ejecutar si la condición es falsa
}
```

### Ejemplo

```java
int numero = -5;

if (numero > 0) {
    System.out.println("El número es positivo.");
} else {
    System.out.println("El número es negativo o cero.");
}
```

## 3. Estructura `else if`

La estructura `else if` permite comprobar múltiples condiciones en una secuencia.

### Sintaxis

```java
if (condición1) {
    // Código a ejecutar si la condición1 es verdadera
} else if (condición2) {
    // Código a ejecutar si la condición2 es verdadera
} else {
    // Código a ejecutar si ninguna de las condiciones anteriores es verdadera
}
```

### Ejemplo

```java
int numero = 0;

if (numero > 0) {
    System.out.println("El número es positivo.");
} else if (numero < 0) {
    System.out.println("El número es negativo.");
} else {
    System.out.println("El número es cero.");
}
```

## 4. Estructura `switch`

La estructura `switch` se usa para seleccionar uno de muchos bloques de código a ejecutar. Es útil cuando se tiene una variable con múltiples valores posibles.

### Sintaxis

```java
switch (variable) {
    case valor1:
        // Código a ejecutar si variable == valor1
        break;
    case valor2:
        // Código a ejecutar si variable == valor2
        break;
    // Otros casos...
    default:
        // Código a ejecutar si ninguno de los casos coincide
}
```

### Ejemplo

```java
int dia = 3;
String nombreDia;

switch (dia) {
    case 1:
        nombreDia = "Lunes";
        break;
    case 2:
        nombreDia = "Martes";
        break;
    case 3:
        nombreDia = "Miércoles";
        break;
    default:
        nombreDia = "Día inválido";
        break;
}

System.out.println("El día es: " + nombreDia);
```

## 5. Bucle `for`

El bucle `for` se usa para ejecutar un bloque de código un número determinado de veces. Es útil cuando el número de iteraciones es conocido.

### Sintaxis

```java
for (inicialización; condición; actualización) {
    // Código a ejecutar en cada iteración
}
```

### Ejemplo

```java
for (int i = 0; i < 5; i++) {
    System.out.println("Número: " + i);
}
```

## 6. Bucle `while`

El bucle `while` se usa para ejecutar un bloque de código mientras se cumpla una condición. Es útil cuando el número de iteraciones no es conocido de antemano.

### Sintaxis

```java
while (condición) {
    // Código a ejecutar mientras la condición sea verdadera
}
```

### Ejemplo

```java
int i = 0;

while (i < 5) {
    System.out.println("Número: " + i);
    i++;
}
```

## 7. Bucle `do-while`

El bucle `do-while` es similar al `while`, pero garantiza que el bloque de código se ejecute al menos una vez antes de comprobar la condición.

### Sintaxis

```java
do {
    // Código a ejecutar
} while (condición);
```

### Ejemplo

```java
int i = 0;

do {
    System.out.println("Número: " + i);
    i++;
} while (i < 5);
```

## Conclusión

Las estructuras de control `if`, `else`, `switch`, y los bucles (`for`, `while`, `do-while`) son fundamentales para controlar el flujo de ejecución en programas Java. Elegir la estructura adecuada para cada situación te permitirá escribir código más claro y eficiente.
