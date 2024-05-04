## Variables:
Las variables son contenedores para almacenar valores de datos.
En Java existen diferentes tipos de variables, por ejemplo:

- **String** : almacena texto, como "Hola". Los valores de cadena están entre comillas dobles.
- **int** : almacena números enteros (números enteros), sin decimales, como 123 o -123
- **float** : almacena números de coma flotante, con decimales, como 19,99 o -19,99
- **char** : almacena caracteres individuales, como 'a' o 'B'. Los valores de caracteres están entre comillas simples.
- **boolean** : almacena valores con dos estados: verdadero o falso

## Declaracion de variables:

#### Sintaxis:

```ssh
type variableName = value;
```
#### Ejemplos:

```java
int a,b,c;
float pi;
```

## Variables finales:

Si no desea que otros (o usted mismo) sobrescriban los valores existentes, use la finalpalabra clave (esto declarará la variable como "final" o "constante", lo que significa que no se puede cambiar y es de solo lectura):

```java
final int PI = 3,1416;
```
## Inicializacion de variables:

```java
int a=2,b=4,c=6;
float pi=3.14f;
double do=20.22d;
char a=’v’;
```

## Tipos de variables:

Hay tres tipos de variables en Java :

**1) Variables locales**
Una variable declarada dentro del cuerpo del método se llama variable local. Puede usar esta variable solo dentro de ese método y los otros métodos de la clase ni siquiera saben que la variable existe.

No se puede definir una variable local con la palabra clave "estática".

**2) Variable de instancia**
Una variable declarada dentro de la clase pero fuera del cuerpo del método se denomina variable de instancia. No se declara estático .

Se denomina variable de instancia porque su valor es específico de la instancia y no se comparte entre instancias.

**3) variable estática**
Una variable que se declara como estática se llama variable estática. No puede ser local. Puede crear una única copia de la variable estática y compartirla entre todas las instancias de la clase. La asignación de memoria para variables estáticas ocurre solo una vez cuando la clase se carga en la memoria.

 ```java
class Guru99 {
  static int a = 1; //Variable estatica 
  int data = 99; //variables de instancia  
  void method() {
    int b = 90; //variables locales
  }
}
```