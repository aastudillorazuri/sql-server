/*
La sentencia SELECT se utiliza para seleccionar datos de una base de datos.

Sintaxis:

SELECT columna1, columna2, ...
FROM nombre_de_la_tabla;

a. columna1, columna2, ... son los nombres de los campos de la tabla de los cuales 
   deseas seleccionar datos.

b. nombre_de_la_tabla representa el nombre de la tabla desde donde deseas obtener 
   los datos.

Ejemplo

Obtener datos de la tabla Clientes:
*/

SELECT Nombre, Email FROM Clientes;

/*
Si deseas devolver todas las columnas, sin necesidad de especificar cada nombre de 
columna, puedes usar la sintaxis SELECT *:

Ejemplo

Obtener todas las columnas de la tabla Clientes:
*/

SELECT * FROM Clientes;