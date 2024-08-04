# Creación y Uso de Métodos

En Java, los métodos son bloques de código que realizan una tarea específica y se pueden invocar cuando se necesiten. Los métodos permiten organizar el código en unidades reutilizables y modulares.

## 1. Definición de Métodos

Un método en Java se define con un nombre, un tipo de retorno, y opcionalmente parámetros. La sintaxis básica es la siguiente:

### Sintaxis

```java
modificador_de_acceso tipo_de_retorno nombreDelMetodo(parametros) {
    // Cuerpo del método
}
```

- **`modificador_de_acceso`**: Controla el acceso al método (`public`, `private`, `protected`, o sin modificador).
- **`tipo_de_retorno`**: Especifica el tipo de dato que el método devolverá. Si el método no devuelve un valor, se utiliza `void`.
- **`nombreDelMetodo`**: Nombre del método que debe seguir las reglas de nomenclatura de identificadores en Java.
- **`parametros`**: Opcionalmente, una lista de parámetros que el método acepta.

### Ejemplo

```java
public class Calculadora {

    // Método que suma dos números enteros y devuelve el resultado
    public int sumar(int a, int b) {
        return a + b;
    }

    // Método que no devuelve ningún valor
    public void mostrarMensaje() {
        System.out.println("Hola, mundo!");
    }
}
```

## 2. Invocación de Métodos

Para invocar un método, se utiliza el nombre del método seguido de paréntesis. Si el método requiere parámetros, se pasan dentro de los paréntesis.

### Ejemplo

```java
public class Main {
    public static void main(String[] args) {
        Calculadora calc = new Calculadora();

        // Invocar el método sumar
        int resultado = calc.sumar(5, 3);
        System.out.println("Suma: " + resultado);

        // Invocar el método mostrarMensaje
        calc.mostrarMensaje();
    }
}
```

## 3. Métodos con Parámetros

Los métodos pueden aceptar parámetros que permiten pasar valores a ellos. Los parámetros se definen dentro de los paréntesis de la declaración del método.

### Ejemplo

```java
public class Saludador {

    // Método que acepta un parámetro
    public void saludar(String nombre) {
        System.out.println("Hola, " + nombre + "!");
    }
}

public class Main {
    public static void main(String[] args) {
        Saludador saludador = new Saludador();

        // Pasar un argumento al método
        saludador.saludar("Juan");
    }
}
```

## 4. Sobrecarga de Métodos

La sobrecarga de métodos permite definir múltiples métodos con el mismo nombre pero con diferentes listas de parámetros. Java selecciona el método adecuado en función de los argumentos pasados.

### Ejemplo

```java
public class Calculadora {

    // Método para sumar dos enteros
    public int sumar(int a, int b) {
        return a + b;
    }

    // Método para sumar tres enteros
    public int sumar(int a, int b, int c) {
        return a + b + c;
    }

    // Método para sumar dos números decimales
    public double sumar(double a, double b) {
        return a + b;
    }
}

public class Main {
    public static void main(String[] args) {
        Calculadora calc = new Calculadora();

        System.out.println("Suma de 2 enteros: " + calc.sumar(1, 2));
        System.out.println("Suma de 3 enteros: " + calc.sumar(1, 2, 3));
        System.out.println("Suma de 2 decimales: " + calc.sumar(1.5, 2.5));
    }
}
```

## 5. Métodos Estáticos

Los métodos estáticos pertenecen a la clase en lugar de a una instancia específica. Se pueden invocar sin crear un objeto de la clase.

### Ejemplo

```java
public class Utilidades {

    // Método estático
    public static int multiplicar(int a, int b) {
        return a * b;
    }
}

public class Main {
    public static void main(String[] args) {
        // Invocar un método estático
        int resultado = Utilidades.multiplicar(4, 5);
        System.out.println("Multiplicación: " + resultado);
    }
}
```

## 6. Métodos de Instancia

Los métodos de instancia requieren un objeto de la clase para ser invocados. Operan sobre los campos del objeto.

### Ejemplo

```java
public class Persona {
    String nombre;
    int edad;

    // Método de instancia
    public void mostrarInfo() {
        System.out.println("Nombre: " + nombre + ", Edad: " + edad);
    }
}

public class Main {
    public static void main(String[] args) {
        Persona persona = new Persona();
        persona.nombre = "Ana";
        persona.edad = 28;

        // Invocar un método de instancia
        persona.mostrarInfo();
    }
}
```

## 7. Métodos Recursivos

Los métodos recursivos son métodos que se llaman a sí mismos. Son útiles para resolver problemas que se pueden dividir en subproblemas más pequeños del mismo tipo.

### Ejemplo

```java
public class Factorial {

    // Método recursivo para calcular el factorial de un número
    public int calcularFactorial(int n) {
        if (n <= 1) {
            return 1;
        } else {
            return n * calcularFactorial(n - 1);
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Factorial factorial = new Factorial();
        int resultado = factorial.calcularFactorial(5);
        System.out.println("Factorial de 5: " + resultado);
    }
}
```

## Conclusión

La creación y uso de métodos en Java es esencial para escribir código modular y reutilizable. Los métodos permiten encapsular comportamientos, mejorar la legibilidad del código y facilitar la solución de problemas complejos mediante la descomposición en tareas más simples.
