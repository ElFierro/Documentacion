//FECHAS

 //Java no tiene una clase de fecha incorporada, pero podemos importar el java.time paquete para 
 //que funcione con la API de fecha y hora

  LocalDate    //Representa una fecha (año, mes, día (aaaa-MM-dd))
  LocalTime    //Representa un tiempo (hora, minuto, segundo y nanosegundos (HH-mm-ss-ns))
  LocalDateTime  //Representa tanto una fecha como una hora (aaaa-MM-dd-HH-mm-ss-ns)
  DateTimeFormatter   //Formateador para mostrar y analizar objetos de fecha y hora
  
 //MOSTRAR FECHA ACTUAL
  //Para mostrar la fecha actual, importe la clase java.time.LocalDate y use su método now():

  import java.time.LocalDate; // import the LocalDate class

  public class Main {
    public static void main(String[] args) {
     LocalDate myObj = LocalDate.now(); // Create a date object
     System.out.println(myObj); // Display the current date   - 2024-03-03
    }
   }

 //MOSTRAR HORA ACTUAL
   //Para mostrar la hora actual (hora, minuto, segundo y nanosegundos), importe la clase 
   //java.time.LocalTime y utilice su método now():

   //Ejemplo
    import java.time.LocalTime; // import the LocalTime class

    public class Main {
     public static void main(String[] args) {
      LocalTime myObj = LocalTime.now();
      System.out.println(myObj);   //14:09:42.533160
     }
    }   

 //MOSTRAR FECHA Y HORA ACTUALES
  //Para mostrar la fecha y hora actuales, importe la clase java.time.LocalDateTime 
  //y utilice su método now():

   import java.time.LocalDateTime; // import the LocalDateTime class

   public class Main {
    public static void main(String[] args) {
     LocalDateTime myObj = LocalDateTime.now();
     System.out.println(myObj);  //2024-03-03T14:09:42.533403
    }
   }

 //FORMATEAR HORA Y FECHA
  //La "T" en el ejemplo anterior se utiliza para separar la fecha de la hora. 
  //Puede usar la clase DateTimeFormatter con el método ofPattern() en el mismo 
  //paquete para formatear o analizar objetos de fecha y hora.

   import java.time.LocalDateTime; // Import the LocalDateTime class
   import java.time.format.DateTimeFormatter; // Import the DateTimeFormatter class

   public class Main {
    public static void main(String[] args) {
     LocalDateTime myDateObj = LocalDateTime.now();
     System.out.println("Before formatting: " + myDateObj);  //Before Formatting: 2024-03-03T14:09:42.534073
     DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");

     String formattedDate = myDateObj.format(myFormatObj);
     System.out.println("After formatting: " + formattedDate);  //After Formatting: 03-03-2024 14:09:42
    }
   }

  //El método ofPattern() acepta todo tipo de valores, si desea mostrar la fecha y la hora en 
  //un formato diferente. Por ejemplo:

   yyyy-MM-dd   "1988-09-29"  
   dd/MM/yyyy   "29/09/1988"  
   dd-MMM-yyyy  "29-Sep-1988" 
   E, MMM dd yyyy "Thu, Sep 29 1988"