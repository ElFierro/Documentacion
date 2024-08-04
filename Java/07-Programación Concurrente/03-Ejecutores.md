# Ejecutores (Executors): Uso de ExecutorService, submit, invokeAll

El framework de ejecución en Java proporciona una forma eficiente de gestionar y controlar la ejecución de tareas concurrentes. La interfaz `ExecutorService` y las clases relacionadas permiten manejar hilos de manera más flexible que crear y gestionar hilos manualmente.

## 1. ExecutorService

`ExecutorService` es una interfaz que proporciona métodos para gestionar la ejecución de tareas asincrónicas. Los ejecutores son una forma de desacoplar la tarea de la ejecución, permitiendo a los desarrolladores centrarse en las tareas en lugar de en los detalles de la gestión de hilos.

### 1.1 Creación de ExecutorService

Puedes crear un `ExecutorService` utilizando la clase `Executors`, que ofrece varios métodos de fábrica para crear diferentes tipos de ejecutores.

#### Ejemplo de Creación de ExecutorService

```java
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class EjemploExecutorService {
    public static void main(String[] args) {
        ExecutorService executor = Executors.newFixedThreadPool(3); // Crea un pool de 3 hilos

        Runnable tarea = () -> {
            System.out.println("Ejecutando tarea en " + Thread.currentThread().getName());
        };

        // Envía tareas al executor
        for (int i = 0; i < 5; i++) {
            executor.submit(tarea);
        }

        executor.shutdown(); // Apaga el executor después de que todas las tareas se hayan completado
    }
}
```

## 2. Método submit

El método `submit` envía una tarea para su ejecución y retorna un `Future` que puede ser utilizado para recuperar el resultado de la tarea o para verificar su estado.

### 2.1 Ejemplo de Uso de submit

```java
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class EjemploSubmit {
    public static void main(String[] args) throws Exception {
        ExecutorService executor = Executors.newFixedThreadPool(2);

        Callable<Integer> tarea = () -> {
            Thread.sleep(2000);
            return 123;
        };

        Future<Integer> futuro = executor.submit(tarea);

        // Realiza otras tareas mientras espera el resultado
        System.out.println("Esperando el resultado...");
        Integer resultado = futuro.get(); // Espera a que la tarea termine y obtiene el resultado

        System.out.println("Resultado: " + resultado);

        executor.shutdown();
    }
}
```

## 3. Método invokeAll

El método `invokeAll` acepta una colección de `Callable` y retorna una lista de `Future` que corresponden a cada tarea. Este método bloquea hasta que todas las tareas hayan terminado.

### 3.1 Ejemplo de Uso de invokeAll

```java
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public class EjemploInvokeAll {
    public static void main(String[] args) throws Exception {
        ExecutorService executor = Executors.newFixedThreadPool(3);

        List<Callable<Integer>> tareas = new ArrayList<>();
        for (int i = 0; i < 5; i++) {
            final int id = i;
            tareas.add(() -> {
                TimeUnit.SECONDS.sleep(1);
                return id;
            });
        }

        List<Future<Integer>> resultados = executor.invokeAll(tareas);

        for (Future<Integer> resultado : resultados) {
            System.out.println("Resultado: " + resultado.get());
        }

        executor.shutdown();
    }
}
```

## 4. Conclusión

El uso de `ExecutorService` y sus métodos como `submit` e `invokeAll` simplifica la ejecución y gestión de tareas concurrentes. `ExecutorService` proporciona una forma flexible y poderosa para manejar múltiples hilos y tareas en paralelo, mejorando la eficiencia y el control en aplicaciones concurrentes. Utiliza `submit` para tareas individuales y `invokeAll` para enviar y gestionar múltiples tareas en paralelo, asegurando un manejo adecuado de resultados y estados de las tareas.
