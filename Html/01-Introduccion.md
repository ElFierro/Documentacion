# Introducción HTML
HTML es el lenguaje de marcado estándar para crear páginas web.

## ¿Qué es HTML?
- HTML significa lenguaje de marcado de hipertexto
- HTML es el lenguaje de marcado estándar para crear páginas web.
- HTML describe la estructura de una página web.
- HTML consta de una serie de elementos.
- Los elementos HTML le dicen al navegador cómo mostrar el contenido.
- Los elementos HTML etiquetan fragmentos de contenido como "este es un encabezado", "este es un párrafo", "este es un enlace", etc.

## ¿Qué es un elemento HTML?

Un elemento HTML se define mediante una etiqueta de inicio, algo de contenido y una etiqueta de finalización:
```ssh
<nombre de etiqueta> El contenido va aquí... </nombre de etiqueta>
```
El elemento HTML es todo, desde la etiqueta inicial hasta la etiqueta final:
```html
<h1> Mi primer título </h1>
<p> Mi primer párrafo. </p>
```

## Estructura de la página HTML
A continuación se muestra una visualización de la estructura de una página HTML:
```html
<html>
  <head>
    <title>Page title</title>
  </head>
  <body>
    <h1>This is a heading</h1>
    <p>This is a paragraph.</p>
    <p>This is another paragraph.</p>
  </body>
</html>
```
## Documentos HTML
Todos los documentos HTML deben comenzar con una declaración de tipo de documento: `<!DOCTYPE html>`.

El documento HTML en sí comienza `<html>` y termina con `</html>`.

La parte visible del documento HTML está entre `<body>` y `</body>`.
```html
<!DOCTYPE html>
<html>
  <body>
    <h1>My First Heading</h1>
    <p>My first paragraph.</p>
  </body>
</html>
```

## La declaración <!DOCTYPE>
La declaración `<!DOCTYPE>` representa el tipo de documento y ayuda a los navegadores a mostrar las páginas web correctamente.

Sólo debe aparecer una vez, en la parte superior de la página (antes de cualquier etiqueta HTML).

## Encabezados HTML
Los encabezados HTML se definen con las etiquetas `<h1>`a `<h6>`.

`<h1>` Define el título más importante. `<h6>` define el encabezado menos importante: 
```html
<h1>This is heading 1</h1>
<h2>This is heading 2</h2>
<h3>This is heading 3</h3>
```

## Párrafos HTML
Los párrafos HTML se definen con la etiqueta `<p>`:
```html
<p>This is a paragraph.</p>
<p>This is another paragraph.</p>
```
## Enlaces HTML
Los enlaces HTML se definen con la etiqueta `<a>`:
```html
<a href="https://www.w3schools.com">This is a link</a>
```
## Imágenes HTML
Las imágenes HTML se definen con la etiqueta `<img>`:
```html
<img src="w3schools.jpg" alt="W3Schools.com" width="104" height="142">
```