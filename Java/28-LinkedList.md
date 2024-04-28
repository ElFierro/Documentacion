## Listas enlazadas

La clase LinkedList es casi idéntica a ArrayList:

```java
// Import the LinkedList class
import java.util.LinkedList;

public class Main {
  public static void main(String[] args) {
    LinkedList<String> cars = new LinkedList<String>();
    cars.add("Volvo");
    cars.add("BMW");
    cars.add("Ford");
    cars.add("Mazda");
    System.out.println(cars);
  }
}
```
 
La clase LinkedList es una colección que puede contener muchos objetos del mismo tipo, al igual que el ArrayList.

La clase LinkedList tiene todos los mismos métodos que la clase ArrayList porque ambos implementan la interfaz List. Esto significa que puede agregar elementos, cambiar elementos, eliminar elementos y borrar la lista de la misma manera.

## Cuándo usar
Utilice un ArrayList para almacenar y acceder a datos, y LinkedList para manipular datos.

## Metodos

```java
addFirst()          //Agrega un elemento al principio de la lista.
addLast()           //Agregar un elemento al final de la lista
removeFirst()       //Eliminar un elemento del principio de la lista.
removeLast()        //Eliminar un elemento del final de la lista
getFirst()          //Obtenga el artículo al principio de la lista.
getLast()             //Obtenga el artículo al final de la lista.
```