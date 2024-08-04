# Hilos (Threads) en Java: Creación y Gestión de Hilos, Implementación de Runnable y Thread

Los hilos permiten que un programa realice múltiples tareas simultáneamente. En Java, puedes crear y gestionar hilos utilizando la clase `Thread` o implementando la interfaz `Runnable`.

## 1. Creación de Hilos

En Java, hay dos formas principales de crear un hilo: extendiendo la clase `Thread` o implementando la interfaz `Runnable`.

### 1.1 Extender la Clase `Thread`

Puedes crear una clase que extienda `Thread` y sobrescribir su método `run()` para definir el código que debe ejecutarse en el hilo.

#### Ejemplo de Uso de `Thread`

```java
class MiHilo extends Thread {
    @Override
    public void run() {
        for (int i = 0; i < 5; i++) {
            System.out.println("Hilo: " + i);
            try {
                Thread.sleep(1000); // Pausa de 1 segundo
            } catch (InterruptedException e) {
                System.out.println("El hilo fue interrumpido.");
            }
        }
    }
}

public class EjemploThread {
    public static void main(String[] args) {
        MiHilo hilo = new MiHilo();
        hilo.start(); // Inicia el hilo

        // El hilo principal puede seguir haciendo otras cosas
        for (int i = 0; i < 5; i++) {
            System.out.println("Principal: " + i);
            try {
                Thread.sleep(500); // Pausa de 0.5 segundos
            } catch (InterruptedException e) {
                System.out.println("El hilo principal fue interrumpido.");
            }
        }
    }
}
```

### 1.2 Implementar la Interfaz `Runnable`

Otra forma de crear un hilo es implementar la interfaz `Runnable` y pasar una instancia de la clase que implementa `Runnable` al constructor de `Thread`.

#### Ejemplo de Uso de `Runnable`

```java
class MiRunnable implements Runnable {
    @Override
    public void run() {
        for (int i = 0; i < 5; i++) {
            System.out.println("Runnable: " + i);
            try {
                Thread.sleep(1000); // Pausa de 1 segundo
            } catch (InterruptedException e) {
                System.out.println("El hilo fue interrumpido.");
            }
        }
    }
}

public class EjemploRunnable {
    public static void main(String[] args) {
        Runnable runnable = new MiRunnable();
        Thread hilo = new Thread(runnable);
        hilo.start(); // Inicia el hilo

        // El hilo principal puede seguir haciendo otras cosas
        for (int i = 0; i < 5; i++) {
            System.out.println("Principal: " + i);
            try {
                Thread.sleep(500); // Pausa de 0.5 segundos
            } catch (InterruptedException e) {
                System.out.println("El hilo principal fue interrumpido.");
            }
        }
    }
}
```

## 2. Gestión de Hilos

### 2.1 Iniciar un Hilo

Para iniciar un hilo, debes llamar al método `start()` en la instancia del hilo. Esto invoca el método `run()` en un nuevo hilo de ejecución.

### 2.2 Pausar un Hilo

Puedes pausar un hilo durante un período de tiempo utilizando `Thread.sleep(millis)`, donde `millis` es el número de milisegundos que el hilo debe dormir.

### 2.3 Interrumpir un Hilo

Puedes interrumpir un hilo en ejecución utilizando el método `interrupt()`. Para manejar interrupciones, debes capturar `InterruptedException` dentro del método `run()`.

### 2.4 Unir Hilos

El método `join()` permite que el hilo principal espere a que un hilo termine su ejecución antes de continuar. Esto es útil para coordinar el flujo de ejecución entre hilos.

#### Ejemplo de Uso de `join()`

```java
class MiHiloConJoin extends Thread {
    @Override
    public void run() {
        for (int i = 0; i < 5; i++) {
            System.out.println("Hilo con join: " + i);
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                System.out.println("El hilo fue interrumpido.");
            }
        }
    }
}

public class EjemploJoin {
    public static void main(String[] args) {
        MiHiloConJoin hilo = new MiHiloConJoin();
        hilo.start(); // Inicia el hilo

        try {
            hilo.join(); // Espera a que el hilo termine
            System.out.println("Hilo terminado.");
        } catch (InterruptedException e) {
            System.out.println("El hilo principal fue interrumpido.");
        }
    }
}
```

## 3. Conclusión

Los hilos permiten realizar tareas en paralelo, lo cual es fundamental para mejorar el rendimiento de las aplicaciones y manejar múltiples tareas simultáneamente. Puedes crear hilos extendiendo la clase `Thread` o implementando la interfaz `Runnable`. Utiliza métodos como `start()`, `sleep()`, `interrupt()`, y `join()` para gestionar la ejecución de hilos. La correcta gestión de hilos es crucial para evitar problemas como bloqueos o condiciones de carrera en tus aplicaciones multihilo.
