# Streams: Operaciones Intermedias y Terminales, Filtrado, Mapeo, Reducción

La API de Streams en Java, introducida en Java 8, permite procesar colecciones de manera declarativa y eficiente. Los `Streams` proporcionan una forma de realizar operaciones en datos secuenciales y paralelos con un enfoque funcional.

## 1. Operaciones Intermedias y Terminales

Los `Streams` se componen de dos tipos de operaciones:

1. **Operaciones Intermedias**: Transforman un `Stream` en otro `Stream`. Son perezosas y no se ejecutan hasta que se invoca una operación terminal.
2. **Operaciones Terminales**: Producción de un resultado o efecto colateral, como una colección o una impresión en consola. Estas operaciones desencadenan la ejecución del pipeline de `Stream`.

### 1.1 Operaciones Intermedias

- **filter**: Filtra elementos del `Stream` basándose en una condición.
- **map**: Transforma cada elemento del `Stream` en otro elemento.
- **distinct**: Elimina elementos duplicados.
- **sorted**: Ordena los elementos del `Stream`.

### 1.2 Operaciones Terminales

- **collect**: Agrupa los elementos del `Stream` en una colección.
- **forEach**: Itera sobre los elementos del `Stream` y realiza una acción.
- **reduce**: Agrega los elementos del `Stream` en un solo resultado.
- **count**: Cuenta el número de elementos del `Stream`.

## 2. Filtrado

El método `filter` permite seleccionar elementos del `Stream` que cumplen una condición específica.

### 2.1 Ejemplo de Filtrado

```java
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class EjemploFiltrado {
    public static void main(String[] args) {
        List<String> nombres = Arrays.asList("Ana", "Luis", "Pedro", "María", "Juan");

        List<String> nombresConA = nombres.stream()
            .filter(nombre -> nombre.contains("a"))
            .collect(Collectors.toList());

        System.out.println("Nombres con 'a': " + nombresConA);
    }
}
```

## 3. Mapeo

El método `map` se utiliza para transformar cada elemento del `Stream` en otro objeto.

### 3.1 Ejemplo de Mapeo

```java
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class EjemploMapeo {
    public static void main(String[] args) {
        List<String> nombres = Arrays.asList("Ana", "Luis", "Pedro", "María", "Juan");

        List<String> nombresEnMayusculas = nombres.stream()
            .map(String::toUpperCase)
            .collect(Collectors.toList());

        System.out.println("Nombres en mayúsculas: " + nombresEnMayusculas);
    }
}
```

## 4. Reducción

La operación `reduce` combina los elementos del `Stream` en un solo resultado mediante una función de acumulación.

### 4.1 Ejemplo de Reducción

```java
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

public class EjemploReduccion {
    public static void main(String[] args) {
        List<Integer> numeros = Arrays.asList(1, 2, 3, 4, 5);

        // Suma de los números
        int suma = numeros.stream()
            .reduce(0, Integer::sum);

        // Producto de los números
        Optional<Integer> producto = numeros.stream()
            .reduce((a, b) -> a * b);

        System.out.println("Suma: " + suma);
        System.out.println("Producto: " + producto.orElse(0));
    }
}
```

## 5. Conclusión

La API de Streams en Java ofrece una manera poderosa y flexible de trabajar con colecciones de datos. Utiliza operaciones intermedias para transformar datos y operaciones terminales para obtener resultados o efectos colaterales. Las operaciones de filtrado, mapeo y reducción son fundamentales para procesar datos de manera eficiente y declarativa, permitiendo escribir código más claro y expresivo.
