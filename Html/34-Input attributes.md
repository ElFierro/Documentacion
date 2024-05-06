# Atributos de entrada HTML

El atributo `value` de entrada especifica un valor inicial para un campo de entrada:
```html
<form>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname" value="Doe">
</form>
```
## El atributo de readonly
El atributo `readonly` de entrada especifica que un campo de entrada es de solo lectura.

Un campo de entrada de solo lectura no se puede modificar (sin embargo, un usuario puede acceder a él, resaltarlo y copiar el texto).
```html
<form>
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" value="John" readonly><br>
</form>
```
## El atributo disabled
El atributo `disabled` de entrada especifica que un campo de entrada debe estar deshabilitado.

Un campo de entrada deshabilitado no se puede utilizar y no se puede hacer clic en él.
```html
<form>
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" value="John" disabled><br>
</form>
```
## El atributo de size
El atributo `size` de entrada especifica el ancho visible, en caracteres, de un campo de entrada.
```html
<form>
  <label for="pin">PIN:</label><br>
  <input type="text" id="pin" name="pin" size="4">
</form>
```
## El atributo maxlength
El atributo `maxlength` de entrada especifica el número máximo de caracteres permitidos en un campo de entrada.
```html
<form>
  <label for="pin">PIN:</label><br>
  <input type="text" id="pin" name="pin" maxlength="4" size="4">
</form>
```
## Los atributos min y max
Los atributos `min` y `max` de entrada especifican los valores mínimo y máximo para un campo de entrada.
```html
<form>
  <label for="datemax">Enter a date before 1980-01-01:</label>
  <input type="date" id="datemax" name="datemax" max="1979-12-31"><br><br>

  <label for="datemin">Enter a date after 2000-01-01:</label>
  <input type="date" id="datemin" name="datemin" min="2000-01-02"><br><br>

  <label for="quantity">Quantity (between 1 and 5):</label>
  <input type="number" id="quantity" name="quantity" min="1" max="5">
</form>
```
## El atributo múltiple
El atributo `multiple` de entrada especifica que el usuario puede ingresar más de un valor en un campo de entrada.
```html
<form>
  <label for="files">Select files:</label>
  <input type="file" id="files" name="files" multiple>
</form>
```
## El atributo pattern
El atributo `pattern` de entrada especifica una expresión regular con la que se compara el valor del campo de entrada cuando se envía el formulario.
```html
<form>
  <label for="country_code">Country code:</label>
  <input type="text" id="country_code" name="country_code"
  pattern="[A-Za-z]{3}" title="Three letter country code">
</form>
```
## El atributo placeholder
El atributo `placeholder` de entrada especifica una breve sugerencia que describe el valor esperado de un campo de entrada (un valor de muestra o una breve descripción del formato esperado).
```html
<form>
  <label for="phone">Enter a phone number:</label>
  <input type="tel" id="phone" name="phone"
  placeholder="123-45-678"
  pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}">
</form>
```
## El atributo required
El atributo `required` de entrada especifica que se debe completar un campo de entrada antes de enviar el formulario.
```html
<form>
  <label for="username">Username:</label>
  <input type="text" id="username" name="username" required>
</form>
```
## El atributo step
El atributo `step` de entrada especifica los intervalos numéricos legales para un campo de entrada.

**Ejemplo**: si paso="3", los números legales podrían ser -3, 0, 3, 6, etc.
```html
<form>
  <label for="points">Points:</label>
  <input type="number" id="points" name="points" step="3">
</form>
```
## El atributo autofocus
El atributo `autofocus` de entrada especifica que un campo de entrada debe recibir atención automáticamente cuando se carga la página.
```html
<form>
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" autofocus><br>
</form>
```
## Los atributos height y width.
La los atributos `height` y `width` de entrada especifican la altura y el ancho de un elemento `<input type="image">`.
```html
<form>
  <input type="text" id="lname" name="lname"><br><br>
  <input type="image" src="img_submit.gif" alt="Submit" width="48" height="48">
</form>
```
## El atributo de list
El tributo `list` de entrada se refiere a un elemento `<datalist>` que contiene opciones predefinidas para un elemento `<input>`
```html
<form>
  <input list="browsers">
  <datalist id="browsers">
    <option value="Edge">
    <option value="Firefox">
    <option value="Chrome">
    <option value="Opera">
    <option value="Safari">
  </datalist>
</form>
```
## El atributo de autocompletar
El atributo `autocomplete` de entrada especifica si un formulario o un campo de entrada debe tener activado o desactivado el autocompletado.
```html
<form action="/action_page.php" autocomplete="on">
  <label for="fname">First name:</label>
  <input type="text" id="fname" name="fname"><br><br>
  <label for="email">Email:</label>
  <input type="email" id="email" name="email" autocomplete="off"><br><br>
  <input type="submit" value="Submit">
</form>
```