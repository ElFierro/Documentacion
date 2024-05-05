# Bloque HTML y elementos en línea

Cada elemento HTML tiene un valor de visualización predeterminado, según el tipo de elemento que sea.

Los dos valores de visualización más comunes son bloque y en línea.

## Elementos a nivel de bloque

Un elemento a nivel de bloque siempre comienza en una nueva línea y los navegadores agregan automáticamente algo de espacio (un margen) antes y después del elemento.

Un elemento a nivel de bloque siempre ocupa todo el ancho disponible (se extiende hacia la izquierda y hacia la derecha tanto como puede).

Dos elementos de bloque comúnmente utilizados son: `<p>` y `<div>`.

El elemento `<p>` define un párrafo en un documento HTML.

El elemento `<div>` define una división o una sección en un documento HTML
```html
<p>Hello World</p>
<div>Hello World</div>
```
#### El elemento `<div>`
El elemento `<div>` se utiliza a menudo como contenedor para otros elementos HTML.

El elemento `<div>` no tiene atributos obligatorios, pero `style`, `class` y `id` son los mas comunes.

Cuando se usa junto con CSS, el elemento `<div>` se puede usar para diseñar bloques de contenido:
```html
<div style="background-color:black;color:white;padding:20px;">
  <h2>London</h2>
  <p>London is the capital city of England. It is the most populous city in the United Kingdom, 
    with a metropolitan area of over 13 million inhabitants.</p>
</div>
```

## Elementos en línea
Un elemento en línea no comienza en una nueva línea.

Un elemento en línea solo ocupa el ancho necesario.
```html
<span>Hello World</span>
```
#### El elemento `<span>`
El elemento `<span>` es un contenedor en línea que se utiliza para marcar una parte de un texto o una parte de un documento.

El elemento `<span>` no tiene atributos obligatorios, pero `style`, `class` y `id` son los mas comunes.

Cuando se usa junto con CSS, el elemento `<span>` se puede usar para diseñar partes del texto:

```html
<p>My mother has <span style="color:blue;font-weight:bold;">blue</span> 
eyes and my father has <span style="color:darkolivegreen;font-weight:bold;">dark green</span> eyes.</p>
```