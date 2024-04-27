//CLASES CONTENEDORAS

 //Las clases contenedoras proporcionan una forma de utilizar tipos de datos primitivos ( int,, booleanetc.) como objetos.
   byte Byte
   short   Short
   int  Integer
   long Long
   float   Float
   double Double
   boolean   Boolean
   char Character

 //A veces debes usar clases contenedoras, por ejemplo cuando trabajas con objetos de Colección, 
 //como ArrayList, donde no se pueden usar tipos primitivos
   ArrayList<int> myNumbers = new ArrayList<int>(); // Invalid
   ArrayList<Integer> myNumbers = new ArrayList<Integer>(); // Valid

 //Crear objetos envolventes
   public class Main {
     public static void main(String[] args) {
      Integer myInt = 5;
      Double myDouble = 5.99;
      Character myChar = 'A';
      System.out.println(myInt);
      System.out.println(myDouble);
      System.out.println(myChar);
     }
   }

 //Como ahora está trabajando con objetos, puede utilizar ciertos métodos para obtener información sobre el objeto específico.
 //Por ejemplo, los siguientes métodos se utilizan para obtener el valor asociado con el objeto contenedor correspondiente:
 intValue(), byteValue(), shortValue(), longValue(), floatValue(), doubleValue(), charValue(), booleanValue().

 //Otro método útil es el método toString() que se utiliza para convertir objetos contenedores en cadenas.
   public class Main {
      public static void main(String[] args) {
        Integer myInt = 100;
        String myString = myInt.toString();   //3
        System.out.println(myString.length());
     }
   }