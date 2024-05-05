# Elemento Head

El elemento HTML `<head>` es un contenedor para los siguientes elementos: `<title>`, `<style>`, `<meta>`, `<link>`, `<script>` y `<base>`.

El elemento `<head>` es un contenedor de metadatos (datos sobre datos) y se coloca entre la etiqueta `<html>` y la etiqueta `<body>`.

Los metadatos HTML son datos sobre el documento HTML. Los metadatos no se muestran.

Los metadatos suelen definir el título del documento, el juego de caracteres, los estilos, los scripts y otra información meta.

## El elemento HTML `<título>`
El elemento `<title>` define el título del documento. El título debe ser solo texto y se muestra en la barra de título del navegador o en la pestaña de la página.

¡El elemento `<title>` es obligatorio en documentos HTML!

¡El contenido del título de una página es muy importante para la optimización de motores de búsqueda (SEO)! Los algoritmos de los motores de búsqueda utilizan el título de la página para decidir el orden al enumerar las páginas en los resultados de búsqueda.

## El elemento `<title>`:

- define un título en la barra de herramientas del navegador
- proporciona un título para la página cuando se agrega a favoritos
- muestra un título para la página en los resultados del motor de búsqueda

```html
<head>
  <title>A Meaningful Page Title</title>
</head>
```
## El elemento HTML <estilo>
El elemento `<style>` se utiliza para definir información de estilo para una única página HTML:
```html
<style>
  body {background-color: powderblue;}
  h1 {color: red;}
  p {color: blue;}
</style>
```
## El elemento HTML `<enlace>`
El elemento `<link>` define la relación entre el documento actual y un recurso externo.

La etiqueta `<link>` se utiliza con mayor frecuencia para vincular a hojas de estilo externas:
```html
<link rel="stylesheet" href="mystyle.css">
```
## El elemento HTML `<meta>`
El elemento `<meta>` se utiliza normalmente para especificar el juego de caracteres, la descripción de la página, las palabras clave, el autor del documento y la configuración de la ventana gráfica.

Los metadatos no se mostrarán en la página, pero los utilizarán los navegadores (cómo mostrar el contenido o recargar la página), los motores de búsqueda (palabras clave) y otros servicios web.

Defina el juego de caracteres utilizado:
```html
<meta charset="UTF-8">
```
Definir palabras clave para motores de búsqueda:
```html
<meta name="keywords" content="HTML, CSS, JavaScript">
```
Defina una descripción de su página web:
```html
<meta name="description" content="Free Web tutorials">
```
Definir el autor de una página:
```html
<meta name="author" content="John Doe">
```
Actualizar el documento cada 30 segundos:
```html
<meta http-equiv="refresh" content="30">
```
Configurar la ventana gráfica para que su sitio web se vea bien en todos los dispositivos:
```html
<meta name="viewport" content="width=device-width, initial-scale=1.0">
```
## Configuración de la ventana gráfica
La ventana gráfica es el área visible para el usuario de una página web. Varía según el dispositivo: será más pequeño en un teléfono móvil que en la pantalla de una computadora.

Debes incluir el siguiente elemento `<meta>` en todas tus páginas web:
```html
<meta name="viewport" content="width=device-width, initial-scale=1.0">
```
Esto le da al navegador instrucciones sobre cómo controlar las dimensiones y la escala de la página.

## El elemento HTML `<script>`
El elemento `<script>` se utiliza para definir JavaScripts del lado del cliente.

El siguiente JavaScript escribe "¡Hola JavaScript!" en un elemento HTML con id="demo":
```html
<script>
function myFunction() {
  document.getElementById("demo").innerHTML = "Hello JavaScript!";
}
</script>
```
## El elemento HTML `<base>`
El elemento `<base>` especifica la URL base y/o el destino de todas las URL relativas de una página.

La etiqueta `<base>` debe tener presente un atributo href o target, o ambos.

¡Solo puede haber un único elemento `<base>` en un documento!
```html
<head>
<base href="https://www.w3schools.com/" target="_blank">
</head>

<body>
<a href="tags/tag_base.asp">HTML base Tag</a>
</body>
```