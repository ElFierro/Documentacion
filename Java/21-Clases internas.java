//CLASES INTERNAS
  //En Java, también es posible anidar clases (una clase dentro de una clase). 
  //El propósito de las clases anidadas es agrupar clases que van juntas, lo que hace que su código sea más legible y fácil de mantener.

  class OuterClass {
    int x = 10;

    class InnerClass { //Clase anidada
     int y = 5;
    }
  }

  public class Main {
    public static void main(String[] args) {
     OuterClass myOuter = new OuterClass();
     OuterClass.InnerClass myInner = myOuter.new InnerClass();     //Acceder a la clase 
     System.out.println(myInner.y + myOuter.x);    //// Outputs 15 (5 + 10)
    }
  }

 //CLASE INTERNA PRIVADA
  //A diferencia de una clase "normal", una clase interna puede ser private o protected. 
  //Si no desea que los objetos externos accedan a la clase interna, declare la clase como private:

  class OuterClass {
    int x = 10;

    private class InnerClass {   //Clase privada
     int y = 5;
    }
  }

  public class Main {
    public static void main(String[] args) {
     OuterClass myOuter = new OuterClass();
     OuterClass.InnerClass myInner = myOuter.new InnerClass();     //No puede acceder genera error porque es privada
     System.out.println(myInner.y + myOuter.x);
    }
  }

 //CLASE INTERNA ESTATICA
  //Una clase interna también puede ser static, lo que significa que puedes acceder a ella sin crear un objeto de la clase externa:
   class OuterClass {
     int x = 10;

     static class InnerClass {   //Clase estatica
      int y = 5;
     }
   }

   public class Main {
    public static void main(String[] args) {
     OuterClass.InnerClass myInner = new OuterClass.InnerClass();    //Accede al metodo estatico sin crear objeto
     System.out.println(myInner.y);
   }
  }
 //ACCEDER A LA CLASE EXTERIOR DESDE LA CLASE INTERIOR
  //Una ventaja de las clases internas es que pueden acceder a atributos y métodos de la clase externa:
  
  class OuterClass {     //Clase externa
    int x = 10;        //Atributo de clase externa

    class InnerClass {   //Clase interna
     public int myInnerMethod() {
      return x;     //Accede a los atributos de la clase externa
     }
    }
  }

  public class Main {
    public static void main(String[] args) {
     OuterClass myOuter = new OuterClass();
     OuterClass.InnerClass myInner = myOuter.new InnerClass();
     System.out.println(myInner.myInnerMethod());
    }
  }