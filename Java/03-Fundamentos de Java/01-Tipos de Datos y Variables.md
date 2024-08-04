# Tipos de Datos y Variables

En Java, los tipos de datos y variables se utilizan para almacenar y manipular datos. Los tipos de datos se dividen en primitivos y no primitivos, y es importante entender cómo se realiza la conversión entre ellos.

## 1. Tipos Primitivos

Los tipos de datos primitivos en Java son los más básicos y se utilizan para representar valores simples. Java define ocho tipos primitivos.

### 1.1 Tipos Primitivos y Tamaños

- **byte**: 8 bits, rango: -128 a 127
- **short**: 16 bits, rango: -32,768 a 32,767
- **int**: 32 bits, rango: -2^31 a 2^31-1
- **long**: 64 bits, rango: -2^63 a 2^63-1
- **float**: 32 bits, rango: ±1.4E-45 a ±3.4E38
- **double**: 64 bits, rango: ±4.9E-324 a ±1.8E308
- **char**: 16 bits, representa un único carácter Unicode
- **boolean**: 1 bit, valores: `true` o `false`

#### Ejemplo de Declaración de Variables Primitivas

```java
public class TiposPrimitivos {
    public static void main(String[] args) {
        byte edad = 25;
        short temperatura = 30;
        int distancia = 100000;
        long poblacion = 7830000000L;
        float precio = 19.99f;
        double saldo = 123456.78;
        char inicial = 'J';
        boolean esValido = true;

        System.out.println("Edad: " + edad);
        System.out.println("Temperatura: " + temperatura);
        System.out.println("Distancia: " + distancia);
        System.out.println("Población: " + poblacion);
        System.out.println("Precio: " + precio);
        System.out.println("Saldo: " + saldo);
        System.out.println("Inicial: " + inicial);
        System.out.println("Es válido: " + esValido);
    }
}
```

## 2. Tipos No Primitivos

Los tipos de datos no primitivos en Java son objetos que se definen a partir de clases. Estos incluyen clases, interfaces, y arreglos.

### 2.1 Ejemplos de Tipos No Primitivos

- **String**: Representa una secuencia de caracteres.
- **Arrays**: Estructuras que almacenan múltiples valores del mismo tipo.
- **Clases**: Tipos definidos por el usuario que pueden contener atributos y métodos.

#### Ejemplo de Uso de Tipos No Primitivos

```java
public class TiposNoPrimitivos {
    public static void main(String[] args) {
        String saludo = "Hola, Mundo!";
        int[] numeros = {1, 2, 3, 4, 5};

        System.out.println("Saludo: " + saludo);

        System.out.print("Números: ");
        for (int numero : numeros) {
            System.out.print(numero + " ");
        }
    }
}
```

## 3. Conversión de Tipos

La conversión de tipos se refiere a la conversión de un tipo de dato a otro. Puede ser implícita (automática) o explícita (manual).

### 3.1 Conversión Implícita

La conversión implícita ocurre automáticamente cuando se asigna un valor de un tipo primitivo a otro tipo compatible de mayor capacidad.

#### Ejemplo de Conversión Implícita

```java
public class ConversionImplicita {
    public static void main(String[] args) {
        int entero = 100;
        double decimal = entero; // Conversión implícita de int a double

        System.out.println("Entero: " + entero);
        System.out.println("Decimal: " + decimal);
    }
}
```

### 3.2 Conversión Explícita

La conversión explícita (o casting) se realiza manualmente utilizando operadores de conversión para convertir un tipo de dato a otro tipo compatible de menor capacidad.

#### Ejemplo de Conversión Explícita

```java
public class ConversionExplicita {
    public static void main(String[] args) {
        double decimal = 9.78;
        int entero = (int) decimal; // Conversión explícita de double a int

        System.out.println("Decimal: " + decimal);
        System.out.println("Entero: " + entero);
    }
}
```

## Conclusión

Comprender los tipos de datos primitivos y no primitivos en Java es esencial para el manejo eficiente de datos. La conversión de tipos permite la adaptación de valores entre diferentes tipos de datos, facilitando la interoperabilidad y el manejo adecuado de información en aplicaciones Java.
