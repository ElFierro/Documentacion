# Fechas

Una fecha en Python no es un tipo de datos en sí misma, pero podemos importar un módulo nombrado datetimepara trabajar con fechas como objetos de fecha.

## Salida de fecha
El módulo datetime tiene muchos métodos para devolver información sobre el objeto de fecha.
```python
import datetime
x = datetime.datetime.now()    #Fecha actual

print(x.year)             #Devuelve el año
print(x.strftime("%A"))   #El dia de la semana
```
## Crear objetos de fecha
Para crear una fecha, podemos usar la clase (constructor) datetime() del módulo datetime.
La clase datetime() requiere tres parámetros para crear una fecha: año, mes, día.
```python
import datetime
x = datetime.datetime(2020, 5, 17)
print(x)					#2020-05-17 00:00:00
```
El método strftime()
El objeto datetime tiene un método para formatear objetos de fecha en cadenas legibles.
```python
import datetime
x = datetime.datetime(2018, 6, 1)
print(x.strftime("%B"))		#June
```
Una referencia de todos los códigos de formato legal:
| Codigo   | Descripcion                                    | Resultado                            |
| -------- | -----------------------------------------------| ------------------------------------ |
| %a       | Día laborable, versión corta| Wed |
| %A       | Día laborable, versión completa| Wednesday |
| %w	|Día laborable como número 0-6, 0 es domingo |  3 |
| %d	|Día del mes 01-31	|  31 |
| %b	|Nombre del mes, versión corta	|  Dec|
| %B	|Nombre del mes, versión completa|December|
| %m	|Mes como número 01-12	|  12|
| %y	|Año, versión corta, sin siglo.	| 18|
| %Y	|Año, versión completa	|2018|
| %H	|Hora 00-23	|17|
| %I	|Hora 00-12	|5|
| %p	|AM PM	|PM|
| %M	|Minuto 00-59	| 41|
| %S	|Segundo 00-59	| 8 |
| %f	|Microsegundo 000000-999999	| 548513|
| %z	|Desplazamiento UTC#	| +0100|
| %Z	|Zona horaria	|CST|
| %j	|Número de día del año 001-366	|  365|
| %U	|Número de semana del año 00-53	| 52  domingo como primer día de la semana|
| %W	|Número de semana del año 00-53	| 52  lunes como primer día de la semana|
| %c	|Versión local de fecha y hora.	| Mon Dec 31 17:41:00 2018|
| %C	|Siglo	|20|
| %x	|Versión local de la fecha.	| 12/31/18|
| %X	|Versión local de la hora.	| 17:41:00|
| %%	|Un caracter	| % |
| %G	|ISO 8601 año	|2018|
| %u	|ISO 8601 día laborable (1-7)| 1 |
| %V	|Número de semana ISO 8601 (01-53) | 01|
```