# Estilos HTML - CSS

CSS significa hojas de estilo en cascada.

CSS ahorra mucho trabajo. Puede controlar el diseño de varias páginas web a la vez.

## Usando CSS
CSS se puede agregar a documentos HTML de 3 maneras:

- **En línea**: utilizando el atributo `style` dentro de los elementos HTML
- **Interno**: mediante el uso de un elemento `<style>` en la sección `<head>`.
- **Externo**: mediante el uso de un elemento `<link>` para vincular a un archivo CSS externo

La forma más común de agregar CSS es mantener los estilos en archivos CSS externos.

## CSS en línea
Se utiliza un CSS en línea para aplicar un estilo único a un único elemento HTML.
```html
<h1 style="color:blue;">A Blue Heading</h1>
```
## CSS interno
Se utiliza un CSS interno para definir un estilo para una sola página HTML.

Un CSS interno se define en la sección `<head>` de una página HTML, dentro de un elemento `<style>`.
```html
<head>
<style>
    body {background-color: powderblue;}
    h1   {color: blue;}
    p    {color: red;}
</style>
```
## CSS externo
Se utiliza una hoja de estilo externa para definir el estilo de muchas páginas HTML.

Para utilizar una hoja de estilo externa, agregue un enlace en la sección `<head>` de cada página HTML:
```html
<head>
  <link rel="stylesheet" href="styles.css">
</head>
```
Así es como se ve el archivo `styles.css`:

"estilos.css":
```css
body {
  background-color: powderblue;
}
h1 {
  color: blue;
}
p {
  color: red;
}
```

## Borde CSS
La propiedad CSS `border` define un borde alrededor de un elemento HTML.
```css
p {
  border: 2px solid powderblue;
}
```
## Relleno CSS
La propiedad CSS `padding` define un relleno (espacio) entre el texto y el borde.
```css
p {
  border: 2px solid powderblue;
  padding: 30px;
}
```
## Margen CSS
La propiedad CSS `margin` define un margen (espacio) fuera del borde.
```css
p {
  border: 2px solid powderblue;
  margin: 50px;
}
```
## Enlace a CSS externo
Se puede hacer referencia a las hojas de estilo externas con una URL completa o con una ruta relativa a la página web actual.
```html
<link rel="stylesheet" href="/html/styles.css">
```
