## Expresiones regulares

Una expresión regular es una secuencia de caracteres que forma un patrón de búsqueda. 
Cuando busca datos en un texto, puede utilizar este patrón de búsqueda para describir lo que está buscando.
Una expresión regular puede ser un solo carácter o un patrón más complicado.
Las expresiones regulares se pueden utilizar para realizar todo tipo de operaciones de búsqueda y reemplazo de texto.

 Java no tiene una clase de expresión regular incorporada, pero podemos importar 
 EL paquete java.util.regex para que funcione con expresiones regulares. 
 El paquete incluye las siguientes clases:

- Clase Pattern                 

  define un patrón (que se utilizará en una búsqueda)

- Clase Matcher            

  se utiliza para buscar el patrón.

- Clase PatternSyntaxException  
  
  indica un error de sintaxis en un patrón de expresión regular

import java.util.regex.Matcher;
import java.util.regex.Pattern;

```java
public class Main {
  public static void main(String[] args) {
    Pattern pattern = Pattern.compile("w3schools", Pattern.CASE_INSENSITIVE);
    Matcher matcher = pattern.matcher("Visit W3Schools!");
    boolean matchFound = matcher.find();
    if(matchFound) {
      System.out.println("Match found");
    } else {
      System.out.println("Match not found");
    }
  }
}
```

## Banderas
Las banderas en el método compile() cambian la forma en que se realiza la búsqueda. Éstos son algunos de ellos:

- Pattern.CASE_INSENSITIVE  

  Se ignorarán las mayúsculas y minúsculas de las letras al realizar una búsqueda.

- Pattern.LITERAL           
  
  Los caracteres especiales del patrón se tratarán como caracteres normales al realizar una búsqueda.

- Pattern.UNICODE_CASE      

  Úselo junto con la bandera CASE_INSENSITIVE para ignorar también el caso de letras fuera del alfabeto inglés.
