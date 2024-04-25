//HERENCIA

 //En Java es posible heredar atributos y métodos de una clase a otra.
 //Agrupamos el “concepto de herencia” en dos categorías:

  //subclase (secundaria): la clase que hereda de otra clase
  //superclase (padre): la clase de la que se hereda

 //Para heredar de una clase, use la palabra clave extends.

  class Vehicle {
   protected String brand = "Ford";        // Vehicle attribute
   public void honk() {                    // Vehicle method
   System.out.println("Tuut, tuut!");
   }
  }

  class Car extends Vehicle {
   private String modelName = "Mustang";    // Car attribute
   public static void main(String[] args) {

   // Create a myCar object
    Car myCar = new Car();

   // Call the honk() method (from the Vehicle class) on the myCar object
    myCar.honk();

   // Display the value of the brand attribute (from the Vehicle class) 
   //and the value of the modelName from the Car class
    System.out.println(myCar.brand + " " + myCar.modelName);
   }
  }
