# Formato de texto HTML

HTML contiene varios elementos para definir texto con un significado especial.

## Elementos de formato HTML
Los elementos de formato se diseñaron para mostrar tipos especiales de texto:

- `<b>` Texto en negrita
- `<strong>` Texto importante
- `<i>` Texto en cursiva
- `<em>` Texto enfatizado
- `<mark>` Texto marcado
- `<small>` Texto más pequeño
- `<del>` Texto eliminado
- `<ins>` Texto insertado
- `<sub>` Texto subíndice
- `<sup>` Texto en superíndice

## Elementos HTML <b> y <strong>
El elemento HTML `<b>` define texto en negrita, sin importancia adicional.
```html
<b>This text is bold</b>
```
El elemento HTML `<strong>` define el texto con gran importancia. El contenido del interior normalmente se muestra en negrita.
```html
<strong>This text is important!</strong>
```

## Elementos HTML <i> y <em>

La etiqueta `<i>` se suele utilizar para indicar un término técnico, una frase de otro idioma, un pensamiento, el nombre de un barco, etc.
```html
<i>This text is italic</i>
```
El elemento HTML `<em>` define el texto enfatizado. El contenido interior normalmente se muestra en cursiva.
```html
<em>This text is emphasized</em>
```
## Elemento HTML <small>

El elemento HTML `<small>` define texto más pequeño:
```html
<small>This is some smaller text.</small>
```
## Elemento HTML <mark>
El elemento HTML `<mark>` define el texto que debe marcarse o resaltarse:
```html
<p>Do not forget to buy <mark>milk</mark> today.</p>
```
## Elemento HTML <del>
El elemento HTML `<del>` define el texto que se ha eliminado de un documento. Los navegadores suelen marcar una línea en el texto eliminado:
```html
<p>My favorite color is <del>blue</del> red.</p>
```
## Elemento HTML <ins>
El elemento HTML `<ins>` define un texto que se ha insertado en un documento. Los navegadores normalmente subrayarán el texto insertado:
```html
<p>My favorite color is <del>blue</del> <ins>red</ins>.</p>
```
## Elemento <sub> HTML

El elemento HTML `<sub>` define el texto del subíndice. El texto del subíndice aparece medio carácter debajo de la línea normal y, a veces, se representa en una fuente más pequeña. El texto con subíndice se puede utilizar para fórmulas químicas, como H 2 O:
```html
<p>This is <sub>subscripted</sub> text.</p>
```
## Elemento HTML <sup>
El elemento HTML `<sup>` define texto en superíndice. El texto en superíndice aparece medio carácter por encima de la línea normal y, a veces, se representa en una fuente más pequeña. Se puede utilizar texto en superíndice para notas a pie de página, como WWW [1] :
```html
<p>This is <sup>superscripted</sup> text.</p>
```