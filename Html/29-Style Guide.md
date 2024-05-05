# Guía de estilo HTML

Un código HTML coherente, limpio y ordenado facilita que otros lean y comprendan su código.
A continuación se ofrecen algunas pautas y consejos para crear un buen código HTML.

## Declarar siempre el tipo de documento
Declare siempre el tipo de documento como la primera línea de su documento.

El tipo de documento correcto para HTML es:
```html
<!DOCTYPE html>
```
## Utilice nombres de elementos y atributos en minúsculas

HTML permite mezclar letras mayúsculas y minúsculas en los nombres de los atributos y elementos.

Sin embargo, recomendamos utilizar nombres en minúsculas:

**Bien**:
```html
<body>
<a href="https://www.w3schools.com/html/">Visit our HTML tutorial</a>
</body>
```
**Mal**
```html
<BODY>
<a HREF="https://www.w3schools.com/html/">Visit our HTML tutorial</a>
</BODY>
```
## Cerrar todos los elementos HTML
En HTML, no es necesario cerrar todos los elementos.

Sin embargo, recomendamos encarecidamente cerrar todos los elementos HTML:

**Bien**:
```html
<section>
  <p>This is a paragraph.</p>
  <p>This is a paragraph.</p>
</section>
```
**Mal**:
```html
<section>
  <p>This is a paragraph.
  <p>This is a paragraph.
</section>
```

## Citar siempre valores de atributos
HTML permite valores de atributos sin comillas.

Sin embargo, recomendamos citar los valores de los atributos porque:

**Bien**:
```html
<table class="striped">
```
**Mal**:
```html
<table class=striped>
```
## Especifique siempre alt, ancho y alto para las imágenes
Especifique siempre el atributo `alt` de las imágenes. Este atributo es importante si la imagen por algún motivo no se puede mostrar.

Además, defina siempre el `width` y `height` de las imágenes.

**Bien**:
```html
<img src="html5.gif" alt="HTML5" style="width:128px;height:128px">
```
**Mal**:
```html
<img src="html5.gif">
```
## Espacios y signos iguales
HTML permite espacios alrededor de los signos iguales. Pero sin espacio es más fácil de leer y agrupa mejor las entidades.

**Bien**:
```html
<link rel="stylesheet" href="styles.css">
```
**Mal**:
```html
<link rel = "stylesheet" href = "styles.css">
```
## Evite líneas de código largas
Cuando se utiliza un editor HTML, NO es conveniente desplazarse hacia la derecha y hacia la izquierda para leer el código HTML.

Intente evitar líneas de código demasiado largas.

## Líneas en blanco y sangría
No agregue líneas en blanco, espacios o sangrías sin un motivo.

Para facilitar la lectura, agregue líneas en blanco para separar bloques de código grandes o lógicos.

Para facilitar la lectura, agregue dos espacios de sangría. No utilice la tecla de tabulación.

**Bien**:
```html
<body>

<h1>Famous Cities</h1>

<h2>Tokyo</h2>
<p>Tokyo is the capital of Japan, the center of the Greater Tokyo Area, and the most populous</p>

<h2>London</h2>
<p>London is the capital city of England. It is the most populous city in the United Kingdom.</p>

</body>
```
**Mal**:
```html
<body>
<h1>Famous Cities</h1>
<h2>Tokyo</h2><p>Tokyo is the capital of Japan, the center of the Greater Tokyo Area, and the most populous</p>
<h2>London</h2><p>London is the capital city of England. It is the most populous city in the United Kingdom.</p>
</body>
```

## Nunca te saltes el elemento `<title>`
El `<title>` es obligatorio en HTML.

¡El contenido del título de una página es muy importante para la optimización de motores de búsqueda (SEO)! Los algoritmos de los motores de búsqueda utilizan el título de la página para decidir el orden al enumerar las páginas en los resultados de búsqueda.
```html
<title>HTML Style Guide and Coding Conventions</title>
```

