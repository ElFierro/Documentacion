# Excepciones Personalizadas: Creación y Lanzamiento de Excepciones Propias

En Java, puedes crear tus propias excepciones personalizadas para representar errores específicos de tu aplicación. Las excepciones personalizadas te permiten proporcionar información más detallada sobre problemas particulares que pueden ocurrir durante la ejecución de tu programa.

## 1. Creación de Excepciones Personalizadas

Para crear una excepción personalizada, debes definir una nueva clase que extienda de la clase `Exception` o `RuntimeException`. Generalmente, se utilizan excepciones personalizadas cuando necesitas una excepción que no está cubierta por las excepciones estándar de Java.

### 1.1 Excepción Personalizada que Hereda de `Exception`

Si deseas que tu excepción sea comprobada (checked exception), extiende de `Exception`. De esta manera, el compilador requerirá que manejes esta excepción en tu código.

```java
public class MiExcepcion extends Exception {
    // Constructor sin argumentos
    public MiExcepcion() {
        super();
    }

    // Constructor que acepta un mensaje
    public MiExcepcion(String mensaje) {
        super(mensaje);
    }
}
```

### 1.2 Excepción Personalizada que Hereda de `RuntimeException`

Si prefieres que tu excepción sea no comprobada (unchecked exception), extiende de `RuntimeException`. Esto significa que no es necesario manejarla explícitamente con un bloque `try-catch`.

```java
public class MiExcepcionRuntime extends RuntimeException {
    // Constructor sin argumentos
    public MiExcepcionRuntime() {
        super();
    }

    // Constructor que acepta un mensaje
    public MiExcepcionRuntime(String mensaje) {
        super(mensaje);
    }
}
```

## 2. Lanzamiento de Excepciones Personalizadas

Una vez que has definido tu excepción personalizada, puedes lanzarla en tu código cuando ocurra una condición que requiera manejar un error específico.

### 2.1 Lanzar Excepción Personalizada

```java
public class EjemploLanzamientoExcepcion {
    public static void main(String[] args) {
        try {
            validarEdad(15); // Esto lanzará una MiExcepcion
        } catch (MiExcepcion e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    public static void validarEdad(int edad) throws MiExcepcion {
        if (edad < 18) {
            throw new MiExcepcion("La edad debe ser al menos 18 años.");
        }
        System.out.println("Edad válida.");
    }
}
```

### 2.2 Lanzar Excepción Personalizada en Métodos

Al lanzar una excepción personalizada desde un método, debes declarar que el método puede lanzar esa excepción utilizando la cláusula `throws`.

```java
public class ValidacionEdad {
    public static void main(String[] args) {
        try {
            verificarEdad(16);
        } catch (MiExcepcion e) {
            System.out.println("Error capturado: " + e.getMessage());
        }
    }

    public static void verificarEdad(int edad) throws MiExcepcion {
        if (edad < 18) {
            throw new MiExcepcion("Edad no válida: " + edad);
        }
    }
}
```

## 3. Ejemplo Completo de Excepción Personalizada

Aquí tienes un ejemplo completo que muestra cómo definir y lanzar una excepción personalizada:

```java
// Definición de la excepción personalizada
public class EdadNoValidaException extends Exception {
    public EdadNoValidaException(String mensaje) {
        super(mensaje);
    }
}

// Clase principal que usa la excepción personalizada
public class Aplicacion {
    public static void main(String[] args) {
        try {
            validarEdad(12); // Lanzará EdadNoValidaException
        } catch (EdadNoValidaException e) {
            System.out.println("Se produjo un error: " + e.getMessage());
        }
    }

    public static void validarEdad(int edad) throws EdadNoValidaException {
        if (edad < 18) {
            throw new EdadNoValidaException("La edad proporcionada es menor de 18 años.");
        }
        System.out.println("Edad válida: " + edad);
    }
}
```

## Conclusión

Crear y lanzar excepciones personalizadas en Java te permite manejar errores específicos de manera más eficaz y proporcionar mensajes de error más claros y detallados. Al definir tus propias excepciones, puedes capturar y gestionar condiciones excepcionales que son únicas para la lógica de tu aplicación.
