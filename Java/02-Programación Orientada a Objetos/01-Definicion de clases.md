# Definición de Clases

En Java, una clase es una plantilla para crear objetos y definir sus propiedades y comportamientos. Las clases son fundamentales en la programación orientada a objetos, ya que permiten organizar y estructurar el código de manera modular y reutilizable.

## 1. Sintaxis Básica de una Clase

Una clase en Java se define utilizando la palabra clave `class`, seguida del nombre de la clase. El cuerpo de la clase se encierra entre llaves `{}`.

### Sintaxis

```java
public class NombreDeLaClase {
    // Campos (variables) de la clase
    // Métodos de la clase
}
```

- **`public`**: Modificador de acceso que indica que la clase es accesible desde cualquier otra clase. Otros modificadores de acceso incluyen `private`, `protected`, y el acceso predeterminado (sin modificador).
- **`class`**: Palabra clave utilizada para declarar una clase.
- **`NombreDeLaClase`**: Nombre de la clase. Debe comenzar con una letra mayúscula por convención.

### Ejemplo

```java
public class Persona {
    // Campos de la clase
    String nombre;
    int edad;

    // Método de la clase
    public void mostrarInfo() {
        System.out.println("Nombre: " + nombre + ", Edad: " + edad);
    }
}
```

## 2. Campos (Variables de Clase)

Los campos son variables que pertenecen a la clase. Pueden ser de cualquier tipo de dato y se utilizan para almacenar el estado de un objeto.

### Ejemplo

```java
public class Coche {
    // Campos de la clase
    String marca;
    String modelo;
    int año;
}
```

## 3. Métodos

Los métodos son funciones definidas dentro de una clase que describen los comportamientos de los objetos de la clase. Los métodos pueden tener parámetros y devolver valores.

### Ejemplo

```java
public class Calculadora {
    // Método que suma dos números
    public int sumar(int a, int b) {
        return a + b;
    }

    // Método que resta dos números
    public int restar(int a, int b) {
        return a - b;
    }
}
```

## 4. Constructores

Los constructores son métodos especiales que se llaman cuando se crea un nuevo objeto de la clase. Tienen el mismo nombre que la clase y no tienen un tipo de retorno.

### Ejemplo

```java
public class Persona {
    String nombre;
    int edad;

    // Constructor
    public Persona(String nombre, int edad) {
        this.nombre = nombre;
        this.edad = edad;
    }

    public void mostrarInfo() {
        System.out.println("Nombre: " + nombre + ", Edad: " + edad);
    }
}
```

### Uso del Constructor

```java
public class Main {
    public static void main(String[] args) {
        // Crear un objeto de la clase Persona utilizando el constructor
        Persona persona = new Persona("Juan", 25);
        persona.mostrarInfo(); // Salida: Nombre: Juan, Edad: 25
    }
}
```

## 5. Modificadores de Acceso

Los modificadores de acceso controlan la visibilidad de las clases, campos y métodos. Los más comunes son:

- **`public`**: Accesible desde cualquier otra clase.
- **`private`**: Accesible solo dentro de la misma clase.
- **`protected`**: Accesible dentro del mismo paquete y por subclases.
- **Acceso predeterminado (sin modificador)**: Accesible solo dentro del mismo paquete.

### Ejemplo

```java
public class Persona {
    // Campos con diferentes modificadores de acceso
    public String nombre;
    private int edad;
    protected String direccion;
}
```

## 6. Herencia

La herencia permite que una clase herede propiedades y métodos de otra clase. La clase que hereda se llama subclase, y la clase de la cual se hereda se llama superclase.

### Ejemplo

```java
// Superclase
public class Animal {
    public void comer() {
        System.out.println("El animal está comiendo");
    }
}

// Subclase
public class Perro extends Animal {
    public void ladrar() {
        System.out.println("El perro está ladrando");
    }
}
```

### Uso de Herencia

```java
public class Main {
    public static void main(String[] args) {
        Perro perro = new Perro();
        perro.comer(); // Llamada al método heredado de la superclase
        perro.ladrar(); // Llamada al método de la subclase
    }
}
```

## Conclusión

Las clases son una parte fundamental de la programación en Java, ya que permiten definir las propiedades y comportamientos de los objetos. Comprender cómo definir y utilizar clases, constructores, métodos y modificadores de acceso te permitirá escribir programas Java más estructurados y eficientes.
