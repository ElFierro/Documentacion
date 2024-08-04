# Mapas en Java

En Java, los mapas (`Map`) son estructuras de datos que almacenan pares de clave-valor. La interfaz `Map` y sus implementaciones más comunes (`HashMap`, `LinkedHashMap`, `TreeMap`) se encuentran en el paquete `java.util`. Aunque `ArrayList` y `HashSet` no son mapas, también se utilizan frecuentemente en la manipulación de datos y se explicarán brevemente aquí.

## 1. Interfaz `Map`

La interfaz `Map` define las operaciones para manejar una colección de pares clave-valor. Las claves en un mapa son únicas, pero los valores pueden repetirse.

### Métodos Comunes de `Map`

- `put(K key, V value)`: Asocia un valor con una clave. Si la clave ya está presente, el valor se actualiza.
- `get(Object key)`: Obtiene el valor asociado a una clave específica.
- `remove(Object key)`: Elimina la entrada asociada con una clave.
- `containsKey(Object key)`: Verifica si una clave está presente en el mapa.
- `containsValue(Object value)`: Verifica si un valor está presente en el mapa.
- `keySet()`: Devuelve un conjunto de las claves en el mapa.
- `values()`: Devuelve una colección de los valores en el mapa.
- `entrySet()`: Devuelve un conjunto de las entradas (pares clave-valor) en el mapa.

## 2. Implementaciones Comunes

### `HashMap`

`HashMap` es una implementación de `Map` que utiliza una tabla hash para almacenar las entradas. No garantiza el orden de los elementos, pero proporciona un acceso rápido.

#### Declaración e Inicialización

```java
import java.util.HashMap;

HashMap<String, Integer> mapaEdades = new HashMap<>();
```

#### Ejemplo de Uso

```java
import java.util.HashMap;

public class Main {
    public static void main(String[] args) {
        HashMap<String, Integer> mapaEdades = new HashMap<>();
        
        mapaEdades.put("Ana", 30);
        mapaEdades.put("Luis", 25);
        mapaEdades.put("Pedro", 40);
        
        System.out.println("Mapa de edades: " + mapaEdades);
        
        // Obtener un valor por clave
        int edadAna = mapaEdades.get("Ana"); // 30
        System.out.println("Edad de Ana: " + edadAna);
        
        // Eliminar una entrada
        mapaEdades.remove("Pedro");
        System.out.println("Mapa después de eliminar Pedro: " + mapaEdades);
        
        // Comprobar si una clave está presente
        boolean contieneLuis = mapaEdades.containsKey("Luis"); // true
        System.out.println("Contiene Luis: " + contieneLuis);
        
        // Comprobar si un valor está presente
        boolean contieneEdad30 = mapaEdades.containsValue(30); // true
        System.out.println("Contiene edad 30: " + contieneEdad30);
        
        // Obtener el tamaño del mapa
        System.out.println("Tamaño del mapa: " + mapaEdades.size());
    }
}
```

### `LinkedHashMap`

`LinkedHashMap` es una implementación de `Map` que utiliza una tabla hash y una lista doblemente enlazada para mantener el orden de inserción de los elementos.

#### Declaración e Inicialización

```java
import java.util.LinkedHashMap;

LinkedHashMap<String, Integer> mapaEdades = new LinkedHashMap<>();
```

#### Ejemplo de Uso

```java
import java.util.LinkedHashMap;

public class Main {
    public static void main(String[] args) {
        LinkedHashMap<String, Integer> mapaEdades = new LinkedHashMap<>();
        
        mapaEdades.put("Ana", 30);
        mapaEdades.put("Luis", 25);
        mapaEdades.put("Pedro", 40);
        
        System.out.println("Mapa de edades: " + mapaEdades);
        
        // Obtener un valor por clave
        int edadAna = mapaEdades.get("Ana"); // 30
        System.out.println("Edad de Ana: " + edadAna);
        
        // Eliminar una entrada
        mapaEdades.remove("Pedro");
        System.out.println("Mapa después de eliminar Pedro: " + mapaEdades);
        
        // Comprobar si una clave está presente
        boolean contieneLuis = mapaEdades.containsKey("Luis"); // true
        System.out.println("Contiene Luis: " + contieneLuis);
        
        // Comprobar si un valor está presente
        boolean contieneEdad30 = mapaEdades.containsValue(30); // true
        System.out.println("Contiene edad 30: " + contieneEdad30);
        
        // Obtener el tamaño del mapa
        System.out.println("Tamaño del mapa: " + mapaEdades.size());
    }
}
```

### `TreeMap`

`TreeMap` es una implementación de `Map` que utiliza un árbol rojo-negro para almacenar las entradas de manera ordenada según las claves.

#### Declaración e Inicialización

```java
import java.util.TreeMap;

TreeMap<String, Integer> mapaEdades = new TreeMap<>();
```

#### Ejemplo de Uso

```java
import java.util.TreeMap;

public class Main {
    public static void main(String[] args) {
        TreeMap<String, Integer> mapaEdades = new TreeMap<>();
        
        mapaEdades.put("Ana", 30);
        mapaEdades.put("Luis", 25);
        mapaEdades.put("Pedro", 40);
        
        System.out.println("Mapa de edades: " + mapaEdades);
        
        // Obtener un valor por clave
        int edadAna = mapaEdades.get("Ana"); // 30
        System.out.println("Edad de Ana: " + edadAna);
        
        // Eliminar una entrada
        mapaEdades.remove("Pedro");
        System.out.println("Mapa después de eliminar Pedro: " + mapaEdades);
        
        // Comprobar si una clave está presente
        boolean contieneLuis = mapaEdades.containsKey("Luis"); // true
        System.out.println("Contiene Luis: " + contieneLuis);
        
        // Comprobar si un valor está presente
        boolean contieneEdad30 = mapaEdades.containsValue(30); // true
        System.out.println("Contiene edad 30: " + contieneEdad30);
        
        // Obtener el tamaño del mapa
        System.out.println("Tamaño del mapa: " + mapaEdades.size());
    }
}
```

## 3. Uso de `ArrayList` y `HashSet`

Aunque `ArrayList` y `HashSet` no son mapas, se utilizan frecuentemente junto con mapas para manipular datos.

### `ArrayList`

`ArrayList` es una implementación de `List` que permite almacenar elementos en un array dinámico. Puede ser útil para almacenar valores que se usan en los mapas.

#### Declaración e Inicialización

```java
import java.util.ArrayList;

ArrayList<String> listaNombres = new ArrayList<>();
```

### `HashSet`

`HashSet` es una implementación de `Set` que permite almacenar elementos únicos sin un orden específico. Puede ser útil para almacenar claves o valores únicos en un mapa.

#### Declaración e Inicialización

```java
import java.util.HashSet;

HashSet<String> conjuntoNombres = new HashSet<>();
```

## Conclusión

Los mapas en Java son fundamentales para almacenar y manipular pares de clave-valor de manera eficiente. `HashMap`, `LinkedHashMap`, y `TreeMap` ofrecen diferentes características en términos de orden y rendimiento. Además, `ArrayList` y `HashSet` son estructuras complementarias que pueden ser útiles en el contexto de manejo de datos.
