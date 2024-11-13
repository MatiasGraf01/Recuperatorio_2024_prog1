-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2024 a las 18:15:28
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
-- Base de datos: `peajes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE `transacciones` (
  `id` int(11) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `tipo_vehiculo` enum('Auto','Camion','Motocicleta','Bus','Furgoneta') NOT NULL,
  `monto` decimal(8,2) NOT NULL,
  `numero_placa` varchar(10) NOT NULL,
  `metodo_pago` enum('Efectivo','Tarjeta') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`id`, `fecha_hora`, `tipo_vehiculo`, `monto`, `numero_placa`, `metodo_pago`) VALUES
(1, '2024-11-13 08:15:00', 'Auto', 50.00, 'ABC123', 'Efectivo'),
(2, '2024-11-13 08:25:00', 'Camion', 100.00, 'DEF456', 'Tarjeta'),
(3, '2024-11-13 08:30:00', 'Motocicleta', 30.00, 'GHI789', 'Efectivo'),
(4, '2024-11-13 08:45:00', 'Bus', 150.00, 'JKL012', 'Tarjeta'),
(5, '2024-11-13 08:55:00', 'Auto', 50.00, 'MNO345', 'Efectivo'),
(6, '2024-11-13 09:10:00', 'Furgoneta', 75.00, 'PQR678', 'Tarjeta'),
(7, '2024-11-13 09:20:00', 'Auto', 50.00, 'STU901', 'Efectivo'),
(8, '2024-11-13 09:25:00', 'Camion', 100.00, 'VWX234', 'Tarjeta'),
(9, '2024-11-13 09:40:00', 'Motocicleta', 30.00, 'YZA567', 'Efectivo'),
(10, '2024-11-13 09:55:00', 'Bus', 150.00, 'BCD890', 'Efectivo'),
(11, '2024-11-13 10:05:00', 'Auto', 50.00, 'EFG123', 'Tarjeta'),
(12, '2024-11-13 10:15:00', 'Furgoneta', 75.00, 'HIJ456', 'Efectivo'),
(13, '2024-11-13 10:25:00', 'Auto', 50.00, 'KLM789', 'Efectivo'),
(14, '2024-11-13 10:35:00', 'Camion', 100.00, 'NOP012', 'Tarjeta'),
(15, '2024-11-13 10:45:00', 'Motocicleta', 30.00, 'QRS345', 'Efectivo'),
(16, '2024-11-13 10:55:00', 'Bus', 150.00, 'TUV678', 'Tarjeta'),
(17, '2024-11-13 11:05:00', 'Auto', 50.00, 'WXY901', 'Efectivo'),
(18, '2024-11-13 11:15:00', 'Furgoneta', 75.00, 'ZAB234', 'Tarjeta'),
(19, '2024-11-13 11:25:00', 'Auto', 50.00, 'CDE567', 'Efectivo'),
(20, '2024-11-13 11:35:00', 'Camion', 100.00, 'FGH890', 'Tarjeta'),
(21, '2024-11-13 11:45:00', 'Motocicleta', 30.00, 'IJK123', 'Efectivo'),
(22, '2024-11-13 11:55:00', 'Bus', 150.00, 'LMN456', 'Tarjeta'),
(23, '2024-11-13 12:05:00', 'Auto', 50.00, 'OPQ789', 'Efectivo'),
(24, '2024-11-13 12:15:00', 'Furgoneta', 75.00, 'RST012', 'Tarjeta'),
(25, '2024-11-13 12:25:00', 'Auto', 50.00, 'UVW345', 'Efectivo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
