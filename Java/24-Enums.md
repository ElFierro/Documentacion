## Emumeraciones
Una enum es una "clase" especial que representa un grupo de constantes (variables inmutables, como variables finales).

Para crear un enum, use la palabra clave enum (en lugar de clase o interfaz) y separe las constantes con una coma.

Tenga en cuenta que deben estar en letras mayúsculas:

```java 
enum Level {
  LOW,
  MEDIUM,
  HIGH
}
```
Puede acceder a constantes enum con la sintaxis de puntos:

```java 
Level myVar = Level.MEDIUM;
```
#### Enum dentro de una clase

También puedes tener un enum dentro de una clase:

```java 
public class Main {
  enum Level {
    LOW,
    MEDIUM,
    HIGH
  }

  public static void main(String[] args) {
    Level myVar = Level.MEDIUM; 
    System.out.println(myVar);
  }
}
```

#### Enum em switch 
Las enumeraciones se utilizan a menudo en declaraciones switch para comprobar los valores correspondientes:
```java 
enum Level {
  LOW,
  MEDIUM,
  HIGH
}

public class Main {
  public static void main(String[] args) {
    Level myVar = Level.MEDIUM;

    switch(myVar) {
      case LOW:
        System.out.println("Low level");
        break;
      case MEDIUM:
         System.out.println("Medium level");
        break;
      case HIGH:
        System.out.println("High level");
        break;
    }
  }
}
```

#### Recorrer una enumeración

El tipo de enumeración tiene un método values() que devuelve una matriz de todas las constantes de enumeración.  Este método es útil cuando desea recorrer las constantes de una enumeración:

```java 
for (Level myVar : Level.values()) {
  System.out.println(myVar);
}
```

#### Diferencia entre enumeraciones y clases
Un enum puede, al igual que un class, tener atributos y métodos. La única diferencia es que las constantes de enumeración son publicy static( final inmutables, no se pueden anular).

Un enum no se puede utilizar para crear objetos y no puede extender otras clases (pero puede implementar interfaces).

#### ¿Por qué y cuándo utilizar enumeraciones?
Utilice enumeraciones cuando tenga valores que sepa que no van a cambiar, como los días del mes, los días, los colores, la baraja de cartas, etc.