## Clases contenedoras

Las clases contenedoras proporcionan una forma de utilizar tipos de datos primitivos ( int, boolean, etc.) como objetos.
```ssh
byte    Byte
short   Short
int     Integer
long    Long
float   Float
double  Double
boolean Boolean
char    Character
```

A veces debes usar clases contenedoras, por ejemplo cuando trabajas con objetos de Colección, como ArrayList, donde no se pueden usar tipos primitivos

```java
ArrayList<Integer> myNumbers = new ArrayList<Integer>(); // Valid
```

#### Crear objetos envolventes
```java
public class Main {
  public static void main(String[] args) {
    Integer myInt = 5;
    Double myDouble = 5.99;
    Character myChar = 'A';
    System.out.println(myInt);
    System.out.println(myDouble);
    System.out.println(myChar);
  }
}
```

Como ahora está trabajando con objetos, puede utilizar ciertos métodos para obtener información sobre el objeto específico.
Por ejemplo, los siguientes métodos se utilizan para obtener el valor asociado con el objeto contenedor correspondiente:
intValue(), byteValue(), shortValue(), longValue(), floatValue(), doubleValue(), charValue(), booleanValue().

```java
public class Main {
  public static void main(String[] args) {
    Integer myInt = 5;
    Double myDouble = 5.99;
    Character myChar = 'A';
    System.out.println(myInt.intValue());
    System.out.println(myDouble.doubleValue());
    System.out.println(myChar.charValue());
  }
}
```

Otro método útil es el método toString() que se utiliza para convertir objetos contenedores en cadenas.

```java
public class Main {
  public static void main(String[] args) {
    Integer myInt = 100;
    String myString = myInt.toString();
    System.out.println(myString.length());
  }
}
```