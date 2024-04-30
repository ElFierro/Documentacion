# Manejo de archivos
Python tiene varias funciones para crear, leer, actualizar y eliminar archivos.

## Abrir archivos
La función clave para trabajar con archivos en Python es la función open().
La función open() toma dos parámetros; nombre de archivo y modo .

Hay cuatro métodos (modos) diferentes para abrir un archivo:

- Leer
  "r"- #Valor predeterminado. Abre un archivo para leer, error si el archivo no existe

- Agregar
  "a"- #abre un archivo para agregarlo y crea el archivo si no existe.

- Escribir
  "w"- #abre un archivo para escribir, crea el archivo si no existe.

- Crear
  "x"- #crea el archivo especificado, devuelve un error si el archivo existe.

Además, puede especificar si el archivo debe manejarse en modo binario o texto.

- Texto
	"t"- #Valor predeterminado. Modo texto

- Binario
	"b" - #Modo binario (por ejemplo, imágenes)

#### Sintaxis

Para abrir un archivo y leerlo, basta con especificar el nombre del archivo:
```python
f = open("demofile.txt")
```
El código anterior es el mismo que:
```python
f = open("demofile.txt", "rt")
```
Dado que "r" para lectura y "t" para texto son los valores predeterminados, no es necesario especificarlos.

asegúrese de que el archivo exista; de lo contrario, recibirá un error.

## Laer archivos

Supongamos que tenemos el siguiente archivo, ubicado en la misma carpeta que Python:
```ssh
archivo demo.txt
Hello! Welcome to demofile.txt
This file is for testing purposes.
Good Luck!
```
La función open() devuelve un objeto de archivo, que tiene un método read() para leer el contenido del archivo:
```python
f = open("demofile.txt", "r")
print(f.read())
```
Si el archivo se encuentra en una ubicación diferente, deberá especificar la ruta del archivo, de esta manera:
```python
f = open("D:\\myfiles\welcome.txt", "r")
print(f.read())		        		
```
## Sólo lectura de partes del archivo
De forma predeterminada, el método read() devuelve el texto completo, pero también puedes especificar cuántos caracteres deseas devolver:
```python
f = open("demofile.txt", "r")
print(f.read(5))			#Hello
```
## Leer líneas
Puede devolver una línea utilizando el método readline():
```python
f = open("demofile.txt", "r")
print(f.readline())				#Hello! Welcome to demofile.text
```
Al recorrer las líneas del archivo, puede leer el archivo completo, línea por línea:
```python
f = open("demofile.txt", "r")
for x in f:
	print(x)		
```
## Cerrar archivos

Es una buena práctica cerrar siempre el archivo cuando haya terminado con él.
```python
f = open("demofile.txt", "r")
print(f.readline())
f.close()
```
## Escritura de archivos

Para escribir en un archivo existente, debe agregar un parámetro a la función open():

- "a"- Agregar: se agregará al final del archivo.
- "w"- Escribir: sobrescribirá cualquier contenido existente.
```python
f = open("demofile2.txt", "a")				#Agregar
f.write("Now the file has more content!")
f.close()

f = open("demofile3.txt", "w")				#Sobrescribir
f.write("Woops! I have deleted the content!")
f.close()
```
## Crear un nuevo archivo
Para crear un nuevo archivo en Python, use el open()método con uno de los siguientes parámetros:

- "x"- Crear: creará un archivo, devuelve un error si el archivo existe.
```python
  f = open("myfile.txt", "x")
```
- "a"- Agregar: creará un archivo si el archivo especificado no existe

- "w"- Escribir: creará un archivo si el archivo especificado no existe
```python
  f = open("myfile.txt", "w")
```
## Eliminar un archivo
	
Para eliminar un archivo, debe importar el módulo del sistema operativo y ejecutar su función os.remove():
```python
import os
os.remove("demofile.txt")
```
Compruebe si el archivo existe:
Para evitar recibir un error, es posible que desees comprobar si el archivo existe antes de intentar eliminarlo:
```python
import os
if os.path.exists("demofile.txt"):
  os.remove("demofile.txt")
```
## Eliminar carpeta

Para eliminar una carpeta completa, utilice el método os.rmdir():
```python
import os
os.rmdir("myfolder")
```
Sólo puedes eliminar carpetas vacías