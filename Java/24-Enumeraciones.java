//ENUMERACIONES
 //Una enum es una "clase" especial que representa un grupo de constantes (variables inmutables, como variables finales).

 //Para crear un enum, use la palabra clave enum (en lugar de clase o interfaz) y separe las constantes con una coma.
 //Tenga en cuenta que deben estar en letras mayúsculas:

   enum Level {
    LOW,
    MEDIUM,
    HIGH
   }

 //Puede acceder a constantes enum con la sintaxis de puntos:

   Level myVar = Level.MEDIUM;

 //ENUM DENTRO DE UNA CLASE
  //También puedes tener un enum dentro de una clase:

   public class Main {
    enum Level {
     LOW,
     MEDIUM,
     HIGH
    }

   public static void main(String[] args) {
     Level myVar = Level.MEDIUM; 
     System.out.println(myVar); //MEDIUM
    }
   }

 //ENUM EN SWITCH
  //Las enumeraciones se utilizan a menudo en declaraciones switch para comprobar los valores correspondientes:
    enum Level {
     LOW,
     MEDIUM,
     HIGH
   }

   public class Main {
    public static void main(String[] args) {
     Level myVar = Level.MEDIUM;

     switch(myVar) {
      case LOW:
       System.out.println("Low level");
       break;
      case MEDIUM:
       System.out.println("Medium level"); //Medium level
       break;
      case HIGH:
       System.out.println("High level");
       break;
      }
     }
   }

 //RECORRER UNA ENUMERACION
  //El tipo de enumeración tiene un método values() que devuelve una matriz de todas las constantes de enumeración.
   for (Level myVar : Level.values()) {
    System.out.println(myVar);
   }
   
  //¿Por qué y cuándo utilizar enumeraciones?
   //Utilice enumeraciones cuando tenga valores que sepa que no van a cambiar, 
   //como los días del mes, los días, los colores, la baraja de cartas, etc.