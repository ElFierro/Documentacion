## Condicionales

Ya sabes que Java soporta las condiciones lógicas habituales de las matemáticas:

- Menos que: a < b
- Menor o igual a: a <= b
- Mayor que: a > b
- Mayor o igual a: a >= b
- Igual a a == b
- No es igual a: a != b

Puede utilizar estas condiciones para realizar diferentes acciones para diferentes decisiones.

Java tiene las siguientes declaraciones condicionales:

- Úselo ifpara especificar un bloque de código que se ejecutará, si una condición especificada es verdadera
- Úselo elsepara especificar un bloque de código que se ejecutará, si la misma condición es falsa
- Úselo else ifpara especificar una nueva condición para probar, si la primera condición es falsa
- Se utiliza switchpara especificar muchos bloques alternativos de código que se ejecutarán.

#### If
Utilice la declaración if para especificar un bloque de código Java que se ejecutará si una condición es true.

Sintaxis

```ssh
if (condition) {
  // block of code to be executed if the condition is true
}
```

Ejemplo

```java
if (day == " Monday") // Condition
{
  // Decision
  System.out.println("Go to School");
}
```
#### Else if
Utilice la declaración else if para especificar una nueva condición si la primera condición es false.

Sintaxis
```ssh
if (condition1) {
  // block of code to be executed if condition1 is true
} else if (condition2) {
  // block of code to be executed if the condition1 is false and condition2 is true
} else {
  // block of code to be executed if the condition1 is false and condition2 is false
}
```

Ejemplo
```java
if (myDay == " Sunny"){
// Decision
  System.out.println("Read in the Library");
}else if (myday == "Raining"){
  //decision
  System.out.println("Read at Home")
}
```

#### Else
Utilice la declaración else para especificar un bloque de código que se ejecutará si la condición es false.

```shh
Sintaxis
if (condition) {
  // block of code to be executed if the condition is true
} else {
  // block of code to be executed if the condition is false
}
```

Ejemplo  
```java
if (myDay == " Sunny")//condition{
  System.out.println("Read in the Library");// Decision
}else{
  System.out.println("Get some Sleep")// Default Decision
}
```

#### Switch
En lugar de escribir muchas declaraciones if..else , puede utilizar la switchdeclaración.

Sintaxis
```shh
switch(expression) {
  case x:
    // code block
    break;
  case y:
    // code block
    break;
  default:
    // code block
}
```

Ejemplo
```java
int myDay = 4; // setting the value to test
switch (myDay)
{
case 1:
  System.out.println("Read in the Library");
  break;
case 2:
  System.out.println("Read at Home");
  break;
default:
  System.out.println("Get some Sleep");
  break;
}
```

#### Con operador ternario

También existe una abreviatura if else , que se conoce como operador ternario porque consta de tres operandos.

Se puede usar para reemplazar varias líneas de código con una sola línea y se usa con mayor frecuencia para reemplazar declaraciones if else simples:

Sintaxis

```shh
variable = (condition) ? expressionTrue :  expressionFalse;
```

Ejemplo  
```java
int time = 20;
String result = (time < 18) ? "Good day." : "Good evening.";
System.out.println(result);
```