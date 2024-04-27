
//BUCLES
 int i = 0;
 
 //WHILE
  //El whilebucle recorre un bloque de código siempre que una condición especificada sea true:

  //Sintaxis
  while (condition) {
    // code block to be executed
  }

  //Ejemplo
  while (i < 5) {
	  System.out.println(i);
	  i++;
  }

 //DO WHILE
  //Este bucle ejecutará el bloque de código una vez, antes de verificar
  //si la condición es verdadera, luego repetirá 

  //Sintaxis
  do {
    // code block to be executed
  }
  while (condition);

  //Ejemplo
  do {
   System.out.println(i);
   i++;
  }
  while (i < 5);

 //FOR
  //Cuando sepa exactamente cuántas veces desea recorrer un bloque de código,
  //use el bucle for en lugar de un bucle while:

  //Sintaxis
  for (statement 1; statement 2; statement 3) {
    // code block to be executed
  }

  //Ejemplo
  for (int i = 0; i < 5; i++) {
   System.out.println(i);
  }

 //FOR ANIDADO
  for (int i = 1; i <= 2; i++) {
   System.out.println("Outer: " + i); // Executes 2 times
  
    // Inner loop
    for (int j = 1; j <= 3; j++) {
      System.out.println(" Inner: " + j); // Executes 6 times (2 * 3)
    }
  }  

 //FOR-EACH
  //Sintaxis
  for (type variableName : arrayName) {
    // code block to be executed
  }

  //Ejemplo
  //que se utiliza exclusivamente para recorrer los elementos de una matriz :
   String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
   for (String i : cars) {
    System.out.println(i);
   }

 //BREAK
  //La declaración break también se puede utilizar para salir de un bucle.
  //Ejemplo
   for (int i = 0; i < 10; i++) {
   if (i == 4) {
     break;
   }
   System.out.println(i);
  }

 //CONTINUE
  //interrumpe una iteración, si se produce una condición específica, 
  //y continúa con la siguiente iteración en el bucle.
  //Ejemplo
   for (int i = 0; i < 10; i++) {
    if (i == 4) {
     continue;
    }
    System.out.println(i);
   }