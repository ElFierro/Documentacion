# Clases y Objetos

En Java, la programación orientada a objetos se basa en la definición de clases y la creación de objetos. Estos conceptos permiten organizar y estructurar el código de manera modular y reutilizable.

## 1. Definición de Clases

Una clase en Java es una plantilla o modelo para crear objetos. Define las propiedades (atributos) y comportamientos (métodos) que los objetos de esa clase tendrán.

### Ejemplo de Definición de Clase

```java
public class Persona {
    // Atributos (propiedades) de la clase
    private String nombre;
    private int edad;

    // Constructor de la clase
    public Persona(String nombre, int edad) {
        this.nombre = nombre;
        this.edad = edad;
    }

    // Método para mostrar información de la persona
    public void mostrarInfo() {
        System.out.println("Nombre: " + nombre);
        System.out.println("Edad: " + edad);
    }

    // Getters y Setters
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }
}
```

## 2. Instanciación de Objetos

Una vez que se ha definido una clase, se pueden crear objetos basados en esa clase. Instanciar un objeto significa crear una instancia concreta de una clase.

### Ejemplo de Instanciación de Objetos

```java
public class EjemploInstanciacion {
    public static void main(String[] args) {
        // Creación de un objeto de la clase Persona
        Persona persona1 = new Persona("Ana", 30);

        // Llamada a un método del objeto
        persona1.mostrarInfo();

        // Modificación de los atributos del objeto
        persona1.setNombre("Ana María");
        persona1.setEdad(31);

        // Mostrar la información actualizada
        persona1.mostrarInfo();
    }
}
```

### Explicación

- **Definición de Clase**: La clase `Persona` tiene dos atributos (`nombre` y `edad`), un constructor para inicializarlos, y un método (`mostrarInfo`) para mostrar la información de la persona. Además, incluye métodos getter y setter para acceder y modificar los atributos.
- **Instanciación de Objeto**: En el método `main`, se crea un objeto `persona1` de la clase `Persona` utilizando el constructor. Luego, se llaman métodos del objeto para mostrar y modificar sus atributos.

## Conclusión

Las clases y los objetos son fundamentales en la programación orientada a objetos. Las clases proporcionan una plantilla para crear objetos, mientras que los objetos son instancias concretas de esas clases. Entender cómo definir clases y cómo instanciar y manipular objetos es esencial para desarrollar aplicaciones en Java.
