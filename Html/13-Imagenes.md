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

## Mapas de imágenes HTML

Con los mapas de imágenes HTML, puede crear áreas en las que se puede hacer clic en una imagen.

La etiqueta HTML `<map>` define un mapa de imágenes. Un mapa de imágenes es una imagen con áreas en las que se puede hacer clic. Las áreas se definen con una o más etiquetas `<area>`
```html
<img src="workplace.jpg" alt="Workplace" usemap="#workmap">

<map name="workmap">
  <area shape="rect" coords="34,44,270,350" alt="Computer" href="computer.htm">
  <area shape="rect" coords="290,172,333,250" alt="Phone" href="phone.htm">
  <area shape="circle" coords="337,300,44" alt="Coffee" href="coffee.htm">
</map>
```
## ¿Como funciona?
La idea detrás de un mapa de imágenes es que debería poder realizar diferentes acciones dependiendo de en qué parte de la imagen haga clic.

Para crear un mapa de imágenes necesita una imagen y algún código HTML que describa las áreas en las que se puede hacer clic.

## La imagen
La imagen se inserta mediante la etiqueta `<img>`. La única diferencia con otras imágenes es que debes agregar un atributo `usemap`:
```html
<img src="workplace.jpg" alt="Workplace" usemap="#workmap">
```
El valor `usemap` comienza con una etiqueta hash `#` seguida del nombre del mapa de imagen y se utiliza para crear una relación entre la imagen y el mapa de imagen.

## Crear mapa de imagen
Luego, agrega un elemento `<map>`.

El elemento `<map>` se utiliza para crear un mapa de imagen y está vinculado a la imagen mediante el name atributo requerido:
```html
<map name="workmap">
```
El atributo `name` debe tener el mismo valor que el atributo usemap de `<img>`.

## Las areas
Luego, agregue las áreas en las que se puede hacer clic.

Un área en la que se puede hacer clic se define mediante elemento `<area>`.

## Forma
Debe definir la forma del área en la que se puede hacer clic y puede elegir uno de estos valores:

- **rect** define una región rectangular
- **circle** define una región circular
- **poly** define una región poligonal
- **default** define toda la región
También debe definir algunas coordenadas para poder colocar el área en la que se puede hacer clic en la imagen. 

## Forma="rect"
Las coordenadas shape="rect" vienen en pares, una para el eje x y otra para el eje y.

Entonces, las coordenadas 34,44se ubican a 34 píxeles del margen izquierdo y a 44 píxeles de la parte superior:

Las coordenadas 270,350se encuentran a 270 píxeles del margen izquierdo y a 350 píxeles de la parte superior:
```html
<area shape="rect" coords="34, 44, 270, 350" href="computer.htm">
```

## Forma="circle"
Para agregar un área circular, primero ubique las coordenadas del centro del círculo:

337,300

Luego especifique el radio del círculo:

44 píxeles
```html
<area shape="circle" coords="337, 300, 44" href="coffee.htm">
```
## Forma="poly"
Contiene shape="poly"varios puntos de coordenadas, lo que crea una forma formada con líneas rectas (un polígono).

Esto se puede utilizar para crear cualquier forma.
Las coordenadas vienen en pares, una para el eje x y otra para el eje y:
```html
<area shape="poly" coords="140,121,181,116,204,160,204,222" href="croissant.htm">
```

## Imagen de fondo en un elemento HTML
Para agregar una imagen de fondo en un elemento HTML, use el atributo HTML style y la propiedad CSS background-image:
```html
<p style="background-image: url('img_girl.jpg');">
```
También puedes especificar la imagen de fondo en el elemento `<style>`, en la sección `<head>`:
```html
<style>
p {
  background-image: url('img_girl.jpg');
}
</style>
```
## Imagen de fondo en una página
Si desea que toda la página tenga una imagen de fondo, debe especificar la imagen de fondo en el elemento `<body>`:
```html
<style>
body {
  background-image: url('img_girl.jpg');
}
</style>
```
## Repetición de fondo
Si la imagen de fondo es más pequeña que el elemento, la imagen se repetirá, horizontal y verticalmente, hasta llegar al final del elemento:

Para evitar que la imagen de fondo se repita, establezca la propiedad `background-repeat` en `no-repeat`.
```html
<style>
body {
  background-image: url('example_img_girl.jpg');
  background-repeat: no-repeat;
}
</style>
```

## Elemento HTML `<picture>`

El elemento HTML `<picture>` le permite mostrar diferentes imágenes para diferentes dispositivos o tamaños de pantalla.

El elemento `<picture>` contiene uno o más elementos `<source>`, cada uno de los cuales hace referencia a diferentes imágenes a través del atributo `srcset`. De esta manera el navegador puede elegir la imagen que mejor se ajuste a la vista y/o dispositivo actual.
```html
<picture>
  <source media="(min-width: 650px)" srcset="img_food.jpg">
  <source media="(min-width: 465px)" srcset="img_car.jpg">
  <img src="img_girl.jpg">
</picture>
```
## Cuándo utilizar el elemento `<picture>`
Hay dos propósitos principales para el elemento <picture>:

#### Ancho de banda
Si tienes una pantalla o dispositivo pequeño, no es necesario cargar un archivo de imagen grande. El navegador utilizará el primer elemento `<source>` elemento con valores de atributos coincidentes e ignorará cualquiera de los siguientes elementos.

#### Soporte de formato
Es posible que algunos navegadores o dispositivos no admitan todos los formatos de imagen. Al usar el elemento `<picture>`, puede agregar imágenes de todos los formatos y el navegador usará el primer formato que reconozca e ignorará cualquiera de los siguientes elementos.