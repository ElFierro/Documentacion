# Elementos de formulario HTML

## Los elementos HTML `<form>`
El elemento HTML `<form>` puede contener uno o más de los siguientes elementos de formulario:

- `<input>`
- `<label>`
- `<select>`
- `<textarea>`
- `<button>`
- `<fieldset>`
- `<legend>`
- `<datalist>`
- `<output>`
- `<option>`
- `<optgroup>`

## El elemento `<input>`
Uno de los elementos de formulario más utilizados es el elemento `<input>`.

El elemento `<input>` se puede mostrar de varias formas, según el type atributo.
```html
<form action="/action_page.php">
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname"><br><br>
  <input type="submit" value="Submit">
</form>
```
## El elemento `<label>`
El elemento `<label>` define una etiqueta para varios elementos del formulario.

El elemento `<label>` es útil para los usuarios de lectores de pantalla, porque el lector de pantalla leerá la etiqueta en voz alta cuando el usuario se concentre en el elemento de entrada.

El atributo de la etiqueta `<label>` debe ser igual al atributo id del elemento `<input>`  para unirlos.

## El elemento `<select>`
El elemento `<select>` define una lista desplegable:

```html
<label for="cars">Choose a car:</label>
<select id="cars" name="cars">
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="fiat">Fiat</option>
  <option value="audi">Audi</option>
</select>
```
El elemento `<option>` define una opción que se puede seleccionar.

De forma predeterminada, se selecciona el primer elemento de la lista desplegable.

Para definir una opción preseleccionada, agregue el atributo selected a la opción:
```html
<option value="fiat" selected>Fiat</option>
```
## Valores visibles:
Utilice el atributo `size` para especificar el número de valores visibles:

```html
<label for="cars">Choose a car:</label>
<select id="cars" name="cars" size="3">
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="fiat">Fiat</option>
  <option value="audi">Audi</option>
</select>
```

## Permitir selecciones múltiples:
Utilice el atributo `multiple` para permitir al usuario seleccionar más de un valor:
```html
<label for="cars">Choose a car:</label>
<select id="cars" name="cars" size="4" multiple>
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="fiat">Fiat</option>
  <option value="audi">Audi</option>
</select>
```

## El elemento `<textarea>`
El elemento `<textarea>` define un campo de entrada de varias líneas (un área de texto):

```html
<textarea name="message" rows="10" cols="30">
The cat was playing in the garden.
</textarea>
```
El atributo `rows` especifica el número visible de líneas en un área de texto.

El atributo `cols` especifica el ancho visible de un área de texto.

## El elemento `<botón>`
El elemento `<button>` define un botón en el que se puede hacer clic:
```html
<button type="button" onclick="alert('Hello World!')">Click Me!</button>
```

**Nota**: Especifique siempre el atributo type para el elemento del botón. Diferentes navegadores pueden usar diferentes tipos predeterminados para el elemento del botón.

## Los elementos `<fieldset>` y `<legend>`
El elemento `<fieldset>` se utiliza para agrupar datos relacionados en un formulario.

El elemento `<legend>` define un título para el elemento `<fieldset>`.
```html
<form action="/action_page.php">
  <fieldset>
    <legend>Personalia:</legend>
    <label for="fname">First name:</label><br>
    <input type="text" id="fname" name="fname" value="John"><br>
    <label for="lname">Last name:</label><br>
    <input type="text" id="lname" name="lname" value="Doe"><br><br>
    <input type="submit" value="Submit">
  </fieldset>
</form>
```

## El elemento `<datalist>`
El elemento `<datalist>` especifica una lista de opciones predefinidas para un elemento `<input>`.

Los usuarios verán una lista desplegable de las opciones predefinidas a medida que ingresan datos.

El atributo `list` del elemento `<input>`, debe hacer referencia al atributo id del elemento `<datalist>`.
```html
<form action="/action_page.php">
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
## El elemento `<output>`
El elemento `<output>` representa el resultado de un cálculo (como uno realizado por un script).

Realizar un cálculo y mostrar el resultado en un elemento `<output>`:
```html
<form action="/action_page.php"
  oninput="x.value=parseInt(a.value)+parseInt(b.value)">
  0
  <input type="range"  id="a" name="a" value="50">
  100 +
  <input type="number" id="b" name="b" value="50">
  =
  <output name="x" for="a b"></output>
  <br><br>
  <input type="submit">
</form>
```