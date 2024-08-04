# Métodos y Constructores

En Java, los métodos y constructores son elementos esenciales para la definición y el funcionamiento de las clases. Los métodos definen las acciones que los objetos pueden realizar, mientras que los constructores inicializan los objetos cuando se crean.

## 1. Creación y Uso de Métodos

Los métodos son bloques de código que realizan una tarea específica. Los métodos pueden aceptar parámetros, devolver valores y ser llamados desde otros métodos o clases.

### Ejemplo de Creación y Uso de Métodos

```java
public class Calculadora {
    // Método para sumar dos números
    public int sumar(int a, int b) {
        return a + b;
    }

    // Método para restar dos números
    public int restar(int a, int b) {
        return a - b;
    }
    
    // Método para multiplicar dos números
    public int multiplicar(int a, int b) {
        return a * b;
    }

    // Método para dividir dos números
    public double dividir(double a, double b) {
        if (b == 0) {
            throw new IllegalArgumentException("Divisor no puede ser cero.");
        }
        return a / b;
    }
}
```

### Ejemplo de Uso de Métodos

```java
public class TestCalculadora {
    public static void main(String[] args) {
        // Crear una instancia de la clase Calculadora
        Calculadora calc = new Calculadora();

        // Llamar a los métodos de la clase Calculadora
        int suma = calc.sumar(5, 3);
        int resta = calc.restar(5, 3);
        int multiplicacion = calc.multiplicar(5, 3);
        double division = calc.dividir(5, 3);

        // Mostrar los resultados
        System.out.println("Suma: " + suma);
        System.out.println("Resta: " + resta);
        System.out.println("Multiplicación: " + multiplicacion);
        System.out.println("División: " + division);
    }
}
```

## 2. Sobrecarga de Métodos

La sobrecarga de métodos permite definir múltiples métodos con el mismo nombre pero diferentes parámetros. Esto facilita la creación de métodos con diferentes versiones que realizan tareas similares.

### Ejemplo de Sobrecarga de Métodos

```java
public class Sobrecarga {
    // Método para imprimir un mensaje
    public void imprimir(String mensaje) {
        System.out.println(mensaje);
    }

    // Sobrecarga del método para imprimir un mensaje con un número
    public void imprimir(String mensaje, int numero) {
        System.out.println(mensaje + " " + numero);
    }

    // Sobrecarga del método para imprimir un mensaje con un número y un formato
    public void imprimir(String mensaje, int numero, boolean formato) {
        if (formato) {
            System.out.printf("%s: %d%n", mensaje, numero);
        } else {
            System.out.println(mensaje + " " + numero);
        }
    }
}
```

### Ejemplo de Uso de Sobrecarga de Métodos

```java
public class TestSobrecarga {
    public static void main(String[] args) {
        // Crear una instancia de la clase Sobrecarga
        Sobrecarga sob = new Sobrecarga();

        // Llamar a los métodos sobrecargados
        sob.imprimir("Mensaje");
        sob.imprimir("Mensaje", 10);
        sob.imprimir("Mensaje", 10, true);
    }
}
```

## 3. Constructores

Los constructores son métodos especiales utilizados para inicializar objetos cuando se crean. Un constructor tiene el mismo nombre que la clase y no tiene tipo de retorno.

### Ejemplo de Constructores

```java
public class Persona {
    private String nombre;
    private int edad;

    // Constructor sin parámetros
    public Persona() {
        this.nombre = "Desconocido";
        this.edad = 0;
    }

    // Constructor con parámetros
    public Persona(String nombre, int edad) {
        this.nombre = nombre;
        this.edad = edad;
    }

    // Método para mostrar información de la persona
    public void mostrarInfo() {
        System.out.println("Nombre: " + nombre);
        System.out.println("Edad: " + edad);
    }
}
```

### Ejemplo de Uso de Constructores

```java
public class TestPersona {
    public static void main(String[] args) {
        // Crear una instancia de Persona utilizando el constructor sin parámetros
        Persona persona1 = new Persona();
        persona1.mostrarInfo();

        // Crear una instancia de Persona utilizando el constructor con parámetros
        Persona persona2 = new Persona("Carlos", 25);
        persona2.mostrarInfo();
    }
}
```

## Conclusión

Los métodos y constructores son fundamentales en la programación orientada a objetos en Java. Los métodos definen el comportamiento de las clases, mientras que los constructores inicializan los objetos. La sobrecarga de métodos permite una mayor flexibilidad en la definición de métodos con nombres similares pero diferentes parámetros.
