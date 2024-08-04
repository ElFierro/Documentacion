# Patrones y Métodos de Coincidencia

En Java, la clase `Pattern` y la interfaz `Matcher` del paquete `java.util.regex` se utilizan para trabajar con expresiones regulares. A continuación, se describen los patrones y métodos comunes para realizar coincidencias en cadenas.

## 1. Creación de un Patrón

Para crear un patrón, se utiliza el método estático `Pattern.compile()`, que toma una expresión regular como argumento y devuelve un objeto `Pattern`.

### Ejemplo

---java
import java.util.regex.Pattern;

Pattern pattern = Pattern.compile("a*b");
---

## 2. Coincidencia de una Cadena

Para verificar si una cadena coincide con un patrón, se utiliza la interfaz `Matcher` que se obtiene a partir del objeto `Pattern` mediante el método `matcher()`. Los métodos principales para realizar coincidencias son:

### `matches()`

El método `matches()` verifica si toda la cadena coincide con el patrón. Devuelve `true` si la cadena completa cumple con la expresión regular, de lo contrario `false`.

#### Ejemplo

---java
import java.util.regex.Pattern;
import java.util.regex.Matcher;

Pattern pattern = Pattern.compile("a*b");
Matcher matcher = pattern.matcher("aaab");
boolean coincide = matcher.matches(); // true
---

### `find()`

El método `find()` busca la primera aparición de una subcadena que coincida con el patrón. Devuelve `true` si se encuentra una coincidencia, de lo contrario `false`.

#### Ejemplo

---java
Pattern pattern = Pattern.compile("\\d+");
Matcher matcher = pattern.matcher("El número es 123.");
boolean encontrado = matcher.find(); // true
---

### `lookingAt()`

El método `lookingAt()` verifica si el inicio de la cadena coincide con el patrón. Devuelve `true` si el patrón coincide con el inicio de la cadena, de lo contrario `false`.

#### Ejemplo

---java
Pattern pattern = Pattern.compile("\\d+");
Matcher matcher = pattern.matcher("123abc");
boolean empiezaCon = matcher.lookingAt(); // true
---

### `replaceAll()`

El método `replaceAll()` reemplaza todas las ocurrencias de la subcadena que coincide con el patrón por una cadena específica.

#### Ejemplo

---java
Pattern pattern = Pattern.compile("\\d+");
Matcher matcher = pattern.matcher("El número es 123 y el otro es 456.");
String resultado = matcher.replaceAll("#"); // "El número es # y el otro es #."
---

### `replaceFirst()`

El método `replaceFirst()` reemplaza la primera ocurrencia de la subcadena que coincide con el patrón por una cadena específica.

#### Ejemplo

---java
Pattern pattern = Pattern.compile("\\d+");
Matcher matcher = pattern.matcher("El número es 123 y el otro es 456.");
String resultado = matcher.replaceFirst("#"); // "El número es # y el otro es 456."
---

## 3. Obtener Subcadenas Coincidentes

### `group()`

El método `group()` devuelve la última subcadena coincidente del patrón. Puedes usar los grupos de captura para obtener partes específicas de la coincidencia.

#### Ejemplo

---java
Pattern pattern = Pattern.compile("(\\d+)");
Matcher matcher = pattern.matcher("El número es 123.");
if (matcher.find()) {
    String grupo = matcher.group(1); // "123"
}
---

### `groupCount()`

El método `groupCount()` devuelve el número de grupos de captura en la expresión regular.

#### Ejemplo

---java
Pattern pattern = Pattern.compile("(\\d+)(\\d+)");
Matcher matcher = pattern.matcher("El número es 123456.");
if (matcher.find()) {
    int cantidadDeGrupos = matcher.groupCount(); // 2
}
---

## 4. Verificación de Patrones

### `Pattern.matches()`

El método `Pattern.matches()` verifica si toda la cadena coincide con el patrón, similar al método `matches()` del `Matcher`, pero se usa directamente con el patrón.

#### Ejemplo

---java
boolean coincide = Pattern.matches("\\d+", "123"); // true
---

## Conclusión

En Java, el uso de `Pattern` y `Matcher` permite realizar operaciones avanzadas de coincidencia de cadenas utilizando expresiones regulares. Los métodos `matches()`, `find()`, `lookingAt()`, `replaceAll()`, `replaceFirst()`, y otros proporcionan flexibilidad para buscar, reemplazar y extraer subcadenas en función de patrones complejos.
