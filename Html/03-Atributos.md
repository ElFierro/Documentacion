# Atributos HTML

- Todos los elementos HTML pueden tener **atributos**.
- Los atributos proporcionan **información adicional** sobre los elementos.
- Los atributos siempre se especifican en la **etiqueta de inicio**.
- Los atributos normalmente vienen en pares nombre/valor como: **nombre="valor"**

## El atributo href
La etiqueta `<a>` define un hipervínculo. El atributo `href` especifica la URL de la página a la que va el enlace:
```html
<a href="https://www.w3schools.com">Visit W3Schools</a>
```
## El atributo src
La etiqueta `<img>` se utiliza para incrustar una imagen en una página HTML. El atributo `src` especifica la ruta a la imagen que se mostrará:
```html
<img src="img_girl.jpg">
```
## Los atributos width y height
La etiqueta `<img>` también debe contener los atributos `width` y `height`, que especifican el ancho y el alto de la imagen (en píxeles):
```html
<img src="img_girl.jpg" width="500" height="600">
```
## El atributo alt
El atributo `alt` requerido para la etiqueta `<img>` especifica un texto alternativo para una imagen, si por algún motivo la imagen no se puede mostrar.
```html
<img src="img_girl.jpg" alt="Girl with a jacket">
```
## El atributo style
El atributo `style` se utiliza para agregar estilos a un elemento, como color, fuente, tamaño y más.
```html
<p style="color:red;">This is a red paragraph.</p>
```
## El atributo lang
Siempre debes incluir el atributo `lang` dentro de la etiqueta `<html>`, para declarar el idioma de la página Web. Esto está destinado a ayudar a los motores de búsqueda y navegadores.
```html
<!DOCTYPE html>
<html lang="en">
  <body>
    ...
  </body>
</html>
```
Los códigos de país también se pueden agregar al código de idioma en el atributo `lang`. Entonces, los dos primeros caracteres definen el idioma de la página HTML y los dos últimos definen el país.
```html
<!DOCTYPE html>
<html lang="en-US">
  <body>
    ...
  </body>
</html>
```
## El atributo tittle
El tributo `title` define información adicional sobre un elemento.

El valor del atributo de título se mostrará como información sobre herramientas cuando pase el mouse sobre el elemento:
```html
<p title="I'm a tooltip">This is a paragraph.</p>
```