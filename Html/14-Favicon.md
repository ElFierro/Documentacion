# Favicón 

Un favicon es una pequeña imagen que se muestra junto al título de la página en la pestaña del navegador.

## Cómo agregar un favicon en HTML
Puedes usar cualquier imagen que quieras como tu favicon. También puedes crear tu propio favicon en sitios como https://www.favicon.cc.

A continuación, agregue un elemento `<link>` a su archivo "index.html", después del elemento `<title>`, así:
```html
<head>
  <title>My Page Title</title>
  <link rel="icon" type="image/x-icon" href="/images/favicon.ico">
</head>
```