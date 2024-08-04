# Expresiones Regulares: Sintaxis Básica

Las expresiones regulares (regex) en Java permiten realizar búsquedas, validaciones y manipulación avanzada de cadenas de texto. En Java, las expresiones regulares se manejan a través de la clase `Pattern` y la interfaz `Matcher` del paquete `java.util.regex`. A continuación se presenta una guía básica sobre la sintaxis de expresiones regulares.

## 1. Caracteres Básicos

### Caracteres Literales

Los caracteres literales son los caracteres que se buscan exactamente como están. Por ejemplo, la expresión regular `abc` coincide con la cadena `"abc"`.

### Caracteres Especiales

Algunos caracteres tienen significados especiales y deben ser escapados con una barra invertida (`\`) si se desean usar como literales. Estos caracteres incluyen:

- `.` (punto): Coincide con cualquier carácter excepto con una nueva línea.
- `\` (barra invertida): Se usa para escapar caracteres especiales.

### Ejemplo

```java
String regex = "a\\.b"; // Coincide con "a.b"
```

## 2. Metacaracteres

### `.` (Punto)

Coincide con cualquier carácter excepto con una nueva línea.

### `^` (Caret)

Coincide con el inicio de una cadena.

### `$` (Dólar)

Coincide con el final de una cadena.

### `*` (Asterisco)

Coincide con cero o más repeticiones del carácter o grupo anterior.

### `+` (Más)

Coincide con una o más repeticiones del carácter o grupo anterior.

### `?` (Interrogación)

Coincide con cero o una repetición del carácter o grupo anterior.

### `[...]` (Corchetes)

Coincide con cualquier uno de los caracteres dentro de los corchetes.

### `|` (Barra vertical)

Actúa como un operador OR, coincidiendo con la expresión a la izquierda o la expresión a la derecha.

### `()` (Paréntesis)

Agrupa caracteres o expresiones para aplicar cuantificadores o capturar partes de la cadena.

### Ejemplos

```java
String regex1 = "a.b"; // Coincide con "a" seguido de cualquier carácter seguido de "b"
String regex2 = "^abc"; // Coincide con "abc" al inicio de la cadena
String regex3 = "abc$"; // Coincide con "abc" al final de la cadena
String regex4 = "a*b"; // Coincide con "b", "ab", "aab", "aaab", etc.
String regex5 = "a+b"; // Coincide con "ab", "aab", "aaab", etc.
String regex6 = "a?b"; // Coincide con "b" o "ab"
String regex7 = "[abc]"; // Coincide con "a", "b" o "c"
String regex8 = "a|b"; // Coincide con "a" o "b"
String regex9 = "(abc)+"; // Coincide con una o más repeticiones de "abc"
```

## 3. Clases de Caracteres

### `\d`

Coincide con cualquier dígito (equivalente a `[0-9]`).

### `\D`

Coincide con cualquier carácter que no sea un dígito.

### `\w`

Coincide con cualquier carácter de palabra (letras, dígitos y guion bajo).

### `\W`

Coincide con cualquier carácter que no sea de palabra.

### `\s`

Coincide con cualquier carácter de espacio en blanco (espacio, tabulación, nueva línea, etc.).

### `\S`

Coincide con cualquier carácter que no sea un espacio en blanco.

### Ejemplos

```java
String regex1 = "\\d"; // Coincide con un solo dígito
String regex2 = "\\D"; // Coincide con cualquier carácter que no sea un dígito
String regex3 = "\\w"; // Coincide con un carácter de palabra
String regex4 = "\\W"; // Coincide con cualquier carácter que no sea de palabra
String regex5 = "\\s"; // Coincide con un carácter de espacio en blanco
String regex6 = "\\S"; // Coincide con cualquier carácter que no sea un espacio en blanco
```

## 4. Cuantificadores

### `{n}`

Coincide con exactamente `n` repeticiones del carácter o grupo anterior.

### `{n,}`

Coincide con al menos `n` repeticiones del carácter o grupo anterior.

### `{n,m}`

Coincide con entre `n` y `m` repeticiones del carácter o grupo anterior.

### Ejemplos

```java
String regex1 = "\\d{3}"; // Coincide con exactamente tres dígitos
String regex2 = "\\d{2,}"; // Coincide con al menos dos dígitos
String regex3 = "\\d{2,4}"; // Coincide con entre dos y cuatro dígitos
```

## Conclusión

Las expresiones regulares en Java proporcionan una poderosa herramienta para la búsqueda y manipulación de cadenas. Comprender la sintaxis básica, los metacaracteres y los cuantificadores te permitirá crear patrones complejos para realizar búsquedas y validaciones avanzadas en tus aplicaciones.
