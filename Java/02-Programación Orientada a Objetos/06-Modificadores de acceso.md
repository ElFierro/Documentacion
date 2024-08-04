# Modificadores de Acceso

Los modificadores de acceso en Java controlan la visibilidad de clases, métodos y atributos. Los principales modificadores de acceso son `public`, `private`, `protected` y el acceso por defecto (también conocido como acceso package-private).

## 1. Modificador `public`

El modificador `public` hace que la clase, método o atributo sea accesible desde cualquier otra clase en cualquier paquete.

### Ejemplo

```java
public class EjemploPublic {
    public String nombre;

    public void mostrarNombre() {
        System.out.println("Nombre: " + nombre);
    }
}

public class Main {
    public static void main(String[] args) {
        EjemploPublic obj = new EjemploPublic();
        obj.nombre = "Juan";
        obj.mostrarNombre();
    }
}
```

## 2. Modificador `private`

El modificador `private` restringe el acceso a la clase, método o atributo únicamente a la misma clase en la que se define. No es accesible desde otras clases, ni siquiera dentro del mismo paquete.

### Ejemplo

```java
public class EjemploPrivate {
    private String nombre;

    private void mostrarNombre() {
        System.out.println("Nombre: " + nombre);
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void llamarMostrarNombre() {
        mostrarNombre();
    }
}

public class Main {
    public static void main(String[] args) {
        EjemploPrivate obj = new EjemploPrivate();
        obj.setNombre("Ana");
        obj.llamarMostrarNombre();
    }
}
```

## 3. Modificador `protected`

El modificador `protected` permite el acceso a la clase, método o atributo dentro del mismo paquete y también desde las subclases, incluso si están en diferentes paquetes.

### Ejemplo

```java
public class EjemploProtected {
    protected String nombre;

    protected void mostrarNombre() {
        System.out.println("Nombre: " + nombre);
    }
}

public class Subclase extends EjemploProtected {
    public void cambiarNombre(String nuevoNombre) {
        nombre = nuevoNombre;
        mostrarNombre();
    }
}

public class Main {
    public static void main(String[] args) {
        Subclase obj = new Subclase();
        obj.cambiarNombre("Carlos");
    }
}
```

## 4. Acceso por Defecto (Package-Private)

Si no se especifica ningún modificador de acceso, la clase, método o atributo tiene acceso por defecto (package-private), lo que significa que es accesible solo dentro del mismo paquete.

### Ejemplo

```java
class EjemploDefault {
    String nombre;

    void mostrarNombre() {
        System.out.println("Nombre: " + nombre);
    }
}

public class Main {
    public static void main(String[] args) {
        EjemploDefault obj = new EjemploDefault();
        obj.nombre = "Luis";
        obj.mostrarNombre();
    }
}
```

## 5. Comparación de Modificadores de Acceso

| Modificador  | Clase | Paquete | Subclase (mismo paquete) | Subclase (diferente paquete) | Mundo |
|````````````--|``````-|`````````|````````````````````````--|``````````````````````````````|``````-|
| `public`     | Sí    | Sí      | Sí                       | Sí                           | Sí    |
| `protected`  | Sí    | Sí      | Sí                       | Sí                           | No    |
| Sin Modificador (Package-Private) | Sí | Sí      | Sí                       | No                           | No    |
| `private`    | Sí    | No      | No                       | No                           | No    |

## Conclusión

Los modificadores de acceso en Java son fundamentales para el control de la visibilidad y la encapsulación. Usar el modificador adecuado garantiza que la estructura del código sea segura y mantenible, permitiendo o restringiendo el acceso a los elementos según sea necesario.
