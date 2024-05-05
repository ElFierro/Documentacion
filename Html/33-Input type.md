# Tipos de entrada HTML

Estos son los diferentes tipos de entrada que puedes usar en HTML:

- <input type="button">
- <input type="checkbox">
- <input type="color">
- <input type="date">
- <input type="datetime-local">
- <input type="email">
- <input type="file">
- <input type="hidden">
- <input type="image">
- <input type="month">
- <input type="number">
- <input type="password">
- <input type="radio">
- <input type="range">
- <input type="reset">
- <input type="search">
- <input type="submit">
- <input type="tel">
- <input type="text">
- <input type="time">
- <input type="url">
- <input type="week">

## Tipo de entrada: text
`<input type="text">` define un campo de entrada de texto de una sola línea :
```html
<form>
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname"><br>
</form>
```
## Tipo de entrada: password
`<input type="password">` define un campo de contraseña:
```html
<form>
  <label for="pwd">Password:</label><br>
  <input type="password" id="pwd" name="pwd">
</form>
```
## Tipo de entrada: submit
`<input type="submit">` define un botón para enviar datos de formulario a un controlador de formulario .

El controlador de formulario suele ser una página de servidor con un script para procesar datos de entrada.

El controlador de formulario se especifica en el action atributo del formulario:
```html
<form action="/action_page.php">
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" value="John"><br>
  <input type="submit" value="Submit">
</form>
```

## Tipo de entrada: reset

`<input type="reset">` define un botón de reinicio que restablecerá todos los valores del formulario a sus valores predeterminados:
```html
<form action="/action_page.php">
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" value="John"><br>
  <input type="submit" value="Submit">
  <input type="reset" value="Reset">
</form>
```
 
Si cambia los valores de entrada y luego hace clic en el botón "Restablecer", los datos del formulario se restablecerán a los valores predeterminados.

## Tipo de entrada: radio
`<input type="radio">` define un botón de opción .

Los botones de opción permiten al usuario seleccionar solo un número limitado de opciones:

```html
<p>Choose your favorite Web language:</p>
<form>
  <input type="radio" id="html" name="fav_language" value="HTML">
  <label for="html">HTML</label><br>
  <input type="radio" id="css" name="fav_language" value="CSS">
  <label for="css">CSS</label><br>
</form>
```

## Tipo de entrada: checkbox
`<input type="checkbox">` define una casilla de verificación .

Las casillas de verificación permiten al usuario seleccionar cero o mas opciones de un número limitado de opciones.
```html
<form>
  <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
  <label for="vehicle1"> I have a bike</label><br>
  <input type="checkbox" id="vehicle2" name="vehicle2" value="Car">
  <label for="vehicle2"> I have a car</label><br>
</form>
```
## Tipo de entrada: button
`<input type="button">` define un botón:
```html
<input type="button" onclick="alert('Hello World!')" value="Click Me!">
```
## Tipo de entrada: Color
`<input type="color">` se utiliza para campos de entrada que deben contener un color.

Dependiendo de la compatibilidad del navegador, puede aparecer un selector de color en el campo de entrada.
```html
<form>
  <label for="favcolor">Select your favorite color:</label>
  <input type="color" id="favcolor" name="favcolor">
</form>
```
## Tipo de entrada: date

`<input type="date">` se utiliza para campos de entrada que deben contener una fecha.

Dependiendo de la compatibilidad del navegador, puede aparecer un selector de fecha en el campo de entrada.
```html
<form>
  <label for="birthday">Birthday:</label>
  <input type="date" id="birthday" name="birthday">
</form>
```

También puedes usar los atributos min y max para agregar restricciones a las fechas:
```html
<form>
  <label for="datemax">Enter a date before 1980-01-01:</label>
  <input type="date" id="datemax" name="datemax" max="1979-12-31"><br><br>
  <label for="datemin">Enter a date after 2000-01-01:</label>
  <input type="date" id="datemin" name="datemin" min="2000-01-02">
</form>
```
## Tipo de entrada: datetime-local
`<input type="datetime-local">` Especifica un campo de entrada de fecha y hora, sin zona horaria.
```html
<form>
  <label for="birthdaytime">Birthday (date and time):</label>
  <input type="datetime-local" id="birthdaytime" name="birthdaytime">
</form>
```
## Tipo de entrada: email
`<input type="email">` Se utiliza para campos de entrada que deben contener una dirección de correo electrónico.
```html
<form>
  <label for="email">Enter your email:</label>
  <input type="email" id="email" name="email">
</form>
```
## Tipo de entrada: image
`<input type="image">` Define una imagen como un botón de envío.
```html
<form>
<input type="image" src="img_submit.gif" alt="Submit" width="48" height="48">
</form>
```
## Tipo de entrada: file
`<input type="file">` Define un campo de selección de archivos y un botón "Examinar" para cargar archivos.
```html
<form>
  <label for="myfile">Select a file:</label>
  <input type="file" id="myfile" name="myfile">
</form>
```
## Tipo de entrada: oculto
`<input type="hidden">` Define un campo de entrada oculto (no visible para el usuario).

Un campo oculto permite a los desarrolladores web incluir datos que los usuarios no pueden ver ni modificar cuando se envía un formulario.

Un campo oculto a menudo almacena qué registro de la base de datos debe actualizarse cuando se envía el formulario.
```html
<form>
  <label for="fname">First name:</label>
  <input type="text" id="fname" name="fname"><br><br>
  <input type="hidden" id="custId" name="custId" value="3487">
  <input type="submit" value="Submit">
</form>
```
## ipo de entrada: month
El `<input type="month">` permite al usuario seleccionar un mes y año.
```html
<form>
  <label for="bdaymonth">Birthday (month and year):</label>
  <input type="month" id="bdaymonth" name="bdaymonth">
</form>
```
## Tipo de entrada: number
El `<input type="number">` define un campo de entrada numérico .

También puede establecer restricciones sobre los números que se aceptan.
```html
<form>
  <label for="quantity">Quantity (between 1 and 5):</label>
  <input type="number" id="quantity" name="quantity" min="1" max="5">
</form>
```
