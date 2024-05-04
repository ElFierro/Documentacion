# Metodos 
Un método es un bloque de código que sólo se ejecuta cuando se llama.
Puede pasar datos, conocidos como parámetros, a un método.
Los métodos se utilizan para realizar determinadas acciones y también se conocen como funciones.

- Un método es como una función, es decir, se utiliza para exponer el comportamiento de un objeto.
- Es un conjunto de códigos que realizan una tarea particular.

Sintaxis:
```ssh
<modificador_acceso> <tipo_retorno> <nombre_método>( lista_de_parámetros)
{
    //cuerpo
}
```
## Declaración del método
En general, las declaraciones de métodos tienen 6 componentes:

- **1. Modificador**: Define el tipo de acceso del método, es decir, desde dónde se puede acceder en su aplicación. En Java, existen 4 tipos de especificadores de acceso. 

**públic**: Es accesible en todas las clases de su aplicación.
**protected**: Es accesible dentro de la clase en la que está definido y en sus subclases.
**private**: Es accesible sólo dentro de la clase en la que está definido.
**default**: se declara/define sin utilizar ningún modificador. Es accesible dentro de la misma clase y paquete dentro del cual se define su clase.

- **2. El tipo de retorno**: el tipo de datos del valor devuelto por el método o nulo si no devuelve un valor. Es obligatorio en sintaxis.

- **3. Nombre del método**: las reglas para los nombres de los campos también se aplican a los nombres de los métodos.

- **4. Lista de parámetros**: la lista de parámetros de entrada separados por comas se define, precedida por su tipo de datos, entre paréntesis. Si no hay parámetros, debe utilizar paréntesis vacíos ().

- **5. Lista de excepciones**: se pueden generar las excepciones que espera del método; puede especificar estas excepciones. 

- **6. Cuerpo del método**: está encerrado entre llaves. El código que necesita ejecutar para realizar las operaciones previstas.

#### Ventaja del método
- Reutilización del código
- Optimización de código 

## Crear metodo
Se debe declarar un método dentro de una clase. 
Se define con el nombre del método, seguido de paréntesis () 
```java
static void myMethod() {
  code to be executed
}
```

## Llamar metodo
Para llamar a un método en Java, escriba el nombre del método seguido de dos paréntesis () y un punto y coma;
```java
myMethod();
```

## Parametros
La información se puede pasar a métodos como parámetro. 
Los parámetros actúan como variables dentro del método.

```java
public class Main {
  static void myMethod(String fname) {
    System.out.println(fname + " Refsnes");
  }
}
```

## Multiples parametros
Puedes tener tantos parámetros como quieras:
```java
public class Main {
  static void myMethod(String fname, int age) {
    System.out.println(fname + " is " + age);
  }
}
```

## Valores de retorno
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