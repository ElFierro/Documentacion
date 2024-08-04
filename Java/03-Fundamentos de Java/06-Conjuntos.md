# Conjuntos

En Java, los conjuntos (sets) son colecciones que no permiten elementos duplicados y no garantizan un orden específico. La interfaz `Set` y sus implementaciones más comunes (`HashSet`, `LinkedHashSet`, y `TreeSet`) se encuentran en el paquete `java.util`.

## 1. Interfaz `Set`

La interfaz `Set` es parte de la colección de Java y define los métodos básicos para manejar conjuntos de elementos sin duplicados.

### Métodos Comunes de `Set`

- `add(E e)`: Añade un elemento al conjunto. Retorna `true` si el elemento fue añadido, o `false` si ya estaba presente.
- `remove(Object o)`: Elimina un elemento del conjunto. Retorna `true` si el elemento fue eliminado, o `false` si no estaba presente.
- `contains(Object o)`: Verifica si un elemento está presente en el conjunto.
- `size()`: Devuelve el número de elementos en el conjunto.
- `isEmpty()`: Verifica si el conjunto está vacío.
- `clear()`: Elimina todos los elementos del conjunto.

## 2. Implementaciones Comunes

### `HashSet`

`HashSet` es una implementación de `Set` que utiliza una tabla hash para almacenar los elementos. No garantiza el orden de los elementos y proporciona operaciones rápidas para añadir, eliminar y verificar elementos.

#### Declaración e Inicialización

```java
import java.util.HashSet;

HashSet<String> conjuntoNombres = new HashSet<>();
```

#### Ejemplo de Uso

```java
import java.util.HashSet;

public class Main {
    public static void main(String[] args) {
        HashSet<String> conjuntoNombres = new HashSet<>();
        
        conjuntoNombres.add("Ana");
        conjuntoNombres.add("Luis");
        conjuntoNombres.add("Pedro");
        
        System.out.println("Conjunto de nombres: " + conjuntoNombres);
        
        // Comprobar si un elemento está presente
        boolean contieneAna = conjuntoNombres.contains("Ana"); // true
        System.out.println("Contiene Ana: " + contieneAna);
        
        // Eliminar un elemento
        conjuntoNombres.remove("Pedro");
        System.out.println("Conjunto después de eliminar Pedro: " + conjuntoNombres);
        
        // Comprobar tamaño
        System.out.println("Tamaño del conjunto: " + conjuntoNombres.size());
    }
}
```

### `LinkedHashSet`

`LinkedHashSet` es una implementación de `Set` que utiliza una tabla hash y una lista doblemente enlazada para mantener el orden de inserción. Es útil cuando necesitas preservar el orden de los elementos.

#### Declaración e Inicialización

```java
import java.util.LinkedHashSet;

LinkedHashSet<String> conjuntoNombres = new LinkedHashSet<>();
```

#### Ejemplo de Uso

```java
import java.util.LinkedHashSet;

public class Main {
    public static void main(String[] args) {
        LinkedHashSet<String> conjuntoNombres = new LinkedHashSet<>();
        
        conjuntoNombres.add("Ana");
        conjuntoNombres.add("Luis");
        conjuntoNombres.add("Pedro");
        
        System.out.println("Conjunto de nombres: " + conjuntoNombres);
        
        // Comprobar si un elemento está presente
        boolean contieneAna = conjuntoNombres.contains("Ana"); // true
        System.out.println("Contiene Ana: " + contieneAna);
        
        // Eliminar un elemento
        conjuntoNombres.remove("Pedro");
        System.out.println("Conjunto después de eliminar Pedro: " + conjuntoNombres);
        
        // Comprobar tamaño
        System.out.println("Tamaño del conjunto: " + conjuntoNombres.size());
    }
}
```

### `TreeSet`

`TreeSet` es una implementación de `Set` que utiliza un árbol rojo-negro para almacenar los elementos de manera ordenada. Garantiza que los elementos estén ordenados según su orden natural o un comparador proporcionado.

#### Declaración e Inicialización

```java
import java.util.TreeSet;

TreeSet<String> conjuntoNombres = new TreeSet<>();
```

#### Ejemplo de Uso

```java
import java.util.TreeSet;

public class Main {
    public static void main(String[] args) {
        TreeSet<String> conjuntoNombres = new TreeSet<>();
        
        conjuntoNombres.add("Ana");
        conjuntoNombres.add("Luis");
        conjuntoNombres.add("Pedro");
        
        System.out.println("Conjunto de nombres: " + conjuntoNombres);
        
        // Comprobar si un elemento está presente
        boolean contieneAna = conjuntoNombres.contains("Ana"); // true
        System.out.println("Contiene Ana: " + contieneAna);
        
        // Eliminar un elemento
        conjuntoNombres.remove("Pedro");
        System.out.println("Conjunto después de eliminar Pedro: " + conjuntoNombres);
        
        // Comprobar tamaño
        System.out.println("Tamaño del conjunto: " + conjuntoNombres.size());
    }
}
```

## 3. Iteración sobre Conjuntos

Puedes iterar sobre los elementos de un conjunto utilizando bucles `for`, `for-each` o un iterador.

### Usando el bucle `for-each`

```java
HashSet<String> conjuntoNombres = new HashSet<>();
conjuntoNombres.add("Ana");
conjuntoNombres.add("Luis");
conjuntoNombres.add("Pedro");

for (String nombre : conjuntoNombres) {
    System.out.println("Nombre: " + nombre);
}
```

### Usando un Iterador

```java
import java.util.HashSet;
import java.util.Iterator;

HashSet<String> conjuntoNombres = new HashSet<>();
conjuntoNombres.add("Ana");
conjuntoNombres.add("Luis");
conjuntoNombres.add("Pedro");

Iterator<String> iterador = conjuntoNombres.iterator();

while (iterador.hasNext()) {
    String nombre = iterador.next();
    System.out.println("Nombre: " + nombre);
}
```

## 4. Conversión entre Conjuntos y Listas

Puedes convertir entre conjuntos y listas usando métodos proporcionados por las clases `List` y `Set`.

### De Conjunto a Lista

```java
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

Set<String> conjuntoNombres = new HashSet<>();
conjuntoNombres.add("Ana");
conjuntoNombres.add("Luis");
conjuntoNombres.add("Pedro");

List<String> listaNombres = new ArrayList<>(conjuntoNombres);

System.out.println("Lista de nombres: " + listaNombres);
```

### De Lista a Conjunto

```java
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

List<String> listaNombres = new LinkedList<>();
listaNombres.add("Ana");
listaNombres.add("Luis");
listaNombres.add("Pedro");

Set<String> conjuntoNombres = new HashSet<>(listaNombres);

System.out.println("Conjunto de nombres: " + conjuntoNombres);
```

## Conclusión

Los conjuntos en Java son útiles para almacenar elementos únicos sin un orden específico. Dependiendo de tus necesidades, puedes usar `HashSet`, `LinkedHashSet`, o `TreeSet` para aprovechar diferentes características, como la preservación del orden o el ordenamiento de los elementos.
