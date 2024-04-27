## Lambda
Una expresión lambda es un bloque corto de código que toma parámetros y devuelve un valor. Las expresiones lambda son similares a los métodos, pero no necesitan nombre y pueden implementarse directamente en el cuerpo de un método.

La expresión lambda más simple contiene un único parámetro y una expresión:

```ssh
  parameter -> expression
```

Para utilizar más de un parámetro, envuélvalos entre paréntesis:

```ssh
  (parameter1, parameter2) -> expression
```

#### Uso de expresiones lambda

Las expresiones lambda normalmente se pasan como parámetros a una función:

```java
import java.util.ArrayList;

public class Main {
  public static void main(String[] args) {
    ArrayList<Integer> numbers = new ArrayList<Integer>();
    numbers.add(5);
    numbers.add(9);
    nmbers.add(8);
    numbers.add(1);
    numbers.forEach( (n) -> { System.out.println(n); } );
  }
}
```

Utilice la interfaz de Java Consumer para almacenar una expresión lambda en una variable:

```java
import java.util.ArrayList;
import java.util.function.Consumer;

public class Main {
  public static void main(String[] args) {
    ArrayList<Integer> numbers = new ArrayList<Integer>();
    numbers.add(5);
    numbers.add(9);
    numbers.add(8);
    numbers.add(1);
    Consumer<Integer> method = (n) -> { System.out.println(n); };
    numbers.forEach( method );
  }
}
```

Cree un método que tome una expresión lambda como parámetro:
```java
interface StringFunction {
  String run(String str);
}

public class Main {
  public static void main(String[] args) {
     StringFunction exclaim = (s) -> s + "!";
     StringFunction ask = (s) -> s + "?";
     printFormatted("Hello", exclaim);
     printFormatted("Hello", ask);
  }
  public static void printFormatted(String str, StringFunction format) {
    String result = format.run(str);
    System.out.println(result);
  }
}
```