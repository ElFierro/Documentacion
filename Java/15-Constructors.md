# Constructor

## Crear 
Un constructor en Java es un método especial que se utiliza para inicializar objetos. 
Se llama al constructor cuando se crea un objeto de una clase.
Se puede utilizar para establecer valores iniciales para los atributos del objeto:

```java
// Create a Main class
public class Main {
  int x;  // Create a class attribute

  // Create a class constructor for the Main class
  public Main() {
    x = 5;  // Set the initial value for the class attribute x
  }

  public static void main(String[] args) {
    Main myObj = new Main(); // Create an object of class Main (This will call the constructor)
    System.out.println(myObj.x); // Print the value of x
  }
}
```
  
## Parámetros del constructor
Los constructores también pueden tomar parámetros, que se utilizan para inicializar atributos.
```java
public class Main {
  int modelYear;
  String modelName;

  public Main(int year, String name) {
    modelYear = year;
    modelName = name;
  }

  public static void main(String[] args) {
    Main myCar = new Main(1969, "Mustang");
    System.out.println(myCar.modelYear + " " + myCar.modelName);
  }
}
```