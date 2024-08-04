# Sintaxis Básica de Java

Java es un lenguaje de programación orientado a objetos con una sintaxis clara y estructurada. A continuación se presentan los conceptos básicos de la sintaxis en Java.

## 1. Estructura de un Programa Java

Un programa Java típico se estructura en clases. La sintaxis básica de una clase Java es la siguiente:

```java
public class NombreDeLaClase {
    // Campos (variables) de la clase

    // Métodos de la clase
    public static void main(String[] args) {
        // Código a ejecutar
    }
}
```

- **`public`**: Especifica el modificador de acceso, indicando que la clase es accesible desde cualquier otra clase.
- **`class`**: Palabra clave para definir una clase.
- **`main`**: Método principal que se ejecuta al iniciar el programa.
- **`String[] args`**: Parámetro del método `main` que permite recibir argumentos de línea de comandos.

## 2. Declaración de Variables

Para declarar una variable en Java, se especifica el tipo de dato seguido del nombre de la variable. Opcionalmente, se puede asignar un valor inicial.

```java
int numero; // Declaración de una variable
numero = 10; // Asignación de un valor

// Declaración y asignación en una sola línea
int edad = 25;
```

## 3. Tipos de Datos

### Tipos Primitivos

- **`int`**: Enteros (por ejemplo, `int edad = 30;`)
- **`double`**: Números en punto flotante (por ejemplo, `double precio = 19.99;`)
- **`char`**: Carácter único (por ejemplo, `char letra = 'A';`)
- **`boolean`**: Valor verdadero o falso (por ejemplo, `boolean esVerdadero = true;`)

### Tipos de Datos de Referencia

- **`String`**: Cadenas de caracteres (por ejemplo, `String nombre = "Juan";`)
- **`Array`**: Arreglos (por ejemplo, `int[] numeros = {1, 2, 3};`)

## 4. Operadores

Java soporta varios tipos de operadores:

- **Operadores Aritméticos**: `+`, `-`, `*`, `/`, `%`
  ```java
  int suma = 5 + 3; // Resultado: 8
  ```
- **Operadores Relacionales**: `==`, `!=`, `>`, `<`, `>=`, `<=`
  ```java
  boolean esIgual = (5 == 3); // Resultado: false
  ```
- **Operadores Lógicos**: `&&`, `||`, `!`
  ```java
  boolean resultado = (5 > 3) && (3 < 4); // Resultado: true
  ```
- **Operadores de Asignación**: `=`, `+=`, `-=`, `*=`, `/=`
  ```java
  int x = 10;
  x += 5; // Equivalente a x = x + 5; Resultado: 15
  ```

## 5. Estructuras de Control

### Condicionales

- **`if`**:
  ```java
  if (condicion) {
      // Bloque de código
  }
  ```

- **`if-else`**:
  ```java
  if (condicion) {
      // Bloque de código si la condición es verdadera
  } else {
      // Bloque de código si la condición es falsa
  }
  ```

- **`switch`**:
  ```java
  switch (variable) {
      case valor1:
          // Código
          break;
      case valor2:
          // Código
          break;
      default:
          // Código
  }
  ```

### Bucles

- **`for`**:
  ```java
  for (int i = 0; i < 10; i++) {
      // Bloque de código
  }
  ```

- **`while`**:
  ```java
  while (condicion) {
      // Bloque de código
  }
  ```

- **`do-while`**:
  ```java
  do {
      // Bloque de código
  } while (condicion);
  ```

## 6. Métodos

Los métodos son bloques de código que realizan una tarea específica y se definen dentro de una clase.

```java
public class Ejemplo {
    public static void saludo() {
        System.out.println("Hola, mundo!");
    }

    public static void main(String[] args) {
        saludo(); // Llamada al método saludo
    }
}
```

- **`public`**: Modificador de acceso.
- **`static`**: Indica que el método pertenece a la clase, no a una instancia.
- **`void`**: Tipo de retorno del método (en este caso, no retorna valor).

## 7. Comentarios

Los comentarios en Java se utilizan para agregar notas al código y se pueden escribir de dos maneras:

- **Comentario de una sola línea**:
  ```java
  // Este es un comentario de una línea
  ```

- **Comentario de varias líneas**:
  ```java
  /*
   * Este es un comentario
   * de varias líneas
   */
  ```

Este resumen cubre los aspectos básicos de la sintaxis en Java. Estos fundamentos te proporcionarán una base sólida para comenzar a programar en Java. ¡Espero que te sea útil!
