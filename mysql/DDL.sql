----------> DDL (Data Definition Language) <----------

---------------------------------------------------------
-- BASES DE DATOS
---------------------------------------------------------

-- 1.0 CREATE
-- Crear una base de datos
CREATE DATABASE sonsultas_sql;

-- 1.1 DROP
-- Eliminar una base de datos
DROP DATABASE consultas_sql;

-- Seleccionar una base de datos para trabajar
USE consultas_sql;


---------------------------------------------------------
-- TABLAS
---------------------------------------------------------

-- 2.0 CREATE
-- Crear tablas
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(55) NOT NULL,
    precio DOUBLE NOT NULL,
    stock INT DEFAULT 0
);

---------------------------------------------------------
-- ALTER TABLE
---------------------------------------------------------
-- 2.1 Agregar una nueva columna
ALTER TABLE productos ADD descripcion VARCHAR(150) NOT NULL;

-- 2.2 Renombrar una columna (MySQL 8+)
ALTER TABLE productos RENAME COLUMN precio TO costo;

-- 2.3 Renombrar una columna (método alternativo)
ALTER TABLE productos CHANGE precio costo DOUBLE;

-- 2.4 Modificar tipo de dato 12:Enteros 2:Decimales
ALTER TABLE productos MODIFY costo DECIMAL(12,2);

-- 2.5 Eliminar una columna
ALTER TABLE productos DROP COLUMN descripcion;

---------------------------------------------------------
-- ELIMINAR TABLAS
---------------------------------------------------------
-- 2.6 Eliminar una tabla
DROP TABLE productos;

-- 2.7 Vaciar una tabla sin eliminar su estructura
TRUNCATE TABLE productos;
