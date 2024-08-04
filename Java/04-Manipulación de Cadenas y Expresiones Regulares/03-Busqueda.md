# Búsqueda de Subcadenas

La búsqueda de subcadenas en Java se realiza mediante varios métodos proporcionados por la clase `String`. Estos métodos permiten localizar la posición de una subcadena dentro de una cadena, comprobar su existencia y más. A continuación se describen los métodos más comunes para realizar búsquedas en cadenas.

## 1. Método `indexOf()`

El método `indexOf()` busca la primera aparición de una subcadena dentro de una cadena y devuelve la posición de inicio de la subcadena. Si la subcadena no se encuentra, devuelve `-1`.

### Ejemplo

```java
String cadena = "Hola, mundo!";
int posicion = cadena.indexOf("mundo"); // 6
```

Puedes especificar un índice desde el cual comenzar la búsqueda:

```java
int posicion = cadena.indexOf("o", 5); // 8
```

## 2. Método `lastIndexOf()`

El método `lastIndexOf()` busca la última aparición de una subcadena dentro de una cadena y devuelve la posición de inicio de la última aparición. Si la subcadena no se encuentra, devuelve `-1`.

### Ejemplo

```java
String cadena = "Hola, mundo! Mundo es grande";
int posicion = cadena.lastIndexOf("Mundo"); // 18
```

Puedes especificar un índice desde el cual comenzar la búsqueda hacia atrás:

```java
int posicion = cadena.lastIndexOf("Mundo", 10); // 0
```

## 3. Método `contains()`

El método `contains()` verifica si una cadena contiene una subcadena específica. Devuelve `true` si la subcadena está presente, de lo contrario `false`.

### Ejemplo

```java
String cadena = "Hola, mundo!";
boolean contiene = cadena.contains("mundo"); // true
```

## 4. Método `startsWith()`

El método `startsWith()` verifica si una cadena comienza con una subcadena específica. Devuelve `true` si la cadena comienza con la subcadena, de lo contrario `false`.

### Ejemplo

```java
String cadena = "Hola, mundo!";
boolean empiezaCon = cadena.startsWith("Hola"); // true
```

Puedes especificar un índice desde el cual comenzar la comprobación:

```java
boolean empiezaCon = cadena.startsWith("mundo", 6); // true
```

## 5. Método `endsWith()`

El método `endsWith()` verifica si una cadena termina con una subcadena específica. Devuelve `true` si la cadena termina con la subcadena, de lo contrario `false`.

### Ejemplo

```java
String cadena = "Hola, mundo!";
boolean terminaCon = cadena.endsWith("mundo!"); // true
```

## 6. Método `matches()`

El método `matches()` verifica si una cadena coincide con una expresión regular. Devuelve `true` si la cadena coincide con la expresión regular, de lo contrario `false`.

### Ejemplo

```java
String cadena = "Hola, mundo!";
boolean coincide = cadena.matches("Hola, mundo!"); // true
```

### Expresión Regular

Puedes usar expresiones regulares para patrones más complejos:

```java
boolean coincide = cadena.matches("Hola, \\w+!"); // true
```

## Conclusión

La búsqueda de subcadenas en Java se puede realizar mediante métodos como `indexOf()`, `lastIndexOf()`, `contains()`, `startsWith()`, `endsWith()` y `matches()`. Estos métodos permiten localizar, verificar la presencia y comprobar patrones en cadenas de manera eficiente. Utilizar el método adecuado depende de la necesidad específica de búsqueda en tu aplicación.
