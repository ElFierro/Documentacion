## Metodos de clases

#### Estático versus público

A menudo verá programas Java que tienen atributos y métodos staticos o publicos.
A un método static se puede acceder a él sin crear un objeto de la clase, a diferencia de public, al que solo se puede acceder mediante objetos:

```java
public class Main {
  // Static method
  static void myStaticMethod() {
    System.out.println("Static methods can be called without creating objects");
  }

  // Public method
  public void myPublicMethod() {
    System.out.println("Public methods must be called by creating objects");
  }

  // Main method
  public static void main(String[] args) {
    myStaticMethod(); // Call the static method
    // myPublicMethod(); This would compile an error

    Main myObj = new Main(); // Create an object of Main
    myObj.myPublicMethod(); // Call the public method on the object
  }
}
```

#### Usando multiples clases
es una buena práctica crear un objeto de una clase y acceder a él en otra clase.
```java
//principal.java
public class Main {
  public void fullThrottle() {
    System.out.println("The car is going as fast as it can!");
  } 

  public void speed(int maxSpeed) {
    System.out.println("Max speed is: " + maxSpeed);
  }
}

//Segundo.java
class Second {
  public static void main(String[] args) {
    Main myCar = new Main();     // Create a myCar object
    myCar.fullThrottle();      // Call the fullThrottle() method
    myCar.speed(200);          // Call the speed() method
  }
}
```
