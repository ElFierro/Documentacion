# Tipos de Polimorfismo

El polimorfismo es una característica fundamental de la programación orientada a objetos que permite a los objetos adoptar muchas formas. En Java, hay principalmente dos tipos de polimorfismo: **polimorfismo en tiempo de compilación** y **polimorfismo en tiempo de ejecución**.

## 1. Polimorfismo en Tiempo de Compilación (Static Polymorphism)

También conocido como **polimorfismo de sobrecarga** (method overloading), se refiere a la capacidad de una clase para tener múltiples métodos con el mismo nombre pero con diferentes firmas (diferentes parámetros).

### Ejemplo de Sobrecarga de Métodos

```java
public class Calculadora {
    // Método para sumar dos enteros
    public int sumar(int a, int b) {
        return a + b;
    }

    // Método para sumar tres enteros
    public int sumar(int a, int b, int c) {
        return a + b + c;
    }

    // Método para sumar dos números de punto flotante
    public double sumar(double a, double b) {
        return a + b;
    }
}

public class Main {
    public static void main(String[] args) {
        Calculadora calc = new Calculadora();
        System.out.println("Suma de dos enteros: " + calc.sumar(5, 10));
        System.out.println("Suma de tres enteros: " + calc.sumar(5, 10, 15));
        System.out.println("Suma de dos dobles: " + calc.sumar(5.5, 10.5));
    }
}
```

## 2. Polimorfismo en Tiempo de Ejecución (Dynamic Polymorphism)

También conocido como **polimorfismo de sobreescritura** (method overriding), se refiere a la capacidad de una subclase para proporcionar una implementación específica de un método que ya está definido en su superclase. La decisión de qué método se debe invocar se toma en tiempo de ejecución.

### Ejemplo de Sobreescritura de Métodos

```java
public class Animal {
    public void hacerSonido() {
        System.out.println("El animal hace un sonido");
    }
}

public class Perro extends Animal {
    @Override
    public void hacerSonido() {
        System.out.println("El perro ladra");
    }
}

public class Main {
    public static void main(String[] args) {
        Animal miAnimal = new Perro(); // Polimorfismo en tiempo de ejecución
        miAnimal.hacerSonido(); // Llama al método sobrescrito en la subclase
    }
}
```

## 3. Polimorfismo de Inclusión (Subtipado)

Este tipo de polimorfismo permite que un objeto de una subclase sea tratado como un objeto de su superclase. Esto se logra a través de la herencia y permite utilizar una interfaz común para trabajar con diferentes tipos de objetos.

### Ejemplo de Polimorfismo de Inclusión

```java
public class Animal {
    public void hacerSonido() {
        System.out.println("El animal hace un sonido");
    }
}

public class Gato extends Animal {
    @Override
    public void hacerSonido() {
        System.out.println("El gato maúlla");
    }
}

public class Main {
    public static void main(String[] args) {
        Animal miAnimal = new Gato(); // Polimorfismo de inclusión
        miAnimal.hacerSonido(); // Llama al método sobrescrito en la subclase
    }
}
```

## 4. Polimorfismo de Interfaces

Java permite definir interfaces que las clases pueden implementar. Una interfaz puede ser implementada por múltiples clases, y una clase puede implementar múltiples interfaces. Esto proporciona flexibilidad y reutilización de código.

### Ejemplo de Polimorfismo de Interfaces

```java
interface Vehiculo {
    void conducir();
}

public class Coche implements Vehiculo {
    @Override
    public void conducir() {
        System.out.println("Conduciendo un coche");
    }
}

public class Bicicleta implements Vehiculo {
    @Override
    public void conducir() {
        System.out.println("Conduciendo una bicicleta");
    }
}

public class Main {
    public static void main(String[] args) {
        Vehiculo miVehiculo1 = new Coche(); // Polimorfismo de interfaces
        miVehiculo1.conducir();

        Vehiculo miVehiculo2 = new Bicicleta(); // Polimorfismo de interfaces
        miVehiculo2.conducir();
    }
}
```

## Conclusión

El polimorfismo en Java permite escribir código más flexible y reutilizable, facilitando el mantenimiento y la extensión del código. Comprender los tipos de polimorfismo ayuda a diseñar sistemas de manera más efectiva y a aprovechar al máximo las capacidades de la programación orientada a objetos.
