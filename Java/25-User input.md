## Entrada de usuario de Java (escáner)
La clase Scanner se utiliza para obtener información del usuario y se encuentra en el paquete java.util.

import java.util.Scanner;  // Import the Scanner class

```java 
class Main {
  public static void main(String[] args) {
    Scanner myObj = new Scanner(System.in);  // Create a Scanner object
    System.out.println("Enter username");

    String userName = myObj.nextLine();  // Read user input
    System.out.println("Username is: " + userName);  // Output user input
  }
}
```

#### Tipos de entrada
```java 
  nextBoolean()   //Lee un valor boolean del usuario
  nextByte()      //Lee un valor de byte del usuario
  nextDouble()    //Lee un valor double del usuario
  nextFloat()     //Lee un valor float del usuario
  nextInt()       //Lee un valor int del usuario
  nextLine()      //Lee un valor String del usuario
  nextLong()      //Lee un valor long del usuario
  nextShort()     //Lee un valor short del usuario
```

Ejemplo:
```java 
import java.util.Scanner;

class Main {
  public static void main(String[] args) {
    Scanner myObj = new Scanner(System.in);

    System.out.println("Enter name, age and salary:");

    // String input
    String name = myObj.nextLine();

    // Numerical input
    int age = myObj.nextInt();
    double salary = myObj.nextDouble();

    // Output input by user
    System.out.println("Name: " + name);
    System.out.println("Age: " + age);
    System.out.println("Salary: " + salary);
  }
}
```

**Nota**: Si ingresa una entrada incorrecta (por ejemplo, texto en una entrada numérica), recibirá un mensaje de excepción/error (como "InputMismatchException").