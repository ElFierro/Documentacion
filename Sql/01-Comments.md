## Comentarios

## Comentarios de una sola línea

Los comentarios de una sola línea comienzan con --.
Cualquier texto entre -- y el final de la línea se ignorará (no se ejecutará).

```sql
 SELECT * FROM Customers -- WHERE City='Berlin';
```

## Comentarios de varias líneas

Los comentarios de varias líneas comienzan con /*y terminan con */.
Cualquier texto entre /* y */ será ignorado.

```sql
 /*Select all the columns
 of all the records
 in the Customers table:*/
 SELECT * FROM Customers;
 ```