//CONDICIONALES

 //IF
 if (day == " Monday") // Condition
   {
     // Decision
     System.out.println("Go to School");
   }

 //ELSE IF
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
  if (myDay == " Sunny")//condition
   {
     // Decision
     System.out.println("Read in the Library");
   }
  else
   {
     System.out.println("Get some Sleep")// Default Decision
   }

 //SWITCH
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

 //TERMARIO
  res=(num1>num2) ? (num1+num2):(num1-num2)