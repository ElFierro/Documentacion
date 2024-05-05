# Formularios HTML

Se utiliza un formulario HTML para recopilar la entrada del usuario. La entrada del usuario suele enviarse a un servidor para su procesamiento.

## El elemento `<form>`
El elemento HTML `<form>` se utiliza para crear un formulario HTML para la entrada del usuario:
```html
<form>
.
form elements
.
</form>
```
El elemento `<form>` es un contenedor para diferentes tipos de elementos de entrada, como: campos de texto, casillas de verificación, botones de opción, botones de envío, etc.

## El elemento `<input>`
El elemento HTML `<input>` es el elemento de formulario más utilizado.

Un elemento `<input>` se puede mostrar de muchas maneras, según el type atributo.

Aquí hay unos ejemplos:

| Type	              |Description                                                                            |
| ------------------- | ------------------------------------------------------------------------------------- |
| <input type="text">	| Muestra un campo de entrada de texto de una sola línea| 
| <input type="radio">| 	Muestra un botón de opción (para seleccionar una de muchas opciones)| 
| <input type="checkbox">| 	Muestra una casilla de verificación (para seleccionar cero o más de muchas opciones)| 
| <input type="submit">	| Muestra un botón de envío (para enviar el formulario)| 
| <input type="button">	| Muestra un botón en el que se puede hacer clic| 

## Campos de texto
El `<input type="text">` define un campo de entrada de una sola línea para entrada de texto.
```html
<form>
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname">
</form>
```
## El elemento `<etiqueta>`

La etiqueta `<label>` define una etiqueta para muchos elementos del formulario.

El elemento `<label>` es útil para los usuarios de lectores de pantalla, porque el lector de pantalla leerá la etiqueta en voz alta cuando el usuario se centre en el elemento de entrada.

## Botones de radio
El `<input type="radio">` define un botón de opción.
```html
<form>
  <input type="radio" id="html" name="fav_language" value="HTML">
  <label for="html">HTML</label><br>
  <input type="radio" id="css" name="fav_language" value="CSS">
  <label for="css">CSS</label><br>
  <input type="radio" id="javascript" name="fav_language" value="JavaScript">
  <label for="javascript">JavaScript</label>
</form>
```
## Casillas de verificación
El `<input type="checkbox">` define una casilla de verificación .

Las casillas de verificación permiten al usuario seleccionar CERO o MÁS opciones de un número limitado de opciones.
```html
<form>
  <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
  <label for="vehicle1"> I have a bike</label><br>
  <input type="checkbox" id="vehicle2" name="vehicle2" value="Car">
  <label for="vehicle2"> I have a car</label><br>
  <input type="checkbox" id="vehicle3" name="vehicle3" value="Boat">
  <label for="vehicle3"> I have a boat</label>
</form>
```
## El botón Enviar
Define un botón `<input type="submit">` para enviar los datos del formulario a un controlador de formulario.

El controlador de formulario suele ser un archivo en el servidor con un script para procesar los datos de entrada.
```html
<form action="/action_page.php">
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" value="John"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname" value="Doe"><br><br>
  <input type="submit" value="Submit">
</form>
```

