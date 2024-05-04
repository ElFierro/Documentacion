# Sintaxis
Java es un lenguaje de programación orientado a objetos, lo que significa que Java es una colección de objetos, y estos objetos se comunican mediante llamadas a métodos entre sí para trabajar juntos.

## Terminologías básicas en Java

**Clase**: La clase es un modelo (plan) de la instancia de una clase (objeto). Se puede definir como una plantilla lógica que comparte propiedades y métodos comunes.

**Objeto**: el objeto es una instancia de una clase. Es una entidad que tiene comportamiento y estado.

**Método**: El comportamiento de un objeto es el método.

**Variables de instancia**: cada objeto tiene su propio conjunto único de variables de instancia. El estado de un objeto generalmente se crea mediante los valores asignados a estas variables de instancia.

## Comentarios

Los comentarios se pueden utilizar para explicar el código Java y hacerlo más legible. También se puede utilizar para evitar la ejecución al probar código alternativo.

Hay tres tipos de comentarios en Java:

#### Comentarios de una sola línea

```java
  // This is a comment
```
#### Comentarios de varias líneas de Java

```java
  /* The code below will print the words Hello World
  to the screen, and it is amazing */
```

#### Comentario de documentación. 
También se llama comentario de documento .
```java
/** documentación */
```
## Sensibilidad a mayúsculas y minúsculas

Java es un lenguaje que distingue entre mayúsculas y minúsculas, lo que significa que los identificadores AB , Ab, aB y ab son diferentes en Java.

## Nombres de clases

- La primera letra de la clase debe estar en mayúscula (se permiten pero no se recomiendan las minúsculas).

- Si se utilizan varias palabras para formar el nombre de la clase, la primera letra de cada palabra interna debe estar en mayúscula. Se permiten guiones bajos, pero no se recomiendan. También se permiten números y símbolos de moneda, aunque estos últimos tampoco se recomiendan porque se utilizan para un propósito especial (para clases internas y anónimas).
```java
clase MyJavaProgram // sintaxis válida y recomendada
```

## public static void main(String [] args)

El método main() es el principal punto de entrada a un programa Java; aquí es donde comienza el procesamiento.

## Nombres de métodos

- Todos los nombres de los métodos deben comenzar con una letra minúscula (también se permiten mayúsculas, pero se recomiendan minúsculas).

- Si se utilizan varias palabras para formar el nombre del método, entonces cada primera letra de la palabra interna debe estar en mayúscula. Se permiten guiones bajos, pero no se recomiendan. También se permiten dígitos y símbolos de moneda.

```java
public void employeeRecords() // sintaxis valida
public void EmployeeRecords() // sintaxis valida pero no aconsejable
```

## Identificadores en java

Los identificadores son los nombres de variables locales, variables de instancia y clase, y etiquetas, pero también los nombres de clases, paquetes, módulos y métodos.

```java
Identificadores legales: MinNumber, total, ak74, hello_world, $amount, _under_value 
Identificadores ilegales: 74ak, -amount
```

## Modificadores de acceso

Estos modificadores controlan el alcance de las clases y los métodos.

- **Modificadores de acceso**: predeterminado, público, protegido, privado.
- **Modificadores sin acceso**: final, abstracto, estático, transitorio, sincronizado, volátil, nativo.

## Comprensión de los modificadores de acceso:

| Modificador de acceso| 	Dentro de la clase| Dentro del paquete| Paquete externo solo por subclase| 	Paquete exterior      | 
| -------------------- | ------------------ | ----------------- | -------------------------------- | ---------------------- |
| Privado	| Sí | No|  No|  No| 
| Por defecto	 | Sí|  Sí | No|  No| 
| Protegido	 | Sí | Sí | Sí | No| 
| Público	| Sí | Sí | Sí | Sí| 

## Palabras clave Java

Las palabras clave o palabras reservadas son las palabras de un idioma que se utilizan para algún proceso interno o representan algunas acciones predefinidas. Por lo tanto, no se permite el uso de estas palabras como nombres de variables u objetos. 