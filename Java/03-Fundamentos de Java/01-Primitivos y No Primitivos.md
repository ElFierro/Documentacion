# Primitivos y No Primitivos

En Java, los tipos de datos se dividen en dos categorías principales: **primitivos** y **no primitivos**. Cada categoría tiene características y usos diferentes.

## 1. Tipos de Datos Primitivos

Los tipos de datos primitivos son los tipos básicos que Java proporciona para representar valores simples. Estos tipos son parte del lenguaje y no están basados en clases. Los tipos primitivos son más eficientes en términos de memoria y velocidad.

### Tipos de Datos Primitivos

- **`byte`**: 
  - Tamaño: 8 bits
  - Rango: -128 a 127
  - Ejemplo: `byte edad = 25;`

- **`short`**: 
  - Tamaño: 16 bits
  - Rango: -32,768 a 32,767
  - Ejemplo: `short temperatura = -10;`

- **`int`**: 
  - Tamaño: 32 bits
  - Rango: -2^31 a 2^31-1
  - Ejemplo: `int distancia = 1000;`

- **`long`**: 
  - Tamaño: 64 bits
  - Rango: -2^63 a 2^63-1
  - Ejemplo: `long poblacion = 7800000000L;`

- **`float`**: 
  - Tamaño: 32 bits
  - Rango: ±1.4e-45 a ±3.4e38 (precisión de 6-7 dígitos)
  - Ejemplo: `float altura = 1.75f;`

- **`double`**: 
  - Tamaño: 64 bits
  - Rango: ±4.9e-324 a ±1.8e308 (precisión de 15-16 dígitos)
  - Ejemplo: `double peso = 68.5;`

- **`char`**: 
  - Tamaño: 16 bits
  - Representa un solo carácter Unicode
  - Ejemplo: `char inicial = 'J';`

- **`boolean`**: 
  - Tamaño: 1 bit (aunque en la práctica suele ocupar 1 byte)
  - Valores posibles: `true` o `false`
  - Ejemplo: `boolean esMayor = true;`

## 2. Tipos de Datos No Primitivos

Los tipos de datos no primitivos son tipos que están basados en clases. Estos incluyen todas las clases, interfaces y arrays en Java. A diferencia de los primitivos, los tipos no primitivos se refieren a objetos y son más flexibles.

### Tipos de Datos No Primitivos

- **`String`**:
  - Representa una secuencia de caracteres.
  - Ejemplo: `String nombre = "Juan";`

- **`Arrays`**:
  - Colección de elementos del mismo tipo.
  - Ejemplo: `int[] numeros = {1, 2, 3, 4, 5};`

- **`Clases`**:
  - Definidas por el usuario o por las bibliotecas de Java.
  - Ejemplo: 
    ```java
    public class Persona {
        String nombre;
        int edad;
        
        public Persona(String nombre, int edad) {
            this.nombre = nombre;
            this.edad = edad;
        }
        
        public void saludar() {
            System.out.println("Hola, mi nombre es " + nombre);
        }
    }
    ```
    
- **`Interfaces`**:
  - Contratos que las clases pueden implementar.
  - Ejemplo:
    ```java
    public interface Volador {
        void volar();
    }
    ```

- **`Enumeraciones (Enums)`**:
  - Tipo especial de clase que representa un conjunto fijo de constantes.
  - Ejemplo:
    ```java
    public enum Dia {
        LUNES, MARTES, MIÉRCOLES, JUEVES, VIERNES, SÁBADO, DOMINGO
    }
    ```
  
## Comparación Entre Primitivos y No Primitivos

- **Memoria**: Los tipos primitivos son más eficientes en memoria, ya que ocupan un espacio fijo, mientras que los tipos no primitivos pueden tener un tamaño variable dependiendo del contenido y estructura del objeto.
- **Operaciones**: Los tipos primitivos se utilizan para operaciones matemáticas directas, mientras que los tipos no primitivos se utilizan para operaciones más complejas y para representar datos estructurados.
- **Inmutabilidad**: Los tipos primitivos son inmutables y no se pueden cambiar una vez creados, mientras que los objetos de tipos no primitivos pueden cambiar su estado.

## Conclusión

Entender la diferencia entre tipos de datos primitivos y no primitivos en Java es esencial para el diseño y la implementación de aplicaciones eficientes y efectivas. Los tipos primitivos ofrecen eficiencia en términos de memoria y rendimiento, mientras que los tipos no primitivos ofrecen flexibilidad y capacidad para representar datos complejos.
