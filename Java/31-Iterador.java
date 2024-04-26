//ITERADOR
 
 //Un Iterator es un objeto que se puede utilizar para recorrer colecciones, como ArrayList y HashSet. Se llama "iterador" porque "iterar" es el término técnico para bucles.

 //OBTENER UN ITERADOR
   //Import the ArrayList class and the Iterator class
   import java.util.ArrayList;
   import java.util.Iterator;

   public class Main {
     public static void main(String[] args) {

    // Make a collection
    ArrayList<String> cars = new ArrayList<String>();
     cars.add("Volvo");
     cars.add("BMW");
     cars.add("Ford");
     cars.add("Mazda");
  
    // Get the iterator
    Iterator<String> it = cars.iterator();

    // Print the first item
    System.out.println(it.next());
    }
   }

  //RECORRER UNA COLECCION
   //Para recorrer una colección, utilice los métodos hasNext()y next()de Iterator:

   while(it.hasNext()) {
     System.out.println(it.next());
   }

  //ELIMINAR ELEMENTOS DE UNA COLECCION
    //Los iteradores están diseñados para cambiar fácilmente las colecciones que recorren. El método remove() puede eliminar elementos de una colección mientras se realiza un bucle.
   import java.util.ArrayList;
   import java.util.Iterator;

   public class Main {
     public static void main(String[] args) {
      ArrayList<Integer> numbers = new ArrayList<Integer>();
      numbers.add(12);
      numbers.add(8);
      numbers.add(2);
      numbers.add(23);
      Iterator<Integer> it = numbers.iterator();
      while(it.hasNext()) {
        Integer i = it.next();
        if(i < 10) {
          it.remove();
        }
      }
      System.out.println(numbers);
     }
    }
