# Streams: Byte Streams y Character Streams, Lectura y Escritura de Archivos

En Java, los streams proporcionan una manera de leer y escribir datos. Los streams se dividen en dos categorías principales: byte streams y character streams. Cada uno de estos tipos de streams está diseñado para manejar diferentes tipos de datos.

## 1. Byte Streams

Los byte streams se utilizan para leer y escribir datos en formato binario. Son adecuados para manejar datos que no son caracteres, como imágenes, archivos de audio, o cualquier otro tipo de datos binarios.

### 1.1 Clases Principales

- **`FileInputStream`**: Lee bytes de un archivo.
- **`FileOutputStream`**: Escribe bytes en un archivo.

### 1.2 Ejemplo de Lectura de Archivo con `FileInputStream`

```java
import java.io.FileInputStream;
import java.io.IOException;

public class LecturaByteStream {
    public static void main(String[] args) {
        try (FileInputStream fis = new FileInputStream("archivo.bin")) {
            int byteData;
            while ((byteData = fis.read()) != -1) {
                System.out.print((char) byteData);
            }
        } catch (IOException e) {
            System.out.println("Error al leer el archivo: " + e.getMessage());
        }
    }
}
```

### 1.3 Ejemplo de Escritura de Archivo con `FileOutputStream`

```java
import java.io.FileOutputStream;
import java.io.IOException;

public class EscrituraByteStream {
    public static void main(String[] args) {
        String datos = "Datos de ejemplo para byte stream.";
        try (FileOutputStream fos = new FileOutputStream("archivo.bin")) {
            fos.write(datos.getBytes());
        } catch (IOException e) {
            System.out.println("Error al escribir el archivo: " + e.getMessage());
        }
    }
}
```

## 2. Character Streams

Los character streams se utilizan para leer y escribir datos en formato de texto. Son adecuados para manejar caracteres y suelen ser más convenientes cuando trabajas con texto debido a su capacidad para manejar la codificación de caracteres.

### 2.1 Clases Principales

- **`FileReader`**: Lee caracteres de un archivo.
- **`FileWriter`**: Escribe caracteres en un archivo.

### 2.2 Ejemplo de Lectura de Archivo con `FileReader`

```java
import java.io.FileReader;
import java.io.IOException;

public class LecturaCharacterStream {
    public static void main(String[] args) {
        try (FileReader fr = new FileReader("archivo.txt")) {
            int charData;
            while ((charData = fr.read()) != -1) {
                System.out.print((char) charData);
            }
        } catch (IOException e) {
            System.out.println("Error al leer el archivo: " + e.getMessage());
        }
    }
}
```

### 2.3 Ejemplo de Escritura de Archivo con `FileWriter`

```java
import java.io.FileWriter;
import java.io.IOException;

public class EscrituraCharacterStream {
    public static void main(String[] args) {
        String datos = "Datos de ejemplo para character stream.";
        try (FileWriter fw = new FileWriter("archivo.txt")) {
            fw.write(datos);
        } catch (IOException e) {
            System.out.println("Error al escribir el archivo: " + e.getMessage());
        }
    }
}
```

## 3. Diferencias entre Byte Streams y Character Streams

- **Byte Streams**: Trabajan con datos binarios. No realizan ninguna conversión de datos y son adecuados para todos los tipos de datos.
- **Character Streams**: Trabajan con datos de texto. Realizan la conversión de datos entre caracteres y bytes, lo que facilita el manejo de texto y caracteres especiales.

## 4. Conclusión

Los byte streams y character streams son herramientas poderosas en Java para manejar la entrada y salida de datos. Elige el tipo de stream que mejor se adapte a tus necesidades según si estás trabajando con datos binarios o texto. Utiliza las clases `FileInputStream` y `FileOutputStream` para operaciones binarias, y `FileReader` y `FileWriter` para operaciones de texto.
