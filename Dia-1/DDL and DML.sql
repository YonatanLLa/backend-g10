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

CREATE TABLE tareas(
	id			INT		AUTO_INCREMENT PRIMARY 	KEY,
    titulo		VARCHAR(100)	UNIQUE,
    descripcion TEXT,
    usuario_id 	INT,
    -- CREO LA RELACION ENTRE LAS TABLAS
    -- indico entre parenticis la columna de esta tabla y luego la tabla(su columna)
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);
-- SUB LENGUAJES
-- DDL (Data definition language)
-- ES un lenguaje que sirve para definir estructurs de datos
-- (Crear bd, crear tablas, actualizar tablas, eliminar tablas )
-- CREATE (crear)
-- ALTER (Actualizar)
-- DROP (Eliminar) elimina absolutamente TODO

-- DML (Data Manipulation Language)
-- Es un lenguaje que siver para definir la informacion que
-- ira dentro de las estructuras 
-- Insetar datos, actualizar datos, elimnar datos y leer
-- INSERT (inserta)
-- SELECT(vizualizar)
-- UPDATE (actualizar)
-- DELETE (eliminar)

-- En este caso como el Id en incrementable no se le va dar valor
INSERT INTO usuarios (nombre, dni) VALUES ('yonatan', '73740921');
INSERT INTO usuarios (id, nombre, dni) VALUES (DEFAULT,'juana', '43740921'),
												(DEFAULT,'maria', '63740721'),
												(DEFAULT,'briny', '33740821');
                                                
                                                
INSERT INTO tareas(id, titulo, descripcion, usuario_id) VALUES
(DEFAULT, 'Dormir', 'Caminare mañana', 1),
(DEFAULT, 'caminar', 'Caminare dormire', 2);
UPDATE tareas SET usuario_id = 2 WHERE titulo = 'caminar' AND descripcion = 'Caminare dormire' AND usuario_id = 1;

SELECT * FROM usuarios;

INSERT INTO usuarios(id, nombre, dni) VALUES (DEFAULT, 'juana', '23344566'),
											 (DEFAULT, 'maria', '34567823');
INSERT INTO usuarios(id, nombre, dni) VALUES (DEFAULT, 'yonatan', 72730928),
											 (DEFAULT, 'Martin', 65789345);
SELECT * FROM usuarios WHERE nombre='yonatan' AND id=7;

SELECT * FROM tareas WHERE usuario_id=1 or usuario_id=2;

INSERT INTO tareas (id, titulo, descripcion, usuario_id) VALUES(DEFAULT, 'Jugar futbol', 'me gusta el futbol',1),
															  (DEFAULT, 'Correr', 'Me gust hacer ejercicio',1);

SELECT * FROM tareas WHERE usuario_id=1