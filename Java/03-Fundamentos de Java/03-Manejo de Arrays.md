# Manejo de Arrays

En Java, los arrays son estructuras de datos que almacenan múltiples valores del mismo tipo. Los arrays permiten trabajar con colecciones de datos de manera eficiente.

## 1. Declaración de Arrays

Para usar un array en Java, primero debes declararlo. La declaración define el tipo de los elementos y el nombre del array.

### 1.1 Declaración de un Array

Puedes declarar un array de dos maneras: 

- Declarar el array y luego instanciarlo.
- Declarar e instanciar el array en una sola línea.

#### Ejemplo de Declaración de un Array

```java
public class ManejoArraysDeclaracion {
    public static void main(String[] args) {
        // Declaración del array
        int[] numeros;
        // Instanciación del array
        numeros = new int[5];

        // Declaración e instanciación en una sola línea
        String[] nombres = new String[3];
    }
}
```

## 2. Inicialización de Arrays

Después de declarar un array, debes inicializarlo para asignar valores a sus elementos. Los arrays pueden ser inicializados de manera estática o dinámica.

### 2.1 Inicialización Estática

Puedes inicializar un array con valores específicos en el momento de la declaración.

#### Ejemplo de Inicialización Estática

```java
public class ManejoArraysInicializacionEstatica {
    public static void main(String[] args) {
        // Inicialización estática
        int[] edades = {25, 30, 35, 40, 45};
        String[] colores = {"Rojo", "Verde", "Azul"};

        // Imprimir los valores
        for (int edad : edades) {
            System.out.println("Edad: " + edad);
        }
    }
}
```

### 2.2 Inicialización Dinámica

Puedes asignar valores a un array después de haberlo instanciado.

#### Ejemplo de Inicialización Dinámica

```java
public class ManejoArraysInicializacionDinamica {
    public static void main(String[] args) {
        // Instanciación del array
        int[] numeros = new int[3];

        // Inicialización dinámica
        numeros[0] = 10;
        numeros[1] = 20;
        numeros[2] = 30;

        // Imprimir los valores
        for (int numero : numeros) {
            System.out.println("Número: " + numero);
        }
    }
}
```

## 3. Recorrido de Arrays

Para acceder a los elementos de un array, puedes usar un bucle. Los bucles `for` y `for-each` son los más comunes para recorrer arrays.

### 3.1 Uso del Bucle `for`

El bucle `for` permite recorrer los elementos del array mediante índices.

#### Ejemplo de Recorrido con Bucle `for`

```java
public class ManejoArraysRecorridoFor {
    public static void main(String[] args) {
        int[] numeros = {1, 2, 3, 4, 5};

        // Recorrido con bucle for
        for (int i = 0; i < numeros.length; i++) {
            System.out.println("Número en índice " + i + ": " + numeros[i]);
        }
    }
}
```

### 3.2 Uso del Bucle `for-each`

El bucle `for-each` es una forma más sencilla de recorrer arrays cuando no necesitas acceder a los índices.

#### Ejemplo de Recorrido con Bucle `for-each`

```java
public class ManejoArraysRecorridoForEach {
    public static void main(String[] args) {
        String[] frutas = {"Manzana", "Banana", "Cereza"};

        // Recorrido con bucle for-each
        for (String fruta : frutas) {
            System.out.println("Fruta: " + fruta);
        }
    }
}
```

## Conclusión

El manejo de arrays en Java te permite trabajar con colecciones de datos de manera eficiente. La declaración, inicialización y recorrido de arrays son operaciones fundamentales para almacenar y manipular múltiples valores en tus aplicaciones. Conociendo estas técnicas, puedes gestionar datos en tus programas de forma efectiva.
