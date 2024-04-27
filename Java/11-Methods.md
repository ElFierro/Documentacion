## Metodos 
Un método es un bloque de código que sólo se ejecuta cuando se llama.
Puede pasar datos, conocidos como parámetros, a un método.
Los métodos se utilizan para realizar determinadas acciones y también se conocen como funciones.

#### Crear metodo
Se debe declarar un método dentro de una clase. 
Se define con el nombre del método, seguido de paréntesis () 
```java
static void myMethod() {
  code to be executed
}
```

#### Llamar metodo
Para llamar a un método en Java, escriba el nombre del método seguido de dos paréntesis () y un punto y coma;
```java
myMethod();
```

#### Parametros
La información se puede pasar a métodos como parámetro. 
Los parámetros actúan como variables dentro del método.

```java
public class Main {
  static void myMethod(String fname) {
    System.out.println(fname + " Refsnes");
  }
}
```

#### Multiples parametros
Puedes tener tantos parámetros como quieras:
```java
public class Main {
  static void myMethod(String fname, int age) {
    System.out.println(fname + " is " + age);
  }
}
```

#### Valores de retorno
Si desea que el método devuelva un valor, puede usar un tipo dedatos primitivo (como int, char, etc.) 
```java
public class Main {
  static int myMethod(int x, int y) {
    return x + y; Outputs 8
  }

  public static void main(String[] args) {
    int z = myMethod(5, 3);
    System.out.println(z);
  }
}
```

## Sobrecarga de metodos
Con la sobrecarga de métodos, varios métodos pueden tener el mismo nombre con diferentes parámetros:
```java
int myMethod(int x)
float myMethod(float x)
double myMethod(double x, double y)
```

## Recursividad
La recursión es la técnica de hacer que una función se llame a sí misma. 
```java   
public static int sum(int k) {
	if (k > 0) {
    return k + sum(k - 1);10 + 9 + 8 + 7 + 6 + 5 + 4 + 3 + 2 + 1 + suma(0)
  } else {
    return 0;
  }
}
```