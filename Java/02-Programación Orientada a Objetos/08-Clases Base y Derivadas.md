# Clases Base y Derivadas

La herencia es uno de los pilares fundamentales de la programación orientada a objetos. En Java, permite crear una nueva clase basada en una clase existente. La clase existente se llama clase base (o superclase), y la nueva clase se llama clase derivada (o subclase).

## 1. Definición de Clases Base (Superclases)

Una clase base es una clase que se utiliza como base para crear otras clases. Esta clase puede contener atributos y métodos que serán heredados por las clases derivadas.

### Ejemplo de Clase Base

```java
public class Animal {
    protected String nombre;

    public void comer() {
        System.out.println(nombre + " está comiendo.");
    }
}
```

## 2. Definición de Clases Derivadas (Subclases)

Una clase derivada hereda los atributos y métodos de una clase base. Puede agregar nuevos atributos y métodos, así como sobrescribir los métodos heredados.

### Sintaxis

Para definir una clase derivada, se utiliza la palabra clave `extends`.

```java
public class Perro extends Animal {
    public void ladrar() {
        System.out.println(nombre + " está ladrando.");
    }
}
```

### Ejemplo Completo

```java
public class Animal {
    protected String nombre;

    public Animal(String nombre) {
        this.nombre = nombre;
    }

    public void comer() {
        System.out.println(nombre + " está comiendo.");
    }
}

public class Perro extends Animal {
    public Perro(String nombre) {
        super(nombre); // Llamar al constructor de la superclase
    }

    public void ladrar() {
        System.out.println(nombre + " está ladrando.");
    }
}

public class Main {
    public static void main(String[] args) {
        Perro perro = new Perro("Firulais");
        perro.comer(); // Método heredado de la clase base
        perro.ladrar(); // Método de la clase derivada
    }
}
```

## 3. Sobrescritura de Métodos

La sobrescritura (override) permite que una subclase proporcione una implementación específica de un método que ya está definido en su superclase.

### Ejemplo

```java
public class Animal {
    protected String nombre;

    public Animal(String nombre) {
        this.nombre = nombre;
    }

    public void hacerSonido() {
        System.out.println(nombre + " está haciendo un sonido.");
    }
}

public class Perro extends Animal {
    public Perro(String nombre) {
        super(nombre);
    }

    @Override
    public void hacerSonido() {
        System.out.println(nombre + " está ladrando.");
    }
}

public class Main {
    public static void main(String[] args) {
        Animal animal = new Animal("Genérico");
        animal.hacerSonido();

        Perro perro = new Perro("Firulais");
        perro.hacerSonido();
    }
}
```

## 4. Uso de `super`

La palabra clave `super` se utiliza para referirse a la superclase inmediata de un objeto. Se puede usar para:
- Llamar al constructor de la superclase.
- Acceder a métodos y atributos de la superclase que han sido sobrescritos en la subclase.

### Ejemplo

```java
public class Animal {
    protected String nombre;

    public Animal(String nombre) {
        this.nombre = nombre;
    }

    public void hacerSonido() {
        System.out.println(nombre + " está haciendo un sonido.");
    }
}

public class Perro extends Animal {
    public Perro(String nombre) {
        super(nombre); // Llamar al constructor de la superclase
    }

    @Override
    public void hacerSonido() {
        super.hacerSonido(); // Llamar al método de la superclase
        System.out.println(nombre + " está ladrando.");
    }
}

public class Main {
    public static void main(String[] args) {
        Perro perro = new Perro("Firulais");
        perro.hacerSonido();
    }
}
```

## 5. Herencia Múltiple

Java no soporta la herencia múltiple directa (una clase no puede extender más de una clase). Sin embargo, se puede lograr un comportamiento similar usando interfaces.

## Conclusión

La herencia en Java permite reutilizar código y crear una jerarquía de clases que facilita la organización y mantenimiento del código. Las clases derivadas heredan atributos y métodos de las clases base y pueden sobrescribir métodos para proporcionar comportamientos específicos.
