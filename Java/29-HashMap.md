## HasMap
almacena elementos en pares "clave/valor" y podrá acceder a ellos mediante un índice de otro tipo

## Crear

```java
import java.util.HashMap; // import the HashMap class
HashMap<String, String> capitalCities = new HashMap<String, String>();
```

## Agregar elementos

```java
use el método put():

// Import the HashMap class
import java.util.HashMap;

public class Main {
  public static void main(String[] args) {
    // Create a HashMap object called capitalCities
    HashMap<String, String> capitalCities = new HashMap<String, String>();

    // Add keys and values (Country, City)
    capitalCities.put("England", "London");
    capitalCities.put("Germany", "Berlin");
    capitalCities.put("Norway", "Oslo");
    capitalCities.put("USA", "Washington DC");
    System.out.println(capitalCities);
  }
}
```

## Acceder a un articulo
Para acceder a un valor en HashMap, utilice el método get() y consulte su clave:

```java
capitalCities.get("England");
```

## Eliminar un elemento
Para eliminar un elemento, utilice el método remove() y consulte la clave:

```java
capitalCities.remove("England");
```

Para eliminar todos los elementos, utilice el método clear():
```java
capitalCities.clear();
```

## Tamaño
Para saber cuántos elementos hay, utilice el método size():

```java  
capitalCities.size();
```

## Recorrer
Recorra los elementos de con un bucle HashMap para cada uno .

Nota: Utilice el método keySet() si solo desea las claves y utilice el método values() si solo desea los valores:

```java  
// Print keys
for (String i : capitalCities.keySet()) {
  System.out.println(i);
}

// Print values
for (String i : capitalCities.values()) {
  System.out.println(i);
}

// Print keys and values
for (String i : capitalCities.keySet()) {
  System.out.println("key: " + i + " value: " + capitalCities.get(i));
}
```
## Otros tipos

Las claves y los valores de un HashMap son en realidad objetos

```java  
// Import the HashMap class
import java.util.HashMap;

public class Main {
  public static void main(String[] args) {

    // Create a HashMap object called people
    HashMap<String, Integer> people = new HashMap<String, Integer>();


    // Add keys and values (Name, Age)
    people.put("John", 32);
    people.put("Steve", 30);
    people.put("Angie", 33);

    for (String i : people.keySet()) {
      System.out.println("key: " + i + " value: " + people.get(i));
    }
  }
}
```