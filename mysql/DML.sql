-----------------> DML (Data Manipulation Language) <-----------------
/*
Lenguaje para manipular los datos dentro de las tablas.

Se usa para:
- insertar datos
- consultar datos
- actualizar datos
- eliminar datos
*/


----------------------------------------------------------------------
-- INSERT
----------------------------------------------------------------------
-- 1 Insertar un solo registro en la tabla
INSERT INTO productos (nombre, precio, stock)
VALUES ('Arroz', 3500, 50);

-- 2 Insertar múltiples registros en una sola consulta
INSERT INTO productos (nombre, precio, stock) VALUES
('Arroz', 3500, 50),
('Frijoles', 4200, 35),
('Lentejas', 3800, 40);

----------------------------------------------------------------------
-- SELECT (Consultas)
----------------------------------------------------------------------
-- 3 Mostrar todos los registros de la tabla
SELECT * 
FROM productos;

-- 4 Mostrar productos con precio mayor o igual a 4000
SELECT nombre, precio, stock 
FROM productos 
WHERE (precio >= 4000);

-- 5 Mostrar productos con precio >= 2000 y stock >= 25
SELECT nombre, precio, stock 
FROM productos 
WHERE (precio >= 4000) AND (stock >= 25);

-- 6 Mostrar productos cuyos ID estén en la lista 
SELECT *
FROM productos
WHERE id IN (1, 2);

-- 7 Mostrar productos cuyo nombre esté en la lista 
SELECT *
FROM productos
WHERE nombre IN ('Queso', 'Carne');

----------------------------------------------------------------------
-- UPDATE (Actualizar, Modificar)
----------------------------------------------------------------------
-- 8 Actualizar el precio del producto cuyo id sea 4
UPDATE productos
SET precio = 3500
WHERE id = 4;

-- 9 Actualizar el precio del producto llamado 'Azúcar'
UPDATE productos
SET precio = 3500
WHERE nombre = 'Azúcar';

-- 10 Cambiar el nombre de un producto
UPDATE productos
SET nombre = 'Arroz Diana'
WHERE nombre = 'Arroz Roa';

----------------------------------------------------------------------
-- DELETE
----------------------------------------------------------------------
-- 11 Eliminar un registro por id
DELETE FROM productos
WHERE id = 4;

-- 12 Eliminar varios registros usando IN
DELETE FROM productos
WHERE id IN (1, 2);

-- 13 Eliminar registros por nombre
DELETE FROM productos
WHERE nombre IN ('Queso', 'Carne');

----------------------------------------------------------------------
-- ORDER BY (Ordenar resultados)
----------------------------------------------------------------------
-- 14 Ordenar productos por nombre (ascendente)
SELECT *
FROM productos
ORDER BY nombre ASC;

-- 15 Ordenar productos por nombre (descendente)
SELECT *
FROM productos
ORDER BY nombre DESC;

-- 16 Ordenar productos por precio (ascendente)
SELECT *
FROM productos
ORDER BY precio ASC;

-- 17 Ordenar productos por precio (descendente)
SELECT *
FROM productos
ORDER BY precio DESC;


----------------------------------------------------------------------
-- FUNCIONES DE AGREGACIÓN

-- Estas funciones trabajan sobre conjuntos de filas.
----------------------------------------------------------------------

----------------------------------------------------------------------
-- COUNT (Contar registros)
----------------------------------------------------------------------
-- 18 Contar todos los registros de la tabla
SELECT COUNT(*)
FROM productos;

-- 19 Contar registros y asignar alias al resultado
SELECT COUNT(*) AS cant_productos
FROM productos;

----------------------------------------------------------------------
-- SUM (Sumar valores numéricos)
----------------------------------------------------------------------
-- 20 Sumar todo el stock disponible
SELECT SUM(stock)
FROM productos;

-- 21 Sumar el stock donde el stock sea mayor o igual a 50
SELECT SUM(stock)
FROM productos
WHERE stock >= 50;

-- 22 Sumar el stock y guardar el resultado con alias
SELECT SUM(stock) AS sum_stock
FROM productos;

----------------------------------------------------------------------
-- MIN Y MAX
----------------------------------------------------------------------
-- 23 Obtener el precio mínimo
SELECT MIN(precio)
FROM productos;

