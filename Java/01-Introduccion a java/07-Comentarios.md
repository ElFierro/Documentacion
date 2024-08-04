# Comentarios en Java

Los comentarios en Java se utilizan para agregar descripciones y notas al código, lo que facilita su comprensión y mantenimiento. Los comentarios no son ejecutados por la máquina virtual de Java (JVM) y sirven únicamente para los desarrolladores. Existen tres tipos principales de comentarios en Java: de una sola línea, de múltiples líneas y comentarios de documentación.

## 1. Comentarios de Una Sola Línea

Los comentarios de una sola línea se utilizan para agregar breves descripciones o notas sobre una línea específica de código.

### Sintaxis

```java
// Este es un comentario de una sola línea
int numero = 10; // Declaración y asignación de una variable
```

### Ejemplo

```java
public class Comentarios {
    public static void main(String[] args) {
        // Imprimir un mensaje en la consola
        System.out.println("¡Hola, mundo!"); // Llamada al método println
    }
}
```

## 2. Comentarios de Múltiples Líneas

Los comentarios de múltiples líneas se utilizan para agregar descripciones más extensas o notas que abarcan varias líneas de código.

### Sintaxis

```java
/*
 * Este es un comentario
 * de múltiples líneas.
 * Puede abarcar varias líneas de texto.
 */
```

### Ejemplo

```java
public class Comentarios {
    public static void main(String[] args) {
        /*
         * Este bloque de código imprime un mensaje
         * en la consola. Es útil para mostrar
         * cómo funcionan los comentarios de múltiples líneas.
         */
        System.out.println("¡Hola, mundo!");
    }
}
```

## 3. Comentarios de Documentación

Los comentarios de documentación, también conocidos como "Javadoc", se utilizan para generar documentación automáticamente a partir del código fuente. Estos comentarios son especialmente útiles para describir la funcionalidad de clases, métodos y variables.

### Sintaxis

```java
/**
 * Esta es una clase de ejemplo para demostrar
 * el uso de comentarios de documentación en Java.
 */
public class Comentarios {

    /**
     * Método principal que se ejecuta al iniciar el programa.
     *
     * @param args Argumentos de línea de comandos
     */
    public static void main(String[] args) {
        System.out.println("¡Hola, mundo!");
    }

    /**
     * Método que imprime un mensaje personalizado en la consola.
     *
     * @param mensaje El mensaje a imprimir
     */
    public void imprimirMensaje(String mensaje) {
        System.out.println(mensaje);
    }
}
```

### Ejemplo

```java
/**
 * Clase Calculadora que proporciona métodos para realizar
 * operaciones aritméticas básicas.
 */
public class Calculadora {

    /**
     * Suma dos números enteros y devuelve el resultado.
     *
     * @param a El primer número
     * @param b El segundo número
     * @return La suma de a y b
     */
    public int sumar(int a, int b) {
        return a + b;
    }

    /**
     * Resta dos números enteros y devuelve el resultado.
     *
     * @param a El primer número
     * @param b El segundo número
     * @return La resta de b de a
     */
    public int restar(int a, int b) {
        return a - b;
    }
}
```

## Generación de Documentación con Javadoc

Para generar documentación a partir de los comentarios Javadoc, se puede utilizar la herramienta `javadoc` incluida con el JDK. La documentación generada se puede visualizar en un navegador web.

### Comando

```bash
javadoc -d directorio_salida NombreDeLaClase.java
```

Este comando genera la documentación en formato HTML en el directorio especificado.

## Conclusión

Los comentarios son una herramienta esencial para mantener el código legible y fácil de mantener. Utiliza comentarios de una sola línea para notas breves, comentarios de múltiples líneas para descripciones más largas y comentarios Javadoc para documentar la funcionalidad de clases y métodos.
