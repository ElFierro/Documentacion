# Herencia y Polimorfismo

La herencia y el polimorfismo son conceptos fundamentales en la programación orientada a objetos. Estos conceptos permiten la reutilización del código y la creación de relaciones jerárquicas entre clases.

## 1. Clases Base y Derivadas

### 1.1 Clases Base

Una clase base (o clase padre) es la clase que proporciona atributos y métodos comunes que pueden ser heredados por otras clases.

### 1.2 Clases Derivadas

Una clase derivada (o clase hija) hereda atributos y métodos de una clase base. Puede agregar sus propios atributos y métodos, y también puede sobrescribir los métodos heredados.

#### Ejemplo de Clases Base y Derivadas

```java
// Clase base
public class Animal {
    protected String nombre;

    public Animal(String nombre) {
        this.nombre = nombre;
    }

    public void hacerSonido() {
        System.out.println("El animal hace un sonido.");
    }
}

// Clase derivada
public class Perro extends Animal {
    public Perro(String nombre) {
        super(nombre); // Llamada al constructor de la clase base
    }

    @Override
    public void hacerSonido() {
        System.out.println("El perro ladra.");
    }

    public void correr() {
        System.out.println(nombre + " está corriendo.");
    }
}
```

### Ejemplo de Uso de Clases Base y Derivadas

```java
public class TestHerencia {
    public static void main(String[] args) {
        // Crear una instancia de la clase derivada
        Perro perro = new Perro("Rex");

        // Llamada a un método sobrescrito
        perro.hacerSonido(); // Salida: El perro ladra.

        // Llamada a un método específico de la clase derivada
        perro.correr(); // Salida: Rex está corriendo.
    }
}
```

## 2. Métodos Sobrescritos

Los métodos sobrescritos son métodos en una clase derivada que tienen el mismo nombre, tipo de retorno y parámetros que un método en la clase base. La anotación `@Override` se utiliza para indicar que un método está sobrescribiendo un método de la clase base.

### Ejemplo de Métodos Sobrescritos

El ejemplo anterior de `Perro` muestra cómo se sobrescribe el método `hacerSonido` de la clase base `Animal`.

## 3. Tipos de Polimorfismo

El polimorfismo permite que un objeto pueda ser tratado como una instancia de su clase base. Hay dos tipos principales de polimorfismo en Java:

### 3.1 Polimorfismo de Método

El polimorfismo de método se refiere a la capacidad de un objeto para utilizar métodos sobrescritos. El tipo de objeto decide qué implementación del método se llama en tiempo de ejecución.

#### Ejemplo de Polimorfismo de Método

```java
public class TestPolimorfismo {
    public static void main(String[] args) {
        Animal miAnimal = new Perro("Rex");

        // Llamada al método sobrescrito
        miAnimal.hacerSonido(); // Salida: El perro ladra.
    }
}
```

### 3.2 Polimorfismo de Sobrecarga

El polimorfismo de sobrecarga ocurre cuando varios métodos tienen el mismo nombre pero diferentes parámetros dentro de la misma clase. La versión del método que se llama se determina en tiempo de compilación en función de los argumentos pasados.

#### Ejemplo de Polimorfismo de Sobrecarga

```java
public class Calculadora {
    public int sumar(int a, int b) {
        return a + b;
    }

    public double sumar(double a, double b) {
        return a + b;
    }
}

public class TestSobrecarga {
    public static void main(String[] args) {
        Calculadora calc = new Calculadora();

        // Llamada al método sobrecargado
        System.out.println(calc.sumar(5, 3)); // Salida: 8
        System.out.println(calc.sumar(5.5, 3.3)); // Salida: 8.8
    }
}
```

## Conclusión

La herencia permite crear nuevas clases basadas en clases existentes, promoviendo la reutilización del código y la extensión de funcionalidades. El polimorfismo permite que el mismo método tenga diferentes comportamientos según el tipo de objeto que lo invoca, y la sobrecarga de métodos permite definir múltiples versiones de un método con el mismo nombre pero diferentes parámetros.
