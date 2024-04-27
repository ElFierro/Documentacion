//Excepciones de Java
 //Al ejecutar código Java pueden ocurrir diferentes errores: errores de codificación cometidos por el programador, 
 //errores por entradas incorrectas u otras cosas imprevisibles.
 //Cuando ocurre un error, Java normalmente se detendrá y generará un mensaje de error.
 //El término técnico para esto es: Java generará una excepción (arrojará un error).

 //TRY CATCH
   //La declaración try le permite definir un bloque de código que se probará en busca de errores mientras se ejecuta.
   //La declaración catch le permite definir un bloque de código que se ejecutará si ocurre un error en el bloque de prueba.
   public class Main {
     public static void main(String[ ] args) {
      try {
        int[] myNumbers = {1, 2, 3};
        System.out.println(myNumbers[10]);
      } catch (Exception e) {
        System.out.println("Something went wrong.");
      }
     }
   }
 //FINALLY
  //La declaración finally le permite ejecutar código, después de try...catch, independientemente del resultado:
   public class Main {
     public static void main(String[] args) {
        try {
          int[] myNumbers = {1, 2, 3};
          System.out.println(myNumbers[10]);
        } catch (Exception e) {
          System.out.println("Something went wrong.");
        } finally {
          System.out.println("The 'try catch' is finished.");
        }
     }
   }

 //THROW
   //La declaración throw le permite crear un error personalizado.
   //La declaración throw se utiliza junto con un tipo de excepción. 
   //Hay muchos tipos de excepciones disponibles en Java:
   //ArithmeticException, FileNotFoundException,ArrayIndexOutOfBoundsException, SecurityExceptionetc:

   public class Main {
    static void checkAge(int age) {
      if (age < 18) {
        throw new ArithmeticException("Access denied - You must be at least 18 years old.");
      }
      else {
        System.out.println("Access granted - You are old enough!");
      }
    }

    public static void main(String[] args) {
      checkAge(15); // Set age to 15 (which is below 18...)
    }
   }