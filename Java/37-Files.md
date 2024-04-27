## Manejo de archivos

La clase File del paquete java.io nos permite trabajar con archivos.Para usar la clase File, cree un objeto de la clase y especifique el nombre del archivo o del directorio

```java
import java.io.File;  // Import the File class
File myObj = new File("filename.txt"); // Specify the filename
```

La clase File tiene muchos métodos útiles para crear y obtener información sobre archivos. Por ejemplo:

```java
canRead()         Boolean  //Prueba si el archivo es legible o no
canWrite()        Boolean  //Prueba si el archivo se puede escribir o no
createNewFile()   Boolean  //Crea un archivo vacío
delete()          Boolean  //Elimina un archivo
exists()          Boolean  //Prueba si el archivo existe
getName()         String   //Devuelve el nombre del archivo.
getAbsolutePath() String   //Devuelve la ruta absoluta del archivo.
length()          Long     //Devuelve el tamaño del archivo en bytes.
list()            String[] //Devuelve una matriz de los archivos en el directorio.
mkdir()           Boolean  //Crea un directorio
```

#### Crear archivos

Para crear un archivo, puede utilizar el método createNewFile(). Este método devuelve un valor booleano: 
true si el archivo se creó correctamente y false si el archivo ya existe.
```java
import java.io.File;  // Import the File class
import java.io.IOException;  // Import the IOException class to handle errors

public class CreateFile {
  public static void main(String[] args) {
    try {
      File myObj = new File("filename.txt");
      if (myObj.createNewFile()) {
        System.out.println("File created: " + myObj.getName());   //File created: filename.txt
      } else {
        System.out.println("File already exists.");
      }
    } catch (IOException e) {
      System.out.println("An error occurred.");
      e.printStackTrace();
    }
  }
}
```

especifique la ruta del archivo y utilice barras invertidas dobles

```java
File myObj = new File("C:\\Users\\MyName\\filename.txt");
```

#### Escribir un archivo

usamos la clase FileWriter junto con su método write(). Tenga en cuenta que cuando haya terminado de escribir en el archivo, debe cerrarlo con el método close():

```java
import java.io.FileWriter;   // Import the FileWriter class
import java.io.IOException;  // Import the IOException class to handle errors

public class WriteToFile {
  public static void main(String[] args) {
    try {
      FileWriter myWriter = new FileWriter("filename.txt");
      myWriter.write("Files in Java might be tricky, but it is fun enough!");
      myWriter.close();
      System.out.println("Successfully wrote to the file.");
    } catch (IOException e) {
      System.out.println("An error occurred.");
      e.printStackTrace();
    }
  }
}
```
#### Leer un archivo

usamos la clase Scanner para leer el contenido del archivo de texto

```java
Import java.io.File;  // Import the File class
import java.io.FileNotFoundException;  // Import this class to handle errors
import java.util.Scanner; // Import the Scanner class to read text files

public class ReadFile {
  public static void main(String[] args) {
    try {
      File myObj = new File("filename.txt");
      Scanner myReader = new Scanner(myObj);
      while (myReader.hasNextLine()) {
      String data = myReader.nextLine();
      System.out.println(data); //Files in Java might be tricky, but it is fun enough!
    }
    myReader.close();
    } catch (FileNotFoundException e) {
      System.out.println("An error occurred.");
      e.printStackTrace();
    }
  }
}
```

#### Obtener informacion del archivo

Para obtener más información sobre un archivo, utilice cualquiera de los métodos File:

```java
import java.io.File;  // Import the File class

public class GetFileInfo { 
  public static void main(String[] args) {
    File myObj = new File("filename.txt");
    if (myObj.exists()) {
      System.out.println("File name: " + myObj.getName());  //File name: filename.txt
      System.out.println("Absolute path: " + myObj.getAbsolutePath());  //Absolute path: C:\Users\MyName\filename.txt
      System.out.println("Writeable: " + myObj.canWrite()); //Writeable: true
      System.out.println("Readable " + myObj.canRead());  //Readable: true
      System.out.println("File size in bytes " + myObj.length());   //File size in bytes: 0
    } else {
      System.out.println("The file does not exist.");
    }
  }
}
```

#### Eliminar un archivo

```java
Para eliminar un archivo en Java, utilice el método delete():
import java.io.File;  // Import the File class

public class DeleteFile {
  public static void main(String[] args) { 
    File myObj = new File("filename.txt"); 
    if (myObj.delete()) { 
      System.out.println("Deleted the file: " + myObj.getName());
    } else {
      System.out.println("Failed to delete the file.");
    } 
  } 
}
```

#### Eliminar una carpeta
También puede eliminar una carpeta. Sin embargo, debe estar vacío:

```java
import java.io.File; 

public class DeleteFolder {
  public static void main(String[] args) { 
    File myObj = new File("C:\\Users\\MyName\\Test"); 
    if (myObj.delete()) { 
      System.out.println("Deleted the folder: " + myObj.getName());
    } else {
      System.out.println("Failed to delete the folder.");
    } 
  } 
}
```