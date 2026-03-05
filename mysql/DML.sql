----------> DML (Data Manipulation Language) <----------

---------------------------------------------------------
-- INSERT
---------------------------------------------------------
-- 1.0 Insertar un registro
INSERT INTO productos (nombre, precio, stock)
VALUES ('Frijol', 2400, 26);

-- 2.0 Insertar múltiples registros
INSERT INTO productos (nombre, precio, stock)
VALUES
('Lentejas', 1200, 33),
('Fideos', 1400, 48),
('Arvejas', 1600, 36);

---------------------------------------------------------
-- SELECT
---------------------------------------------------------
-- 3.0 Mostrar todos los productos
SELECT * 
FROM productos;

-- 4.0 Mostrar productos con precio mayor o igual a 2000
SELECT nombre, precio, stock 
FROM productos 
WHERE (precio >= 2000);

-- 5.0 Mostrar productos con precio >= 2000 y stock > 50
SELECT nombre, precio, stock
FROM productos
WHERE (precio >= 2000) AND (stock > 50);

