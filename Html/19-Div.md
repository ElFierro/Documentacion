# Elemento de división

El elemento `<div>` se utiliza como contenedor para otros elementos HTML.

## El elemento `<div>`
El elemento <div> es por defecto un elemento de bloque, lo que significa que toma todo el ancho disponible y viene con saltos de línea antes y después.
```html
Lorem Ipsum <div>I am a div</div> dolor sit amet.
```
## <div> como contenedor

El elemento `<div>` se utiliza a menudo para agrupar secciones de una página web.
```html
<div>
  <h2>London</h2>
  <p>London is the capital city of England.</p>
  <p>London has over 13 million inhabitants.</p>
</div>
```
## Alinear al centro un elemento `<div>`
Si tiene un elemento `<div>` que no es 100% ancho y desea alinearlo al centro, establezca la propiedad CSS margin en auto.

```css
<style>
div {
  width:300px;
  margin:auto;
}
</style>
```
## Múltiples elementos `<div>`
Puedes tener muchos <div>contenedores en la misma página.
```html
<div>
  <h2>London</h2>
  <p>London is the capital city of England.</p>
  <p>London has over 13 million inhabitants.</p>
</div>

<div>
  <h2>Oslo</h2>
  <p>Oslo is the capital city of Norway.</p>
  <p>Oslo has over 600.000 inhabitants.</p>
</div>
```
## Alinear elementos `<div>` uno al lado del otro
Al crear páginas web, a menudo desea tener dos o más elementos `<div>` uno al lado del otro

Existen diferentes métodos para alinear elementos uno al lado del otro, todos incluyen algo de estilo CSS. Veremos los métodos más comunes:

#### float

La propiedad CSS float se utiliza para posicionar y dar formato al contenido y permite que los elementos floten uno al lado del otro en lugar de uno encima del otro.
```css
<style>
.mycontainer {
  width:100%;
  overflow:auto;
}
.mycontainer div {
  width:33%;
  float:left;
}
</style>
```
#### inline-block

Si cambia la propiedad de visualización del elemento `<div>` de bloque a bloque en línea, los elementos `<div>` ya no agregarán un salto de línea antes y después, y se mostrarán uno al lado del otro en lugar de uno encima del otro.
```css
<style>
div {
  width: 30%;
  display: inline-block;
}
</style>
```
#### Flex
El módulo de diseño CSS Flexbox se introdujo para facilitar el diseño de una estructura de diseño flexible y responsiva sin utilizar flotación ni posicionamiento.
```html
<style>
.mycontainer {
  display: flex;
}
.mycontainer > div {
  width:33%;
}
</style>
```
#### Grid

El módulo CSS Grid Layout ofrece un sistema de diseño basado en cuadrículas, con filas y columnas, lo que facilita el diseño de páginas web sin tener que utilizar elementos flotantes ni posicionamiento.

Suena casi igual que flex, pero tiene la capacidad de definir más de una fila y posicionar cada fila individualmente.
```css
<style>
.grid-container {
  display: grid;
  grid-template-columns: 33% 33% 33%;
}
</style>
```