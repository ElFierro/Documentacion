## Clases y objetos
Todo en Java está asociado con clases y objetos, junto con sus atributos y métodos.

#### Crear una clase
```java
//Para crear una clase, use la palabra clave class:
  public class Main {
  int x = 5;
}
```

#### Crear un objeto
En Java, un objeto se crea a partir de una clase.
Para crear un objeto de Main, especifique el nombre de la clase, seguido del nombre del objeto y utilice la palabra clave new:

```java
public class Main {
  int x = 5;

  public static void main(String[] args) {
    Main myObj = new Main();
    System.out.println(myObj.x);
  }
}
```
#### Multiples objetos
Puedes crear múltiples objetos de una clase:

```java
public class Main {
  int x = 5;

  public static void main(String[] args) {
    Main myObj1 = new Main();  // Object 1
    Main myObj2 = new Main();  // Object 2
    System.out.println(myObj1.x);
    System.out.println(myObj2.x);
  }
}
```

#### Multiples clases

```java
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
```