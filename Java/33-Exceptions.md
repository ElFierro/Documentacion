# Excepciones de Java
Al ejecutar código Java pueden ocurrir diferentes errores: errores de codificación cometidos por el programador, errores por entradas incorrectas u otras cosas imprevisibles.
Cuando ocurre un error, Java normalmente se detendrá y generará un mensaje de error.
El término técnico para esto es: Java generará una excepción (arrojará un error).

## Razones principales por las que se produce una excepción
- Entrada de usuario no válida
- Fallo del dispositivo
- Pérdida de conexión de red
- Limitaciones físicas (memoria fuera del disco)
- Errores de código
- Abrir un archivo no disponible

## Tipos de excepciones
Java define varios tipos de excepciones que se relacionan con sus diversas bibliotecas de clases. Java también permite a los usuarios definir sus propias excepciones.

Las excepciones se pueden clasificar de dos maneras:

#### 1. Excepciones integradas
Las excepciones integradas son las excepciones que están disponibles en las bibliotecas de Java. Estas excepciones son adecuadas para explicar determinadas situaciones de error.

- **Excepciones comprobadas**: las excepciones comprobadas se denominan excepciones en tiempo de compilación porque el compilador las verifica en tiempo de compilación.
 
- **Excepciones no comprobadas**: las excepciones no marcadas son justo lo contrario de las excepciones comprobadas. El compilador no comprobará estas excepciones en el momento de la compilación. En palabras simples, si un programa arroja una excepción no verificada, e incluso si no la manejamos ni declaramos, el programa no dará un error de compilación.

#### 2. Excepciones definidas por el usuario:
A veces, las excepciones integradas en Java no pueden describir una situación determinada. En tales casos, los usuarios también pueden crear excepciones, que se denominan "Excepciones definidas por el usuario". 

## Try catch
La declaración try le permite definir un bloque de código que se probará en busca de errores mientras se ejecuta.
La declaración catch le permite definir un bloque de código que se ejecutará si ocurre un error en el bloque de prueba.

```java
public class Main {
  public static void main(String[ ] args) {
    try {
      int[] myNumbers = {1, 2, 3};
      System.out.println(myNumbers[10]);
    } catch (Exception e) {
      System.out.println("Something went wrong.");
    }
  }
}
```

## Finally
La declaración finally le permite ejecutar código, después de try...catch, independientemente del resultado:
```java
public class Main {
  public static void main(String[] args) {
    try {
      int[] myNumbers = {1, 2, 3};
      System.out.println(myNumbers[10]);
    } catch (Exception e) {
      System.out.println("Something went wrong.");
    } finally {
      System.out.println("The 'try catch' is finished.");
    }
  }
}
```

## Throw
La declaración throw le permite crear un error personalizado.
La declaración throw se utiliza junto con un tipo de excepción. 
Hay muchos tipos de excepciones disponibles en Java:
ArithmeticException, FileNotFoundException,ArrayIndexOutOfBoundsException, SecurityExceptionetc:

```java
public class Main {
  static void checkAge(int age) {
    if (age < 18) {
      throw new ArithmeticException("Access denied - You must be at least 18 years old.");
    }
    else {
    System.out.println("Access granted - You are old enough!");
    }
  }

  public static void main(String[] args) {
    checkAge(15);  Set age to 15 (which is below 18...)
  }
}
```