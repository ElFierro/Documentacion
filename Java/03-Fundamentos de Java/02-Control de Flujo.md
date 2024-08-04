# Control de Flujo

El control de flujo en Java permite dirigir el flujo de ejecución del programa mediante decisiones y bucles. Esto es fundamental para implementar lógica condicional y repetitiva en tus aplicaciones.

## 1. Estructura Condicional: If y Else

Las estructuras `if` y `else` permiten ejecutar bloques de código basados en condiciones booleanas.

### 1.1 Estructura `if`

La estructura `if` ejecuta un bloque de código si la condición especificada es verdadera.

#### Ejemplo de `if`

```java
public class ControlFlujoIf {
    public static void main(String[] args) {
        int edad = 18;

        if (edad >= 18) {
            System.out.println("Eres mayor de edad.");
        }
    }
}
```

### 1.2 Estructura `if-else`

La estructura `if-else` permite ejecutar un bloque de código si la condición es verdadera y otro bloque si es falsa.

#### Ejemplo de `if-else`

```java
public class ControlFlujoIfElse {
    public static void main(String[] args) {
        int edad = 16;

        if (edad >= 18) {
            System.out.println("Eres mayor de edad.");
        } else {
            System.out.println("Eres menor de edad.");
        }
    }
}
```

### 1.3 Estructura `if-else if-else`

Permite manejar múltiples condiciones.

#### Ejemplo de `if-else if-else`

```java
public class ControlFlujoIfElseIfElse {
    public static void main(String[] args) {
        int puntuacion = 85;

        if (puntuacion >= 90) {
            System.out.println("A");
        } else if (puntuacion >= 80) {
            System.out.println("B");
        } else if (puntuacion >= 70) {
            System.out.println("C");
        } else {
            System.out.println("D");
        }
    }
}
```

## 2. Estructura Condicional: Switch

La estructura `switch` permite seleccionar entre múltiples opciones basadas en el valor de una expresión.

### 2.1 Sintaxis de `switch`

Cada `case` debe terminar con una instrucción `break` para evitar que se ejecute el siguiente `case`. Puedes usar `default` para manejar casos no especificados.

#### Ejemplo de `switch`

```java
public class ControlFlujoSwitch {
    public static void main(String[] args) {
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
            case 4:
                System.out.println("Jueves");
                break;
            case 5:
                System.out.println("Viernes");
                break;
            case 6:
                System.out.println("Sábado");
                break;
            case 7:
                System.out.println("Domingo");
                break;
            default:
                System.out.println("Día inválido");
                break;
        }
    }
}
```

## 3. Bucles

Los bucles permiten repetir un bloque de código mientras se cumpla una condición.

### 3.1 Bucle `for`

El bucle `for` es ideal cuando conoces de antemano el número de iteraciones.

#### Ejemplo de `for`

```java
public class ControlFlujoFor {
    public static void main(String[] args) {
        for (int i = 0; i < 5; i++) {
            System.out.println("Número: " + i);
        }
    }
}
```

### 3.2 Bucle `while`

El bucle `while` ejecuta un bloque de código mientras la condición sea verdadera. Es útil cuando no sabes cuántas veces se repetirá el bucle.

#### Ejemplo de `while`

```java
public class ControlFlujoWhile {
    public static void main(String[] args) {
        int contador = 0;

        while (contador < 5) {
            System.out.println("Número: " + contador);
            contador++;
        }
    }
}
```

### 3.3 Bucle `do-while`

El bucle `do-while` es similar al `while`, pero garantiza que el bloque de código se ejecute al menos una vez, ya que la condición se evalúa después de la ejecución del bloque.

#### Ejemplo de `do-while`

```java
public class ControlFlujoDoWhile {
    public static void main(String[] args) {
        int contador = 0;

        do {
            System.out.println("Número: " + contador);
            contador++;
        } while (contador < 5);
    }
}
```

## Conclusión

Las estructuras de control de flujo en Java te permiten implementar lógica condicional y repetitiva en tus programas. Usar `if`, `else`, `switch`, y los bucles `for`, `while`, y `do-while` de manera efectiva te ayudará a controlar cómo se ejecuta el código y manejar diferentes situaciones en tus aplicaciones.
