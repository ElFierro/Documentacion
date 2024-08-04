# Constructores

Los constructores en Java son métodos especiales que se utilizan para inicializar objetos. Se invocan automáticamente cuando se crea una instancia de una clase. A diferencia de los métodos regulares, los constructores tienen el mismo nombre que la clase y no tienen un tipo de retorno, ni siquiera `void`.

## 1. Definición y Uso de Constructores

Un constructor se define dentro de la clase. Puede tener parámetros que permiten inicializar el objeto con valores específicos.

### Sintaxis

```java
class NombreDeLaClase {
    // Constructor
    NombreDeLaClase(parametros) {
        // Inicialización
    }
}
```

### Ejemplo Básico

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

public class Main {
    public static void main(String[] args) {
        // Crear una instancia de Persona
        Persona persona = new Persona("Ana", 28);
        persona.mostrarInfo();
    }
}
```

## 2. Tipos de Constructores

### 2.1 Constructor por Defecto

Si no se define ningún constructor en una clase, Java proporciona automáticamente un constructor por defecto sin parámetros. Este constructor inicializa los atributos con valores predeterminados (0 para números, `false` para booleanos, y `null` para referencias de objetos).

### Ejemplo

```java
public class Persona {
    String nombre;
    int edad;

    // Constructor por defecto (implícito)
    public Persona() {
        this.nombre = "Desconocido";
        this.edad = 0;
    }

    public void mostrarInfo() {
        System.out.println("Nombre: " + nombre + ", Edad: " + edad);
    }
}

public class Main {
    public static void main(String[] args) {
        // Crear una instancia de Persona usando el constructor por defecto
        Persona persona = new Persona();
        persona.mostrarInfo();
    }
}
```

### 2.2 Constructor Parametrizado

Un constructor parametrizado permite pasar valores específicos al crear una instancia del objeto. Esto permite inicializar los atributos con valores personalizados.

### Ejemplo

```java
public class Coche {
    String marca;
    String modelo;
    int año;

    // Constructor parametrizado
    public Coche(String marca, String modelo, int año) {
        this.marca = marca;
        this.modelo = modelo;
        this.año = año;
    }

    public void mostrarInfo() {
        System.out.println("Marca: " + marca + ", Modelo: " + modelo + ", Año: " + año);
    }
}

public class Main {
    public static void main(String[] args) {
        // Crear una instancia de Coche usando el constructor parametrizado
        Coche coche = new Coche("Toyota", "Corolla", 2020);
        coche.mostrarInfo();
    }
}
```

### 2.3 Sobrecarga de Constructores

Al igual que los métodos, los constructores también pueden sobrecargarse para permitir diferentes formas de inicializar un objeto.

### Ejemplo

```java
public class Rectangulo {
    int ancho;
    int alto;

    // Constructor por defecto
    public Rectangulo() {
        this.ancho = 0;
        this.alto = 0;
    }

    // Constructor parametrizado
    public Rectangulo(int ancho, int alto) {
        this.ancho = ancho;
        this.alto = alto;
    }

    public void mostrarInfo() {
        System.out.println("Ancho: " + ancho + ", Alto: " + alto);
    }
}

public class Main {
    public static void main(String[] args) {
        // Crear instancias de Rectangulo usando diferentes constructores
        Rectangulo rect1 = new Rectangulo();
        Rectangulo rect2 = new Rectangulo(5, 10);

        rect1.mostrarInfo();
        rect2.mostrarInfo();
    }
}
```

## 3. Invocación de Constructores

### 3.1 Uso del Constructor `this()`

En una clase, se puede invocar un constructor desde otro constructor utilizando la palabra clave `this()`. Esto es útil para evitar la duplicación de código.

### Ejemplo

```java
public class Triangulo {
    int base;
    int altura;

    // Constructor por defecto
    public Triangulo() {
        this(0, 0); // Invocar el constructor parametrizado
    }

    // Constructor parametrizado
    public Triangulo(int base, int altura) {
        this.base = base;
        this.altura = altura;
    }

    public void mostrarInfo() {
        System.out.println("Base: " + base + ", Altura: " + altura);
    }
}

public class Main {
    public static void main(String[] args) {
        // Crear instancias de Triangulo usando diferentes constructores
        Triangulo tri1 = new Triangulo();
        Triangulo tri2 = new Triangulo(3, 6);

        tri1.mostrarInfo();
        tri2.mostrarInfo();
    }
}
```

## 4. Consideraciones

- **Constructores no heredables**: Los constructores no se heredan, pero la clase derivada puede llamar al constructor de la clase base utilizando `super()`.
- **Inicialización de atributos**: Es una buena práctica inicializar todos los atributos en el constructor para garantizar que el objeto esté en un estado válido.
- **Orden de ejecución**: Si una clase tiene una jerarquía, los constructores de la clase base se ejecutan antes que los de la clase derivada.

## Conclusión

Los constructores son fundamentales para la creación y la inicialización de objetos en Java. Entender cómo definir y utilizar constructores permite escribir código más robusto y fácil de mantener.
