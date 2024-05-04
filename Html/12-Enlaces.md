# Enlaces HTML

Los enlaces se encuentran en casi todas las páginas web. Los enlaces permiten a los usuarios hacer clic para pasar de una página a otra.

La etiqueta HTML `<a>` define un hipervínculo. Tiene la siguiente sintaxis:
```html
<a href="url">link text</a>
```
El atributo más importante del elemento `<a>`  es el atributo `href`, que indica el destino del enlace.
```html
<a href="https://www.w3schools.com/">Visit W3Schools.com!</a>
```
## Enlaces HTML: el atributo de destino
De forma predeterminada, la página vinculada se mostrará en la ventana actual del navegador. Para cambiar esto, debe especificar otro destino para el enlace.

El atributo `target` especifica dónde abrir el documento vinculado.

El atributo `target` puede tener uno de los siguientes valores:

- **_self** Por defecto. Abre el documento en la misma ventana/pestaña en la que se hizo clic.
- **_blank** Abre el documento en una nueva ventana o pestaña.
- **_parent** Abre el documento en el marco principal.
- **_top** Abre el documento en el cuerpo completo de la ventana.
```html
<a href="https://www.w3schools.com/" target="_blank">Visit W3Schools!</a>
```
## URL absolutas frente a URL relativas
```html
<h2>Absolute URLs</h2>
<p><a href="https://www.w3.org/">W3C</a></p>
<p><a href="https://www.google.com/">Google</a></p>

<h2>Relative URLs</h2>
<p><a href="html_images.asp">HTML Images</a></p>
<p><a href="/css/default.asp">CSS Tutorial</a></p>
```
## Utilice una imagen como enlace
Para usar una imagen como enlace, simplemente coloque la etiqueta `<img>` dentro de la etiqueta `<a>`:
```html
<a href="default.asp">
<img src="smiley.gif" alt="HTML tutorial" style="width:42px;height:42px;">
</a>
```
## Enlace a una dirección de correo electrónico
Úselo `mailto:` dentro del atributo `href` para crear un enlace que abra el programa de correo electrónico del usuario (para permitirle enviar un nuevo correo electrónico):
```html
<a href="mailto:someone@example.com">Send email</a>
```
## Botón como enlace
Para utilizar un botón HTML como enlace, debe agregar algún código JavaScript.

**JavaScript** le permite especificar qué sucede en ciertos eventos, como hacer clic en un botón:
```html
<button onclick="document.location='default.asp'">HTML Tutorial</button>
```
## Títulos de enlaces
El atributo `title` especifica información adicional sobre un elemento. La información suele mostrarse como texto de información sobre herramientas cuando el ratón se mueve sobre el elemento.
```html
<a href="https://www.w3schools.com/html/" title="Go to W3Schools HTML section">Visit our HTML Tutorial</a>
```
## Colores de enlaces HTML

- Un enlace no visitado está subrayado y en azul.
- Un enlace visitado está subrayado y en color violeta.
- Un enlace activo está subrayado y en rojo.
```css
<style>
a:link {
  color: green;
  background-color: transparent;
  text-decoration: none;
}

a:visited {
  color: pink;
  background-color: transparent;
  text-decoration: none;
}

a:hover {
  color: red;
  background-color: transparent;
  text-decoration: underline;
}

a:active {
  color: yellow;
  background-color: transparent;
  text-decoration: underline;
}
</style>
```
## Botones de enlace
Un enlace también puede tener el estilo de un botón mediante CSS:
```css
<style>
a:link, a:visited {
  background-color: #f44336;
  color: white;
  padding: 15px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: red;
}
</style>
```

## Crear un marcador en HTML
Los marcadores pueden resultar útiles si una página web es muy larga.
Para crear un marcador, primero cree el marcador y luego agréguele un enlace.
Cuando se hace clic en el enlace, la página se desplazará hacia abajo o hacia arriba hasta la ubicación con el marcador.
```html
<h2 id="C4">Chapter 4</h2>
```
Luego, agregue un enlace al marcador desde la misma página:
```html
<a href="#C4">Jump to Chapter 4</a>
```
También puedes agregar un enlace a un marcador en otra página:

```html
<a href="html_demo.html#C4">Jump to Chapter 4</a>
```