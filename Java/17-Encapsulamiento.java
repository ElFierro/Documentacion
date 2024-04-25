//Encapsulamiento
		//El significado de Encapsulación es garantizar que los datos "sensibles" estén ocultos a los usuarios. Para lograr esto, debes:

			//declarar variables/atributos de clase como private
			//Proporcionar métodos públicos de obtención y configuración para acceder y actualizar el valor de una variable private .

	//Get y Set
		//El método get devuelve el valor de la variable y el método set establece el valor.

		//La sintaxis de ambos es que comienzan con get o set, seguido del nombre de la variable, con la primera letra en mayúscula:

        public class Person {
            private String name; // private = restricted access

            // Getter
            public String getName() {
              return name;
            }

            // Setter
            public void setName(String newName) {
              this.name = newName;
            }
          }

  //Actualizar y acceder

      public class Main {
        public static void main(String[] args) {
          Person myObj = new Person();
          myObj.setName("John"); // Set the value of the name variable to "John"
          System.out.println(myObj.getName());
        }
      }

  //¿Por qué encapsular?

      //Mejor control de los atributos y métodos de clase.
      //Los atributos de clase se pueden hacer de solo lectura (si solo usa el getmétodo) o de solo escritura (si solo usa el setmétodo)
      //Flexible: el programador puede cambiar una parte del código sin afectar otras partes
      //Mayor seguridad de los datos

