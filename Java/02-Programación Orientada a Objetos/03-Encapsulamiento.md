# Encapsulamiento

El encapsulamiento es un principio fundamental de la programación orientada a objetos que implica ocultar los detalles internos de una clase y proporcionar acceso a esos detalles a través de métodos públicos. En Java, esto se logra utilizando modificadores de acceso y métodos getter y setter.

## 1. Modificadores de Acceso

Los modificadores de acceso controlan la visibilidad de los miembros (atributos y métodos) de una clase. Los principales modificadores de acceso en Java son `public`, `private` y `protected`.

### 1.1 `public`

El modificador `public` permite que el miembro sea accesible desde cualquier otra clase.

#### Ejemplo

```java
public class EjemploPublico {
    public int valorPublico;

    public void metodoPublico() {
        System.out.println("Método público.");
    }
}
```

### 1.2 `private`

El modificador `private` restringe el acceso al miembro solo dentro de la misma clase. Ninguna otra clase puede acceder a miembros privados directamente.

#### Ejemplo

```java
public class EjemploPrivado {
    private int valorPrivado;

    private void metodoPrivado() {
        System.out.println("Método privado.");
    }
}
```

### 1.3 `protected`

El modificador `protected` permite que el miembro sea accesible dentro de la misma clase, dentro de clases del mismo paquete y en subclases, incluso si están en paquetes diferentes.

#### Ejemplo

```java
public class EjemploProtegido {
    protected int valorProtegido;

    protected void metodoProtegido() {
        System.out.println("Método protegido.");
    }
}
```

## 2. Getters y Setters

Los getters y setters son métodos públicos utilizados para acceder y modificar los valores de los atributos privados de una clase. Permiten controlar cómo se accede y se modifica la información encapsulada en la clase.

### 2.1 Definición de Getters y Setters

- **Getter**: Método utilizado para obtener el valor de un atributo privado.
- **Setter**: Método utilizado para establecer el valor de un atributo privado.

#### Ejemplo de Getters y Setters

```java
public class Persona {
    private String nombre;
    private int edad;

    // Getter para nombre
    public String getNombre() {
        return nombre;
    }

    // Setter para nombre
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    // Getter para edad
    public int getEdad() {
        return edad;
    }

    // Setter para edad
    public void setEdad(int edad) {
        if (edad >= 0) { // Validación simple
            this.edad = edad;
        } else {
            System.out.println("La edad no puede ser negativa.");
        }
    }
}
```

### Ejemplo de Uso de Getters y Setters

```java
public class TestEncapsulamiento {
    public static void main(String[] args) {
        // Crear una instancia de Persona
        Persona persona = new Persona();

        // Establecer valores usando setters
        persona.setNombre("Ana");
        persona.setEdad(30);

        // Obtener valores usando getters
        System.out.println("Nombre: " + persona.getNombre());
        System.out.println("Edad: " + persona.getEdad());

        // Intentar establecer una edad negativa
        persona.setEdad(-5);
    }
}
```

## Conclusión

El encapsulamiento es crucial para proteger la integridad de los datos en una clase. Utilizando modificadores de acceso (`public`, `private`, `protected`) y métodos getter y setter, se puede controlar el acceso a los atributos de una clase y garantizar que se mantenga la coherencia y validez de los datos.
