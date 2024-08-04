# Variables en Java

Las variables en Java son contenedores que almacenan datos que pueden cambiar durante la ejecución del programa. Cada variable en Java tiene un tipo de dato que determina qué tipo de valores puede almacenar. A continuación se presenta un resumen sobre las variables en Java.

## Tipos de Datos

### Tipos Primitivos

Java proporciona ocho tipos de datos primitivos:

- **byte**: Representa un entero de 8 bits.
  ```java
  byte b = 100; // Rango: -128 a 127
  ```
- **short**: Representa un entero de 16 bits.
  ```java
  short s = 10000; // Rango: -32,768 a 32,767
  ```
- **int**: Representa un entero de 32 bits.
  ```java
  int i = 100000; // Rango: -2^31 a 2^31-1
  ```
- **long**: Representa un entero de 64 bits.
  ```java
  long l = 10000000000L; // Rango: -2^63 a 2^63-1
  ```
- **float**: Representa un número en punto flotante de 32 bits.
  ```java
  float f = 5.75f; // Rango: ±1.4e−45 a ±3.4e38
  ```
- **double**: Representa un número en punto flotante de 64 bits.
  ```java
  double d = 19.99; // Rango: ±4.9e−324 a ±1.8e308
  ```
- **char**: Representa un carácter de 16 bits.
  ```java
  char c = 'A'; // Rango: 0 a 65,535 (Unicode)
  ```
- **boolean**: Representa un valor verdadero o falso.
  ```java
  boolean b = true; // Rango: true o false
  ```

### Tipos de Datos de Referencia

Los tipos de datos de referencia son objetos que se crean a partir de clases. Los más comunes son:

- **Strings**: Representa cadenas de caracteres.
  ```java
  String str = "Hola, mundo!";
  ```
- **Arrays**: Estructuras que almacenan una colección de elementos del mismo tipo.
  ```java
  int[] array = {1, 2, 3, 4, 5}; // Array de enteros
  ```

## Declaración y Asignación

Para declarar una variable en Java, se especifica el tipo de dato seguido del nombre de la variable. La asignación de un valor a una variable se realiza utilizando el operador de asignación (`=`).

- **Declaración**:
  ```java
  int edad; // Declaración de una variable sin inicialización
  ```
- **Asignación**:
  ```java
  edad = 25; // Asignación del valor 25 a la variable edad
  ```
- **Declaración y Asignación**:
  ```java
  int edad = 25; // Declaración y asignación en una sola línea
  ```

## Convención de Nombres

- **Variables locales**: Usualmente se utilizan nombres en notación camelCase (primera palabra en minúscula, siguientes palabras en mayúscula).
  ```java
  int numeroDeEstudiantes;
  ```
- **Variables de instancia**: También se usa camelCase, pero se colocan dentro de una clase.
  ```java
  private String nombre;
  ```
- **Variables de clase (estáticas)**: Usualmente se utilizan nombres en UPPER_CASE con guiones bajos entre palabras.
  ```java
  public static final int MAX_VALOR = 100;
  ```

## Alcance de las Variables

- **Variables locales**: Declaradas dentro de un método, constructor o bloque. Solo son accesibles dentro de ese bloque.
  ```java
  public void metodo() {
      int localVar = 10; // Solo accesible dentro de este método
  }
  ```
- **Variables de instancia**: Declaradas dentro de una clase pero fuera de cualquier método. Son accesibles por todos los métodos de la clase.
  ```java
  public class MiClase {
      private int instanciaVar; // Accesible en toda la clase
  }
  ```
- **Variables de clase**: Declaradas con la palabra clave `static`. Son compartidas por todas las instancias de la clase.
  ```java
  public class MiClase {
      public static int claseVar; // Compartida entre todas las instancias
  }
  ```

## Inicialización

Las variables deben ser inicializadas antes de ser utilizadas. En caso de no ser inicializadas explícitamente, las variables de instancia y las variables de clase se inicializan automáticamente con valores predeterminados (`0` para tipos numéricos, `false` para `boolean`, y `null` para tipos de referencia).

```java
public class Ejemplo {
    private int numero; // Inicializado automáticamente a 0
    private String texto; // Inicializado automáticamente a null
}
```