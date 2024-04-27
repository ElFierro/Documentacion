//CONDICIONALES

 //IF

  //Sintaxis
  if (condition) {
    // block of code to be executed if the condition is true
  }

  //Ejemplo  
   if (day == " Monday") // Condition
   {
     // Decision
     System.out.println("Go to School");
   }

 //ELSE IF

 //Sintaxis
  if (condition1) {
    // block of code to be executed if condition1 is true
  } else if (condition2) {
    // block of code to be executed if the condition1 is false and condition2 is true
  } else {
    // block of code to be executed if the condition1 is false and condition2 is false
  }

 //Ejemplo 
  if (myDay == " Sunny")
   {
     // Decision
     System.out.println("Read in the Library");
   }
     // 2nd condition
    else if (myday == "Raining")
   {
     //decision
     System.out.println("Read at Home")
   }

 //ELSE

  //Sintaxis
  if (condition) {
    // block of code to be executed if the condition is true
  } else {
    // block of code to be executed if the condition is false
  }

  //Ejemplo  
  if (myDay == " Sunny")//condition
   {
    System.out.println("Read in the Library");// Decision
   }
  else
   {
    System.out.println("Get some Sleep")// Default Decision
   }

 //SWITCH
 
  //Sintaxis
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

  //Ejemplo
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

 //CON OPERADORE TERNARIO
  //Sintaxis
  variable = (condition) ? expressionTrue :  expressionFalse;

  //Ejemplo  
  int time = 20;
  String result = (time < 18) ? "Good day." : "Good evening.";
  System.out.println(result);