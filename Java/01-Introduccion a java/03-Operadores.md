# Operadores en Java

Java proporciona varios operadores que se pueden usar para realizar operaciones en variables y valores. A continuación se detallan los principales operadores disponibles en Java:

## 1. Operadores Aritméticos

Estos operadores se utilizan para realizar operaciones matemáticas básicas.

- **Suma (`+`)**: Suma dos valores.
  ```java
  int suma = 5 + 3; // Resultado: 8
  ```
- **Resta (`-`)**: Resta un valor de otro.
  ```java
  int resta = 5 - 3; // Resultado: 2
  ```
- **Multiplicación (`*`)**: Multiplica dos valores.
  ```java
  int multiplicacion = 5 * 3; // Resultado: 15
  ```
- **División (`/`)**: Divide un valor entre otro.
  ```java
  int division = 5 / 2; // Resultado: 2 (división entera)
  ```
- **Módulo (`%`)**: Devuelve el residuo de una división.
  ```java
  int modulo = 5 % 2; // Resultado: 1
  ```

## 2. Operadores Relacionales

Estos operadores comparan dos valores y devuelven un resultado booleano (`true` o `false`).

- **Igual a (`==`)**: Verifica si dos valores son iguales.
  ```java
  boolean esIgual = (5 == 3); // Resultado: false
  ```
- **Distinto de (`!=`)**: Verifica si dos valores son diferentes.
  ```java
  boolean esDistinto = (5 != 3); // Resultado: true
  ```
- **Mayor que (`>`)**: Verifica si un valor es mayor que otro.
  ```java
  boolean esMayor = (5 > 3); // Resultado: true
  ```
- **Menor que (`<`)**: Verifica si un valor es menor que otro.
  ```java
  boolean esMenor = (5 < 3); // Resultado: false
  ```
- **Mayor o igual que (`>=`)**: Verifica si un valor es mayor o igual que otro.
  ```java
  boolean esMayorOIgual = (5 >= 5); // Resultado: true
  ```
- **Menor o igual que (`<=`)**: Verifica si un valor es menor o igual que otro.
  ```java
  boolean esMenorOIgual = (5 <= 3); // Resultado: false
  ```

## 3. Operadores Lógicos

Estos operadores se utilizan para combinar valores booleanos.

- **AND lógico (`&&`)**: Devuelve `true` si ambos operandos son verdaderos.
  ```java
  boolean resultadoAnd = (5 > 3) && (2 < 4); // Resultado: true
  ```
- **OR lógico (`||`)**: Devuelve `true` si al menos uno de los operandos es verdadero.
  ```java
  boolean resultadoOr = (5 > 3) || (2 > 4); // Resultado: true
  ```
- **NOT lógico (`!`)**: Invierte el valor booleano del operando.
  ```java
  boolean resultadoNot = !(5 > 3); // Resultado: false
  ```

## 4. Operadores de Asignación

Estos operadores se utilizan para asignar valores a las variables.

- **Asignación simple (`=`)**: Asigna un valor a una variable.
  ```java
  int valor = 5; // Asigna 5 a valor
  ```
- **Asignación con suma (`+=`)**: Suma el valor de la variable y asigna el resultado a la variable.
  ```java
  int valor = 5;
  valor += 3; // Valor ahora es 8
  ```
- **Asignación con resta (`-=`)**: Resta el valor de la variable y asigna el resultado a la variable.
  ```java
  int valor = 5;
  valor -= 3; // Valor ahora es 2
  ```
- **Asignación con multiplicación (`*=`)**: Multiplica el valor de la variable y asigna el resultado a la variable.
  ```java
  int valor = 5;
  valor *= 3; // Valor ahora es 15
  ```
- **Asignación con división (`/=`)**: Divide el valor de la variable y asigna el resultado a la variable.
  ```java
  int valor = 5;
  valor /= 2; // Valor ahora es 2
  ```
- **Asignación con módulo (`%=`)**: Calcula el módulo del valor de la variable y asigna el resultado a la variable.
  ```java
  int valor = 5;
  valor %= 2; // Valor ahora es 1
  ```

## 5. Operadores de Incremento y Decremento

Estos operadores se utilizan para aumentar o disminuir el valor de una variable en uno.

- **Incremento (`++`)**: Aumenta el valor de la variable en uno.
  ```java
  int valor = 5;
  valor++; // Valor ahora es 6
  ```
- **Decremento (`--`)**: Disminuye el valor de la variable en uno.
  ```java
  int valor = 5;
  valor--; // Valor ahora es 4
  ```

## 6. Operadores Unarios

Estos operadores se aplican a un solo operando.

- **Positivo (`+`)**: Indica un valor positivo (aunque es redundante, se usa a veces para claridad).
  ```java
  int valor = +5; // Valor es 5
  ```
- **Negativo (`-`)**: Indica un valor negativo.
  ```java
  int valor = -5; // Valor es -5
  ```

## 7. Operadores Ternarios

Este operador se utiliza para evaluar una expresión condicional y devolver un valor basado en esa condición.

- **Operador ternario (`?:`)**: Se usa como una forma corta de una estructura `if-else`.
  ```java
  int valor = (5 > 3) ? 10 : 20; // Valor es 10
  ```

## 8. Operadores Bit a Bit

Estos operadores realizan operaciones a nivel de bits.

- **AND a nivel de bits (`&`)**: Realiza una operación AND a nivel de bits.
  ```java
  int resultado = 5 & 3; // Resultado: 1
  ```
- **OR a nivel de bits (`|`)**: Realiza una operación OR a nivel de bits.
  ```java
  int resultado = 5 | 3; // Resultado: 7
  ```
- **XOR a nivel de bits (`^`)**: Realiza una operación XOR a nivel de bits.
  ```java
  int resultado = 5 ^ 3; // Resultado: 6
  ```
- **Complemento a nivel de bits (`~`)**: Invierte los bits del operando.
  ```java
  int resultado = ~5; // Resultado: -6 (en complemento a dos)
  ```
- **Desplazamiento a la izquierda (`<<`)**: Desplaza los bits del operando hacia la izquierda.
  ```java
  int resultado = 5 << 1; // Resultado: 10
  ```
- **Desplazamiento a la derecha (`>>`)**: Desplaza los bits del operando hacia la derecha.
  ```java
  int resultado = 5 >> 1; // Resultado: 2
  ```
- **Desplazamiento a la derecha sin signo (`>>>`)**: Desplaza los bits del operando hacia la derecha sin conservar el signo.
  ```java
  int resultado = 5 >>> 1; // Resultado: 2
  ```

Estos son los operadores básicos que puedes usar en Java. Cada tipo de operador tiene su propio propósito y se puede combinar para realizar una variedad de operaciones en tus programas.
