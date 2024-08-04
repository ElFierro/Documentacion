# Estructura de un Programa

En Java, la estructura de un programa sigue ciertas reglas y convenciones que permiten al compilador interpretar y ejecutar el código correctamente. Esta sección cubre la sintaxis básica, el método principal y los comentarios.

## 1. Sintaxis Básica

La sintaxis básica de Java incluye la estructura general de un programa, la declaración de clases y el uso de métodos. A continuación, se presenta la estructura general de un programa Java.

### Ejemplo de Programa Básico

```java
// Este es un comentario de una sola línea en Java

/* 
 * Este es un comentario de múltiples líneas en Java.
 * Puedes usarlo para proporcionar descripciones más largas.
 */

public class MiPrograma {
    // Método principal que es el punto de entrada del programa
    public static void main(String[] args) {
        System.out.println("¡Hola, Mundo!"); // Imprime un mensaje en la consola
    }
}
```

### Componentes Clave

1. **Comentarios**: Se utilizan para documentar el código. Los comentarios no afectan la ejecución del programa.
2. **Clase**: Cada programa Java debe tener al menos una clase. La clase `MiPrograma` es la definición de un tipo de objeto que puede contener métodos y variables.
3. **Método `main`**: Es el punto de entrada del programa. El método `main` es obligatorio en cada aplicación Java y es donde comienza la ejecución del programa.

## 2. Métodos Principales

En Java, el método `main` es el punto de entrada del programa. Tiene una firma específica que debe ser respetada para que el programa pueda ser ejecutado correctamente.

### Firma del Método `main`

```java
public static void main(String[] args)
```

- **public**: El método `main` debe ser público para que el Java Virtual Machine (JVM) pueda acceder a él desde fuera de la clase.
- **static**: El método `main` es estático, lo que significa que puede ser llamado sin necesidad de crear una instancia de la clase.
- **void**: El método `main` no devuelve ningún valor.
- **String[] args**: Es un array de cadenas que puede recibir argumentos de la línea de comandos.

### Ejemplo de Método `main`

```java
public class EjemploMetodoMain {
    public static void main(String[] args) {
        System.out.println("Este es un método main.");
    }
}
```

## 3. Comentarios

Los comentarios en Java se utilizan para explicar y documentar el código. Hay dos tipos principales de comentarios:

### Comentario de Una Sola Línea

Comienza con `//` y se extiende hasta el final de la línea.

#### Ejemplo

```java
// Este es un comentario de una sola línea
System.out.println("Hola Mundo");
```

### Comentario de Múltiples Líneas

Comienza con `/*` y termina con `*/`. Puede ocupar varias líneas.

#### Ejemplo

```java
/*
 * Este es un comentario de múltiples líneas.
 * Puedes usarlo para describir partes más complejas del código.
 */
System.out.println("Hola Mundo");
```

## Conclusión

La estructura básica de un programa Java incluye la declaración de una clase, la definición del método `main`, y el uso de comentarios para documentar el código. Comprender esta estructura es esencial para desarrollar aplicaciones Java efectivas y bien organizadas.
