## HashSet
Un HashSet es una colección de elementos donde cada elemento es único y se encuentra en el paquete java.util:

#### Crear

```java  
import java.util.HashSet; // Import the HashSet class
HashSet<String> cars = new HashSet<String>();
```

#### Agregar elementos
tiene muchos métodos útiles. Por ejemplo, para agregarle elementos, use el método add():

```java  
// Import the HashSet class
import java.util.HashSet;

public class Main {
  public static void main(String[] args) {
    HashSet<String> cars = new HashSet<String>();
    cars.add("Volvo");
    cars.add("BMW");
    cars.add("Ford");
    cars.add("BMW");
    cars.add("Mazda");
    System.out.println(cars);
  }
}
```

**Nota**: aunque BMW se agrega dos veces, solo aparece una vez en el conjunto porque cada elemento de un conjunto debe ser único.

#### Coprobar si existe un articulo
Para comprobar si un elemento existe en un HashSet, utilice el método contains():

```java  
cars.contains("Mazda");
```

#### Eliminar un articulo
Para eliminar un elemento, utilice el método remove():

```java  
cars.remove("Volvo");
```

Para eliminar todos los elementos, utilice el clear()método:

```java  
cars.clear();
```

#### Tamaño
Para saber cuántos elementos hay, utilice el sizemétodo:

```java  
cars.size();
```

#### Recorrer
Recorre los elementos de un HashSetcon un bucle for-each :

```java  
for (String i : cars) {
  System.out.println(i);
}
```

#### Otros tipos
Los elementos de un HashSet son en realidad objetos. 

```java  
import java.util.HashSet;

public class Main {
  public static void main(String[] args) {

    // Create a HashSet object called numbers
    HashSet<Integer> numbers = new HashSet<Integer>();

    // Add values to the set
    numbers.add(4);
    numbers.add(7);
    numbers.add(8);

    // Show which numbers between 1 and 10 are in the set
    for(int i = 1; i <= 10; i++) {
      if(numbers.contains(i)) {
        System.out.println(i + " was found in the set.");
      } else {
        System.out.println(i + " was not found in the set.");
      }
    }
  }
}
```