# Expresiones Regulares en Java

Las expresiones regulares (regex) en Java se utilizan para buscar, validar y manipular cadenas de texto mediante patrones. La clase `Pattern` y la clase `Matcher` en el paquete `java.util.regex` son las principales herramientas para trabajar con expresiones regulares.

## 1. Sintaxis Básica

Las expresiones regulares utilizan una sintaxis especial para definir patrones que se desean buscar en una cadena. Aquí se presentan algunos elementos básicos de la sintaxis:

- **Literales**: Coinciden exactamente con el texto especificado. Ejemplo: `abc` coincide con "abc".
- **Punto (`.`)**: Coincide con cualquier carácter excepto una nueva línea. Ejemplo: `a.c` coincide con "abc", "a1c", etc.
- **Asterisco (`*`)**: Coincide con cero o más repeticiones del carácter o grupo precedente. Ejemplo: `a*b` coincide con "b", "ab", "aab", etc.
- **Más (`+`)**: Coincide con una o más repeticiones del carácter o grupo precedente. Ejemplo: `a+b` coincide con "ab", "aab", "aaab", etc.
- **Interrogación (`?`)**: Coincide con cero o una repetición del carácter o grupo precedente. Ejemplo: `a?b` coincide con "b" o "ab".
- **Corchetes (`[]`)**: Definen un conjunto de caracteres. Ejemplo: `[abc]` coincide con "a", "b" o "c".
- **Guiones (`-`)**: Dentro de corchetes, define un rango de caracteres. Ejemplo: `[a-z]` coincide con cualquier letra minúscula.

### Ejemplo de Sintaxis Básica

```java
public class RegexSintaxisBasica {
    public static void main(String[] args) {
        String texto = "Java es un lenguaje de programación";

        // Definir un patrón
        String patron = "Java";

        // Crear un objeto Pattern
        java.util.regex.Pattern pattern = java.util.regex.Pattern.compile(patron);

        // Crear un objeto Matcher
        java.util.regex.Matcher matcher = pattern.matcher(texto);

        // Verificar si el patrón coincide
        boolean encontrado = matcher.find();
        System.out.println("¿Coincide el patrón? " + encontrado); // Salida: true
    }
}
```

## 2. Patrones

Los patrones son secuencias de caracteres que definen la coincidencia de las cadenas. Puedes usar combinaciones de los elementos básicos para crear patrones complejos.

### 2.1 Ejemplos de Patrones

- **`\\d`**: Coincide con cualquier dígito (equivalente a `[0-9]`).
- **`\\D`**: Coincide con cualquier carácter que no sea un dígito.
- **`\\w`**: Coincide con cualquier carácter de palabra (letras y dígitos).
- **`\\W`**: Coincide con cualquier carácter que no sea de palabra.
- **`^`**: Coincide con el inicio de una cadena.
- **`$`**: Coincide con el final de una cadena.

#### Ejemplo de Patrones

```java
public class RegexPatrones {
    public static void main(String[] args) {
        String texto = "Mi número es 12345";

        // Definir patrones
        String patronNumero = "\\d+";
        String patronPalabra = "\\w+";

        // Crear objetos Pattern y Matcher
        java.util.regex.Pattern patternNumero = java.util.regex.Pattern.compile(patronNumero);
        java.util.regex.Matcher matcherNumero = patternNumero.matcher(texto);

        java.util.regex.Pattern patternPalabra = java.util.regex.Pattern.compile(patronPalabra);
        java.util.regex.Matcher matcherPalabra = patternPalabra.matcher(texto);

        // Encontrar y mostrar números
        while (matcherNumero.find()) {
            System.out.println("Número encontrado: " + matcherNumero.group());
        }

        // Encontrar y mostrar palabras
        while (matcherPalabra.find()) {
            System.out.println("Palabra encontrada: " + matcherPalabra.group());
        }
    }
}
```

## 3. Métodos de Coincidencia

La clase `Matcher` proporciona varios métodos para trabajar con las coincidencias encontradas:

- **`find()`**: Busca la próxima subsecuencia que coincide con el patrón.
- **`group()`**: Devuelve la subsecuencia de la cadena que coincidió con el patrón.
- **`matches()`**: Verifica si toda la cadena coincide con el patrón.
- **`replaceAll(String replacement)`**: Reemplaza todas las coincidencias del patrón con la cadena de reemplazo especificada.

### Ejemplo de Métodos de Coincidencia

```java
public class RegexMetodosCoincidencia {
    public static void main(String[] args) {
        String texto = "Contacto: contacto@ejemplo.com";

        // Definir patrón de correo electrónico
        String patronCorreo = "\\b[\\w.%+-]+@[\\w.-]+\\.[a-zA-Z]{2,}\\b";

        // Crear objetos Pattern y Matcher
        java.util.regex.Pattern pattern = java.util.regex.Pattern.compile(patronCorreo);
        java.util.regex.Matcher matcher = pattern.matcher(texto);

        // Encontrar y mostrar coincidencias
        while (matcher.find()) {
            System.out.println("Correo encontrado: " + matcher.group());
        }

        // Reemplazar coincidencias
        String textoReemplazado = matcher.replaceAll("[REDACTADO]");
        System.out.println("Texto después del reemplazo: " + textoReemplazado);
    }
}
```

## Conclusión

Las expresiones regulares son una herramienta poderosa para buscar y manipular cadenas de texto en Java. Comprender la sintaxis básica, los patrones y los métodos de coincidencia te permite realizar operaciones complejas de búsqueda y manipulación de texto de manera eficiente.
