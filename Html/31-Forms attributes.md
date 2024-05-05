# Atributos del formulario HTML

El atributo de acción
El actionatributo define la acción que se realizará cuando se envíe el formulario.

Por lo general, los datos del formulario se envían a un archivo en el servidor cuando el usuario hace clic en el botón enviar.
```html
<form action="/action_page.php">
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" value="John"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname" value="Doe"><br><br>
  <input type="submit" value="Submit">
</form>
```
## El atributo target
El atributo `target` especifica dónde mostrar la respuesta que se recibe después de enviar el formulario.

El atributo `target` puede tener uno de los siguientes valores:

|Valor     |Descripcion                                         |
| -------- | -------------------------------------------------- |
|_blank	   |La respuesta se muestra en una nueva ventana o pestaña.|
|_self	   |La respuesta se muestra en la ventana actual.|
|_parent	 |La respuesta se muestra en el marco principal.|
|_top	     |La respuesta se muestra en el cuerpo completo de la ventana.|
|framename |La respuesta se muestra en un iframe con nombre.|

El valor predeterminado es `_self` lo que significa que la respuesta se abrirá en la ventana actual.

## El atributo method
El atributo `method` especifica el método HTTP que se utilizará al enviar los datos del formulario.

Los datos del formulario se pueden enviar como variables de URL (con method="get") o como transacción posterior HTTP (con method="post").
```html
<form action="/action_page.php" method="get">

<form action="/action_page.php" method="post">
```
## El atributo de autocomplete
El atributo `autocomplete` especifica si un formulario debe tener activado o desactivado el autocompletado.

Cuando la función de autocompletar está activada, el navegador completa automáticamente los valores en función de los valores que el usuario ha ingresado anteriormente.

```html
<form action="/action_page.php" autocomplete="on">
```
## El atributo novalidate
El atributo novalidate es un atributo booleano.

Cuando está presente, especifica que los datos del formulario (entrada) no deben validarse cuando se envían.

```html
<form action="/action_page.php" novalidate>
  ```