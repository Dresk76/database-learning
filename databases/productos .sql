-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2026 a las 02:40:13
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `consultas_sql`
--
USE consultas_sql;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `precio` double NOT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `stock`) VALUES
(1, 'Arroz', 3500, 50),
(2, 'Frijoles', 4200, 35),
(3, 'Lentejas', 3800, 40),
(4, 'Azúcar', 3000, 45),
(5, 'Sal', 1500, 60),
(6, 'Aceite', 9000, 25),
(7, 'Leche', 3200, 30),
(8, 'Huevos', 12000, 20),
(9, 'Pan', 2800, 50),
(10, 'Mantequilla', 7500, 15),
(11, 'Queso', 8500, 18),
(12, 'Pollo', 14000, 22),
(13, 'Carne', 18000, 17),
(14, 'Atún', 5200, 33),
(15, 'Pasta', 2700, 48),
(16, 'Avena', 3100, 36),
(17, 'Cereal', 9500, 19),
(18, 'Galletas', 4300, 27),
(19, 'Chocolate', 4000, 24),
(20, 'Café', 11000, 21),
(21, 'Arroz', 3600, 30),
(22, 'Arroz', 3400, 40),
(23, 'Leche', 3300, 35),
(24, 'Leche', 3100, 20),
(25, 'Huevos', 11800, 18),
(26, 'Huevos', 12500, 12),
(27, 'Pan', 2700, 35),
(28, 'Pan', 2900, 45),
(29, 'Queso', 8700, 12),
(30, 'Queso', 8300, 8),
(31, 'Café', 10800, 16),
(32, 'Café', 11200, 13),
(33, 'Pasta', 2600, 32);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
