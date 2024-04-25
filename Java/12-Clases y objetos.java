//Todo en Java está asociado con clases y objetos, junto con sus atributos y métodos.

//Crear una clase
//Para crear una clase, use la palabra clave class:
public class Main {
  int x = 5;
}

//Crear un objeto
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

//múltiples clases

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