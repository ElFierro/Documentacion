String txt = "Hello World";

//Longitud de una cadena
txt.length()			//11

//Mayusculas y minisculas
txt.toUpperCase();   	//"HELLO WORLD"
txt.toLowerCase();   	//"hello world"

//Encontrar una palabra especifica
txt.indexOf("world")	//6

//Concatenación 
String firstName = "John", lastName = "Doe";

firstName + " " + lastName		//John Doe
firstName.concat(lastName)

//Escape
"It\'s alright."		//It\'s alright.
"one \\ (backslash)."	//one \ (backslash).
"Hello\nWorld!"			//Hello
								//World
"Hello\tWorld!"			//Hello 	World!
"Hello \bWorld!"		//HelloWorld!
