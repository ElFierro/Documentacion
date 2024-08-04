# Clases `String` y `StringBuilder`

En Java, las clases `String` y `StringBuilder` se utilizan para trabajar con cadenas de texto. Aunque ambas sirven para manipular cadenas, tienen diferencias clave en términos de mutabilidad y rendimiento.

## 1. Clase `String`

La clase `String` en Java representa cadenas de texto inmutables. Una vez que se crea un objeto `String`, no se puede modificar. Cualquier operación que modifique una cadena en realidad crea una nueva instancia de `String`.

### 1.1 Manipulación de Cadenas con `String`

#### Concatenación

La concatenación de cadenas en `String` se realiza utilizando el operador `+` o el método `concat()`.

##### Ejemplo de Concatenación

```java
public class StringConcatenacion {
    public static void main(String[] args) {
        String saludo = "Hola";
        String nombre = "Mundo";
        
        // Usando el operador +
        String mensaje = saludo + " " + nombre;
        System.out.println(mensaje); // Salida: Hola Mundo

        // Usando el método concat()
        String mensajeConcat = saludo.concat(" ").concat(nombre);
        System.out.println(mensajeConcat); // Salida: Hola Mundo
    }
}
```

#### Búsqueda

Puedes buscar subcadenas dentro de un `String` usando métodos como `indexOf()` y `contains()`.

##### Ejemplo de Búsqueda

```java
public class StringBusqueda {
    public static void main(String[] args) {
        String texto = "Java es un lenguaje de programación";

        // Buscar el índice de una subcadena
        int indice = texto.indexOf("lenguaje");
        System.out.println("Índice de 'lenguaje': " + indice); // Salida: 13

        // Verificar si una subcadena está contenida en el texto
        boolean contiene = texto.contains("programación");
        System.out.println("Contiene 'programación': " + contiene); // Salida: true
    }
}
```

## 2. Clase `StringBuilder`

La clase `StringBuilder` en Java se utiliza para manipular cadenas de texto de manera mutable. A diferencia de `String`, `StringBuilder` permite modificar la cadena sin crear nuevas instancias para cada cambio, lo que puede ser más eficiente en términos de rendimiento para operaciones repetitivas.

### 2.1 Manipulación de Cadenas con `StringBuilder`

#### Concatenación

`StringBuilder` permite concatenar cadenas de manera eficiente mediante el método `append()`.

##### Ejemplo de Concatenación

```java
public class StringBuilderConcatenacion {
    public static void main(String[] args) {
        StringBuilder sb = new StringBuilder("Hola");
        sb.append(" ").append("Mundo");

        System.out.println(sb.toString()); // Salida: Hola Mundo
    }
}
```

#### Búsqueda

Aunque `StringBuilder` no proporciona métodos directos para buscar subcadenas, puedes convertirlo a un `String` y luego usar los métodos de la clase `String` para buscar.

##### Ejemplo de Búsqueda

```java
public class StringBuilderBusqueda {
    public static void main(String[] args) {
        StringBuilder sb = new StringBuilder("Java es un lenguaje de programación");

        // Convertir StringBuilder a String para buscar
        String texto = sb.toString();
        int indice = texto.indexOf("lenguaje");
        System.out.println("Índice de 'lenguaje': " + indice); // Salida: 13
    }
}
```

## Conclusión

La clase `String` es ideal para cadenas inmutables y operaciones simples de manipulación de texto, mientras que `StringBuilder` es más eficiente para operaciones que implican modificaciones repetitivas en cadenas. Elegir entre estas clases depende de los requisitos de rendimiento y mutabilidad en tu aplicación Java.
