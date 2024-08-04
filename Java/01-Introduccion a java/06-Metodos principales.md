# Métodos Principales en Java

En Java, los métodos son bloques de código que realizan tareas específicas y se definen dentro de una clase. Existen varios tipos de métodos, pero aquí nos enfocaremos en los métodos principales que se usan con más frecuencia.

## 1. Método `main`

El método `main` es el punto de entrada de cualquier aplicación Java. Es el primer método que se ejecuta cuando se inicia el programa.

### Sintaxis

```java
public class NombreDeLaClase {
    public static void main(String[] args) {
        // Código a ejecutar
    }
}
```

### Detalles

- **`public`**: Modificador de acceso que indica que el método es accesible desde cualquier otra clase.
- **`static`**: Significa que el método pertenece a la clase, no a una instancia de la clase. No se necesita crear un objeto para invocar el método.
- **`void`**: El tipo de retorno del método, que significa que el método no devuelve ningún valor.
- **`String[] args`**: Parámetro que permite recibir argumentos de línea de comandos como una matriz de cadenas.

### Ejemplo

```java
public class HolaMundo {
    public static void main(String[] args) {
        System.out.println("¡Hola, mundo!");
    }
}
```

## 2. Métodos de Instancia

Los métodos de instancia son aquellos que pertenecen a una instancia específica de una clase. Para invocar estos métodos, se debe crear un objeto de la clase.

### Sintaxis

```java
public class MiClase {
    // Método de instancia
    public void miMetodo() {
        // Código del método
    }
}
```

### Detalles

- **`public`**: Modificador de acceso que permite que el método sea llamado desde cualquier otra clase.
- **`void`**: El tipo de retorno del método. Puede ser reemplazado por un tipo de dato específico si el método debe devolver un valor.

### Ejemplo

```java
public class Saludos {
    public void saludar() {
        System.out.println("Hola desde el método de instancia!");
    }

    public static void main(String[] args) {
        Saludos saludo = new Saludos(); // Crear una instancia de la clase
        saludo.saludar(); // Llamar al método de instancia
    }
}
```

## 3. Métodos Estáticos

Los métodos estáticos pertenecen a la clase en lugar de a una instancia específica. Pueden ser llamados directamente usando el nombre de la clase.

### Sintaxis

```java
public class Utilidades {
    // Método estático
    public static void imprimirMensaje() {
        System.out.println("Mensaje desde un método estático.");
    }
}
```

### Detalles

- **`public`**: Modificador de acceso.
- **`static`**: Indica que el método pertenece a la clase en lugar de a una instancia.

### Ejemplo

```java
public class Main {
    public static void main(String[] args) {
        Utilidades.imprimirMensaje(); // Llamar al método estático
    }
}
```

## 4. Métodos con Parámetros

Los métodos pueden aceptar parámetros para recibir valores que se usarán dentro del método.

### Sintaxis

```java
public class Calculadora {
    public int sumar(int a, int b) {
        return a + b;
    }
}
```

### Detalles

- Los parámetros se declaran entre paréntesis después del nombre del método.
- Los parámetros se utilizan dentro del método para realizar operaciones.

### Ejemplo

```java
public class Main {
    public static void main(String[] args) {
        Calculadora calc = new Calculadora();
        int resultado = calc.sumar(5, 3);
        System.out.println("Resultado de la suma: " + resultado);
    }
}
```

## 5. Métodos con Valor de Retorno

Un método puede devolver un valor a la parte del código que lo invoca. El tipo de retorno debe ser especificado en la declaración del método.

### Sintaxis

```java
public class Calculadora {
    public int multiplicar(int a, int b) {
        return a * b;
    }
}
```

### Detalles

- El tipo de retorno debe coincidir con el tipo de dato que el método devuelve.
- El método debe contener una sentencia `return` para devolver el valor.

### Ejemplo

```java
public class Main {
    public static void main(String[] args) {
        Calculadora calc = new Calculadora();
        int resultado = calc.multiplicar(4, 7);
        System.out.println("Resultado de la multiplicación: " + resultado);
    }
}
```

## Conclusión

Los métodos son fundamentales en Java para organizar el código y realizar tareas específicas. Comprender cómo definir y utilizar métodos te permitirá escribir programas más estructurados y mantenibles.
