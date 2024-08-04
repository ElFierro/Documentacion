# Definición e Implementación de Interfaces

Las interfaces en Java son un componente clave en la programación orientada a objetos que permite definir un contrato que las clases deben cumplir. Las interfaces son útiles para lograr la abstracción y el polimorfismo.

## 1. ¿Qué es una Interfaz?

Una interfaz en Java es una referencia de tipo que puede contener métodos abstractos (métodos sin implementación) y constantes. Las interfaces se utilizan para especificar qué métodos debe implementar una clase, sin definir cómo se implementan.

### Características de las Interfaces

- **Métodos Abstractos**: Los métodos en una interfaz son abstractos por defecto (no tienen cuerpo).
- **Constantes**: Las interfaces pueden contener constantes (declaradas con `public static final`).
- **Implementación Múltiple**: Una clase puede implementar múltiples interfaces.
- **Herencia de Interfaces**: Las interfaces pueden heredar de otras interfaces.

## 2. Definición de una Interfaz

Para definir una interfaz en Java, se utiliza la palabra clave `interface`.

### Ejemplo de Definición de Interfaz

```java
public interface Vehiculo {
    // Método abstracto (sin implementación)
    void conducir();

    // Método abstracto
    void frenar();

    // Constante
    int VELOCIDAD_MAXIMA = 120;
}
```

## 3. Implementación de una Interfaz

Una clase implementa una interfaz usando la palabra clave `implements`. La clase debe proporcionar implementaciones concretas para todos los métodos abstractos de la interfaz.

### Ejemplo de Implementación de Interfaz

```java
public class Coche implements Vehiculo {
    @Override
    public void conducir() {
        System.out.println("Conduciendo un coche");
    }

    @Override
    public void frenar() {
        System.out.println("Frenando el coche");
    }
}

public class Bicicleta implements Vehiculo {
    @Override
    public void conducir() {
        System.out.println("Conduciendo una bicicleta");
    }

    @Override
    public void frenar() {
        System.out.println("Frenando la bicicleta");
    }
}
```

## 4. Uso de Interfaces

Una interfaz puede ser utilizada para referirse a cualquier objeto que implemente esa interfaz, permitiendo el polimorfismo.

### Ejemplo de Uso de Interfaces

```java
public class Main {
    public static void main(String[] args) {
        Vehiculo miCoche = new Coche();
        Vehiculo miBicicleta = new Bicicleta();

        miCoche.conducir();
        miCoche.frenar();

        miBicicleta.conducir();
        miBicicleta.frenar();
    }
}
```

## 5. Herencia de Interfaces

Las interfaces pueden heredar de otras interfaces. Una interfaz heredada puede tener métodos adicionales, y cualquier clase que implemente la interfaz derivada debe proporcionar implementaciones para todos los métodos.

### Ejemplo de Herencia de Interfaces

```java
public interface Vehiculo {
    void conducir();
    void frenar();
}

public interface Navegacion extends Vehiculo {
    void navegar();
}

public class Barco implements Navegacion {
    @Override
    public void conducir() {
        System.out.println("Navegando el barco");
    }

    @Override
    public void frenar() {
        System.out.println("Frenando el barco");
    }

    @Override
    public void navegar() {
        System.out.println("Navegando en el mar");
    }
}
```

## 6. Interfaces Funcionales (Java 8+)

Una interfaz funcional es una interfaz que tiene un solo método abstracto. Las interfaces funcionales son utilizadas en el contexto de expresiones lambda y referencias a métodos.

### Ejemplo de Interfaz Funcional

```java
@FunctionalInterface
public interface Calculadora {
    int operar(int a, int b);
}

public class Main {
    public static void main(String[] args) {
        Calculadora suma = (a, b) -> a + b;
        Calculadora resta = (a, b) -> a - b;

        System.out.println("Suma: " + suma.operar(5, 3));
        System.out.println("Resta: " + resta.operar(5, 3));
    }
}
```

## Conclusión

Las interfaces en Java proporcionan una manera de definir contratos que las clases deben cumplir. Permiten la abstracción y el polimorfismo, facilitando la implementación de código flexible y reutilizable. Con la introducción de las interfaces funcionales en Java 8, también se han convertido en una herramienta clave para trabajar con expresiones lambda y programación funcional.
