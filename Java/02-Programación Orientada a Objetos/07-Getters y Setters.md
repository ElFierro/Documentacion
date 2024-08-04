# Getters y Setters

Los getters y setters son métodos especiales que permiten acceder y modificar los atributos privados de una clase. Son una parte esencial del principio de encapsulación en la programación orientada a objetos.

## 1. ¿Qué son los Getters y Setters?

- **Getters**: Métodos que se utilizan para obtener el valor de un atributo.
- **Setters**: Métodos que se utilizan para establecer o modificar el valor de un atributo.

Al definir los atributos de una clase como privados, se protege el acceso directo a estos desde fuera de la clase. Los getters y setters proporcionan una manera controlada de acceder y modificar estos atributos.

## 2. Definición de Getters y Setters

### Ejemplo Básico

Supongamos que tenemos una clase `Persona` con atributos privados `nombre` y `edad`.

```java
public class Persona {
    private String nombre;
    private int edad;

    // Getter para el nombre
    public String getNombre() {
        return nombre;
    }

    // Setter para el nombre
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    // Getter para la edad
    public int getEdad() {
        return edad;
    }

    // Setter para la edad
    public void setEdad(int edad) {
        this.edad = edad;
    }
}
```

### Uso de Getters y Setters

```java
public class Main {
    public static void main(String[] args) {
        Persona persona = new Persona();

        // Usar setters para establecer valores
        persona.setNombre("Juan");
        persona.setEdad(30);

        // Usar getters para obtener valores
        System.out.println("Nombre: " + persona.getNombre());
        System.out.println("Edad: " + persona.getEdad());
    }
}
```

## 3. Ventajas de Usar Getters y Setters

- **Encapsulación**: Protegen los atributos de acceso no autorizado y modificación directa.
- **Control**: Permiten agregar lógica adicional al obtener o establecer valores. Por ejemplo, validar datos antes de establecer un valor.
- **Mantenibilidad**: Facilitan el mantenimiento y modificación del código, ya que se puede cambiar la implementación interna sin afectar a las clases externas que utilizan estos métodos.

## 4. Ejemplo con Validación en Setters

```java
public class Persona {
    private String nombre;
    private int edad;

    // Getter para el nombre
    public String getNombre() {
        return nombre;
    }

    // Setter para el nombre
    public void setNombre(String nombre) {
        if (nombre != null && !nombre.isEmpty()) {
            this.nombre = nombre;
        } else {
            System.out.println("Nombre no puede estar vacío");
        }
    }

    // Getter para la edad
    public int getEdad() {
        return edad;
    }

    // Setter para la edad
    public void setEdad(int edad) {
        if (edad > 0) {
            this.edad = edad;
        } else {
            System.out.println("Edad debe ser mayor a 0");
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Persona persona = new Persona();

        persona.setNombre("Ana");
        persona.setEdad(25);

        System.out.println("Nombre: " + persona.getNombre());
        System.out.println("Edad: " + persona.getEdad());

        // Intentar establecer valores inválidos
        persona.setNombre("");
        persona.setEdad(-5);
    }
}
```

## 5. Convenciones de Nombres

- **Getters**: El nombre del método empieza con `get` seguido del nombre del atributo con la primera letra en mayúscula. Para atributos booleanos, el getter puede empezar con `is`.
  - Ejemplo: `getNombre()`, `isActivo()`
- **Setters**: El nombre del método empieza con `set` seguido del nombre del atributo con la primera letra en mayúscula.
  - Ejemplo: `setNombre()`, `setActivo()`

## Conclusión

Los getters y setters son fundamentales para implementar la encapsulación en Java. Permiten acceder y modificar los atributos de manera controlada y segura, mejorando la mantenibilidad y robustez del código.
