# Manipulación de Cadenas

En Java, las cadenas de texto se manejan mediante la clase `String` que proporciona una amplia gama de métodos para manipular y operar con cadenas. A continuación, se describen los aspectos más importantes de la manipulación de cadenas en Java.

## 1. Creación de Cadenas

Las cadenas en Java se crean utilizando la clase `String`. Puedes crear una cadena de varias maneras:

### Declaración e Inicialización

```java
String cadena1 = "Hola, mundo!";
String cadena2 = new String("Hola, mundo!");
```

## 2. Métodos Comunes de `String`

### Longitud de una Cadena

```java
String cadena = "Hola, mundo!";
int longitud = cadena.length(); // 13
```

### Concatenación de Cadenas

```java
String cadena1 = "Hola";
String cadena2 = "mundo!";
String resultado = cadena1 + " " + cadena2; // "Hola mundo!"
```

### Subcadenas

```java
String cadena = "Hola, mundo!";
String subcadena = cadena.substring(0, 5); // "Hola,"
```

### Comparación de Cadenas

```java
String cadena1 = "Hola";
String cadena2 = "hola";

boolean iguales = cadena1.equals(cadena2); // false
boolean igualesIgnoreCase = cadena1.equalsIgnoreCase(cadena2); // true
```

### Búsqueda de Subcadenas

```java
String cadena = "Hola, mundo!";
int posicion = cadena.indexOf("mundo"); // 6
boolean contiene = cadena.contains("mundo"); // true
```

### Reemplazo de Caracteres

```java
String cadena = "Hola, mundo!";
String reemplazada = cadena.replace("mundo", "Java"); // "Hola, Java!"
```

### Dividir una Cadena

```java
String cadena = "uno,dos,tres";
String[] partes = cadena.split(","); // ["uno", "dos", "tres"]
```

### Conversión a Mayúsculas y Minúsculas

```java
String cadena = "Hola, Mundo!";
String mayusculas = cadena.toUpperCase(); // "HOLA, MUNDO!"
String minusculas = cadena.toLowerCase(); // "hola, mundo!"
```

### Eliminación de Espacios en Blanco

```java
String cadena = "  Hola, mundo!  ";
String recortada = cadena.trim(); // "Hola, mundo!"
```

## 3. Formateo de Cadenas

### Usando `String.format`

```java
String nombre = "Juan";
int edad = 25;
String mensaje = String.format("Mi nombre es %s y tengo %d años.", nombre, edad);
// "Mi nombre es Juan y tengo 25 años."
```

### Usando `System.out.printf`

```java
String nombre = "Juan";
int edad = 25;
System.out.printf("Mi nombre es %s y tengo %d años.%n", nombre, edad);
// "Mi nombre es Juan y tengo 25 años."
```

## 4. Comparación de Cadenas con `StringBuilder`

### Usando `StringBuilder` para Modificación

`StringBuilder` es útil cuando necesitas modificar cadenas de manera eficiente, ya que permite la manipulación sin crear nuevos objetos de cadena en cada operación.

#### Declaración e Inicialización

```java
StringBuilder sb = new StringBuilder("Hola");
sb.append(", mundo!"); // "Hola, mundo!"
String resultado = sb.toString(); // "Hola, mundo!"
```

## 5. Conversión entre Cadenas y Otros Tipos

### De `String` a `int`

```java
String numeroStr = "123";
int numero = Integer.parseInt(numeroStr); // 123
```

### De `int` a `String`

```java
int numero = 123;
String numeroStr = Integer.toString(numero); // "123"
```

### De `String` a `double`

```java
String numeroStr = "123.45";
double numero = Double.parseDouble(numeroStr); // 123.45
```

### De `double` a `String`

```java
double numero = 123.45;
String numeroStr = Double.toString(numero); // "123.45"
```

## Conclusión

La clase `String` en Java proporciona una rica variedad de métodos para crear, manipular y operar con cadenas de texto. Con métodos para concatenar, comparar, buscar, reemplazar y formatear, puedes realizar operaciones avanzadas de procesamiento de texto. Para manipulaciones más intensivas y eficientes, `StringBuilder` es una opción adecuada.
