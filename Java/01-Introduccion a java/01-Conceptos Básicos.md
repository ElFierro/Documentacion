# Conceptos Básicos de Programación

En la programación, hay conceptos fundamentales que forman la base de cualquier lenguaje. En Java, estos conceptos incluyen variables, tipos de datos, operadores y estructuras de control. Entender estos conceptos es crucial para desarrollar programas efectivos y eficientes.

## 1. Variables

Las variables son espacios en la memoria que se utilizan para almacenar datos que pueden ser utilizados y manipulados durante la ejecución del programa. Cada variable tiene un tipo que define el tipo de datos que puede almacenar.

### Declaración e Inicialización

Para declarar una variable en Java, se especifica el tipo de dato seguido del nombre de la variable. Puedes inicializar una variable al momento de la declaración o en una línea separada.

### Ejemplo

```java
public class EjemploVariables {
    public static void main(String[] args) {
        // Declaración e inicialización
        int edad = 25;
        double altura = 1.75;
        String nombre = "Juan";

        // Uso de las variables
        System.out.println("Nombre: " + nombre);
        System.out.println("Edad: " + edad);
        System.out.println("Altura: " + altura);
    }
}
```

## 2. Tipos de Datos

Java tiene dos tipos principales de datos: primitivos y no primitivos.

### Tipos de Datos Primitivos

- **byte**: 8 bits, rango de -128 a 127
- **short**: 16 bits, rango de -32,768 a 32,767
- **int**: 32 bits, rango de -2^31 a 2^31-1
- **long**: 64 bits, rango de -2^63 a 2^63-1
- **float**: 32 bits, números en punto flotante
- **double**: 64 bits, números en punto flotante de doble precisión
- **char**: 16 bits, un solo carácter Unicode
- **boolean**: Representa valores verdadero (`true`) o falso (`false`)

### Tipos de Datos No Primitivos

- **String**: Secuencias de caracteres
- **Arrays**: Colecciones de elementos del mismo tipo
- **Clases y Objetos**: Definiciones más complejas de datos

### Ejemplo

```java
public class EjemploTiposDeDatos {
    public static void main(String[] args) {
        int numeroEntero = 10;
        double numeroDecimal = 20.5;
        char letra = 'A';
        boolean esVerdadero = true;
        String texto = "Hola Mundo";

        System.out.println("Número Entero: " + numeroEntero);
        System.out.println("Número Decimal: " + numeroDecimal);
        System.out.println("Letra: " + letra);
        System.out.println("Booleano: " + esVerdadero);
        System.out.println("Texto: " + texto);
    }
}
```

## 3. Operadores

Los operadores se utilizan para realizar operaciones en variables y valores. Java incluye varios tipos de operadores:

### Operadores Aritméticos

- **+**: Suma
- **-**: Resta
- **\***: Multiplicación
- **/**: División
- **%**: Módulo (residuo)

### Operadores Relacionales

- **==**: Igual a
- **!=**: Diferente de
- **>**: Mayor que
- **<**: Menor que
- **>=**: Mayor o igual que
- **<=**: Menor o igual que

### Operadores Lógicos

- **&&**: Y lógico (AND)
- **||**: O lógico (OR)
- **!**: Negación lógica (NOT)

### Operadores de Asignación

- **=**: Asignación
- **+=**: Asignación con suma
- **-=**: Asignación con resta
- **\*=**: Asignación con multiplicación
- **/=**: Asignación con división
- **%=**: Asignación con módulo

### Ejemplo

```java
public class EjemploOperadores {
    public static void main(String[] args) {
        int a = 10;
        int b = 5;
        int suma = a + b;
        boolean esIgual = (a == b);
        boolean resultado = (a > b) && (b < 10);

        System.out.println("Suma: " + suma);
        System.out.println("¿Son iguales?: " + esIgual);
        System.out.println("Resultado lógico: " + resultado);
    }
}
```

## 4. Estructuras de Control

Las estructuras de control se utilizan para dirigir el flujo de ejecución del programa. Las más comunes en Java son:

### If-Else

Permite tomar decisiones basadas en condiciones.

#### Ejemplo

```java
public class EjemploIfElse {
    public static void main(String[] args) {
        int numero = 10;
        if (numero > 0) {
            System.out.println("Número positivo.");
        } else if (numero < 0) {
            System.out.println("Número negativo.");
        } else {
            System.out.println("Número cero.");
        }
    }
}
```

### Switch

Permite elegir entre múltiples opciones basadas en el valor de una variable.

#### Ejemplo

```java
public class EjemploSwitch {
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
            default:
                System.out.println("Día inválido");
                break;
        }
    }
}
```

### Bucles

Permiten repetir un bloque de código mientras se cumpla una condición.

- **for**: Ideal para iteraciones con un número conocido de repeticiones.
- **while**: Ideal para iteraciones mientras se cumpla una condición.
- **do-while**: Similar a `while`, pero garantiza que el bloque se ejecute al menos una vez.

#### Ejemplo de Bucle `for`

```java
public class EjemploFor {
    public static void main(String[] args) {
        for (int i = 0; i < 5; i++) {
            System.out.println("Valor de i: " + i);
        }
    }
}
```

#### Ejemplo de Bucle `while`

```java
public class EjemploWhile {
    public static void main(String[] args) {
        int i = 0;
        while (i < 5) {
            System.out.println("Valor de i: " + i);
            i++;
        }
    }
}
```

#### Ejemplo de Bucle `do-while`

```java
public class EjemploDoWhile {
    public static void main(String[] args) {
        int i = 0;
        do {
            System.out.println("Valor de i: " + i);
            i++;
        } while (i < 5);
    }
}
```

## Conclusión

Los conceptos básicos de programación, como variables, tipos de datos, operadores y estructuras de control, son fundamentales para escribir programas en Java. Comprender estos conceptos te permitirá desarrollar aplicaciones eficientes y efectivas, manejando datos y controlando el flujo de ejecución de manera adecuada.
