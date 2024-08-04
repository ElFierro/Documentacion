# Listas

En Java, las listas son una estructura de datos que permite almacenar elementos de manera ordenada y acceder a ellos mediante índices. A diferencia de los arrays, las listas pueden cambiar de tamaño dinámicamente. En Java, las listas se gestionan mediante la interfaz `List` y sus implementaciones más comunes como `ArrayList` y `LinkedList`.

## 1. Interfaz `List`

La interfaz `List` pertenece al paquete `java.util` y proporciona métodos para manejar colecciones de elementos en un orden específico.

### Métodos Comunes de `List`

- `add(E e)`: Añade un elemento al final de la lista.
- `add(int index, E element)`: Inserta un elemento en una posición específica.
- `get(int index)`: Obtiene el elemento en una posición específica.
- `remove(int index)`: Elimina el elemento en una posición específica.
- `size()`: Devuelve el número de elementos en la lista.
- `contains(Object o)`: Verifica si la lista contiene un elemento específico.

## 2. Implementaciones Comunes

### `ArrayList`

`ArrayList` es una implementación de la interfaz `List` que utiliza un array dinámico para almacenar elementos. Es ideal para accesos rápidos por índice.

#### Declaración e Inicialización

```java
import java.util.ArrayList;

ArrayList<String> listaNombres = new ArrayList<>();
```

#### Ejemplo de Uso

```java
import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        ArrayList<String> listaNombres = new ArrayList<>();
        
        listaNombres.add("Ana");
        listaNombres.add("Luis");
        listaNombres.add("Pedro");
        
        System.out.println("Lista de nombres: " + listaNombres);
        
        // Acceder a un elemento
        String nombre = listaNombres.get(1); // "Luis"
        System.out.println("Nombre en índice 1: " + nombre);
        
        // Eliminar un elemento
        listaNombres.remove("Pedro");
        System.out.println("Lista después de eliminar Pedro: " + listaNombres);
        
        // Comprobar tamaño
        System.out.println("Tamaño de la lista: " + listaNombres.size());
    }
}
```

### `LinkedList`

`LinkedList` es otra implementación de la interfaz `List` que utiliza una lista doblemente enlazada para almacenar elementos. Es ideal para operaciones de inserción y eliminación frecuentes.

#### Declaración e Inicialización

```java
import java.util.LinkedList;

LinkedList<String> listaNombres = new LinkedList<>();
```

#### Ejemplo de Uso

```java
import java.util.LinkedList;

public class Main {
    public static void main(String[] args) {
        LinkedList<String> listaNombres = new LinkedList<>();
        
        listaNombres.add("Ana");
        listaNombres.add("Luis");
        listaNombres.add("Pedro");
        
        System.out.println("Lista de nombres: " + listaNombres);
        
        // Acceder a un elemento
        String nombre = listaNombres.get(1); // "Luis"
        System.out.println("Nombre en índice 1: " + nombre);
        
        // Eliminar un elemento
        listaNombres.remove("Pedro");
        System.out.println("Lista después de eliminar Pedro: " + listaNombres);
        
        // Comprobar tamaño
        System.out.println("Tamaño de la lista: " + listaNombres.size());
    }
}
```

## 3. Iteración sobre Listas

Puedes usar varios métodos para iterar sobre los elementos de una lista, como bucles `for`, `for-each` y el iterador.

### Usando el bucle `for-each`

```java
ArrayList<String> listaNombres = new ArrayList<>();
listaNombres.add("Ana");
listaNombres.add("Luis");
listaNombres.add("Pedro");

for (String nombre : listaNombres) {
    System.out.println("Nombre: " + nombre);
}
```

### Usando un Iterador

```java
import java.util.ArrayList;
import java.util.Iterator;

ArrayList<String> listaNombres = new ArrayList<>();
listaNombres.add("Ana");
listaNombres.add("Luis");
listaNombres.add("Pedro");

Iterator<String> iterador = listaNombres.iterator();

while (iterador.hasNext()) {
    String nombre = iterador.next();
    System.out.println("Nombre: " + nombre);
}
```

## 4. Conversiones entre Arrays y Listas

Puedes convertir entre arrays y listas usando métodos proporcionados por las clases `Arrays` y `List`.

### De Array a Lista

```java
import java.util.Arrays;
import java.util.List;

String[] arrayNombres = {"Ana", "Luis", "Pedro"};
List<String> listaNombres = Arrays.asList(arrayNombres);

System.out.println("Lista de nombres: " + listaNombres);
```

### De Lista a Array

```java
import java.util.ArrayList;
import java.util.List;

List<String> listaNombres = new ArrayList<>();
listaNombres.add("Ana");
listaNombres.add("Luis");
listaNombres.add("Pedro");

String[] arrayNombres = listaNombres.toArray(new String[0]);

System.out.println("Array de nombres: " + Arrays.toString(arrayNombres));
```

## Conclusión

Las listas en Java proporcionan una manera flexible y poderosa de manejar colecciones de datos. Usar `ArrayList` y `LinkedList` te permitirá elegir la implementación más adecuada según tus necesidades específicas, y las conversiones entre arrays y listas facilitan el manejo de datos en diferentes formatos.
