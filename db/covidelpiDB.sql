-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-08-2023 a las 16:51:38
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `covidelpi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alarmas`
--

CREATE TABLE `alarmas` (
  `id_alarma` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `texto` text NOT NULL,
  `tipo_alarma` varchar(30) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `rol` varchar(30) NOT NULL,
  `color` varchar(30) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alarmas`
--

INSERT INTO `alarmas` (`id_alarma`, `titulo`, `texto`, `tipo_alarma`, `usuario`, `rol`, `color`, `fecha`) VALUES
(1, 'aaaaa', 'aaa', 'Critica', 'diego', 'Soporte Tecnico', '#38ac81', '2023-08-28 23:49:58'),
(2, 'aaaaa2', 'aaa', 'Critica', 'diego', 'Soporte Tecnico', '#bdbbb7', '2023-08-28 23:49:58'),
(3, 'A', 'A', 'Critica', 'diego', 'Soporte Tecnico', '#bdbbb7', '2023-08-29 00:03:31'),
(4, 'A', 'a', 'Critica', 'diego', 'Soporte Tecnico', '#bdbbb7', '2023-08-29 00:03:38'),
(5, 'A', 'S', 'Critica', 'diego', 'Soporte Tecnico', '#e3ffa8', '2023-08-29 00:03:42'),
(6, 'Ajsjssjdisbfw', 'Wjdobq9dbwodbw', 'Critica', 'Kroketa', 'Soporte Tecnico', '#38ac81', '2023-08-29 00:28:24'),
(7, 'asdfadfsdasdf', 'dsfdfafadfsds', 'Critica', 'diego', 'Soporte Tecnico', '#38ac81', '2023-08-29 14:25:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calle`
--

CREATE TABLE `calle` (
  `id` int(11) NOT NULL,
  `calle` varchar(25) NOT NULL,
  `localidad` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `apellido` varchar(35) NOT NULL,
  `dni` int(8) NOT NULL,
  `telefono` int(10) NOT NULL,
  `domicilio` varchar(40) NOT NULL,
  `olt` varchar(10) NOT NULL,
  `pon` int(11) NOT NULL,
  `pelo` int(11) NOT NULL,
  `splitter` varchar(10) NOT NULL,
  `cto` int(11) NOT NULL,
  `ubi_cto` int(50) NOT NULL,
  `onu` varchar(10) NOT NULL,
  `servicio` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cod_onu`
--

CREATE TABLE `cod_onu` (
  `id` int(11) NOT NULL,
  `onu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cto`
--

CREATE TABLE `cto` (
  `id` int(11) NOT NULL,
  `num_cto` int(11) NOT NULL,
  `olt` varchar(10) NOT NULL,
  `pon` int(11) NOT NULL,
  `pelo` int(11) NOT NULL,
  `splitter` varchar(10) NOT NULL,
  `calle` varchar(25) NOT NULL,
  `coordenadas` int(50) NOT NULL,
  `potencia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instalacion`
--

CREATE TABLE `instalacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `apellido` varchar(35) NOT NULL,
  `dni` int(8) NOT NULL,
  `telefono` int(10) NOT NULL,
  `domicilio` varchar(40) NOT NULL,
  `servicio` varchar(20) NOT NULL,
  `tecnico` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `id` int(11) NOT NULL,
  `localidad` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `num_pelo`
--

CREATE TABLE `num_pelo` (
  `id` int(11) NOT NULL,
  `pelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `olt`
--

CREATE TABLE `olt` (
  `id` int(11) NOT NULL,
  `num_olt` varchar(10) NOT NULL,
  `marca` text NOT NULL,
  `puerto` int(11) NOT NULL,
  `potencia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onu`
--

CREATE TABLE `onu` (
  `id` int(11) NOT NULL,
  `cto` int(11) NOT NULL,
  `onu` varchar(10) NOT NULL,
  `puerto` int(11) NOT NULL,
  `potencia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelo`
--

CREATE TABLE `pelo` (
  `id` int(11) NOT NULL,
  `pon` int(11) NOT NULL,
  `num_pelo` int(11) NOT NULL,
  `potencia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pon`
--

CREATE TABLE `pon` (
  `id` int(11) NOT NULL,
  `num_olt` varchar(10) NOT NULL,
  `pon` int(11) NOT NULL,
  `potencia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puerto_cto`
--

CREATE TABLE `puerto_cto` (
  `id` int(11) NOT NULL,
  `puerto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puerto_olt`
--

CREATE TABLE `puerto_olt` (
  `id` int(11) NOT NULL,
  `puerto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `cargo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `cargo`) VALUES
(1, 'Tecnico'),
(2, 'Soporte Tecnico'),
(3, 'Call Center');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `splitteo`
--

CREATE TABLE `splitteo` (
  `id` int(11) NOT NULL,
  `tipo_splitter` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `splitter`
--

CREATE TABLE `splitter` (
  `id` int(11) NOT NULL,
  `tipo_splitter` varchar(5) NOT NULL,
  `pelo` int(11) NOT NULL,
  `potencia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_alarmas`
--

CREATE TABLE `tipo_alarmas` (
  `id` int(11) NOT NULL,
  `tipo_alarma` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_alarmas`
--

INSERT INTO `tipo_alarmas` (`id`, `tipo_alarma`) VALUES
(1, 'Critica'),
(3, 'Leve'),
(2, 'Media');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_servicio`
--

CREATE TABLE `tipo_servicio` (
  `id` int(11) NOT NULL,
  `servicio` varchar(20) NOT NULL,
  `megas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `apellido` varchar(35) NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `id_cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `usuario`, `password`, `foto`, `id_cargo`) VALUES
(1, 'facundo', 'arena', 'facundo', 'arena', '', 1),
(2, 'diego', 'borras', 'diego', 'borras', '../img/diego.jpeg', 2),
(11, 'Gonzalo', 'Romano', 'gonza', '1234', '', 2),
(17, 'Geronimo', 'Ricardes', 'gero', '1234', '../img/gero.jpg', 2),
(23, 'Adrian', 'Aranda', 'Kroketa', '1234', '../img/IMG_9765.JPG', 2),
(24, 'Leonel', 'Corbalan', 'Lele', '1234', '../img/licensed-image.jpeg', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alarmas`
--
ALTER TABLE `alarmas`
  ADD PRIMARY KEY (`id_alarma`),
  ADD KEY `tipo_alarma` (`tipo_alarma`);

--
-- Indices de la tabla `calle`
--
ALTER TABLE `calle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calle` (`calle`,`localidad`),
  ADD KEY `localidad` (`localidad`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`,`nombre`,`apellido`,`dni`,`telefono`,`domicilio`,`olt`,`pon`,`pelo`,`splitter`,`cto`,`ubi_cto`,`onu`),
  ADD KEY `servicio` (`servicio`),
  ADD KEY `onu` (`onu`),
  ADD KEY `ubi_cto` (`ubi_cto`),
  ADD KEY `splitter` (`splitter`),
  ADD KEY `cto` (`cto`),
  ADD KEY `pelo` (`pelo`),
  ADD KEY `pon` (`pon`),
  ADD KEY `olt` (`olt`);

--
-- Indices de la tabla `cod_onu`
--
ALTER TABLE `cod_onu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onu` (`onu`);

--
-- Indices de la tabla `cto`
--
ALTER TABLE `cto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `num_cto` (`num_cto`,`olt`,`pon`,`pelo`,`splitter`,`calle`,`coordenadas`),
  ADD KEY `olt` (`olt`),
  ADD KEY `pon` (`pon`),
  ADD KEY `pelo` (`pelo`),
  ADD KEY `splitter` (`splitter`),
  ADD KEY `calle` (`calle`),
  ADD KEY `coordenadas` (`coordenadas`);

--
-- Indices de la tabla `instalacion`
--
ALTER TABLE `instalacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicio` (`servicio`,`tecnico`),
  ADD KEY `tecnico` (`tecnico`);

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `localidad` (`localidad`);

--
-- Indices de la tabla `num_pelo`
--
ALTER TABLE `num_pelo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelo` (`pelo`);

--
-- Indices de la tabla `olt`
--
ALTER TABLE `olt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `puerto` (`puerto`),
  ADD KEY `num_olt` (`num_olt`);

--
-- Indices de la tabla `onu`
--
ALTER TABLE `onu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cto` (`cto`,`onu`,`puerto`),
  ADD KEY `onu` (`onu`),
  ADD KEY `puerto` (`puerto`);

--
-- Indices de la tabla `pelo`
--
ALTER TABLE `pelo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pon` (`pon`,`num_pelo`),
  ADD KEY `num_pelo` (`num_pelo`);

--
-- Indices de la tabla `pon`
--
ALTER TABLE `pon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `num_olt` (`num_olt`,`pon`),
  ADD KEY `pon` (`pon`);

--
-- Indices de la tabla `puerto_cto`
--
ALTER TABLE `puerto_cto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `puerto` (`puerto`);

--
-- Indices de la tabla `puerto_olt`
--
ALTER TABLE `puerto_olt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `puerto` (`puerto`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cargo` (`cargo`(768));

--
-- Indices de la tabla `splitteo`
--
ALTER TABLE `splitteo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_splitter` (`tipo_splitter`);

--
-- Indices de la tabla `splitter`
--
ALTER TABLE `splitter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_splitter` (`tipo_splitter`),
  ADD KEY `pelo` (`pelo`);

--
-- Indices de la tabla `tipo_alarmas`
--
ALTER TABLE `tipo_alarmas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_alarma` (`tipo_alarma`);

--
-- Indices de la tabla `tipo_servicio`
--
ALTER TABLE `tipo_servicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicio` (`servicio`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_2` (`usuario`),
  ADD KEY `usuario` (`usuario`,`password`),
  ADD KEY `id_cargo` (`id_cargo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alarmas`
--
ALTER TABLE `alarmas`
  MODIFY `id_alarma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `calle`
--
ALTER TABLE `calle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cod_onu`
--
ALTER TABLE `cod_onu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cto`
--
ALTER TABLE `cto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `instalacion`
--
ALTER TABLE `instalacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `localidad`
--
ALTER TABLE `localidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `num_pelo`
--
ALTER TABLE `num_pelo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `olt`
--
ALTER TABLE `olt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `onu`
--
ALTER TABLE `onu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pelo`
--
ALTER TABLE `pelo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pon`
--
ALTER TABLE `pon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puerto_cto`
--
ALTER TABLE `puerto_cto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puerto_olt`
--
ALTER TABLE `puerto_olt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `splitteo`
--
ALTER TABLE `splitteo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `splitter`
--
ALTER TABLE `splitter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_alarmas`
--
ALTER TABLE `tipo_alarmas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_servicio`
--
ALTER TABLE `tipo_servicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alarmas`
--
ALTER TABLE `alarmas`
  ADD CONSTRAINT `alarmas_ibfk_1` FOREIGN KEY (`tipo_alarma`) REFERENCES `tipo_alarmas` (`tipo_alarma`);

--
-- Filtros para la tabla `calle`
--
ALTER TABLE `calle`
  ADD CONSTRAINT `calle_ibfk_1` FOREIGN KEY (`localidad`) REFERENCES `localidad` (`localidad`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`onu`) REFERENCES `onu` (`onu`),
  ADD CONSTRAINT `clientes_ibfk_2` FOREIGN KEY (`ubi_cto`) REFERENCES `cto` (`coordenadas`),
  ADD CONSTRAINT `clientes_ibfk_3` FOREIGN KEY (`splitter`) REFERENCES `cto` (`splitter`),
  ADD CONSTRAINT `clientes_ibfk_4` FOREIGN KEY (`cto`) REFERENCES `cto` (`num_cto`),
  ADD CONSTRAINT `clientes_ibfk_5` FOREIGN KEY (`pelo`) REFERENCES `cto` (`pelo`),
  ADD CONSTRAINT `clientes_ibfk_6` FOREIGN KEY (`pon`) REFERENCES `cto` (`pon`),
  ADD CONSTRAINT `clientes_ibfk_7` FOREIGN KEY (`olt`) REFERENCES `cto` (`olt`),
  ADD CONSTRAINT `clientes_ibfk_8` FOREIGN KEY (`servicio`) REFERENCES `tipo_servicio` (`servicio`);

--
-- Filtros para la tabla `cto`
--
ALTER TABLE `cto`
  ADD CONSTRAINT `cto_ibfk_1` FOREIGN KEY (`olt`) REFERENCES `olt` (`num_olt`),
  ADD CONSTRAINT `cto_ibfk_2` FOREIGN KEY (`pon`) REFERENCES `pon` (`pon`),
  ADD CONSTRAINT `cto_ibfk_3` FOREIGN KEY (`pelo`) REFERENCES `pelo` (`num_pelo`),
  ADD CONSTRAINT `cto_ibfk_4` FOREIGN KEY (`splitter`) REFERENCES `splitter` (`tipo_splitter`),
  ADD CONSTRAINT `cto_ibfk_5` FOREIGN KEY (`calle`) REFERENCES `calle` (`calle`),
  ADD CONSTRAINT `cto_ibfk_6` FOREIGN KEY (`num_cto`) REFERENCES `onu` (`cto`);

--
-- Filtros para la tabla `instalacion`
--
ALTER TABLE `instalacion`
  ADD CONSTRAINT `instalacion_ibfk_1` FOREIGN KEY (`tecnico`) REFERENCES `usuarios` (`usuario`),
  ADD CONSTRAINT `instalacion_ibfk_2` FOREIGN KEY (`servicio`) REFERENCES `tipo_servicio` (`servicio`);

--
-- Filtros para la tabla `olt`
--
ALTER TABLE `olt`
  ADD CONSTRAINT `olt_ibfk_1` FOREIGN KEY (`puerto`) REFERENCES `puerto_olt` (`puerto`);

--
-- Filtros para la tabla `onu`
--
ALTER TABLE `onu`
  ADD CONSTRAINT `onu_ibfk_1` FOREIGN KEY (`onu`) REFERENCES `cod_onu` (`onu`),
  ADD CONSTRAINT `onu_ibfk_2` FOREIGN KEY (`puerto`) REFERENCES `puerto_cto` (`puerto`);

--
-- Filtros para la tabla `pelo`
--
ALTER TABLE `pelo`
  ADD CONSTRAINT `pelo_ibfk_1` FOREIGN KEY (`pon`) REFERENCES `pon` (`pon`),
  ADD CONSTRAINT `pelo_ibfk_2` FOREIGN KEY (`num_pelo`) REFERENCES `num_pelo` (`pelo`);

--
-- Filtros para la tabla `pon`
--
ALTER TABLE `pon`
  ADD CONSTRAINT `pon_ibfk_1` FOREIGN KEY (`pon`) REFERENCES `olt` (`puerto`),
  ADD CONSTRAINT `pon_ibfk_2` FOREIGN KEY (`num_olt`) REFERENCES `olt` (`num_olt`);

--
-- Filtros para la tabla `splitter`
--
ALTER TABLE `splitter`
  ADD CONSTRAINT `splitter_ibfk_1` FOREIGN KEY (`pelo`) REFERENCES `pelo` (`num_pelo`),
  ADD CONSTRAINT `splitter_ibfk_2` FOREIGN KEY (`tipo_splitter`) REFERENCES `splitteo` (`tipo_splitter`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
