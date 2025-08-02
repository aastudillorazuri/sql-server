/*
La sentencia CREATE TABLE se utiliza para crear una nueva tabla en una base de datos.

Sintaxis:

CREATE TABLE nombre_de_la_tabla (
    columna1 tipo_de_dato,
    columna2 tipo_de_dato,
    columna3 tipo_de_dato,
    ....
);

Los parámetros de las columnas especifican los nombres de las columnas de la tabla.

El parámetro tipo_de_dato especifica el tipo de datos que la columna puede almacenar 
(por ejemplo: varchar, integer, date, etc.).

Antes de continuar, crearemos la base de datos 'CarreraDA' y nos posicionaremos en ella:
*/

CREATE DATABASE CarreraDA;

USE CarreraDA;

/*
El siguiente ejemplo crea una tabla llamada 'Estudiantes' que contiene seis columnas: 
EstudianteID, Nombre, Apellido, Email, FechaIngreso y Activo:
*/

CREATE TABLE Estudiantes (
    EstudianteID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Apellido NVARCHAR(100) NOT NULL,
    Email NVARCHAR(255) UNIQUE,
    FechaIngreso DATE NOT NULL,
    Activo BIT DEFAULT 1
);

-- La siguiente query crea las tablas 'Cursos' e 'Inscripciones':

CREATE TABLE Cursos (
    CursoID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Descripcion NVARCHAR(255),
    Creditos INT CHECK (Creditos > 0)
);

CREATE TABLE Inscripciones (
    InscripcionID INT IDENTITY(1,1) PRIMARY KEY,
    EstudianteID INT,
    CursoID INT,
    FechaInscripcion DATE DEFAULT GETDATE(),
    Calificacion DECIMAL(3, 2) CHECK (Calificacion BETWEEN 0 AND 10),
    CONSTRAINT FK_Inscripciones_Estudiante FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
    CONSTRAINT FK_Inscripciones_Curso FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
);