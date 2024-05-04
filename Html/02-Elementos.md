# Elementos HTML
Un elemento HTML se define mediante una etiqueta de inicio, algo de contenido y una etiqueta de cierre.

El elemento HTML es todo, desde la etiqueta inicial hasta la etiqueta final:
```ssh
<tagname>Content goes here...</tagname>
```
Ejemplos de algunos elementos HTML:
```html
<h1>My First Heading</h1>
<p>My first paragraph.</p>
```
**Nota**: Algunos elementos HTML no tienen contenido (como el elemento **br**). Estos elementos se llaman elementos vacíos. ¡Los elementos vacíos no tienen etiqueta final!

## Elementos HTML anidados
Los elementos HTML se pueden anidar (esto significa que los elementos pueden contener otros elementos).
Todos los documentos HTML constan de elementos HTML anidados.
```html
<!DOCTYPE html>
<html>
  <body>
    <h1>My First Heading</h1>
    <p>My first paragraph.</p>
  </body>
</html>
```
El elemento **html** es el elemento raíz y define todo el documento HTML.
El elemento **body** define el cuerpo del documento.
El elemento **h1** define un encabezado.
El elemento **p** define un párrafo.

## Elementos HTML vacíos
Los elementos HTML sin contenido se denominan elementos vacíos.
La etiqueta **br** define un salto de línea y es un elemento vacío sin etiqueta de cierre:
```html
<p>This is a <br> paragraph with a line break.</p>
```
## HTML no distingue entre mayúsculas y minúsculas
Las etiquetas HTML no distinguen entre mayúsculas y minúsculas: **P** significa lo mismo que **p**.