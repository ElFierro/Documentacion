//Atributos de clase
//se podría decir que los atributos de clase son variables dentro de una clase:
public class Main {
  int x = 5;
  int y = 3;
}

//Accediendo a los atributos
//Puede acceder a los atributos creando un objeto de la clase y 
//utilizando la sintaxis de puntos (.):
public class Main {
  int x = 5;

  public static void main(String[] args) {
    Main myObj = new Main();
    System.out.println(myObj.x);
  }
}

//Modificar atributos
//También puede modificar los valores de los atributos:
public class Main {
  int x;

  public static void main(String[] args) {
    Main myObj = new Main();
    myObj.x = 40;
    System.out.println(myObj.x);
  }
}

//Múltiples objetos
public class Main {
  int x = 5;

  public static void main(String[] args) {
    Main myObj1 = new Main();  // Object 1
    Main myObj2 = new Main();  // Object 2
    myObj2.x = 25;
    System.out.println(myObj1.x);  // Outputs 5
    System.out.println(myObj2.x);  // Outputs 25
  }
}
