# Interfaces y Clases Abstractas

Las interfaces y las clases abstractas son conceptos importantes en la programación orientada a objetos en Java, utilizados para definir contratos y proporcionar una estructura para las clases derivadas.

## 1. Definición e Implementación de Interfaces

Una interfaz en Java es una colección de métodos abstractos (sin implementación) que las clases pueden implementar. Las interfaces permiten definir un contrato que las clases deben seguir.

### 1.1 Definición de una Interfaz

Para definir una interfaz, se usa la palabra clave `interface`. Los métodos dentro de una interfaz son implícitamente `public` y `abstract`.

#### Ejemplo de Definición de una Interfaz

```java
public interface Animal {
    void hacerSonido(); // Método abstracto
}
```

### 1.2 Implementación de una Interfaz

Una clase puede implementar una interfaz utilizando la palabra clave `implements` y proporcionando implementaciones para todos los métodos de la interfaz.

#### Ejemplo de Implementación de una Interfaz

```java
public class Perro implements Animal {
    @Override
    public void hacerSonido() {
        System.out.println("El perro ladra.");
    }

    public void correr() {
        System.out.println("El perro está corriendo.");
    }
}
```

### Ejemplo de Uso de una Interfaz

```java
public class TestInterfaces {
    public static void main(String[] args) {
        Animal miPerro = new Perro();
        miPerro.hacerSonido(); // Salida: El perro ladra.
    }
}
```

## 2. Uso de Clases Abstractas

Una clase abstracta en Java es una clase que no puede ser instanciada directamente y puede contener métodos abstractos (sin implementación) y métodos concretos (con implementación). Las clases abstractas se utilizan para proporcionar una base común para otras clases.

### 2.1 Definición de una Clase Abstracta

Para definir una clase abstracta, se utiliza la palabra clave `abstract`. Los métodos abstractos se declaran sin cuerpo.

#### Ejemplo de Definición de una Clase Abstracta

```java
public abstract class Animal {
    protected String nombre;

    public Animal(String nombre) {
        this.nombre = nombre;
    }

    public abstract void hacerSonido(); // Método abstracto

    public void dormir() {
        System.out.println(nombre + " está durmiendo.");
    }
}
```

### 2.2 Subclases de una Clase Abstracta

Las subclases deben proporcionar una implementación para todos los métodos abstractos de la clase base. Una subclase puede ser instanciada, mientras que la clase abstracta no puede.

#### Ejemplo de Subclase de una Clase Abstracta

```java
public class Perro extends Animal {
    public Perro(String nombre) {
        super(nombre);
    }

    @Override
    public void hacerSonido() {
        System.out.println("El perro ladra.");
    }
}
```

### Ejemplo de Uso de una Clase Abstracta

```java
public class TestClasesAbstractas {
    public static void main(String[] args) {
        // Crear una instancia de la subclase
        Animal miPerro = new Perro("Rex");
        miPerro.hacerSonido(); // Salida: El perro ladra.
        miPerro.dormir(); // Salida: Rex está durmiendo.
    }
}
```

## Conclusión

Las interfaces permiten definir contratos que las clases deben cumplir, promoviendo la flexibilidad y la reutilización del código. Las clases abstractas proporcionan una base común con métodos abstractos y concretos, permitiendo a las subclases especializarse y extender la funcionalidad. Ambos conceptos son cruciales para diseñar sistemas modulares y extensibles en Java.
