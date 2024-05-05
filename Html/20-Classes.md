# Atributo de clase HTML

El atributo HTML `class` se utiliza para especificar una clase para un elemento HTML.

Varios elementos HTML pueden compartir la misma clase.

## Usando el atributo de clase
El atributo `class` se utiliza a menudo para señalar el nombre de una clase en una hoja de estilo. También puede ser utilizado por JavaScript para acceder y manipular elementos con el nombre de clase específico.
```html
<style>
.city {
  background-color: tomato;
  color: white;
  border: 2px solid black;
  margin: 20px;
  padding: 20px;
}
</style>

<div class="city">
  <h2>London</h2>
  <p>London is the capital of England.</p>
</div>
```
```html
<style>
.note {
  font-size: 120%;
  color: red;
}
</style>

<h1>My <span class="note">Important</span> Heading</h1>
<p>This is some <span class="note">important</span> text.</p>
```

**Consejo**: el atributo `class` se puede utilizar en cualquier elemento HTML.

## La sintaxis de la clase
Para crear una clase; escriba un carácter de punto (`.`), seguido del nombre de una clase. Luego, defina las propiedades CSS entre llaves `{}`:
```css
.city {
  background-color: tomato;
  color: white;
  padding: 10px;
}
```
## Múltiples clases
Los elementos HTML pueden pertenecer a más de una clase.

Para definir varias clases, separe los nombres de las clases con un espacio
```html
<style>
.city {
  background-color: tomato;
  color: white;
  padding: 10px;
} 

.main {
  text-align: center;
}
</style>

<h2 class="city main">London</h2>
<h2 class="city">Paris</h2>
```
## Diferentes elementos pueden compartir la misma clase
```html
<style>
.city {
  background-color: tomato;
  color: white;
  padding: 10px;
} 
</style>

<h2 class="city">Paris</h2>
<p class="city">Paris is the capital of France.</p>
```
## Uso del atributo de clase en JavaScript

JavaScript también puede utilizar el nombre de la clase para realizar determinadas tareas para elementos específicos.

JavaScript puede acceder a elementos con un nombre de clase específico con el método `getElementsByClassName()`:
```html
<script>
function myFunction() {
  var x = document.getElementsByClassName("city");
  for (var i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
}
</script>
```