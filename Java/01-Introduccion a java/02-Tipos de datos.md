# Tipos de Datos en Java

En Java, los tipos de datos definen el tipo de valor que una variable puede almacenar. Existen dos categorías principales de tipos de datos: **tipos primitivos** y **tipos de referencia**.

## Tipos Primitivos

Los tipos primitivos son los tipos de datos más básicos y no están basados en objetos. Java tiene ocho tipos primitivos:

- **`byte`**: 
  - Tamaño: 8 bits
  - Rango: -128 a 127
  - Ejemplo: `byte edad = 25;`

- **`short`**: 
  - Tamaño: 16 bits
  - Rango: -32,768 a 32,767
  - Ejemplo: `short salario = 1500;`

- **`int`**: 
  - Tamaño: 32 bits
  - Rango: -2,147,483,648 a 2,147,483,647
  - Ejemplo: `int numero = 1000;`

- **`long`**: 
  - Tamaño: 64 bits
  - Rango: -9,223,372,036,854,768 a 9,223,372,036,854,767
  - Ejemplo: `long distancia = 1234567890L;`

- **`float`**: 
  - Tamaño: 32 bits
  - Rango: Aproximadamente ±1.4e-45 a ±3.4e+38 (precisión de 6-7 dígitos decimales)
  - Ejemplo: `float temperatura = 36.6F;`

- **`double`**: 
  - Tamaño: 64 bits
  - Rango: Aproximadamente ±4.9e-324 a ±1.8e+308 (precisión de 15-16 dígitos decimales)
  - Ejemplo: `double precio = 99.99;`

- **`char`**: 
  - Tamaño: 16 bits
  - Rango: 0 a 65,535 (representa un único carácter Unicode)
  - Ejemplo: `char letra = 'A';`

- **`boolean`**: 
  - Tamaño: No está especificado (generalmente 1 bit)
  - Rango: `true` o `false`
  - Ejemplo: `boolean esValido = true;`

## Tipos de Datos de Referencia

Los tipos de datos de referencia se basan en objetos y pueden ser más complejos. Incluyen:

- **`String`**: 
  - Representa una secuencia de caracteres.
  - Ejemplo: `String nombre = "Juan";`

- **Arrays**: 
  - Estructuras que almacenan múltiples valores del mismo tipo.
  - Ejemplo: `int[] numeros = {1, 2, 3, 4, 5};`

- **Clases y Objetos**: 
  - Definidos por el usuario y pueden contener datos y métodos.
  - Ejemplo: 
    ```java
    public class Persona {
        String nombre;
        int edad;
    }
    
    Persona persona = new Persona();
    persona.nombre = "Ana";
    persona.edad = 30;
    ```

## Conversión de Tipos

Java permite la conversión entre tipos de datos, tanto implícita como explícitamente:

- **Conversión Implícita**: Ocurre automáticamente cuando se asigna un valor de un tipo más pequeño a uno más grande (e.g., `int` a `double`).

- **Conversión Explícita**: Se realiza mediante casting, necesario cuando se asigna un valor de un tipo más grande a uno más pequeño (e.g., `double` a `int`).

  ```java
  double precio = 99.99;
  int precioEntero = (int) precio; // Conversión explícita
 ```