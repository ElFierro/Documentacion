# Clases de I/O en Java: File, FileReader, FileWriter, BufferedReader, BufferedWriter

Java proporciona varias clases para manejar la entrada y salida de datos. Las siguientes clases son esenciales para trabajar con archivos y realizar operaciones de lectura y escritura en Java.

## 1. Clase `File`

La clase `File` representa un archivo o directorio en el sistema de archivos. Permite crear, eliminar, renombrar y consultar propiedades de archivos y directorios.

### 1.1 Ejemplo de Uso de `File`

```java
import java.io.File;
import java.io.IOException;

public class EjemploFile {
    public static void main(String[] args) {
        File archivo = new File("ejemplo.txt");

        try {
            if (archivo.createNewFile()) {
                System.out.println("Archivo creado: " + archivo.getName());
            } else {
                System.out.println("El archivo ya existe.");
            }

            System.out.println("Ruta absoluta: " + archivo.getAbsolutePath());
            System.out.println("Es archivo: " + archivo.isFile());
            System.out.println("Es directorio: " + archivo.isDirectory());

            // Eliminar el archivo
            if (archivo.delete()) {
                System.out.println("Archivo eliminado.");
            } else {
                System.out.println("No se pudo eliminar el archivo.");
            }
        } catch (IOException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
```

## 2. Clase `FileReader`

`FileReader` es una clase para leer datos de un archivo de texto en forma de caracteres. Es útil para leer archivos de texto que no están en formato binario.

### 2.1 Ejemplo de Lectura con `FileReader`

```java
import java.io.FileReader;
import java.io.IOException;

public class EjemploFileReader {
    public static void main(String[] args) {
        try (FileReader fr = new FileReader("archivo.txt")) {
            int caracter;
            while ((caracter = fr.read()) != -1) {
                System.out.print((char) caracter);
            }
        } catch (IOException e) {
            System.out.println("Error al leer el archivo: " + e.getMessage());
        }
    }
}
```

## 3. Clase `FileWriter`

`FileWriter` es una clase para escribir datos en un archivo de texto en forma de caracteres. Es adecuada para crear o sobrescribir archivos de texto.

### 3.1 Ejemplo de Escritura con `FileWriter`

```java
import java.io.FileWriter;
import java.io.IOException;

public class EjemploFileWriter {
    public static void main(String[] args) {
        String contenido = "Este es un ejemplo de escritura en un archivo.";

        try (FileWriter fw = new FileWriter("archivo.txt")) {
            fw.write(contenido);
        } catch (IOException e) {
            System.out.println("Error al escribir el archivo: " + e.getMessage());
        }
    }
}
```

## 4. Clase `BufferedReader`

`BufferedReader` se utiliza para leer texto de un archivo de manera más eficiente. Bufferiza los datos leídos para mejorar el rendimiento, especialmente al leer grandes cantidades de texto.

### 4.1 Ejemplo de Lectura con `BufferedReader`

```java
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class EjemploBufferedReader {
    public static void main(String[] args) {
        try (BufferedReader br = new BufferedReader(new FileReader("archivo.txt"))) {
            String linea;
            while ((linea = br.readLine()) != null) {
                System.out.println(linea);
            }
        } catch (IOException e) {
            System.out.println("Error al leer el archivo: " + e.getMessage());
        }
    }
}
```

## 5. Clase `BufferedWriter`

`BufferedWriter` se utiliza para escribir texto en un archivo de manera más eficiente. Bufferiza los datos para mejorar el rendimiento, especialmente cuando se escriben grandes cantidades de texto.

### 5.1 Ejemplo de Escritura con `BufferedWriter`

```java
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class EjemploBufferedWriter {
    public static void main(String[] args) {
        String contenido = "Este es un ejemplo de escritura con BufferedWriter.";

        try (BufferedWriter bw = new BufferedWriter(new FileWriter("archivo.txt"))) {
            bw.write(contenido);
        } catch (IOException e) {
            System.out.println("Error al escribir el archivo: " + e.getMessage());
        }
    }
}
```

## 6. Conclusión

Las clases `File`, `FileReader`, `FileWriter`, `BufferedReader`, y `BufferedWriter` son fundamentales para manejar la entrada y salida de datos en archivos en Java. Utiliza `File` para gestionar archivos y directorios, `FileReader` y `FileWriter` para operaciones básicas de lectura y escritura, y `BufferedReader` y `BufferedWriter` para mejorar el rendimiento en operaciones con grandes volúmenes de datos.
