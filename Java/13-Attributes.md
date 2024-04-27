## Atributos

#### Atributos de una clase
se podría decir que los atributos de clase son variables dentro de una clase:
```java
public class Main {
  int x = 5;
  int y = 3;
}
```

#### Accediendo a los atributos
Puede acceder a los atributos creando un objeto de la clase y utilizando la sintaxis de puntos (.):
```java
public class Main {
  int x = 5;

  public static void main(String[] args) {
    Main myObj = new Main();
    System.out.println(myObj.x);
  }
}
```

#### Modificar atributos
También puede modificar los valores de los atributos:
```java
public class Main {
  int x;

  public static void main(String[] args) {
    Main myObj = new Main();
    myObj.x = 40;
    System.out.println(myObj.x);
  }
}
```

#### Multiples objetos
Si crea varios objetos de una clase, puede cambiar los valores de los atributos en un objeto, sin afectar los valores de los atributos en el otro:
```java
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
```

#### Múltiples atributos
Puede especificar tantos atributos como desee:
```java
public class Main {
  String fname = "John";
  String lname = "Doe";
  int age = 24;

  public static void main(String[] args) {
    Main myObj = new Main();
    System.out.println("Name: " + myObj.fname + " " + myObj.lname);
    System.out.println("Age: " + myObj.age);
  }
}
```