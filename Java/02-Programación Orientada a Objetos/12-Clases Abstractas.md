# Uso de Clases Abstractas

Las clases abstractas en Java son una característica importante de la programación orientada a objetos que permiten definir clases que no pueden ser instanciadas directamente, sino que deben ser extendidas por otras clases. Estas clases pueden tener métodos abstractos (sin implementación) que deben ser implementados por las subclases.

## 1. ¿Qué es una Clase Abstracta?

Una clase abstracta es una clase que se declara con la palabra clave `abstract`. Puede contener métodos abstractos, que no tienen cuerpo, y métodos concretos, que tienen una implementación. Las subclases de una clase abstracta están obligadas a implementar los métodos abstractos.

### Características de las Clases Abstractas

- **No Instanciable**: No se pueden crear instancias de una clase abstracta directamente.
- **Métodos Abstractos**: Los métodos abstractos deben ser implementados por las subclases.
- **Métodos Concretos**: Una clase abstracta puede tener métodos con implementación.
- **Constructores**: Las clases abstractas pueden tener constructores, que son llamados cuando se crean instancias de las subclases.

## 2. Definición de una Clase Abstracta

Para definir una clase abstracta en Java, se utiliza la palabra clave `abstract`.

### Ejemplo de Clase Abstracta

```java
public abstract class Animal {
    // Método abstracto (sin implementación)
    public abstract void hacerSonido();

    // Método concreto (con implementación)
    public void dormir() {
        System.out.println("El animal está durmiendo");
    }
}
```

## 3. Implementación de una Clase Abstracta

Las subclases de una clase abstracta deben proporcionar implementaciones concretas para todos los métodos abstractos heredados. Una subclase puede ser concreta o también abstracta.

### Ejemplo de Implementación de Clase Abstracta

```java
public class Perro extends Animal {
    @Override
    public void hacerSonido() {
        System.out.println("El perro ladra");
    }
}

public class Gato extends Animal {
    @Override
    public void hacerSonido() {
        System.out.println("El gato maúlla");
    }
}
```

## 4. Uso de Clases Abstractas

Las clases abstractas se utilizan como base para definir una estructura común para otras clases. Se pueden referenciar a través de una variable de tipo abstracto y se pueden usar para implementar polimorfismo.

### Ejemplo de Uso de Clases Abstractas

```java
public class Main {
    public static void main(String[] args) {
        Animal miPerro = new Perro();
        Animal miGato = new Gato();

        miPerro.hacerSonido(); // Llama al método sobrescrito en Perro
        miPerro.dormir(); // Llama al método concreto en Animal

        miGato.hacerSonido(); // Llama al método sobrescrito en Gato
        miGato.dormir(); // Llama al método concreto en Animal
    }
}
```

## 5. Restricciones y Consideraciones

- **No Se Puede Instanciar**: No se puede crear una instancia directa de una clase abstracta.
- **Métodos Abstractos**: Si una clase tiene métodos abstractos, debe ser declarada como abstracta.
- **Subclases Abstractas**: Una subclase de una clase abstracta puede ser también abstracta si no implementa todos los métodos abstractos.

## 6. Comparación con Interfaces

- **Métodos**: Una clase abstracta puede tener métodos concretos y abstractos, mientras que una interfaz sólo puede tener métodos abstractos (antes de Java 8).
- **Constructores**: Las clases abstractas pueden tener constructores, pero las interfaces no pueden.
- **Herencia Múltiple**: Una clase puede implementar múltiples interfaces, pero sólo puede extender una clase abstracta.

## Conclusión

Las clases abstractas proporcionan una forma de definir una base para otras clases, permitiendo la reutilización de código y la implementación de un diseño orientado a objetos más estructurado. Son especialmente útiles cuando se necesita definir un contrato parcial que otras clases deben completar.
