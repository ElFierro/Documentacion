# Gestion de memoria

Todos sabemos que el propio Java gestiona la memoria y no necesita la intervención explícita del programador. El propio recolector de basura garantiza que se limpie el espacio no utilizado y que se pueda liberar memoria cuando no sea necesaria.

Sin embargo, la recolección automática de basura no lo garantiza todo. Si no sabemos cómo funciona la gestión de la memoria, muchas veces terminaremos entre cosas que no son gestionadas por JVM (Java Virtual Machine). Hay algunos objetos que no son elegibles para la recolección automática de basura.

Por lo tanto, conocer la administración de la memoria es esencial, ya que beneficiará al programador al escribir programas basados ​​en alto rendimiento que no fallarán, o si lo hace, el programador sabrá cómo depurar o superar los fallos.

## Estructura de la memoria Java:
JVM define varias áreas de datos de tiempo de ejecución que se utilizan durante la ejecución de un programa. 