-- 24 Obtener el precio máximo
SELECT MAX(precio)
FROM productos;

----------------------------------------------------------------------
-- AVG (Average - Promedio / Calcular el promedio de valores numericos)
----------------------------------------------------------------------
-- 25 Calcular el precio promedio de los productos
SELECT AVG(precio)
FROM productos;

-- 26 Promedio del precio donde el precio >= 4000
SELECT AVG(precio)
FROM productos
WHERE precio >= 4000;

----------------------------------------------------------------------
-- DISTINCT (Para no mostrar los valores repetidos)
----------------------------------------------------------------------
-- 27 Mostrar nombres de productos sin repetir
SELECT DISTINCT nombre
FROM productos;

-- 28 Mostrar nombres de productos sin repetir y ordenarlo por nombre ASC
SELECT DISTINCT nombre
FROM productos
ORDER BY nombre ASC;

----------------------------------------------------------------------
-- LIMIT (Para limitar la consulta)
----------------------------------------------------------------------
-- 29 Mostrar los 5 productos más baratos
SELECT *
FROM productos
ORDER BY precio ASC
LIMIT 5;

----------------------------------------------------------------------
-- GROUP BY (Agrupar por columnas Ej. Varios tipos de Arroz)
----------------------------------------------------------------------
-- 30 Agrupar productos por nombre y calcular estadísticas
SELECT nombre, AVG(precio), SUM(precio), SUM(stock)
FROM productos
GROUP BY nombre;

-- 31 Agrupar productos caros
SELECT nombre, SUM(precio), SUM(stock)
FROM productos
WHERE precio >= 9000
GROUP BY nombre;

-- 32 Mostrar cantidad de registros por producto
SELECT nombre, COUNT(*), SUM(precio), sum(stock)
FROM productos
GROUP BY nombre;

----------------------------------------------------------------------
-- HAVING (Es como un 'WHERE' pero se usa para 'GROUP BY')
-- filtra resultados después de aplicar GROUP BY
----------------------------------------------------------------------
-- 33 Mostrar productos que aparecen 3 o más veces
SELECT nombre, COUNT(*), SUM(precio), sum(stock)
FROM productos
GROUP BY nombre
HAVING COUNT(*) >= 3;

-- 34 Mostrar productos cuyo precio total sea mayor a 10000
SELECT nombre, SUM(precio), SUM(stock)
FROM productos
GROUP BY nombre
HAVING SUM(precio) >= 10000;

-- 35 Combinar WHERE + GROUP BY + HAVING
SELECT nombre, SUM(precio), SUM(stock)
FROM productos
WHERE precio >= 9000
GROUP BY nombre
HAVING SUM(precio) >= 15000;

-- 36 Filtrar grupos por cantidad total de stock
SELECT nombre, SUM(precio), SUM(stock)
FROM productos
WHERE precio >= 9000
GROUP BY nombre
HAVING SUM(stock) >= 25;




----------------------------------------------------------------------
-- INNER JOIN (Unir los datos que tengan un criterio en comun)
----------------------------------------------------------------------
-- Explicito
SELECT *
FROM empleados
INNER JOIN departamentos
ON empleados.id_departamento = departamentos.id_departamento;

-- Implicito
SELECT *
FROM empleados, departamentos
WHERE empleados.id_departamento = departamentos.id_departamento;

-- Ejemplo con variables
SELECT e.nombre, m.fecha, m.costo
FROM equipos e
INNER JOIN mantenimientos m
ON e.id_equipo = m.id_equipo;


----------------------------------------------------------------------
-- LEFT JOIN 
-- (Unir los registros de la tabla A con los registros 
-- en comun de la tabla B)
----------------------------------------------------------------------
SELECT *
FROM empleados
LEFT JOIN departamentos
ON empleados.id_departamento = departamentos.id_departamento;


----------------------------------------------------------------------
-- LEFT JOIN 
-- (Unir los registros de la tabla B con los registros 
-- en comun de la tabla A)
----------------------------------------------------------------------
SELECT *
FROM empleados
RIGHT JOIN departamentos
ON empleados.id_departamento = departamentos.id_departamento;
