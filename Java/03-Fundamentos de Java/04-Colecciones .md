# Colecciones en Java

Las colecciones en Java proporcionan estructuras de datos para almacenar y manipular grupos de objetos. Las principales interfaces en el marco de colecciones son `List`, `Set` y `Map`. A continuación, se describen las implementaciones más comunes: `ArrayList`, `HashSet` y `HashMap`.

## 1. Listas: `ArrayList`

La interfaz `List` proporciona una estructura de datos que permite almacenar elementos en una secuencia ordenada y acceder a ellos mediante índices. `ArrayList` es una implementación de `List` que utiliza un array dinámico.

### 1.1 Declaración e Inicialización de `ArrayList`

#### Ejemplo de `ArrayList`

```java
import java.util.ArrayList;

public class ColeccionesArrayList {
    public static void main(String[] args) {
        // Declaración e inicialización de ArrayList
        ArrayList<String> listaFrutas = new ArrayList<>();

        // Agregar elementos
        listaFrutas.add("Manzana");
        listaFrutas.add("Banana");
        listaFrutas.add("Cereza");

        // Imprimir elementos
        for (String fruta : listaFrutas) {
            System.out.println("Fruta: " + fruta);
        }

        // Acceder a un elemento por índice
        System.out.println("Primera fruta: " + listaFrutas.get(0));
    }
}
```

## 2. Conjuntos: `HashSet`

La interfaz `Set` proporciona una colección que no permite elementos duplicados y no garantiza un orden específico. `HashSet` es una implementación de `Set` que utiliza una tabla hash para almacenar los elementos.

### 2.1 Declaración e Inicialización de `HashSet`

#### Ejemplo de `HashSet`

```java
import java.util.HashSet;

public class ColeccionesHashSet {
    public static void main(String[] args) {
        // Declaración e inicialización de HashSet
        HashSet<String> conjuntoFrutas = new HashSet<>();

        // Agregar elementos
        conjuntoFrutas.add("Manzana");
        conjuntoFrutas.add("Banana");
        conjuntoFrutas.add("Cereza");
        // Intentar agregar un duplicado
        conjuntoFrutas.add("Manzana");

        // Imprimir elementos
        for (String fruta : conjuntoFrutas) {
            System.out.println("Fruta: " + fruta);
        }
    }
}
```

## 3. Mapas: `HashMap`

La interfaz `Map` proporciona una colección que almacena pares clave-valor. `HashMap` es una implementación de `Map` que utiliza una tabla hash para almacenar los pares clave-valor.

### 3.1 Declaración e Inicialización de `HashMap`

#### Ejemplo de `HashMap`

```java
import java.util.HashMap;

public class ColeccionesHashMap {
    public static void main(String[] args) {
        // Declaración e inicialización de HashMap
        HashMap<String, String> mapaFrutas = new HashMap<>();

        // Agregar pares clave-valor
        mapaFrutas.put("Manzana", "Verde");
        mapaFrutas.put("Banana", "Amarillo");
        mapaFrutas.put("Cereza", "Rojo");

        // Imprimir pares clave-valor
        for (String clave : mapaFrutas.keySet()) {
            System.out.println("Fruta: " + clave + ", Color: " + mapaFrutas.get(clave));
        }
    }
}
```

## Conclusión

Las colecciones en Java, como `ArrayList`, `HashSet` y `HashMap`, proporcionan diversas formas de almacenar y manipular datos. `ArrayList` es útil para almacenar elementos en una secuencia ordenada, `HashSet` es ideal para conjuntos de elementos únicos sin un orden específico, y `HashMap` permite asociar claves con valores. Conocer cómo usar estas colecciones te permitirá gestionar datos de manera eficiente en tus aplicaciones Java.
