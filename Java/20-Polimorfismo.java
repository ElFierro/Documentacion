//Polimorfismo significa "muchas formas" y ocurre cuando tenemos muchas 
//clases que están relacionadas entre sí por herencia.

 //La herencia nos permite heredar atributos y métodos de otra clase. 
 //El polimorfismo utiliza esos métodos para realizar diferentes tareas.
 //Esto nos permite realizar una misma acción de diferentes maneras.

 class Animal {
   public void animalSound() {
      System.out.println("The animal makes a sound");
    }
  }

 class Pig extends Animal {
  public void animalSound() {
   System.out.println("The pig says: wee wee");
    }
  }

 class Dog extends Animal {
  public void animalSound() {
      System.out.println("The dog says: bow wow");
    }
  }
 
  
 class Main {
  public static void main(String[] args) {
      Animal myAnimal = new Animal();  // Create a Animal object
      Animal myPig = new Pig();  // Create a Pig object
      Animal myDog = new Dog();  // Create a Dog object
      myAnimal.animalSound();
      myPig.animalSound();
      myDog.animalSound();
    }
  }