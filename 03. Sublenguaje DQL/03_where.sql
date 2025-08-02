/*
La cláusula WHERE se utiliza para filtrar registros.

Se usa para extraer solo aquellos registros que cumplen con una condición específica.

Sintaxis:

SELECT columna1, columna2, ...
FROM nombre_de_la_tabla
WHERE condición;

Nota: La cláusula WHERE no solo se usa en sentencias SELECT, también se utiliza en 
UPDATE, DELETE, etc.

Ejemplo:

Seleccionar todas las facturas que se encuentren pendientes:
*/

SELECT * FROM Facturas
WHERE Estado = 'Pendiente';

/*
Campos de texto vs. Campos numéricos

SQL requiere comillas simples alrededor de valores de texto (la mayoría de los sistemas 
de bases de datos también permiten comillas dobles).

Sin embargo, los campos numéricos no deben ir entre comillas:

Ejemplo:
*/

SELECT * FROM AsignacionesProyecto
WHERE ProyectoID = 2;

/*
Operadores en la cláusula WHERE

Puedes usar otros operadores además del operador = para filtrar la búsqueda.

Ejemplo:

Seleccionar todas las facturas cuyo monto sea menor a 12501:
*/

SELECT * FROM Facturas
WHERE Monto < 12500;

/*
Los siguientes operadores se pueden usar en la cláusula WHERE:

------------------------------------------------------------------------------------------
|Operador|	Descripción	                         |Ejemplo                                |
------------------------------------------------------------------------------------------
|=	     |Igual	                                 |WHERE Country = 'Mexico'               |
|>	     |Mayor que	                             |WHERE CustomerID > 5                   |
|<	     |Menor que	                             |WHERE CustomerID < 10                  |
|>=	     |Mayor o igual que	                     |WHERE CustomerID >= 3                  |
|<=	     |Menor o igual que	                     |WHERE CustomerID <= 7                  |
|<>	     |Distinto de (en algunas versiones !=)	 |WHERE Country <> 'USA'                 |
|BETWEEN |Entre un rango determinado	         |WHERE CustomerID BETWEEN 1 AND 10      |
|LIKE    |Buscar un patrón	                     |WHERE CustomerName LIKE 'A%'           |
|IN      |Especificar múltiples valores posibles |WHERE Country IN ('Mexico', 'Germany') |  
------------------------------------------------------------------------------------------
*/