/*
La palabra clave ORDER BY se utiliza para ordenar el conjunto de resultados 
en orden ascendente o descendente.

Sintaxis:

SELECT columna1, columna2, ...
FROM nombre_de_la_tabla
ORDER BY columna1, columna2, ... ASC|DESC;

Ejemplo:

Ordenar las facturas por monto:
*/

SELECT * FROM Products
ORDER BY Price;

DESC
La palabra clave ORDER BY ordena los registros en orden ascendente de manera predeterminada. Para ordenar los registros en orden descendente, se utiliza la palabra clave DESC.

Ejemplo
Ordenar los productos de mayor a menor precio:

SELECT * FROM Products
ORDER BY Price DESC;
Ordenar Alfabéticamente
Para valores de texto, la palabra clave ORDER BY ordenará alfabéticamente:

Ejemplo
Ordenar los productos alfabéticamente por ProductName:

SELECT * FROM Products
ORDER BY ProductName;
Ordenar Alfabéticamente DESC
Para ordenar la tabla en orden alfabético inverso, se utiliza la palabra clave DESC:

Ejemplo
Ordenar los productos por ProductName en orden inverso:

SELECT * FROM Products
ORDER BY ProductName DESC;
ORDER BY Varias Columnas
La siguiente sentencia SQL selecciona todos los clientes de la tabla "Customers", ordenados por la columna "Country" y luego por la columna "CustomerName". Esto significa que ordena primero por Country, pero si hay filas con el mismo Country, las ordena por CustomerName:

Ejemplo
SELECT * FROM Customers
ORDER BY Country, CustomerName;
Usar ASC y DESC en la Misma Sentencia
La siguiente sentencia SQL selecciona todos los clientes de la tabla "Customers", ordenados en forma ascendente por la columna Country y en forma descendente por la columna CustomerName:

Ejemplo
SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;
*/