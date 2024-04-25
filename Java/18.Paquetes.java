    //Paquetes Java y API
		//Un paquete en Java se utiliza para agrupar clases relacionadas. 
        //Piense en ello como una carpeta en un directorio de archivos.
		//Usamos paquetes para evitar conflictos de nombres y escribir un código mejor mantenible.
        //Los paquetes se dividen en dos categorías:

			//Paquetes incorporados (paquetes de la API de Java)
			//Paquetes definidos por el usuario (crea tus propios paquetes)

	//Paquetes incorporados
		//La API de Java es una biblioteca de clases preescritas, de uso gratuito, 
        //incluidas en el entorno de desarrollo de Java.

		//La biblioteca está dividida en paquetes y clases. 
        //Lo que significa que puede importar una sola clase (junto con sus métodos y atributos)
		// o un paquete completo que contenga todas las clases que pertenecen al paquete especificado.

		//Para usar una clase o un paquete de la biblioteca, necesita usar la palabra clave import:

			import package.name.Class;   // Import a single class
			import package.name.*;   // Import the whole package

	//Paquetes definidos por el usuario
		//Para crear su propio paquete, debe comprender que Java utiliza un directorio del sistema, 
        //al igual que las carpetas en tu computadora:

		└── root
		  └── mypack
		    └── MyPackageClass.java

		//Para crear un paquete, use la palabra clave package:
		package mypack;
		class MyPackageClass {
		  public static void main(String[] args) {
		    System.out.println("This is my package!");
		  }
		}

