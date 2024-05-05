# Listas

Las listas HTML permiten a los desarrolladores web agrupar un conjunto de elementos relacionados en listas.

## Lista HTML desordenada
Una lista desordenada comienza con la etiqueta `<ul>`. Cada elemento de la lista comienza con la etiqueta `<li>`.
```html
<ul>
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ul>
```

<ul>
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ul>

## Lista HTML desordenada: Marcador de elemento 
La propiedad CSS list-style-type se utiliza para definir el estilo del marcador de elementos de la lista. Puede tener uno de los siguientes valores:

#### Disco
```html
<ul style="list-style-type:disc;">
  <li>Coffee</li>
</ul>
```

#### Circulo
**circle**
```html
<ul style="list-style-type:circle;">
  <li>Coffee</li>
</ul>
```

#### Cuadrado
```html
<ul style="list-style-type:square;">
  <li>Coffee</li>
</ul>
```

#### Ninguno
```html
<ul style="list-style-type:none;">
  <li>Coffee</li>
</ul>
```

## Lista HTML desordenada: Listas HTML anidadas
Las listas se pueden anidar (lista dentro de la lista):
```html
<ul>
  <li>Coffee</li>
  <li>Tea
    <ul>
      <li>Black tea</li>
      <li>Green tea</li>
    </ul>
  </li>
  <li>Milk</li>
</ul>
```

<ul>
  <li>Coffee</li>
  <li>Tea
    <ul>
      <li>Black tea</li>
      <li>Green tea</li>
    </ul>
  </li>
  <li>Milk</li>
</ul>

##  Lista ordenada
Una lista ordenada comienza con la etiqueta `<ol>`. Cada elemento de la lista comienza con la etiqueta `<li>`.
```html
<ol>
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ol>
```
<ol>
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ol>

## Lista HTML ordenada: Atributo de tipo

El atributo type de la etiqueta `<ol>` define el tipo de marcador de elemento de la lista:

#### Números:
```html
<ol type="1">
  <li>Coffee</li>
</ol>
```

#### Letras mayúsculas:
```html
<ol type="A">
  <li>Coffee</li>
</ol>
```
#### Letras minusculas:
```html
<ol type="a">
  <li>Coffee</li>
</ol>
```

#### Números romanos en mayúsculas:
```html
<ol type="I">
  <li>Coffee</li>
</ol>
```
#### Números romanos en minúscula:
```html
<ol type="i">
  <li>Coffee</li>
</ol>
```

## Lista HTML ordenada: Conteo de lista de control
De forma predeterminada, una lista ordenada comenzará a contar desde 1. Si desea comenzar a contar desde un número específico, puede usar el atributo start:

```html
<ol start="50">
  <li>Coffee</li>
  <li>Tea</li>
</ol>
```
<ol start="50">
  <li>Coffee</li>
  <li>Tea</li>
</ol>

## Lista HTML ordenada: Listas anidadas
Las listas se pueden anidar (lista dentro de la lista):
```html
<ol>
  <li>Coffee</li>
  <li>Tea
    <ol>
      <li>Black tea</li>
      <li>Green tea</li>
    </ol>
  </li>
  <li>Milk</li>
</ol>
```
<ol>
  <li>Coffee</li>
  <li>Tea
    <ol>
      <li>Black tea</li>
      <li>Green tea</li>
    </ol>
  </li>
  <li>Milk</li>
</ol>

## Listas de descripción HTML
HTML también admite listas de descripciones.

Una lista de descripción es una lista de términos, con una descripción de cada término.

La etiqueta `<dl>` define la lista de descripción, la etiqueta `<dt>` define el término (nombre) y la etiqueta `<dd>` describe cada término:
```html
<dl>
  <dt>Coffee</dt>
  <dd>- black hot drink</dd>
  <dt>Milk</dt>
  <dd>- white cold drink</dd>
</dl>
```

<dl>
  <dt>Coffee</dt>
  <dd>- black hot drink</dd>
  <dt>Milk</dt>
  <dd>- white cold drink</dd>
</dl>

#### Lista horizontal con CSS
Las listas HTML se pueden diseñar de muchas maneras diferentes con CSS.

Una forma popular es diseñar una lista horizontalmente para crear un menú de navegación:
```html
<head>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #111111;
}
</style>
</head>
<body>

<ul>
  <li><a href="#home">Home</a></li>
  <li><a href="#news">News</a></li>
  <li><a href="#contact">Contact</a></li>
  <li><a href="#about">About</a></li>
</ul>

</body>
```