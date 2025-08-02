/*
Dentro de una tabla, una columna a menudo contiene muchos valores duplicados y 
algunas veces solo deseas listar los valores diferentes.

La sentencia SELECT DISTINCT se utiliza para devolver solo valores distintos.

Sintaxis:

SELECT DISTINCT columna1, columna2, ...
FROM nombre_de_la_tabla;

Ejemplo:

Seleccionar todos los identificadores de los diferentes proyectos de la tabla 
AsignacionesProyecto:
*/

SELECT DISTINCT ProyectoID FROM AsignacionesProyecto;