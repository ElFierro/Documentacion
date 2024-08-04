# Sincronización en Java: Bloques Synchronized, Métodos Synchronized, Deadlocks

La sincronización es un mecanismo que permite controlar el acceso concurrente a recursos compartidos en un entorno multihilo, evitando problemas como las condiciones de carrera. En Java, puedes usar bloques y métodos sincronizados para garantizar que solo un hilo pueda acceder a un recurso en un momento dado. Además, es importante comprender los deadlocks, que son situaciones en las que dos o más hilos quedan atrapados esperando recursos que nunca estarán disponibles.

## 1. Bloques Synchronized

Un bloque sincronizado es una sección de código dentro de un método que está protegida para asegurar que solo un hilo pueda ejecutarla a la vez.

### 1.1 Sintaxis de Bloques Synchronized

```java
public class EjemploBloquesSynchronized {
    private int contador = 0;

    public void incrementar() {
        synchronized (this) { // Bloque sincronizado
            contador++;
        }
    }

    public static void main(String[] args) {
        EjemploBloquesSynchronized objeto = new EjemploBloquesSynchronized();
        
        Runnable tarea = () -> {
            for (int i = 0; i < 1000; i++) {
                objeto.incrementar();
            }
        };

        Thread hilo1 = new Thread(tarea);
        Thread hilo2 = new Thread(tarea);

        hilo1.start();
        hilo2.start();

        try {
            hilo1.join();
            hilo2.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        System.out.println("Contador: " + objeto.contador);
    }
}
```

## 2. Métodos Synchronized

En lugar de usar bloques sincronizados, puedes sincronizar un método entero. Esto garantiza que solo un hilo pueda ejecutar el método a la vez.

### 2.1 Sintaxis de Métodos Synchronized

```java
public class EjemploMetodoSynchronized {
    private int contador = 0;

    public synchronized void incrementar() { // Método sincronizado
        contador++;
    }

    public static void main(String[] args) {
        EjemploMetodoSynchronized objeto = new EjemploMetodoSynchronized();
        
        Runnable tarea = () -> {
            for (int i = 0; i < 1000; i++) {
                objeto.incrementar();
            }
        };

        Thread hilo1 = new Thread(tarea);
        Thread hilo2 = new Thread(tarea);

        hilo1.start();
        hilo2.start();

        try {
            hilo1.join();
            hilo2.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        System.out.println("Contador: " + objeto.contador);
    }
}
```

## 3. Deadlocks

Un deadlock ocurre cuando dos o más hilos están bloqueados esperando recursos que están en posesión de otros hilos. Esto puede llevar a que ninguno de los hilos pueda continuar su ejecución.

### 3.1 Ejemplo de Deadlock

```java
public class EjemploDeadlock {
    private final Object recurso1 = new Object();
    private final Object recurso2 = new Object();

    public void metodo1() {
        synchronized (recurso1) {
            System.out.println("Hilo 1: Bloqueo de recurso1");
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            synchronized (recurso2) {
                System.out.println("Hilo 1: Bloqueo de recurso2");
            }
        }
    }

    public void metodo2() {
        synchronized (recurso2) {
            System.out.println("Hilo 2: Bloqueo de recurso2");
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            synchronized (recurso1) {
                System.out.println("Hilo 2: Bloqueo de recurso1");
            }
        }
    }

    public static void main(String[] args) {
        EjemploDeadlock deadlock = new EjemploDeadlock();

        Runnable tarea1 = deadlock::metodo1;
        Runnable tarea2 = deadlock::metodo2;

        Thread hilo1 = new Thread(tarea1);
        Thread hilo2 = new Thread(tarea2);

        hilo1.start();
        hilo2.start();
    }
}
```

### 3.2 Prevención y Resolución de Deadlocks

Para evitar deadlocks, considera las siguientes estrategias:

- **Orden de Bloqueo Consistente**: Asegúrate de que todos los hilos adquieran los recursos en el mismo orden.
- **Timeouts**: Utiliza mecanismos de timeout para evitar que los hilos queden bloqueados indefinidamente.
- **Análisis de Dependencias**: Realiza un análisis exhaustivo de las dependencias de recursos y trata de reducir el número de recursos que un hilo necesita adquirir.

## 4. Conclusión

La sincronización es crucial en la programación concurrente para evitar problemas de acceso simultáneo a recursos compartidos. Usa bloques y métodos sincronizados para gestionar el acceso a recursos y prevenir problemas como las condiciones de carrera. Los deadlocks son una situación crítica en la programación multihilo que deben ser manejados con cuidado para asegurar el funcionamiento correcto y eficiente de las aplicaciones concurrentes.
