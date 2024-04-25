//ARRAYLIST
 //La clase ArrayList es una matriz de tamaño variable, que se puede encontrar en el paquete java.util.

 //La diferencia entre una matriz incorporada y una ArrayListen Java es que el tamaño de una matriz no se puede modificar (si desea agregar o eliminar elementos a/de una matriz,
 // debe crear una nueva). Mientras que los elementos se pueden agregar y eliminar ArrayList cuando lo desee. La sintaxis también es ligeramente diferente:

  import java.util.ArrayList; // import the ArrayList class
  ArrayList<String> cars = new ArrayList<String>(); // Create an ArrayList object

 //AGREGAR ELEMENTOS
  //La clase ArrayList tiene muchos métodos útiles. Por ejemplo, para agregar elementos al ArrayList, use el método add():

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

 //ACCEDER A UN ARTICULO
  //Para acceder a un elemento en ArrayList, utilice el método get() y consulte el número de índice:

   cars.get(0); //volvo

 //CAMBIAR UN ARTICULO
  //Para modificar un elemento, utilice el método set() y consulte el número de índice:

   cars.set(0, "Opel");

 //ELIMINAR UN ARTICULO
  //Para eliminar un elemento, utilice el método remove() y consulte el número de índice:

   cars.remove(0);

  //Para eliminar todos los elementos del ArrayList, utilice el método clear():

   cars.clear();

 //TAMAÑO DE LA LISTA
  //Para saber cuántos elementos tiene un ArrayList, use el método size:

   cars.size();

 //RECORRER UNA LISTA
  //Recorra los elementos de un ArrayList con unn bucle for y utilice el método size() para especificar cuántas veces debe ejecutarse el bucle:

   Ejemplo
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

  //También puedes recorrer un ArrayList con el bucle for-each :

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

 //OTROS TIPOS
  //Los elementos de un ArrayList son en realidad objetos. Para utilizar otros tipos, como int, debe especificar una clase contenedora equivalente : Integer.

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

 //ORDENAR UNA LISTA
  //Otra clase útil en el paquete java.util es la clase Collections, que incluye el método sort() para ordenar listas alfabéticamente o numéricamente:

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
     System.out.println(i);   //Volvo - BMW - Ford - Mazda
    }
   }
  }

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
      System.out.println(i);   //10 - 15 - 20 - 25
     }
    }
   }
