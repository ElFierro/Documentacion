# Métodos Sobrescritos

La sobrescritura de métodos (method overriding) es una característica de la programación orientada a objetos que permite a una subclase proporcionar una implementación específica de un método que ya está definido en su superclase.

## 1. ¿Qué es la Sobrescritura de Métodos?

La sobrescritura ocurre cuando una subclase define un método que ya está presente en su superclase con la misma firma (nombre, parámetros y tipo de retorno). Esto permite a la subclase ofrecer una versión específica del método que puede comportarse de manera diferente al método de la superclase.

### Reglas para la Sobrescritura

1. El método en la subclase debe tener el mismo nombre, tipo de retorno y parámetros que el método en la superclase.
2. El método en la subclase no puede tener un nivel de acceso más restrictivo que el método en la superclase.
3. El método en la subclase puede lanzar las mismas excepciones o menos que el método en la superclase.

## 2. Ejemplo de Sobrescritura de Métodos

### Superclase

```java
public class Animal {
    public void hacerSonido() {
        System.out.println("El animal hace un sonido");
    }
}
```

### Subclase

```java
public class Perro extends Animal {
    @Override
    public void hacerSonido() {
        System.out.println("El perro ladra");
    }
}
```

### Uso en el Código

```java
public class Main {
    public static void main(String[] args) {
        Animal miAnimal = new Animal();
        miAnimal.hacerSonido(); // Llama al método de la superclase

        Perro miPerro = new Perro();
        miPerro.hacerSonido(); // Llama al método sobrescrito en la subclase
    }
}
```

## 3. Uso de `super` en Métodos Sobrescritos

La palabra clave `super` se puede usar dentro de un método sobrescrito para llamar al método de la superclase.

### Ejemplo

```java
public class Animal {
    public void hacerSonido() {
        System.out.println("El animal hace un sonido");
    }
}

public class Perro extends Animal {
    @Override
    public void hacerSonido() {
        super.hacerSonido(); // Llama al método de la superclase
        System.out.println("El perro ladra");
    }
}

public class Main {
    public static void main(String[] args) {
        Perro miPerro = new Perro();
        miPerro.hacerSonido();
    }
}
```

## 4. Ventajas de la Sobrescritura de Métodos

- **Polimorfismo**: Permite que una clase hija proporcione una implementación específica de un método que ya está definido en la clase padre, facilitando el polimorfismo.
- **Reutilización de Código**: Permite que las clases reutilicen métodos comunes y, al mismo tiempo, modifiquen comportamientos específicos según sea necesario.
- **Flexibilidad**: Facilita la extensión de funcionalidades de una manera controlada y específica.

## 5. Anotación `@Override`

La anotación `@Override` se utiliza para indicar que un método está sobrescribiendo un método de la superclase. Aunque es opcional, es una buena práctica usarla porque el compilador verifica que realmente se esté sobrescribiendo un método.

### Ejemplo con `@Override`

```java
public class Animal {
    public void hacerSonido() {
        System.out.println("El animal hace un sonido");
    }
}

public class Gato extends Animal {
    @Override
    public void hacerSonido() {
        System.out.println("El gato maúlla");
    }
}

public class Main {
    public static void main(String[] args) {
        Gato miGato = new Gato();
        miGato.hacerSonido(); // Llama al método sobrescrito en la subclase
    }
}
```

## Conclusión

La sobrescritura de métodos es una herramienta poderosa en Java que permite a las subclases proporcionar implementaciones específicas de métodos definidos en sus superclases. Usar `@Override` y `super` de manera adecuada asegura que el código sea claro, eficiente y fácil de mantener.
