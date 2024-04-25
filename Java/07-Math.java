//La clase Java Math tiene muchos métodos que le permiten realizar tareas matemáticas con números.

//max()
//El método se puede utilizar para encontrar el valor más alto de xey :Math.max(x,y)
Math.max(5, 10);		//10

//min()
//El método se puede utilizar para encontrar el valor más bajo de xey :Math.min(x,y)
Math.min(5, 10);		//5

//sqrt()
//El método devuelve la raíz cuadrada de x :Math.sqrt(x)
Math.sqrt(64);			//8.0

//abs()
//El método devuelve el valor absoluto (positivo) de x :Math.abs(x)
Math.abs(-4.7);			//4.7

//random()
//Math.random() devuelve un número aleatorio entre 0,0 (inclusive) y 1,0 (exclusivo):
Math.random();			//0.7581506129451685

//Para tener más control sobre el número aleatorio
print randomNum = (int)(Math.random() * 101);  // 0 to 100