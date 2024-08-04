# Instanciación de Objetos

En Java, los objetos son instancias de clases. La instanciación de un objeto implica crear un nuevo objeto a partir de una clase y asignarlo a una variable. Esta guía cubrirá los pasos para instanciar objetos, así como algunos conceptos relacionados.

## 1. Sintaxis Básica de la Instanciación

La instanciación de un objeto en Java se realiza utilizando la palabra clave `new`, seguida del constructor de la clase.

### Sintaxis

```java
NombreDeLaClase nombreDelObjeto = new NombreDeLaClase(parametrosDelConstructor);
```

- **`NombreDeLaClase`**: El nombre de la clase de la cual se está creando el objeto.
- **`nombreDelObjeto`**: El nombre de la variable que referenciará al nuevo objeto.
- **`new`**: Palabra clave utilizada para crear un nuevo objeto.
- **`NombreDeLaClase(parametrosDelConstructor)`**: Llamada al constructor de la clase, con los parámetros necesarios.

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
}

public class Main {
    public static void main(String[] args) {
        // Instanciación de un objeto de la clase Persona
        Persona persona1 = new Persona("Juan", 25);
    }
}
```

## 2. Uso de Objetos

Una vez que un objeto ha sido instanciado, se pueden acceder a sus campos y métodos utilizando la variable que referencia al objeto.

### Ejemplo

```java
public class Main {
    public static void main(String[] args) {
        // Instanciación de un objeto de la clase Persona
        Persona persona1 = new Persona("Juan", 25);

        // Acceso a los campos del objeto
        System.out.println("Nombre: " + persona1.nombre);
        System.out.println("Edad: " + persona1.edad);

        // Invocación de métodos del objeto
        persona1.mostrarInfo();
    }
}
```

### Métodos de la Clase `Persona`

```java
public class Persona {
    String nombre;
    int edad;

    // Constructor
    public Persona(String nombre, int edad) {
        this.nombre = nombre;
        this.edad = edad;
    }

    // Método para mostrar la información de la persona
    public void mostrarInfo() {
        System.out.println("Nombre: " + nombre + ", Edad: " + edad);
    }
}
```

## 3. Creación de Múltiples Objetos

Se pueden crear múltiples instancias de una clase, cada una con su propio estado.

### Ejemplo

```java
public class Main {
    public static void main(String[] args) {
        // Crear múltiples objetos de la clase Persona
        Persona persona1 = new Persona("Juan", 25);
        Persona persona2 = new Persona("María", 30);

        // Acceso a los campos y métodos de los objetos
        persona1.mostrarInfo();
        persona2.mostrarInfo();
    }
}
```

## 4. Comparación de Objetos

Para comparar objetos en Java, se pueden utilizar los métodos `equals()` y `hashCode()`. El operador `==` compara referencias de objetos, no sus contenidos.

### Ejemplo

```java
public class Main {
    public static void main(String[] args) {
        Persona persona1 = new Persona("Juan", 25);
        Persona persona2 = new Persona("Juan", 25);
        Persona persona3 = persona1;

        // Comparación usando ==
        System.out.println(persona1 == persona2); // false
        System.out.println(persona1 == persona3); // true

        // Comparación usando equals()
        System.out.println(persona1.equals(persona2)); // Depende de la implementación de equals()
    }
}
```

### Implementación de `equals()` y `hashCode()`

Para que `equals()` y `hashCode()` funcionen correctamente, es recomendable sobreescribirlos en la clase.

```java
public class Persona {
    String nombre;
    int edad;

    // Constructor, getters, setters, etc.

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Persona persona = (Persona) obj;
        return edad == persona.edad && Objects.equals(nombre, persona.nombre);
    }

    @Override
    public int hashCode() {
        return Objects.hash(nombre, edad);
    }
}
```

## 5. Instanciación de Clases Internas

Las clases internas son clases definidas dentro de otras clases. Para instanciar una clase interna, primero se debe instanciar la clase externa.

### Ejemplo

```java
public class Externa {
    class Interna {
        void mostrarMensaje() {
            System.out.println("Hola desde la clase interna.");
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Externa externa = new Externa();
        Externa.Interna interna = externa.new Interna();
        interna.mostrarMensaje();
    }
}
```

## Conclusión

La instanciación de objetos en Java es un concepto fundamental que permite crear y manipular instancias de clases. Comprender cómo instanciar objetos, acceder a sus campos y métodos, y comparar objetos te permitirá escribir programas Java más eficientes y estructurados.
