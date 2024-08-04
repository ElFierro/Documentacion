# Lambdas: Sintaxis y Uso de Expresiones Lambda

Las expresiones lambda, introducidas en Java 8, proporcionan una forma concisa de representar instancias de interfaces funcionales (interfaces con un único método abstracto). Las lambdas permiten escribir código más limpio y expresivo, especialmente cuando se trabaja con operaciones en colecciones y programación funcional.

## 1. Sintaxis de Expresiones Lambda

Una expresión lambda se compone de tres partes principales:

1. **Lista de Parámetros**: Los parámetros que recibe la lambda, entre paréntesis. Si solo hay un parámetro, los paréntesis pueden omitirse.
2. **Operador Flecha (`->`)**: Separa la lista de parámetros del cuerpo de la lambda.
3. **Cuerpo de la Lambda**: La implementación del método del interface funcional, que puede ser una expresión única o un bloque de código.

### 1.1 Forma General

```java
(parameters) -> expression
```

### 1.2 Forma con Bloque de Código

```java
(parameters) -> {
    // body
}
```

## 2. Uso de Expresiones Lambda

Las expresiones lambda son especialmente útiles con interfaces funcionales y colecciones. A continuación, se muestran algunos ejemplos de cómo usar lambdas en diferentes contextos.

### 2.1 Ejemplo con Interfaces Funcionales

Supongamos que tenemos una interfaz funcional llamada `Operador`:

```java
@FunctionalInterface
public interface Operador {
    int operar(int a, int b);
}
```

Puedes implementar esta interfaz utilizando una expresión lambda:

```java
public class EjemploLambda {
    public static void main(String[] args) {
        Operador suma = (a, b) -> a + b;
        Operador multiplicacion = (a, b) -> a * b;

        System.out.println("Suma: " + suma.operar(5, 3));
        System.out.println("Multiplicación: " + multiplicacion.operar(5, 3));
    }
}
```

### 2.2 Ejemplo con Colecciones

Las lambdas son ampliamente usadas con las API de Streams y colecciones en Java para operaciones como filtrado, mapeo y reducción.

#### 2.2.1 Filtrado de Elementos en una Lista

```java
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class EjemploColeccionesLambda {
    public static void main(String[] args) {
        List<String> nombres = Arrays.asList("Ana", "Luis", "Pedro", "María", "Juan");

        List<String> nombresConA = nombres.stream()
            .filter(nombre -> nombre.contains("a"))
            .collect(Collectors.toList());

        System.out.println("Nombres con 'a': " + nombresConA);
    }
}
```

#### 2.2.2 Mapeo de Elementos en una Lista

```java
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class EjemploMapeoLambda {
    public static void main(String[] args) {
        List<String> nombres = Arrays.asList("Ana", "Luis", "Pedro", "María", "Juan");

        List<String> nombresEnMayusculas = nombres.stream()
            .map(String::toUpperCase)
            .collect(Collectors.toList());

        System.out.println("Nombres en mayúsculas: " + nombresEnMayusculas);
    }
}
```

## 3. Conclusión

Las expresiones lambda en Java ofrecen una forma más eficiente y legible de trabajar con interfaces funcionales y operaciones en colecciones. La sintaxis concisa y la capacidad de utilizar lambdas en contextos como streams y colecciones hacen que el código sea más expresivo y fácil de mantener. Utiliza lambdas para simplificar el código y aprovechar las ventajas de la programación funcional en Java.
