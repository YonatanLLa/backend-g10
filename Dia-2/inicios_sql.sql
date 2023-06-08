-- Asi se crea una base de datos
CREATE DATABASE IF NOT EXISTS practicas;
USE practicas;

-- Ahora procemos a crear nuestra primera tabla
CREATE TABLE usuarios(
-- nombre datatype [conf adicionales]
	id 	   INT 		AUTO_INCREMENT UNIQUE PRIMARY KEY,
    nombre TEXT  	NOT NULL,
    dni    CHAR(8)  UNIQUE
);



