-----------------> DDL (Data Definition Language) <-----------------
/*
Lenguaje para definir la estructura de la base de datos.

Se usa para:
- crear bases de datos
- crear tablas
- modificar tablas
- eliminar estructuras
*/


----------------------------------------------------------------------
-- BASES DE DATOS
----------------------------------------------------------------------

-- 1.0 CREATE
-- Crear una base de datos
CREATE DATABASE sonsultas_sql;

-- 1.1 DROP
-- Eliminar completamente una base de datos y todo su contenido
DROP DATABASE consultas_sql;

-- 1.2 Seleccionar la base de datos con la que se va a trabajar
USE consultas_sql;


----------------------------------------------------------------------
-- TABLAS
----------------------------------------------------------------------

-- 2.0 CREATE
-- Crear una tabla llamada productos con diferentes tipos de datos
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(55) NOT NULL,
    precio DOUBLE NOT NULL,
    stock INT DEFAULT 0
);

-- 2.1 Asignar una FOREIGN KEY
CREATE TABLE compras(
	id_compra INT AUTO_INCREMENT PRIMARY KEY,
    fecha_compra DATE NOT NULL,
    precio_compra DOUBLE NOT NULL,
    id_cliente INT,
    id_producto INT,
    
    CONSTRAINT fk_compra_cliente
    FOREIGN KEY (id_cliente)
    REFERENCES clientes(id_cliente)
    ON DELETE RESTRICT, -- Bloquea el borrado

    CONSTRAINT fk_compra_producto
    FOREIGN KEY (id_producto) 
    REFERENCES productos(id_producto)
    ON DELETE CASCADE  --Borra todo en cadena
    ON UPDATE CASCADE, --Actualiza todo en cadena
);

----------------------------------------------------------------------
-- RENAME
----------------------------------------------------------------------
-- 2.2 Renombrar una tabla
RENAME TABLE productos TO articulos;

----------------------------------------------------------------------
-- ALTER TABLE
----------------------------------------------------------------------
-- 2.3 Agregar una nueva columna
ALTER TABLE productos 
ADD descripcion VARCHAR(150) NOT NULL;

-- 2.4 Agregar una nueva columna como id
ALTER TABLE productos
ADD id_producto INT;

-- 2.5 Asignar una PRIMARY KEY
ALTER TABLE productos
ADD PRIMARY KEY (id_producto);

-- 2.6 Modificar una PRIMARY KEY para que sea AUTO_INCREMENT
ALTER TABLE productos
MODIFY id_producto INT AUTO_INCREMENT;

-- 2.7 Agregar una PRIMARY KEY
ALTER TABLE productos
ADD id_producto INT AUTO_INCREMENT PRIMARY KEY;

-- 2.8 Asignar una FOREIGN KEY
ALTER TABLE productos
ADD CONSTRAINT fk_productos_grupo
FOREIGN KEY (id_grupo) 
REFERENCES grupos(id_grupo)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- 2.9 Renombrar una columna (MySQL 8+)
ALTER TABLE productos 
RENAME COLUMN precio TO costo;

-- 2.10 Renombrar una columna (método alternativo)
ALTER TABLE productos 
CHANGE precio costo DOUBLE;

-- 2.11 Modificar el tipo de dato de una columna
-- DECIMAL(12,2) significa:
-- 12 dígitos totales, 2 después del punto decimal
ALTER TABLE productos 
MODIFY costo DECIMAL(12,2);

-- 2.12 Eliminar una columna
ALTER TABLE productos 
DROP COLUMN descripcion;

-- 2.13 Eliminar una FOREIGN KEY
ALTER TABLE productos
DROP FOREIGN KEY productos_ibfk_1;

----------------------------------------------------------------------
-- SHOW
----------------------------------------------------------------------
-- Cómo saber el nombre de la FOREIGN KEY
SHOW CREATE TABLE productos;

----------------------------------------------------------------------
-- ELIMINAR TABLAS
----------------------------------------------------------------------
-- 2.14 Eliminar una tabla completamente
DROP TABLE productos;

-- 2.15 Vaciar todos los registros de la tabla
-- La estructura se mantiene
TRUNCATE TABLE productos;