## ¿Omitiendo `<html>` y `<body>`?
Una página HTML se validará sin las etiquetas `<html>` y `<body>`:
```html
<!DOCTYPE html>
<head>
  <title>Page Title</title>
</head>

<h1>This is a heading</h1>
<p>This is a paragraph.</p>
```

Sin embargo, recomendamos encarecidamente agregar siempre las etiquetas `<html>` y `<body>`
Omitir `<body>` puede producir errores en navegadores más antiguos.
Omitir `<html>` y `<body>` también puede bloquear el software DOM y XML.

## ¿Omitiendo `<head>`?
La etiqueta HTML `<head>` también se puede omitir.

Sin embargo, recomendamos utilizar la etiqueta `<head>`.

## ¿Cerrar elementos HTML vacíos?
En HTML, es opcional cerrar elementos vacíos.

Permitido:
```html
<meta charset="utf-8">
```
También permitido:
```html
<meta charset="utf-8" />
```
Si espera que el software XML/XHTML acceda a su página, mantenga la barra diagonal de cierre (`/`), porque es obligatoria en XML y XHTML.

## Agregue el atributo de idioma
Siempre debes incluir el atributo `lang` dentro de la etiqueta `<html>`, para declarar el idioma de la página Web. Esto está destinado a ayudar a los motores de búsqueda y navegadores.

Ejemplo
```html
<html lang="en-us">
```
## Metadatos
Para garantizar una interpretación adecuada y una indexación correcta en los motores de búsqueda, tanto el idioma como la codificación de caracteres deben definirse lo antes posible en un documento HTML: `<meta charset="charset">`
```html
<!DOCTYPE html>
<html lang="en-us">
<head>
  <meta charset="UTF-8">
  <title>Page Title</title>
</head>
```
## Configuración de la ventana gráfica
La ventana gráfica es el área visible para el usuario de una página web. Varía según el dispositivo: será más pequeño en un teléfono móvil que en la pantalla de una computadora.

Debes incluir el siguiente elemento `<meta>` en todas tus páginas web:
```html
<meta name="viewport" content="width=device-width, initial-scale=1.0">
```
Esto le da al navegador instrucciones sobre cómo controlar las dimensiones y la escala de la página.

La parte `width=device-width` establece el ancho de la página para seguir el ancho de la pantalla del dispositivo (que variará según el dispositivo).

La parte `initial-scale=1.0` establece el nivel de zoom inicial cuando el navegador carga la página por primera vez.

## Comentarios HTML
Los comentarios breves deben escribirse en una línea, así:
```html
<!-- This is a comment -->
```
Los comentarios que abarquen más de una línea deben escribirse así:
```html
<!--
  This is a long comment example. This is a long comment example.
  This is a long comment example. This is a long comment example.
-->
```
Los comentarios largos son más fáciles de observar si tienen una sangría de dos espacios.

## Usar hojas de estilo
Utilice una sintaxis simple para vincular a hojas de estilo (el atributo type no es necesario):
```html
<link rel="stylesheet" href="styles.css">
```
Las reglas CSS cortas se pueden escribir comprimidas, así:
```css
p.intro {font-family:Verdana;font-size:16em;}
```
Las reglas CSS largas deben escribirse en varias líneas:
```css
body {
  background-color: lightgrey;
  font-family: "Arial Black", Helvetica, sans-serif;
  font-size: 16em;
  color: black;
}
```
- Coloque el soporte de apertura en la misma línea que el selector.
- Utilice un espacio antes del corchete de apertura.
- Utilice dos espacios de sangría.
- Utilice punto y coma después de cada par propiedad-valor, incluido el último
- Utilice sólo comillas alrededor de los valores si el valor contiene espacios
- Coloque el corchete de cierre en una nueva línea, sin espacios iniciales

## Cargando JavaScript en HTML
Utilice una sintaxis simple para cargar scripts externos (el atributo type no es necesario):
```html
<script src="myscript.js">
```
