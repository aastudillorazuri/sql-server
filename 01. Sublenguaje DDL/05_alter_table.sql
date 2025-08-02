/*
En este ejemplo modificaremos la tabla ‘Estudiantes’ agregando una nueva columna.

El código a utilizar es el siguiente:
*/

ALTER TABLE Estudiantes.Estudiantes
ADD FechaNacimiento DATE;

/*
Otra forma de utilizar la sentencia ALTER es acompañada de DROP.

Podemos eliminar la columna recientemente creada ‘FechaNacimiento’ de la siguiente 
manera:
*/

ALTER TABLE Estudiantes.Estudiantes
DROP COLUMN FechaNacimiento;