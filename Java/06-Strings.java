//CADENAS
 String txt = "Hello World";

 //LONGITUD
  txt.length()			//11

 //MAYUSCULAS Y MINUSCULAS
  txt.toUpperCase();   	//"HELLO WORLD"
  txt.toLowerCase();   	//"hello world"

 //ENCONTRAR PALABRA
  txt.indexOf("world")	//6

 //CONCATENACION 
  String firstName = "John", lastName = "Doe";

  firstName + " " + lastName		//John Doe
  firstName.concat(lastName)

 //ESCAPE
  "It\'s alright."		//It\'s alright.
  "one \\ (backslash)."	//one \ (backslash).
  "Hello\nWorld!"			//Hello
  							//World
  "Hello\tWorld!"			//Hello 	World!
  "Hello \bWorld!"		//HelloWorld!
