## Hilos
Threads permite que un programa funcione de manera más eficiente al hacer varias cosas al mismo tiempo.
Los subprocesos se pueden utilizar para realizar tareas complicadas en segundo plano sin interrumpir el programa principal.

#### Crear
Hay dos formas de crear un hilo.

- Se puede crear extendiendo la clase Thread y anulando su método run():

```java
public class Main extends Thread {
  public void run() {
    System.out.println("This code is running in a thread");
  } 
}
```

- Otra forma de crear un hilo es implementar la interfaz Runnable:

```java
public class Main implements Runnable {
  public void run() {
    System.out.println("This code is running in a thread");
  }
}
```

#### Hilos de ejecucion

Si la clase extiende la clase Thread, el hilo se puede ejecutar creando una instancia de la clase y llamando a su método start():

```java
public class Main extends Thread {
  public static void main(String[] args) {
    Main thread = new Main();
    thread.start();
    System.out.println("This code is outside of the thread");
  }
  
  public void run() {
    System.out.println("This code is running in a thread");
  }
}
```
Si la clase implementa la interfaz Runnable, el hilo se puede ejecutar pasando una instancia de la clase al constructor de un objeto Thread y luego llamando al método start() del hilo.

```java
public class Main implements Runnable {
  public static void main(String[] args) {
    Main obj = new Main();
    Thread thread = new Thread(obj);
    thread.start();
    System.out.println("This code is outside of the thread");
  }
  
  public void run() {
    System.out.println("This code is running in a thread");
  }
}
```

#### Diferencias entre "extender" e "implementar" hilos

La principal diferencia es que cuando una clase extiende la clase Thread, no puede extender ninguna otra clase, pero al implementar la interfaz Runnable, también es posible extender desde otra clase, como: clase MyClass extends OtherClass implements Runnable.
  
#### Problemas de concurrencia

Debido a que los subprocesos se ejecutan al mismo tiempo que otras partes del programa, no hay forma de saber en qué orden se ejecutará el código. Cuando los subprocesos y el programa principal leen y escriben las mismas variables, los valores son impredecibles. Los problemas que resultan de esto se denominan problemas de concurrencia.

```java
public class Main extends Thread {
  public static int amount = 0;

  public static void main(String[] args) {
    Main thread = new Main();
    thread.start();
    System.out.println(amount);
    amount++;
    System.out.println(amount);
  } 

  public void run() {
    amount++;
  }
} 
```

Para evitar problemas de concurrencia, es mejor compartir la menor cantidad posible de atributos entre subprocesos. Si es necesario compartir atributos, una posible solución es utilizar el método isAlive() del subproceso para comprobar si el subproceso ha terminado de ejecutarse antes de utilizar cualquier atributo que el subproceso pueda cambiar.

```java
public class Main extends Thread {
  public static int amount = 0;

  public static void main(String[] args) {
    Main thread = new Main();
    thread.start();
    // Wait for the thread to finish
    while(thread.isAlive()) {
      System.out.println("Waiting...");
    }
    // Update amount and print its value
    System.out.println("Main: " + amount);
    amount++;
    System.out.println("Main: " + amount);
  }

  public void run() {
      amount++;
  }
}
```
