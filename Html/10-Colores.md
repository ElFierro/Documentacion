# Colores HTML
Los colores HTML se especifican con nombres de colores predefinidos o con valores RGB, HEX, HSL, RGBA o HSLA.

## Nombres de colores
En HTML, se puede especificar un color utilizando un nombre de color:
```ssh
Gray
SlateBlue
Violet
LightGray
```
## Color de fondo

Puede establecer el color de fondo para los elementos HTML:
```html
<h1 style="background-color:DodgerBlue;">Hello World</h1>
```
## Color de texto

Puede configurar el color del texto:
```html
<h1 style="color:Tomato;">Hello World</h1>
```
## Color del borde
Puedes establecer el color de los bordes:
```html
<h1 style="border:2px solid Tomato;">Hello World</h1>
```
En HTML, los colores también se pueden especificar utilizando valores RGB, valores HEX, valores HSL, valores RGBA y valores HSLA.

- RGB (RGB(255, 99, 71))
- HEX (#ff6347)
- HSL (hsl(9, 100%, 64%))
- RGBA (rgba(255, 99, 71, 0,5))
- HSLA (hsla(9, 100%, 64%, 0,5))

## Valores de color RGB
 
Un valor de color RGB representa fuentes de luz ROJA, VERDE y AZUL.
```ssh
rgb ( rojo, verde , azul )
```
Cada parámetro (rojo, verde y azul) define la intensidad del color con un valor entre 0 y 255.
```html
rgb(255, 0, 0)
```
## Valores de color RGBA

Los valores de color RGBA son una extensión de los valores de color RGB con un canal Alfa, que especifica la opacidad de un color.

Un valor de color RGBA se especifica con:
```ssh
rgba ( rojo, verde , azul, alfa )
```
El parámetro alfa es un número entre 0,0 (completamente transparente) y 1,0 (nada transparente):
```html
rgba(255, 99, 71, 0)
```
## Valores de color HEX
En HTML, se puede especificar un color utilizando un valor hexadecimal en la forma:
```ssh
#rrggbb​
```
Donde rr (rojo), gg (verde) y bb (azul) son valores hexadecimales entre 00 y ff (igual que el decimal 0-255).
```html
#404040
f8f8f8
```
## Valores de color HSL
En HTML, se puede especificar un color usando tono, saturación y luminosidad (HSL) en la forma:
```ssh
hsl (tono , saturación , luminosidad)
```
El tono es un grado en la rueda de colores de 0 a 360. 0 es rojo, 120 es verde y 240 es azul.
```html
hsl(0, 100%, 0%)
```
## Valores de color HSLA
Los valores de color HSLA son una extensión de los valores de color HSL, con un canal Alfa, que especifica la opacidad de un color.
```ssh
hsla (tono, saturación , luminosidad, alfa)
```

El parámetro alfa es un número entre 0,0 (completamente transparente) y 1,0 (nada transparente):
```html
hsla(9, 100%, 64%, 0.4)
hsla(9, 100%, 64%, 0.8)
```