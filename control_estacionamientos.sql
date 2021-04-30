-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-04-2021 a las 18:35:23
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `control_estacionamientos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `access_token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `access_token`) VALUES
(26, 'test', '123', '484448b521a77ba0b79b10aec9cb6bbc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cars`
--

CREATE TABLE `cars` (
  `id` int(15) NOT NULL,
  `placa` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `class_car` varchar(50) NOT NULL,
  `colour` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cars`
--

INSERT INTO `cars` (`id`, `placa`, `brand`, `class_car`, `colour`) VALUES
(1, 'FFF55', 'Mazda', 'Camioneta', 'Negro'),
(2, 'B865', 'Toyota', 'Camioneta', 'Rojo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parking`
--

CREATE TABLE `parking` (
  `id` int(15) NOT NULL,
  `placa` varchar(50) NOT NULL,
  `fech_input` date NOT NULL,
  `fec_output` date NOT NULL,
  `time` varchar(15) NOT NULL,
  `amount` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `parking`
--

INSERT INTO `parking` (`id`, `placa`, `fech_input`, `fec_output`, `time`, `amount`) VALUES
(3, 'FFQ4', '2021-04-30', '2021-04-30', ' 3h', '44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `celular` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `celular`) VALUES
(8, ' Delver', 'Villanueva Calderón ', 'xdelver_live@outlook.com', ' 97506394333333333');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `parking`
--
ALTER TABLE `parking`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
