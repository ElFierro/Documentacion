	//MODIFICADORES DE ACCESO : controla el nivel de acceso

		//Para las clases , puede utilizar:

			//public			La clase es accesible por cualquier otra clase.
			//default			Solo las clases del mismo paquete pueden acceder a la clase. 

		//Para atributos, métodos y constructores , puede utilizar uno de los siguientes:

			//public			El código es accesible para todas las clases.
			//private			Solo se puede acceder al código dentro de la clase declarada.
			//default			Solo se puede acceder al código en el mismo paquete. 
			//protected			Se puede acceder al código en el mismo paquete y subclases.

	//MODIFICADORES SIN ACCESO : no controlan el nivel de acceso, pero proporcionan otras funciones

		//Para las clases, puedes usar:

			//final				La clase no puede ser heredada por otras clases.
			//abstract			La clase no se puede utilizar para crear objetos 
                                //(para acceder a una clase abstracta, se debe heredar de otra clase).

		//Para atributos y métodos, puede utilizar uno de los siguientes:

			//final				Los atributos y métodos no se pueden anular/modificar
			//static			Los atributos y métodos pertenecen a la clase, en lugar de a un objeto.
			//abstract			Solo se puede usar en una clase abstracta y solo se puede usar en métodos. 
                                //El método no tiene cuerpo
			//transient			Los atributos y métodos se omiten al serializar el objeto que los contiene.
			//synchronized		Solo un hilo puede acceder a los métodos a la vez.
			//volatile			El valor de un atributo no se almacena en caché localmente y siempre
                                //se lee desde la "memoria principal"

	//Final
		//Si no desea tener la capacidad de anular los valores de atributos existentes, declare los atributos como final:
		public class Main {
            final int x = 10;
            final double PI = 3.14;
  
            public static void main(String[] args) {
              Main myObj = new Main();
              myObj.x = 50; // will generate an error: cannot assign a value to a final variable
              myObj.PI = 25; // will generate an error: cannot assign a value to a final variable
              System.out.println(myObj.x);
            }
          }
  
      //Estático
          //Un método static significa que se puede acceder a él sin crear un objeto de la clase, a diferencia de public:
          public class Main {
            // Static method
            static void myStaticMethod() {
              System.out.println("Static methods can be called without creating objects");
            }
  
            // Public method
            public void myPublicMethod() {
              System.out.println("Public methods must be called by creating objects");
            }
  
            // Main method
            public static void main(String[ ] args) {
              myStaticMethod(); // Call the static method
              // myPublicMethod(); This would output an error
  
              Main myObj = new Main(); // Create an object of Main
              myObj.myPublicMethod(); // Call the public method
            }
          }
  
      //Abstracto
          //Un método abstract pertenece a una clase abstract y no tiene cuerpo. El cuerpo lo proporciona la subclase:
  
          // Code from filename: Main.java
          // abstract class
          abstract class Main {
            public String fname = "John";
            public int age = 24;
            public abstract void study(); // abstract method
          }
  
          // Subclass (inherit from Main)
          class Student extends Main {
            public int graduationYear = 2018;
            public void study() { // the body of the abstract method is provided here
              System.out.println("Studying all day long");
            }
          }
  
          // Code from filename: Second.java
          class Second {
            public static void main(String[] args) {
              // create an object of the Student class (which inherits attributes and methods from Main)
              Student myObj = new Student();
  
              System.out.println("Name: " + myObj.fname);
              System.out.println("Age: " + myObj.age);
              System.out.println("Graduation Year: " + myObj.graduationYear);
              myObj.study(); // call abstract method
            }
          }