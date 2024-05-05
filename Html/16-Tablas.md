# Tablas

Las tablas HTML permiten a los desarrolladores web organizar los datos en filas y columnas.

## Definir una tabla HTML
Una tabla en HTML consta de celdas de tabla dentro de filas y columnas.
```html
<table>
  <tr>
    <th>Company</th>
  </tr>
  <tr>
    <td>Alfreds Futterkiste</td>
  </tr>
  <tr>
    <td>Centro comercial Moctezuma</td>
  </tr>
</table>
```
## Celdas de tabla
Cada celda de la tabla está definida por una etiqueta `<td>` y una `</td>`.

Todo lo que está entre `<td>` y `</td>` es el contenido de la celda de la tabla.
```html
<table>
  <tr>
    <td>Emil</td>
  </tr>
</table>
```
## Filas de la tabla
Cada fila de la tabla comienza con una `<tr>` y termina con una etiqueta `</tr>`.
```html
<table>
  <tr>
    <td>Emil</td>
  </tr>
  <tr>
    <td>16</td>
  </tr>
</table>
```
## Encabezados de tabla
A veces desea que sus celdas sean celdas de encabezado de tabla. En esos casos utilice la etiqueta `<th>` en lugar de la etiqueta `<td>`:
```html
<table>
  <tr>
    <th>Person 1</th>
  </tr>
  <tr>
    <td>Linus</td>
  </tr>
</table>
```
## Cómo agregar un borde
Para agregar un borde, use la propiedad CSS `border` en los elementos th, table y td:
```css
table, th, td { border: 1px solid black; }
```
## Bordes de tabla colapsados

Para evitar tener bordes dobles, establezca la `border-collapse` propiedad CSS en `collapse`.
```css
table, th, td { border-collapse: collapse; }
```
## Border-radius
Con la propiedad `border-radius`, los bordes adquieren esquinas redondeadas:
```css
table, th, td { border-radius: 10px; }
```
## Border-style

Con la propiedad `border-style`, puedes establecer la apariencia del borde.

Se permiten los siguientes valores:

- dotted     
- dashed     
- solid     
- double     
- groove     
- ridge     
- inset     
- outset     
- none     
- hidden   
```css
th, td { border-style: dotted; }
```

## border-color
Con la propiedad `border-color`, puedes establecer el color del borde.
```css
th, td { border-color: #96D4D4; }
```
## Tamaños de tablas HTML
Las tablas HTML pueden tener diferentes tamaños para cada columna, fila o la tabla completa.

## Ancho de la tabla HTML
Para establecer el ancho de una tabla, agregue el atributo style al elemento `<table>`:
```html
<table style="width:100%"> </table>
```

## Ancho de columna de tabla HTML

Para establecer el tamaño de una columna específica, agregue el atributo `style` en un elemento `<th>` o `<td>`:
```html
<th style="width:70%">Firstname</th>
```
## Altura de fila de tabla HTML
Para establecer la altura de una fila específica, agregue el atributo `style` en un elemento de fila de la tabla:
```html
<tr style="height:200px">
```
## Encabezado para varias columnas

Puede tener un encabezado que abarque dos o más columnas.
```html
<table>
  <tr>
    <th colspan="2">Name</th>
    <th>Age</th>
  </tr>
</table>
```
## Título de la tabla
Puede agregar un título que sirva como encabezado para toda la tabla.
```html
<table style="width:100%">
  <caption>Monthly savings</caption>
  <tr>
    <th>Month</th>
    <th>Savings</th>
  </tr>
</table>
```
## Relleno de celdas

Para agregar relleno en las celdas de la tabla, use la propiedad CSS `padding`:

```css
th, td { padding: 15px; }

th, td {
  padding-top: 10px;
  padding-bottom: 20px;
  padding-left: 30px;
  padding-right: 40px;
}
```
## Espaciado de celdas

Para cambiar el espacio entre las celdas de la tabla, use la propiedad `border-spacing` en el elemento `table`:
```css
table {  border-spacing: 30px; }
```
## Extensión de filas

Para hacer que una celda abarque varias filas, utilice el atributo `rowspan`:
```html
<table>
  <tr>
    <th rowspan="2">Phone</th>
    <td>555-1234</td>
  </tr>
</table>
```
## Rayas de cebra

Para aplicar estilo a todos los demás elementos de fila de la tabla, use el selector `:nth-child(even)` de esta manera:
```css
tr:nth-child(even) { background-color: #D6EEEE; }
```
## rayas verticales de cebra
Para hacer rayas de cebra verticales, diseñe cada dos columnas , en lugar de cada dos filas.
```css
td:nth-child(even), th:nth-child(even) { background-color: #D6EEEE; }
```
## Divisores Horizontales
Agregue la propiedad `border-bottom` a todos los elementos tr para obtener divisores horizontales:
```css
tr {  border-bottom: 1px solid #ddd; }
```
## Tabla flotante

Utilice el selector `:hover` en `tr` para resaltar las filas de la tabla al pasar el mouse sobre:
```css
tr:hover {background-color: #D6EEEE;}
```
## Grupo de columnas de tabla 

El elemento `<colgroup>` debe usarse como contenedor para las especificaciones de la columna.
```html
<colgroup>
    <col span="2" style="background-color: #D6EEEE">
</colgroup>
```
Sólo hay una selección muy limitada de propiedades CSS que pueden usarse en el grupo `col`:

- width
- visibility
- background
- border

## Múltiples elementos de columna
Si desea diseñar más columnas con diferentes estilos, use más elementos `<col>` dentro de `<colgroup>`:
```html
<colgroup>
    <col span="2" style="background-color: #D6EEEE">
    <col span="3" style="background-color: pink">
</colgroup>
```
## Grupos de columnas vacíos
Si desea aplicar estilo a las columnas en medio de una tabla, inserte un elemento `<col>` "vacío" (sin estilos) para las columnas anteriores:
```html
<colgroup>
    <col span="3">
    <col span="2" style="background-color: pink">
</colgroup>
```
## Ocultar columnas
Puedes ocultar columnas con la propiedad `visibility:collapse`:
```html
<colgroup>
    <col span="2">
    <col span="3" style="visibility: collapse">
</colgroup>
```