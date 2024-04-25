//if statement
    if (day == " Monday") // Condition
        {
          // Decision
          Console.WriteLine("Go to School");
        }

//else if statement
    if (myDay == " Sunny")
        {
          // Decision
          Console.WriteLine("Read in the Library");
        }
    // 2nd condition
    else if (myday == "Raining")
        {
          //decision
          Console.WriteLine("Read at Home")
        }

//else statement
    if (myDay == " Sunny")//condition
    {
      // Decision
      Console.WriteLine("Read in the Library");
    }
    else
    {
      Console.WriteLine("Get some Sleep")// Default Decision
    }

//switch
    int myDay = 4; // setting the value to test
    switch (myDay)
        {
            case 1:
                Console.WriteLine("Read in the Library");
                break;
            case 2:
                Console.WriteLine("Read at Home");
                break;
            default:
                Console.WriteLine("Get some Sleep");
                break;
        }

//Ternary
  res=(num1>num2) ? (num1+num2):(num1-num2)