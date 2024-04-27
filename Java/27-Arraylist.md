## ArrayList
La clase ArrayList es una matriz de tamaño variable, que se puede encontrar en el paquete java.util.

La diferencia entre un array y una ArrayList en Java es que el tamaño de una matriz no se puede modificar (si desea agregar o eliminar elementos a/de un array,debe crear una nueva). Mientras que los elementos se pueden agregar y eliminar ArrayList cuando lo desee. La sintaxis también es ligeramente diferente:

```java
import java.util.ArrayList; // import the ArrayList class
ArrayList<String> cars = new ArrayList<String>(); // Create an ArrayList object
```

#### Agregar elementos
La clase ArrayList tiene muchos métodos útiles. Por ejemplo, para agregar elementos al ArrayList, use el método add():

```java
import java.util.ArrayList;

public class Main {
  public static void main(String[] args) {
    ArrayList<String> cars = new ArrayList<String>();
    cars.add("Volvo");
    cars.add("BMW");
    cars.add("Ford");
    cars.add("Mazda");
    System.out.println(cars);
  }
}
```

#### Acceder a un a elemento
Para acceder a un elemento en ArrayList, utilice el método get() y consulte el número de índice:

```java
cars.get(0); //volvo
```

#### Cambiar un articulo
Para modificar un elemento, utilice el método set() y consulte el número de índice:

```java
cars.set(0, "Opel");
```

#### Eliminar articulo
Para eliminar un elemento, utilice el método remove() y consulte el número de índice:

```java
cars.remove(0);
```

Para eliminar todos los elementos del ArrayList, utilice el método clear():

```java
cars.clear();
```

#### Tamaño de la lista
Para saber cuántos elementos tiene un ArrayList, use el método size:

```java
cars.size();
```

#### Recorrer una lista
Recorra los elementos de un ArrayList con unn bucle for y utilice el método size() para especificar cuántas veces debe ejecutarse el bucle:

Ejemplo
```java
public class Main {
  public static void main(String[] args) {
    ArrayList<String> cars = new ArrayList<String>();
    cars.add("Volvo");
    cars.add("BMW");
    cars.add("Ford");
    cars.add("Mazda");
    for (int i = 0; i < cars.size(); i++) {
      System.out.println(cars.get(i));
    }
  }
}
```

También puedes recorrer un ArrayList con el bucle for-each :

```java
public class Main {
  public static void main(String[] args) {
    ArrayList<String> cars = new ArrayList<String>();
    cars.add("Volvo");
    cars.add("BMW");
    cars.add("Ford");
    cars.add("Mazda");
    for (String i : cars) {
      System.out.println(i);
    }
  }
}
```

## Otros tipos
Los elementos de un ArrayList son en realidad objetos. Para utilizar otros tipos, como int, debe especificar una clase contenedora equivalente : Integer.

```java
import java.util.ArrayList;

public class Main {
  public static void main(String[] args) {
    ArrayList<Integer> myNumbers = new ArrayList<Integer>();
    myNumbers.add(10);
    myNumbers.add(15);
    myNumbers.add(20);
    myNumbers.add(25);
    for (int i : myNumbers) {
      System.out.println(i);
    }
  }
}
```

#### Ordenar una lista
Otra clase útil en el paquete java.util es la clase Collections, que incluye el método sort() para ordenar listas alfabéticamente o numéricamente:

Ordenar una ArrayList de cadenas:
```java
import java.util.ArrayList;
import java.util.Collections;  // Import the Collections class

public class Main {
  public static void main(String[] args) {
    ArrayList<String> cars = new ArrayList<String>();
    cars.add("Volvo");
    cars.add("BMW");
    cars.add("Ford");
    cars.add("Mazda");
    Collections.sort(cars);  // Sort cars
    for (String i : cars) {
      System.out.println(i);
    }
  }
}
```
Ordenar una ArrayList de números enteros:

```java
import java.util.ArrayList;
import java.util.Collections;  // Import the Collections class

public class Main {
  public static void main(String[] args) {
    ArrayList<Integer> myNumbers = new ArrayList<Integer>();
    myNumbers.add(33);
    myNumbers.add(15);
    myNumbers.add(20);
    myNumbers.add(34);
    myNumbers.add(8);
    myNumbers.add(12);

    Collections.sort(myNumbers);  // Sort myNumbers

    for (int i : myNumbers) {
      System.out.println(i);
    }
  }
}
```