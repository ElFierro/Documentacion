# Conversión de Tipos

En Java, la conversión de tipos se refiere al proceso de cambiar el tipo de una variable a otro tipo. Existen dos tipos principales de conversión: **conversión implícita** (o automática) y **conversión explícita** (o casting).

## 1. Conversión Implícita

La conversión implícita ocurre automáticamente cuando Java convierte un tipo de dato de menor tamaño a un tipo de dato de mayor tamaño. Esto se conoce como "promoción" o "widening conversion". No es necesario realizar ninguna acción especial para esta conversión, ya que Java la maneja de forma automática.

### Ejemplo de Conversión Implícita

```java
int entero = 100;
double decimal = entero; // Conversión implícita de int a double

System.out.println("Entero: " + entero);
System.out.println("Decimal: " + decimal);
```

En el ejemplo anterior, el valor entero de `int` se convierte automáticamente a un valor de `double` sin necesidad de un casting explícito.

## 2. Conversión Explícita (Casting)

La conversión explícita, o casting, se usa cuando se desea convertir un tipo de dato de mayor tamaño a un tipo de dato de menor tamaño. Este tipo de conversión debe ser realizada manualmente por el programador, ya que puede haber pérdida de datos o truncamiento.

### Ejemplo de Conversión Explícita

```java
double decimal = 9.78;
int entero = (int) decimal; // Conversión explícita de double a int

System.out.println("Decimal: " + decimal);
System.out.println("Entero: " + entero);
```

En el ejemplo anterior, el valor `double` se convierte a `int`, y la parte fraccionaria se pierde en el proceso.

## 3. Conversión entre Tipos de Datos Primitivos

### Conversión de `byte`, `short`, `int`, `long`, `float`, `double`

- **`byte`** a **`short`**, **`int`**, **`long`**, **`float`**, **`double`**: Conversión implícita.
- **`short`** a **`int`**, **`long`**, **`float`**, **`double`**: Conversión implícita.
- **`int`** a **`long`**, **`float`**, **`double`**: Conversión implícita.
- **`long`** a **`float`**, **`double`**: Conversión implícita.
- **`float`** a **`double`**: Conversión implícita.
- **`double`** a **`float`**, **`long`**, **`int`**, **`short`**, **`byte`**: Conversión explícita.

### Ejemplo de Conversión entre Primitivos

```java
double numeroDecimal = 12.34;
int numeroEntero = (int) numeroDecimal; // Conversión explícita

byte numeroByte = (byte) numeroEntero; // Conversión explícita de int a byte

System.out.println("Número Decimal: " + numeroDecimal);
System.out.println("Número Entero: " + numeroEntero);
System.out.println("Número Byte: " + numeroByte);
```

## 4. Conversión entre Tipos de Datos No Primitivos

Para los tipos de datos no primitivos, la conversión se refiere a la conversión entre diferentes clases y objetos. Esto se realiza mediante la conversión de tipos de objetos y herencia de clases.

### Conversión entre Clases

- **Subclase a Superclase**: Conversión implícita.
- **Superclase a Subclase**: Conversión explícita (casting), puede fallar si el objeto no es una instancia de la subclase.

### Ejemplo de Conversión entre Clases

```java
class Animal {
    public void hacerSonido() {
        System.out.println("Sonido del animal");
    }
}

class Perro extends Animal {
    public void hacerSonido() {
        System.out.println("El perro ladra");
    }
    
    public void correr() {
        System.out.println("El perro está corriendo");
    }
}

public class Main {
    public static void main(String[] args) {
        Animal miAnimal = new Perro(); // Conversión implícita
        miAnimal.hacerSonido();
        
        if (miAnimal instanceof Perro) {
            Perro miPerro = (Perro) miAnimal; // Conversión explícita
            miPerro.correr();
        }
    }
}
```

## 5. Conversión de Cadenas a Tipos Primitivos

Es posible convertir cadenas de texto (`String`) a tipos primitivos mediante métodos de parsing.

### Ejemplo de Conversión de Cadenas

```java
String numeroString = "123";
int numeroEntero = Integer.parseInt(numeroString); // Conversión de String a int

String decimalString = "45.67";
double numeroDecimal = Double.parseDouble(decimalString); // Conversión de String a double

System.out.println("Número Entero: " + numeroEntero);
System.out.println("Número Decimal: " + numeroDecimal);
```

## Conclusión

La conversión de tipos en Java es una herramienta poderosa para manejar diferentes tipos de datos de manera flexible. Entender cómo y cuándo usar la conversión implícita y explícita te permitirá escribir código más eficiente y robusto, evitando errores y problemas de pérdida de datos.
