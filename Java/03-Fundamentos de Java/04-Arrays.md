# Arrays

En Java, los arrays son estructuras de datos que permiten almacenar múltiples valores del mismo tipo en una sola variable. A continuación, se detallan cómo declarar, inicializar y recorrer arrays en Java.

## 1. Declaración de Arrays

Para declarar un array en Java, se especifica el tipo de datos seguido de corchetes `[]`, y el nombre del array.

### Sintaxis

```java
tipo[] nombreArray;
```

### Ejemplo

```java
int[] numeros; // Declaración de un array de enteros
String[] nombres; // Declaración de un array de cadenas
```

## 2. Inicialización de Arrays

Una vez que el array ha sido declarado, debe ser inicializado para asignar espacio en memoria. Hay varias formas de inicializar un array en Java.

### Inicialización al momento de la declaración

```java
int[] numeros = {1, 2, 3, 4, 5}; // Inicialización con valores
String[] nombres = {"Ana", "Luis", "Pedro"}; // Inicialización con valores
```

### Inicialización usando el operador `new`

```java
int[] numeros = new int[5]; // Inicialización de un array de enteros con tamaño 5
String[] nombres = new String[3]; // Inicialización de un array de cadenas con tamaño 3
```

## 3. Asignación de Valores a un Array

Después de declarar e inicializar un array, puedes asignar valores a sus elementos usando índices.

### Ejemplo

```java
int[] numeros = new int[5]; // Inicialización del array

numeros[0] = 10; // Asignación de valor al primer elemento
numeros[1] = 20; // Asignación de valor al segundo elemento
// Los valores de los otros elementos serán 0 por defecto (para tipos primitivos)
```

## 4. Recorrido de Arrays

Para recorrer un array y acceder a sus elementos, puedes usar bucles. Los bucles más comunes son `for`, `for-each` (también conocido como enhanced for loop), y `while`.

### Usando el bucle `for`

```java
int[] numeros = {1, 2, 3, 4, 5};

for (int i = 0; i < numeros.length; i++) {
    System.out.println("Número en índice " + i + ": " + numeros[i]);
}
```

### Usando el bucle `for-each`

El bucle `for-each` simplifica la iteración sobre cada elemento del array.

```java
int[] numeros = {1, 2, 3, 4, 5};

for (int numero : numeros) {
    System.out.println("Número: " + numero);
}
```

### Usando el bucle `while`

Puedes usar un bucle `while` para recorrer un array, aunque es menos común que `for` y `for-each`.

```java
int[] numeros = {1, 2, 3, 4, 5};
int i = 0;

while (i < numeros.length) {
    System.out.println("Número en índice " + i + ": " + numeros[i]);
    i++;
}
```

## Conclusión

Los arrays son una parte fundamental del lenguaje Java para almacenar y manejar múltiples valores. La correcta declaración, inicialización y recorrido de arrays te permitirá manipular conjuntos de datos de manera eficiente en tus programas.
