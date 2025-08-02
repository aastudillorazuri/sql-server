/*
Los comentarios se utilizan para explicar secciones de sentencias SQL o para evitar 
la ejecución de ciertas sentencias SQL.

a. Comentarios de una sola línea

Los comentarios de una sola línea comienzan con --.

Cualquier texto entre -- y el final de la línea será ignorado (no se ejecutará).

El siguiente ejemplo usa un comentario de una sola línea como explicación:
*/

-- Seleccionar todo:
SELECT * FROM Clientes;

/*
El siguiente ejemplo usa un comentario de una sola línea para ignorar el final de
una línea:
*/

SELECT * FROM Clientes -- WHERE Ciudad='Berlin';

/*
El siguiente ejemplo usa un comentario de una sola línea para ignorar una sentencia 
completa:
*/

-- SELECT * FROM Customers;
SELECT * FROM Productos;

/*
b. Comentarios de múltiples líneas

Los comentarios de múltiples líneas comienzan con /* y terminan con */.

Cualquier texto entre /* y */ será ignorado.

El siguiente ejemplo utiliza un comentario de múltiples líneas como explicación:
*/

/*Seleccionar todas las columnas
de todos los registros
de la tabla Clientes:*/
SELECT * FROM Clientes;

/*
El siguiente ejemplo utiliza un comentario de múltiples líneas para ignorar varias 
sentencias:
*/

/*SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Categories;*/
SELECT * FROM Proveedores;

/*
Para ignorar solo una parte de una sentencia, también se puede usar el comentario 
/* */.

El siguiente ejemplo usa un comentario para ignorar parte de una línea:
*/

SELECT NombreCliente, /*Ciudad,*/ Pais FROM Clientes;

-- El siguiente ejemplo usa un comentario para ignorar parte de una sentencia:

SELECT * FROM Clientes WHERE (NombreCliente LIKE 'L%'
OR NombreCliente LIKE 'R%' /*OR NombreCliente LIKE 'S%'
OR NombreCliente LIKE 'T%'*/ OR NombreCliente LIKE 'W%')
AND Pais='USA'
ORDER BY NombreCliente;