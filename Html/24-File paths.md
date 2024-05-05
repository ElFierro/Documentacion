# Rutas de archivos HTML

Una ruta de archivo describe la ubicación de un archivo en la estructura de carpetas de un sitio web.

| Ruta	| Descripción| 
| ---------------------------- | -------------------------------------------------------------------------------------------------|
| `<img src="imagen.jpg">` | 	El archivo "picture.jpg" se encuentra en la misma carpeta que la página actual.| 
| `<img src="imagenes/imagen.jpg">` | 	El archivo "imagen.jpg" se encuentra en la carpeta de imágenes de la carpeta actual| 
| `<img src="/images/imagen.jpg">` | 	El archivo "picture.jpg" se encuentra en la carpeta de imágenes en la raíz de la página web actual. | 
| `<img src="../imagen.jpg">` | 	El archivo "imagen.jpg" se encuentra en la carpeta un nivel arriba de la carpeta actual | 

## Rutas de archivos HTML
Una ruta de archivo describe la ubicación de un archivo en la estructura de carpetas de un sitio web.

Las rutas de archivos se utilizan al vincular archivos externos, como:

- páginas web
- Imágenes
- Hojas de estilo
- JavaScripts

## Rutas absolutas de archivos
Una ruta de archivo absoluta es la URL completa de un archivo:
```html
<img src="https://www.w3schools.com/images/picture.jpg" alt="Mountain">
```
## Rutas de archivos relativas
Una ruta de archivo relativa apunta a un archivo relativo a la página actual.

la ruta del archivo apunta a un archivo en la carpeta de imágenes ubicada en la raíz de la web actual:
```html
<img src="/images/picture.jpg" alt="Mountain">
```
la ruta del archivo apunta a un archivo en la carpeta de imágenes ubicada en la carpeta actual:
```html
<img src="images/picture.jpg" alt="Mountain">
```
la ruta del archivo apunta a un archivo en la carpeta de imágenes ubicada en la carpeta un nivel arriba de la carpeta actual:
```html
<img src="../images/picture.jpg" alt="Mountain">
```