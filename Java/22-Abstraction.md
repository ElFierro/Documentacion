## Abstraccion

#### Clases y métodos abstractos

La abstracción de datos es el proceso de ocultar ciertos detalles y mostrar solo información esencial al usuario.La abstracción se puede lograr con clases abstractas o interfaces

La palabra clave abstract es un modificador sin acceso, utilizado para clases y métodos:

- Clase abstracta: es una clase restringida que no se puede utilizar para crear objetos (para acceder a ella se debe heredar de otra clase).

- Método abstracto: solo se puede utilizar en una clase abstracta y no tiene cuerpo. El cuerpo lo proporciona la subclase (heredada de).

Una clase abstracta puede tener métodos tanto abstractos como regulares:
```java
abstract class Animal {
  public abstract void animalSound();
  public void sleep() {
    System.out.println("Zzz");
  }
}
```

Según el ejemplo anterior, no es posible crear un objeto de la clase Animal:
```java    
Animal myObj = new Animal(); // will generate an error
```
Para acceder a la clase abstracta, se debe heredar de otra clase.
```java 
// Abstract class
abstract class Animal {
  // Abstract method (does not have a body)
  public abstract void animalSound();
  // Regular method
  public void sleep() {
    System.out.println("Zzz");
  }
}

// Subclass (inherit from Animal)
class Pig extends Animal {
  public void animalSound() {
    // The body of animalSound() is provided here
    System.out.println("The pig says: wee wee");
  }
}

class Main {
  public static void main(String[] args) {
    Pig myPig = new Pig(); // Create a Pig object
    myPig.animalSound();
    myPig.sleep();
  }
}
```
#### ¿Por qué y cuándo utilizar clases y métodos abstractos?
Para lograr seguridad, oculte ciertos detalles y muestre solo los detalles importantes de un objeto.

**Nota:** La abstracción también se puede lograr con Interfaces