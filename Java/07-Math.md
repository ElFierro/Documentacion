# Math
La clase Java Math tiene muchos métodos que le permiten realizar tareas matemáticas con números.

## Math.max(x,y)
El método `Math.max(x,y)` se puede utilizar para encontrar el valor más alto entre x,y:

```java   
Math.max(5, 10);		//10
```

## Math.min(x,y)
El método `Math.min(x,y)` se puede utilizar para encontrar el valor más bajo de x,y:
   
```java
Math.min(5, 10);		//5
```

## Math.sqrt(x)
El método `Math.sqrt(x)` devuelve la raíz cuadrada de x:

```java
Math.sqrt(64);		//8.0
```

## Math.abs(x)
El método `Math.abs(x)` devuelve el valor absoluto (positivo) de x:

```java
Math.abs(-4.7);		//4.7
```

## Math.random()
`Math.random()` devuelve un número aleatorio entre 0 y 1,0:

```java
Math.random();			//0.7581506129451685
```

Para tener más control sobre el número aleatorio

```java
int randomNum = (int)(Math.random() * 101);  // 0 to 100
```