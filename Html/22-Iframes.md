# Marcos flotantes HTML

Un iframe HTML se utiliza para mostrar una página web dentro de una página web.

## Sintaxis de marco flotante HTML
La etiqueta HTML `<iframe>` especifica un marco en línea.

Un marco en línea se utiliza para incrustar otro documento dentro del documento HTML actual.

Sintaxis
```html
<iframe src="url" title="description"></iframe>
```

## Iframe - Eliminar el borde
De forma predeterminada, un iframe tiene un borde alrededor.

Para eliminar el borde, agregue el styleatributo y use la borderpropiedad CSS:
```html
<iframe src="demo_iframe.htm" style="border:none;" title="Iframe Example"></iframe>
```
Con CSS, también puedes cambiar el tamaño, estilo y color del borde del iframe:
```html
<iframe src="demo_iframe.htm" style="border:2px solid red;" title="Iframe Example"></iframe>
```
## Iframe - Establecer altura y ancho
Utilice los atributos height y width para especificar el tamaño del iframe.

La altura y el ancho se especifican en píxeles de forma predeterminada:
```html
<iframe src="demo_iframe.htm" height="200" width="300" title="Iframe Example"></iframe>
```
O puedes agregar el atributo style y usar propiedades CSS `height` y`width`:
```html
<iframe src="demo_iframe.htm" style="height:200px;width:300px;" title="Iframe Example"></iframe>
```
## Iframe: destino de un enlace
Se puede utilizar un iframe como marco de destino para un enlace.

El atributo `target` del enlace debe hacer referencia al atributo `name` del iframe:
```html
<iframe src="demo_iframe.htm" name="iframe_a" title="Iframe Example"></iframe>

<p><a href="https://www.w3schools.com" target="iframe_a">W3Schools.com</a></p>
```