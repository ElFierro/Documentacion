# Atributos del formulario de entrada

## El atributo de form
El atributo `form` de entrada especifica la forma a la que pertenece el elemento `<input>`.
El valor de este atributo debe ser igual al atributo id del elemento `<form>` al que pertenece.
```html
<form action="/action_page.php" id="form1">
  <label for="fname">First name:</label>
  <input type="text" id="fname" name="fname"><br><br>
  <input type="submit" value="Submit">
</form>

<label for="lname">Last name:</label>
<input type="text" id="lname" name="lname" form="form1">
```
## El atributo de formación

El atributo `formaction` de entrada especifica la URL del archivo que procesará la entrada cuando se envíe el formulario.
```html
<form action="/action_page.php">
  <label for="fname">First name:</label>
  <input type="text" id="fname" name="fname"><br><br>
  <label for="lname">Last name:</label>
  <input type="text" id="lname" name="lname"><br><br>
  <input type="submit" value="Submit">
  <input type="submit" formaction="/action_page2.php" value="Submit as Admin">
</form>
```
## El atributo tipo formenc
El atributo `formenctype` de entrada especifica cómo se deben codificar los datos del formulario cuando se envían (solo para formularios con método="post").
```html
<form action="/action_page_binary.asp" method="post">
  <label for="fname">First name:</label>
  <input type="text" id="fname" name="fname"><br><br>
  <input type="submit" value="Submit">
  <input type="submit" formenctype="multipart/form-data"
  value="Submit as Multipart/form-data">
</form>
```
## El atributo formmethod 
El atributo `formmethod` de entrada define el método HTTP para enviar datos del formulario a la URL de acción.
```html
<form action="/action_page.php" method="get">
  <label for="lname">Last name:</label>
  <input type="text" id="lname" name="lname"><br><br>
  <input type="submit" value="Submit using GET">
  <input type="submit" formmethod="post" value="Submit using POST">
</form>
```
## El atributo formtarget
El atributo `formtarget` de entrada especifica un nombre o una palabra clave que indica dónde mostrar la respuesta que se recibe después de enviar el formulario.
```html
<form action="/action_page.php">
  <label for="lname">Last name:</label>
  <input type="text" id="lname" name="lname"><br><br>
  <input type="submit" value="Submit">
  <input type="submit" formtarget="_blank" value="Submit to a new window/tab">
</form>
```
## El atributo formnovalidate
El atributo `formnovalidate` de entrada especifica que un elemento `<input>` no debe validarse cuando se envía.
```html
<form action="/action_page.php">
  <label for="email">Enter your email:</label>
  <input type="email" id="email" name="email"><br><br>
  <input type="submit" value="Submit">
  <input type="submit" formnovalidate="formnovalidate"
  value="Submit without validation">
</form>
```
## El atributo novalidar
El atributo novalidate es un atributo `<form>`.

Cuando está presente, `novalidate` especifica que todos los datos del formulario no deben validarse cuando se envían.
```html
<form action="/action_page.php" novalidate>
  <label for="email">Enter your email:</label>
  <input type="email" id="email" name="email"><br><br>
  <input type="submit" value="Submit">
</form>
```