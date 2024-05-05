# Diseño web adaptable a HTML

¡El diseño web responsivo consiste en crear páginas web que se vean bien en todos los dispositivos!

Un diseño web responsivo se ajustará automáticamente a diferentes tamaños de pantalla y ventanas gráficas.

## ¿Qué es el diseño web responsivo?
El diseño web responsivo consiste en utilizar HTML y CSS para cambiar el tamaño, ocultar, reducir o ampliar automáticamente un sitio web, para que se vea bien en todos los dispositivos (computadoras de escritorio, tabletas y teléfonos):

## Configuración de la ventana gráfica
Para crear un sitio web responsivo, agregue la siguiente etiqueta `<meta>` a todas sus páginas web:
```html
<meta name="viewport" content="width=device-width, initial-scale=1.0">
```
Esto configurará la ventana gráfica de su página, que le dará al navegador instrucciones sobre cómo controlar las dimensiones y la escala de la página.

## Imágenes responsivas
Las imágenes responsivas son imágenes que se escalan bien para adaptarse a cualquier tamaño de navegador.

## Usando la propiedad de width
Si la propiedad CSS width se establece en 100%, la imagen responderá y se ampliará hacia arriba y hacia abajo:
```html
<img src="img_girl.jpg" style="width:100%;">
```
## Usando la propiedad de max-width

Si la propiedad max-width se establece en 100%, la imagen se reducirá si es necesario, pero nunca se ampliará para que sea mayor que su tamaño original:
```html
<img src="img_girl.jpg" style="max-width:100%;height:auto;">
```
## Mostrar diferentes imágenes según el ancho del navegador
El elemento HTML `<picture>` le permite definir diferentes imágenes para diferentes tamaños de ventana del navegador.
```html
<picture>
  <source srcset="img_smallflower.jpg" media="(max-width: 600px)">
  <source srcset="img_flowers.jpg" media="(max-width: 1500px)">
  <source srcset="flowers.jpg">
  <img src="img_smallflower.jpg" alt="Flowers">
</picture>
```
## Tamaño de texto adaptable
El tamaño del texto se puede configurar con una unidad "vw", que significa "ancho de ventana gráfica".

De esa forma, el tamaño del texto seguirá el tamaño de la ventana del navegador:
```html
<h1 style="font-size:10vw">Hello World</h1>
```
## Media Queries

Además de cambiar el tamaño del texto y las imágenes, también es común utilizar consultas de medios en páginas web responsivas.

Con las consultas de medios puedes definir estilos completamente diferentes para diferentes tamaños de navegador.
```html

<style>
.left, .right {
  float: left;
  width: 20%; /* The width is 20%, by default */
}

.main {
  float: left;
  width: 60%; /* The width is 60%, by default */
}

/* Use a media query to add a breakpoint at 800px: */
@media screen and (max-width: 800px) {
  .left, .main, .right {
    width: 100%; /* The width is 100%, when the viewport is 800px or smaller */
  }
}
</style>
```