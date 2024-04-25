//CLASES Y OBJETOS 
 //Todo en Java está asociado con clases y objetos, junto con sus atributos y métodos.

 //CREAR UNA CLASE
  //Para crear una clase, use la palabra clave class:
   public class Main {
    int x = 5;
   }

 //CREAR UN OBJETO
  //En Java, un objeto se crea a partir de una clase.
  //Para crear un objeto de Main, especifique el nombre de la clase, seguido del nombre
  //del objeto y utilice la palabra clave new:

   public class Main {
    int x = 5;

    public static void main(String[] args) {
      Main myObj = new Main();
      System.out.println(myObj.x);
    }
  }

 //MULTIPLES CLASES

  //principal.java
   public class Main {
    int x = 5;
   }

  //Segundo.java
   class Second {
     public static void main(String[] args) {
       Main myObj = new Main();
       System.out.println(myObj.x);
     }
   } 