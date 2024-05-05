# Elementos semánticos HTML

Un elemento semántico describe claramente su significado tanto para el navegador como para el desarrollador.

Ejemplos de elementos no semánticos : `<div>` y `<span>` No dice nada sobre su contenido.

Ejemplos de elementos semánticos: `<form>` , `<table>`, y `<article>` Define claramente su contenido.

## Elementos semánticos en HTML
Muchos sitios web contienen código HTML como: `<div id="nav">`, `<div class="header">`, `<div id="footer">` para indicar navegación, encabezado y pie de página.

- `<article>`
- `<aside>`
- `<details>`
- `<figcaption>`
- `<figure>`
- `<footer>`
- `<header>`
- `<main>`
- `<mark>`
- `<nav>`
- `<section>`
- `<summary>`
- `<time>`

## Elemento HTML `<sección>`
El elemento `<section> `define una sección en un documento.

Ejemplos de dónde se puede utilizar un elemento `<section>`:

- Capítulos
- Introducción
- Noticias
- Información del contacto

Normalmente, una página web se puede dividir en secciones para introducción, contenido e información de contacto.
```html
<section>
<h1>WWF</h1>
<p>The World Wide Fund for Nature (WWF) is an international organization working on issues 
  regarding the conservation, research and restoration of the environment, formerly named the 
  World Wildlife Fund. WWF was founded in 1961.</p>
</section>
```
## Elemento HTML `<article>`
El elemento `<article>` especifica contenido independiente y autónomo.

Ejemplos de dónde se puede utilizar el elemento `<article>`:

- Publicaciones del foro
- Publicaciones de blog
- Comentarios del usuario
- Tarjetas de producto
- Artículos del periódico

```html
<article>
<h2>Google Chrome</h2>
<p>Google Chrome is a web browser developed by Google, released in 2008. 
  Chrome is the world's most popular web browser today!</p>
</article>
```

## Elemento HTML `<header>`
El elemento `<header>` representa un contenedor para contenido introductorio o un conjunto de enlaces de navegación.

Un elemento `<header>` normalmente contiene:

- uno o más elementos de encabezado (`<h1>` - `<h6>`)
- logotipo o icono
- información de autoría

**Nota**: Puede tener varios elementos `<header>` en un documento HTML. Sin embargo, `<header>` no se puede colocar dentro de un `<footer>`, `<address>` u otro elemento `<header>`.
```html
<article>
  <header>
    <h1>What Does WWF Do?</h1>
    <p>WWF's mission:</p>
  </header>
  <p>WWF's mission is to stop the degradation of our planet's natural environment,
  and build a future in which humans live in harmony with nature.</p>
</article>
```
## Elemento HTML `<footer>`
El elemento `<footer>` define un pie de página para un documento o sección.

Un elemento `<footer>` normalmente contiene:

- información de autoría
- informacion registrada
- Información del contacto
- mapa del sitio
- volver a los enlaces superiores
- documentos relacionados

Puedes tener varios elementos `<footer>` en un solo documento.

```html
<footer>
  <p>Author: Hege Refsnes</p>
  <p><a href="mailto:hege@example.com">hege@example.com</a></p>
</footer>
```

## Elemento HTML `<nav>`
El elemento `<nav>` define un conjunto de enlaces de navegación.

Tenga en cuenta que NO todos los enlaces de un documento deben estar dentro de un elemento `<nav>`. El elemento `<nav>` está destinado únicamente a bloques importantes de enlaces de navegación.
```html
<nav>
  <a href="/html/">HTML</a> |
  <a href="/css/">CSS</a> |
  <a href="/js/">JavaScript</a> |
  <a href="/jquery/">jQuery</a>
</nav>
```

## Elemento HTML `<aside>`
El elemento `<aside>` define algún contenido aparte del contenido en el que se encuentra (como una barra lateral).

El contenido `<aside>` debe estar indirectamente relacionado con el contenido circundante.
```html
<aside>
<h4>Epcot Center</h4>
<p>Epcot is a theme park at Walt Disney World Resort featuring exciting attractions, international pavilions, 
  award-winning fireworks and seasonal special events.</p>
</aside>
```
## Elementos HTML `<figure>` y `<figcaption>`
La etiqueta `<figure>` especifica contenido autónomo, como ilustraciones, diagramas, fotografías, listados de códigos, etc.

La etiqueta `<figcaption>` define un título para un elemento `<figure>`. El elemento `<figcaption>` se puede colocar como el primero o el último hijo de un elemento `<figure>`.

El elemento `<img>` define la imagen/ilustración real. 
```html
<figure>
  <img src="pic_trulli.jpg" alt="Trulli">
  <figcaption>Fig1. - Trulli, Puglia, Italy.</figcaption>
</figure>
```