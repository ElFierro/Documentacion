//Declarar
//Las matrices se utilizan para almacenar múltiples valores en una sola variable, 
//en lugar de declarar variables separadas para cada valor.
String[] cars;
String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
int[] myNum = {10, 20, 30, 40};

//Acceder 
//Puede acceder a un elemento de matriz consultando el número de índice.

String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
System.out.println(cars[0]);// Outputs Volvo

//Cambiar un elemento
cars[0] = "Opel";

//Longitud
String[] cars = {"Volvo", "BMW", "Ford"};
cars.length;//3

//Recorrer 
String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};

//puede usar la length propiedad para especificar cuántas veces debe ejecutarse el bucle
for (int i = 0; i < cars.length; i++) {
  System.out.println(cars[i]);
}
//También hay un bucle " for-each ", que se utiliza exclusivamente para 
        //recorrer elementos en matrices:
for (String i : cars) {
  System.out.println(i);
}

//Matrices multidimensionales
//Una matriz multidimensional es una matriz de matrices.
int[][] myNumbers = { {1, 2, 3, 4}, {5, 6, 7} };

//Acceder
//especifique dos índices: uno para la matriz y otro para el elemento dentro de esa matriz.
myNumbers[1][2]; // Outputs 7

//Cambiar valores
myNumbers[1][2] = 9;

//Recorrer
for (int i = 0; i < myNumbers.length; ++i) {
    for(int j = 0; j < myNumbers[i].length; ++j) {
    System.out.println(myNumbers[i][j]);
    }
}
