# Imágenes HTML

Las imágenes pueden mejorar el diseño y la apariencia de una página web.
```html
<img src="pic_trulli.jpg" alt="Italian Trulli">
```
La etiqueta `<img>` tiene dos atributos obligatorios:

- **src**: especifica la ruta a la imagen.
- **alt**: especifica un texto alternativo para la imagen.

Sintaxis
```html
<img src="url" alt="alternatetext">
```
## El atributo src
El atributo requerido srcespecifica la ruta (URL) a la imagen.
```html
<img src="img_chania.jpg" alt="Flowers in Chania">
```
## El atributo alt
El atributo requerido alt proporciona un texto alternativo para una imagen
```html
<img src="img_chania.jpg" alt="Flowers in Chania">
```
## Tamaño de imagen: ancho y alto
Puede utilizar el atributo `style` para especificar el ancho y el alto de una imagen.
```html
<img src="img_girl.jpg" alt="Girl in a jacket" style="width:500px;height:600px;">
```
Alternativamente, puede utilizar los atributos: `width` y `height`
```html
<img src="img_girl.jpg" alt="Girl in a jacket" width="500" height="600">
```
## Imágenes en otra carpeta
Si tienes tus imágenes en una subcarpeta, debes incluir el nombre de la carpeta en el atributo `src`:
```html
<img src="/images/html5.gif" alt="HTML5 Icon" style="width:128px;height:128px;">
```
## Imágenes en otro servidor/sitio web
Algunos sitios web apuntan a una imagen en otro servidor.
```html
<img src="https://www.w3schools.com/images/w3schools_green.jpg" alt="W3Schools.com">
```
## Imágenes animadas
HTML permite GIF animados:
```html
<img src="programming.gif" alt="Computer Man" style="width:48px;height:48px;">
```
## Imagen como enlace
Para utilizar una imagen como enlace, coloque la etiqueta `<img>` dentro de la etiqueta `<a>`:
```html
<a href="default.asp">
  <img src="smiley.gif" alt="HTML tutorial" style="width:42px;height:42px;">
</a>
```
## Imagen flotante
Utilice la propiedad CSS `float` para permitir que la imagen flote hacia la derecha o hacia la izquierda de un texto:
```html
<p><img src="smiley.gif" alt="Smiley face" style="float:right;width:42px;height:42px;">
<p><img src="smiley.gif" alt="Smiley face" style="float:left;width:42px;height:42px;">
```

## Formatos de imagen comunes
Estos son los tipos de archivos de imagen más comunes, compatibles con todos los navegadores (Chrome, Edge, Firefox, Safari, Opera):

| Abreviatura |  Formato                     |   Extension| 
| -------- | ------------------------------- |----------- |
| APNG	| Animated Portable Network Graphics| 	.apng| 
| GIF	| Graphics Interchange Format| 	.gif| 
| ICO	| Microsoft Icon	| .ico, .cur| 
| JPEG	| Joint Photographic Expert Group image | 	.jpg, .jpeg, .jfif, .pjpeg, .pjp| 
| PNG	| Portable Network Graphics	|  .png| 
| SVG	| Scalable Vector Graphics	| .svg| 