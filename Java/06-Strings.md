## Cadenas

Las cadenas se utilizan para almacenar texto.

Una variable String contiene una colección de caracteres entre comillas dobles:

```java
String txt = "Hello World";
```

#### Longitud
Una cadena en Java es en realidad un objeto que contiene métodos que pueden realizar ciertas operaciones en cadenas. Por ejemplo, la longitud de una cadena se puede encontrar con el método length()

```java
txt.length()			//11
```

#### Mayusculas y minusculas
```java
txt.toUpperCase();   	//"HELLO WORLD"
txt.toLowerCase();   	//"hello world"
```

#### Encontrar palabras
El método indexOf() devuelve el índice (la posición) de la primera aparición de un texto específico en una cadena (incluidos los espacios en blanco):
```java
txt.indexOf("world")	//6
```
#### Concatenacion

El operador + se puede utilizar entre cadenas para combinarlas. Esto se llama concatenación :
```java
String firstName = "John";
String lastName = "Doe";
System.out.println(firstName + " " + lastName);
```

También puedes usar el método **concat()** para concatenar dos cadenas:

```java
String firstName = "John", lastName = "Doe";

firstName + " " + lastName		//John Doe
firstName.concat(lastName)
```
#### Caracteres especiales
El carácter de escape de barra invertida ( \ ) convierte los caracteres especiales en caracteres de cadena:

```java
\n	New Line	
\r	Carriage Return	
\t	Tab	
\b	Backspace	
\f	Form Feed
```