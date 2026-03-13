-----------------> DML (Data Manipulation Language) <-----------------

----------------------------------------------------------------------
-- INSERT
----------------------------------------------------------------------
-- 1 Insertar un registro
INSERT INTO productos (nombre, precio, stock)
VALUES ('Arroz', 3500, 50);

-- 2 Insertar múltiples registros
INSERT INTO productos (nombre, precio, stock) VALUES
('Arroz', 3500, 50),
('Frijoles', 4200, 35),
('Lentejas', 3800, 40);

----------------------------------------------------------------------
-- SELECT
----------------------------------------------------------------------
-- 3 Mostrar todos los productos
SELECT * 
FROM productos;

-- 4 Mostrar productos con precio mayor o igual a 4000
SELECT nombre, precio, stock 
FROM productos 
WHERE (precio >= 4000)

-- 5 Mostrar productos con precio >= 2000 y stock >= 25
SELECT nombre, precio, stock 
FROM productos 
WHERE (precio >= 4000) AND (stock >= 25);

-- 6 Mostrar 
SELECT *
FROM productos
WHERE id IN (1, 2);

-- 7 Mostrar 
SELECT *
FROM productos
WHERE nombre IN ('Queso', 'Carne');

----------------------------------------------------------------------
-- UPDATE
----------------------------------------------------------------------
-- 8 Actualizar de la tabla productos el precio en 3500 donde el id sea 4
UPDATE productos
SET precio = 3500
WHERE id = 4;

-- 9 Actualizar de la tabla productos el precio en 3500 donde el nombre sea 'Azúcar'
UPDATE productos
SET precio = 3500
WHERE nombre = 'Azúcar';

-- 10 Actualizar el nombre de un producto
UPDATE productos
SET nombre = 'Arroz Diana'
WHERE nombre = 'Arroz Roa';

----------------------------------------------------------------------
-- DELETE
----------------------------------------------------------------------
-- 11 Borrar
DELETE FROM productos
WHERE id = 4;

-- 12 Borrar
DELETE FROM productos
WHERE id IN (1, 2);

-- 13 Borrar
DELETE FROM productos
WHERE nombre IN ('Queso', 'Carne');

----------------------------------------------------------------------
-- ORDER BY
----------------------------------------------------------------------
-- 14 Ordenar por nombre Ascendente
SELECT *
FROM productos
ORDER BY nombre ASC;

-- 15 Ordenar por nombre Descendente
SELECT *
FROM productos
ORDER BY nombre DESC;

-- 16 Ordenar por precio Ascendente
SELECT *
FROM productos
ORDER BY precio ASC;

-- 17 Ordenar por precio Descendente
SELECT *
FROM productos
ORDER BY precio DESC;

----------------------------------------------------------------------
-- COUNT
----------------------------------------------------------------------
-- 18 Contar todos los productos de la tabla productos
SELECT COUNT(*)
FROM productos;

-- 19 Contar todos los productos de la tabla productos y guardarlos en una variable
SELECT COUNT(*) AS cant_productos
FROM productos;

----------------------------------------------------------------------
-- SUM
----------------------------------------------------------------------
-- 20 Sumar el stock de la tabla productos
SELECT SUM(stock)
FROM productos;

-- 21 Sumar el stock de la tabla productos donde el stock sea >= 50
SELECT SUM(stock)
FROM productos
WHERE stock >= 50;

-- 22 Sumar el stock de la tabla productos y guardarlos en una variable
SELECT SUM(stock) AS sum_stock
FROM productos;

----------------------------------------------------------------------
-- MIN Y MAX
----------------------------------------------------------------------
-- 23 Mostrar el precio Minimo de los productos
SELECT MIN(precio)
FROM productos;

-- 24 Mostrar el precio Maximo de los productos
SELECT MAX(precio)
FROM productos;

----------------------------------------------------------------------
-- AVERAGE - (Calcular el promedio de valores numericos)
----------------------------------------------------------------------
-- 25 Mostrar el promedio del precio de los productos
SELECT AVG(precio)
FROM productos;

-- 26 Mostrar el promedio del precio de los productos con precio >= 4000
SELECT AVG(precio)
FROM productos
WHERE precio >= 4000;

----------------------------------------------------------------------
-- DISTINCT (Para no mostrar los valores repetidos)
----------------------------------------------------------------------
-- 27 Mostrar los nombres sin repetir
SELECT DISTINCT nombre
FROM productos;

----------------------------------------------------------------------
-- GROUP BY (Agrupar por columnas Ej. Varios tipos de Arroz)
----------------------------------------------------------------------
-- 28 Agrupar por los nombres de productos repetidos y
SELECT nombre, AVG(precio), SUM(precio), SUM(stock)
FROM productos
GROUP BY nombre;

-- 29
SELECT nombre, SUM(precio), SUM(stock)
FROM productos
WHERE precio >= 9000
GROUP BY nombre;

-- 30
SELECT nombre, COUNT(*), SUM(precio), sum(stock)
FROM productos
GROUP BY nombre;

----------------------------------------------------------------------
-- HAVING (Es como un 'WHERE' pero se usa para 'GROUP BY')
----------------------------------------------------------------------
-- 31
SELECT nombre, COUNT(*), SUM(precio), sum(stock)
FROM productos
GROUP BY nombre
HAVING COUNT(*) >= 3;

-- 32
SELECT nombre, SUM(precio), SUM(stock)
FROM productos
GROUP BY nombre
HAVING SUM(precio) >= 10000;

-- 33
SELECT nombre, SUM(precio), SUM(stock)
FROM productos
WHERE precio >= 9000
GROUP BY nombre
HAVING SUM(precio) >= 15000;

-- 34
SELECT nombre, SUM(precio), SUM(stock)
FROM productos
WHERE precio >= 9000
GROUP BY nombre
HAVING SUM(stock) >= 25;

