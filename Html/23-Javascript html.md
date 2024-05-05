# javascript HTML

JavaScript hace que las páginas HTML sean más dinámicas e interactivas.

## La etiqueta HTML `<script>`

La etiqueta HTML `<script>` se utiliza para definir un script del lado del cliente (JavaScript).

El elemento `<script>` contiene instrucciones de script o apunta a un archivo de script externo a través del srcatributo.

Los usos comunes de JavaScript son la manipulación de imágenes, la validación de formularios y los cambios dinámicos de contenido.

Para seleccionar un elemento HTML, JavaScript utiliza con mayor frecuencia el método `document.getElementById()`.

```html
<script>
document.getElementById("demo").innerHTML = "Hello JavaScript!";
</script>
```
#### Ejemplo
JavaScript puede cambiar el contenido:

```javascript
document.getElementById("demo").innerHTML = "Hello JavaScript!";
```

JavaScript puede cambiar estilos:

```javascript
document.getElementById("demo").style.fontSize = "25px";
document.getElementById("demo").style.color = "red";
document.getElementById("demo").style.backgroundColor = "yellow";
```
JavaScript puede cambiar atributos:
```javascript
document.getElementById("image").src = "picture.gif";
```
## La etiqueta HTML `<noscript>`
La etiqueta `<noscript>` HTML define un contenido alternativo que se mostrará a los usuarios que tienen scripts deshabilitados en su navegador o tienen un navegador que no admite scripts:
```html
<script>
document.getElementById("demo").innerHTML = "Hello JavaScript!";
</script>
<noscript>Sorry, your browser does not support JavaScript!</noscript>
```