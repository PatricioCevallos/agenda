-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-03-2019 a las 05:10:47
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_hour` time NOT NULL,
  `end_hour` time NOT NULL,
  `fk_usuario` int(11) NOT NULL,
  `allDay` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=armscii8;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`id`, `titulo`, `start_date`, `end_date`, `start_hour`, `end_hour`, `fk_usuario`, `allDay`) VALUES
(2, 'pruebas2', '2019-03-20', '0000-00-00', '00:00:00', '00:00:00', 0, 1),
(4, 'pruebas3', '2019-03-23', '2019-03-23', '10:00:00', '12:00:00', 0, 0),
(5, 'pruebas4', '2019-03-27', '0000-00-00', '00:00:00', '00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(70) NOT NULL,
  `fecnac` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `username`, `password`, `fecnac`) VALUES
(1, 'Patricio', 'Tito', 'PatoTito@gmail.com', '123456', '1979-08-21'),
(2, 'Ana', 'Cualchi', 'cualchiA@gmail.com', '1234', '1982-10-22'),
(3, 'Angela', 'Cortes', 'cortesA@gmail.com', '12345', '1985-07-21'),
(4, 'Diego', 'Vera', 'VerD@gmail.com', '1234567', '1990-03-12'),
(5, 'Milton', 'Cevallos', 'MiltonC@gmail.com', '$2y$10$skUZNX4.e/JqiqUXch9zDuGsJL0CbdFhRoMrTf70qMFhlMG/0Bfg.', '1981-09-06'),
(6, 'Andres', 'Tito', 'AndreT@gmail.com', '$2y$10$WcWksmnOIKcbJNwZXL187OMcHP6uO0YMX0GO009jHDjgYjEmQMBGC', '1985-05-12'),
(7, 'Silvana', 'Cevallos', 'SilviC@gmail', '$2y$10$oncZ.Dso6XY5BTVyvNPsmedu8ndPMoHP03zZn1hx0Xrn3ETum3AT.', '1987-10-10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_evento` (`fk_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
