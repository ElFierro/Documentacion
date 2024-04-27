## Interfaz
Otra forma de lograr la abstracción en Java es con interfaces.Una interface es completamente una "clase abstracta" que se utiliza para agrupar métodos relacionados con cuerpos vacíos:

```java 
interface Animal {
  public void animalSound(); // interface method (does not have a body)
  public void run(); // interface method (does not have a body)
}
```

#### Acceder
Para acceder a los métodos de la interfaz, la interfaz debe ser "implementada" (algo así como heredada) por otra clase con la palabra clave implements (en lugar de extends)

```java 
interface Animal {
  public void animalSound(); // interface method (does not have a body)
  public void sleep(); // interface method (does not have a body)
}

// Pig "implements" the Animal interface
class Pig implements Animal {
  public void animalSound() {
    // The body of animalSound() is provided here
    System.out.println("The pig says: wee wee");
  }
  public void sleep() {
    // The body of sleep() is provided here
    System.out.println("Zzz");
  }
}

class Main {
  public static void main(String[] args) {
    Pig myPig = new Pig();  // Create a Pig object
    myPig.animalSound();
    myPig.sleep();
  }
}
```

#### Notas
- Los métodos de interfaz no tienen cuerpo: el cuerpo lo proporciona la clase "implementar"
- Al implementar una interfaz, debe anular todos sus métodos.
- Los métodos de interfaz son por defecto abstracty public
- Los atributos de la interfaz son por defecto publicy staticfinal
- Una interfaz no puede contener un constructor (ya que no se puede utilizar para crear objetos)
 
 ¿Por qué y cuándo utilizar interfaces?
- Para lograr seguridad: oculte ciertos detalles y muestre solo los detalles importantes de un objeto (interfaz).
- Java no admite la "herencia múltiple" (una clase sólo puede heredar de una superclase). Sin embargo, se puede lograr con interfaces, porque la clase puede implementar múltiples interfaces. **Nota**: Para implementar varias interfaces, sepárelas con una coma (consulte el ejemplo a continuación).

#### Múltiples interfaces
Para implementar múltiples interfaces, sepárelas con una coma:

```java 
interface FirstInterface {
  public void myMethod(); // interface method
}

interface SecondInterface {
  public void myOtherMethod(); // interface method
}

class DemoClass implements FirstInterface, SecondInterface {
  public void myMethod() {
    System.out.println("Some text..");
  }
  public void myOtherMethod() {
    System.out.println("Some other text...");
  }
}

class Main {
  public static void main(String[] args) {
    DemoClass myObj = new DemoClass();
    myObj.myMethod();
    myObj.myOtherMethod();
  }
}
```