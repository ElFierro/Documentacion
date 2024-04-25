//HASHMAP
 //almacena elementos en pares "clave/valor" y podrá acceder a ellos mediante un índice de otro tipo

 //CREAR
  import java.util.HashMap; // import the HashMap class
  HashMap<String, String> capitalCities = new HashMap<String, String>();

 //AGREGAR ELEMENTOS
  //use el método put():

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
     System.out.println(capitalCities);  //{USA=Washington DC, Norway=Oslo, England=London, Germany=Berlin}
    }
   }


  //ACCEDER A UN ARTICULO
   //Para acceder a un valor en HashMap, utilice el método get() y consulte su clave:
    capitalCities.get("England");

  //ELIMINAR ARTICULO
   //Para eliminar un elemento, utilice el método remove() y consulte la clave:
    capitalCities.remove("England");

   //Para eliminar todos los elementos, utilice el método clear():
    capitalCities.clear();

  //TAMAÑO
   //Para saber cuántos elementos hay, utilice el método size():
    capitalCities.size();

  //RECORRER
   //Recorra los elementos de con un bucle HashMap para cada uno .

   //Nota: Utilice el método keySet() si solo desea las claves y utilice el método values() si solo desea los valores:

     // Print keys
     for (String i : capitalCities.keySet()) {
        System.out.println(i);    //USA - Norway - England - Germany
      }

     // Print values
     for (String i : capitalCities.values()) { //London - Berlin - Oslo - Washington DC
       System.out.println(i);
      }

   // Print keys and values
   for (String i : capitalCities.keySet()) {
     System.out.println("key: " + i + " value: " + capitalCities.get(i)); //key: USA value: Washington DC
   }

  //OTROS TIPOS
   //Las claves y los valores de un HashMap son en realidad objetos

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