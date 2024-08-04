# Estructuras de Control en Java

Las estructuras de control en Java permiten dirigir el flujo de ejecución de un programa. Estas estructuras permiten tomar decisiones, realizar repeticiones y controlar el flujo del programa de diversas maneras. A continuación se describen las principales estructuras de control en Java.

## 1. Estructuras de Selección

### Sentencia `if`

Permite ejecutar un bloque de código si se cumple una condición.

- **Sintaxis básica**:
  ```java
  if (condicion) {
      // Bloque de código
  }
  ```

- **Ejemplo**:
  ```java
  int numero = 10;
  if (numero > 0) {
      System.out.println("El número es positivo.");
  }
  ```

### Sentencia `if-else`

Permite ejecutar un bloque de código si se cumple una condición y otro bloque si no se cumple.

- **Sintaxis básica**:
  ```java
  if (condicion) {
      // Bloque de código si la condición es verdadera
  } else {
      // Bloque de código si la condición es falsa
  }
  ```

- **Ejemplo**:
  ```java
  int numero = -5;
  if (numero > 0) {
      System.out.println("El número es positivo.");
  } else {
      System.out.println("El número es negativo o cero.");
  }
  ```

### Sentencia `if-else if-else`

Permite evaluar múltiples condiciones.

- **Sintaxis básica**:
  ```java
  if (condicion1) {
      // Bloque de código si la condición1 es verdadera
  } else if (condicion2) {
      // Bloque de código si la condición2 es verdadera
  } else {
      // Bloque de código si ninguna condición es verdadera
  }
  ```

- **Ejemplo**:
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

### Sentencia `switch`

Permite seleccionar uno de varios bloques de código a ejecutar basándose en el valor de una expresión.

- **Sintaxis básica**:
  ```java
  switch (variable) {
      case valor1:
          // Bloque de código para valor1
          break;
      case valor2:
          // Bloque de código para valor2
          break;
      default:
          // Bloque de código por defecto si ningún caso coincide
  }
  ```

- **Ejemplo**:
  ```java
  int dia = 3;
  switch (dia) {
      case 1:
          System.out.println("Lunes");
          break;
      case 2:
          System.out.println("Martes");
          break;
      case 3:
          System.out.println("Miércoles");
          break;
      default:
          System.out.println("Día no válido");
  }
  ```

## 2. Estructuras de Repetición

### Bucle `for`

Permite repetir un bloque de código un número determinado de veces.

- **Sintaxis básica**:
  ```java
  for (inicialización; condicion; incremento) {
      // Bloque de código
  }
  ```

- **Ejemplo**:
  ```java
  for (int i = 0; i < 5; i++) {
      System.out.println("i: " + i);
  }
  ```

### Bucle `while`

Permite repetir un bloque de código mientras se cumpla una condición.

- **Sintaxis básica**:
  ```java
  while (condicion) {
      // Bloque de código
  }
  ```

- **Ejemplo**:
  ```java
  int i = 0;
  while (i < 5) {
      System.out.println("i: " + i);
      i++;
  }
  ```

### Bucle `do-while`

Similar al `while`, pero garantiza que el bloque de código se ejecute al menos una vez.

- **Sintaxis básica**:
  ```java
  do {
      // Bloque de código
  } while (condicion);
  ```

- **Ejemplo**:
  ```java
  int i = 0;
  do {
      System.out.println("i: " + i);
      i++;
  } while (i < 5);
  ```

## 3. Control de Flujo

### Sentencia `break`

Se utiliza para salir de un bucle o una sentencia `switch` antes de que se complete su ejecución.

- **Ejemplo**:
  ```java
  for (int i = 0; i < 10; i++) {
      if (i == 5) {
          break; // Sale del bucle cuando i es 5
      }
      System.out.println("i: " + i);
  }
  ```

### Sentencia `continue`

Se utiliza para saltar a la siguiente iteración de un bucle, omitiendo el resto del código en la iteración actual.

- **Ejemplo**:
  ```java
  for (int i = 0; i < 10; i++) {
      if (i % 2 == 0) {
          continue; // Salta al siguiente ciclo si i es par
      }
      System.out.println("i: " + i);
  }
  ```

Estas estructuras de control son fundamentales para la programación en Java y permiten construir lógica compleja en tus aplicaciones. ¡Espero que esta información te sea útil!
