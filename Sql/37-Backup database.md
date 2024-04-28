## Backup database
La sentencia BACKUP DATABASE se utiliza en SQL Server para crear una copia de seguridad completa de una base de datos SQL existente.

#### Sintaxis:

```ssh
BACKUP DATABASE databasename
TO DISK = 'filepath';
```

#### Ejemplo:

```sql
BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak';
```

## Sentencia backup con diferencial:

Una copia de seguridad diferencial solo respalda las partes de la base de datos que han cambiado desde la última copia de seguridad completa de la base de datos.

#### Sintaxis:

```ssh
BACKUP DATABASE databasename
TO DISK = 'filepath'
WITH DIFFERENTIAL;
```

#### Ejemplo:

```sql
BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak'
WITH DIFFERENTIAL;
```

Consejo:

Una copia de seguridad diferencial reduce el tiempo de la copia de seguridad (ya que solo se respaldan los cambios).