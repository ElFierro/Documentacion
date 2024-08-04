# Tipos de Excepciones en Java

En Java, las excepciones se utilizan para manejar errores y situaciones excepcionales que ocurren durante la ejecución de un programa. Las excepciones se dividen en dos categorías principales: excepciones comprobadas (checked) y excepciones no comprobadas (unchecked).

## 1. Excepciones Comprobadas (Checked Exceptions)

Las excepciones comprobadas son aquellas que el compilador requiere que manejes en tu código. Estas excepciones suelen representar condiciones que pueden ocurrir durante la ejecución del programa y que deben ser tratadas para evitar fallos. Las excepciones comprobadas son subclases de `Exception` pero no de `RuntimeException`.

### 1.1 Ejemplos de Excepciones Comprobadas

- **`IOException`**: Se produce cuando hay un error de entrada o salida, como al leer o escribir en un archivo.
- **`SQLException`**: Se produce cuando hay un error con la base de datos, como una consulta SQL fallida.
- **`ClassNotFoundException`**: Se produce cuando se intenta cargar una clase que no está en el classpath.

#### Ejemplo de Manejo de Excepciones Comprobadas

```java
import java.io.FileReader;
import java.io.IOException;

public class EjemploCheckedException {
    public static void main(String[] args) {
        try {
            FileReader file = new FileReader("archivo.txt");
            int data = file.read();
            file.close();
        } catch (IOException e) {
            System.out.println("Error de entrada/salida: " + e.getMessage());
        }
    }
}
```

## 2. Excepciones No Comprobadas (Unchecked Exceptions)

Las excepciones no comprobadas, también conocidas como excepciones de tiempo de ejecución, no son verificadas por el compilador. Estas excepciones son subclases de `RuntimeException` y suelen indicar errores de programación, como intentar acceder a un índice fuera de los límites de un array.

### 2.1 Ejemplos de Excepciones No Comprobadas

- **`NullPointerException`**: Se produce cuando se intenta utilizar una referencia de objeto que es `null`.
- **`ArrayIndexOutOfBoundsException`**: Se produce cuando se intenta acceder a un índice fuera del rango válido de un array.
- **`ArithmeticException`**: Se produce cuando ocurre un error aritmético, como una división por cero.

#### Ejemplo de Manejo de Excepciones No Comprobadas

```java
public class EjemploUncheckedException {
    public static void main(String[] args) {
        int[] numeros = {1, 2, 3};

        try {
            int numero = numeros[5];
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("Índice fuera de los límites del array: " + e.getMessage());
        }

        try {
            String texto = null;
            int longitud = texto.length();
        } catch (NullPointerException e) {
            System.out.println("Referencia nula: " + e.getMessage());
        }
    }
}
```

## 3. Manejo de Excepciones

El manejo de excepciones se realiza mediante bloques `try`, `catch`, y opcionalmente `finally`:

- **`try`**: Bloque de código en el que puede ocurrir una excepción.
- **`catch`**: Bloque de código que maneja la excepción.
- **`finally`**: Bloque de código que se ejecuta siempre, independientemente de si ocurrió una excepción o no.

### Ejemplo de Manejo de Excepciones

```java
public class ManejoExcepciones {
    public static void main(String[] args) {
        try {
            int resultado = 10 / 0;
        } catch (ArithmeticException e) {
            System.out.println("Error aritmético: " + e.getMessage());
        } finally {
            System.out.println("Este bloque siempre se ejecuta.");
        }
    }
}
```

## Conclusión

En Java, el manejo adecuado de excepciones es esencial para crear aplicaciones robustas y confiables. Las excepciones comprobadas deben ser manejadas explícitamente, mientras que las excepciones no comprobadas representan errores de programación que deben ser evitados mediante buenas prácticas de codificación. Utilizar bloques `try-catch-finally` te permite gestionar y manejar errores de manera efectiva.
