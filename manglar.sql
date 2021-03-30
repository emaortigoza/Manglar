-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-03-2021 a las 00:23:19
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
-- Base de datos: `manglar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `localidad` varchar(120) NOT NULL,
  `mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `nombre`, `email`, `localidad`, `mensaje`) VALUES
(1, 'Emanuel', 'emaortigoza@gmail.com', 'Florencio Varela', 'hola estoy probando esto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `redes` varchar(120) NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `img`, `nombre`, `redes`, `bio`) VALUES
(4, 'gaboperfil.jpg', 'Arq. Gabriel Galeano', '@ggaleano.arte\r\n', ''),
(5, 'nicolas.jpg', 'Arq. Nicolas Salvatore', '@nicolasS', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `id` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `descripcion` text NOT NULL,
  `img1` text NOT NULL,
  `img2` text NOT NULL,
  `img3` text NOT NULL,
  `img4` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`id`, `titulo`, `descripcion`, `img1`, `img2`, `img3`, `img4`) VALUES
(1, 'CASA PEZZI BARRIO NUEVO QUILMES', 'Proyecto de vivienda pensada como una solucion \"escultorica\" que rompe con lo rutinario. El diseño es consecuencia tambien de las condiciones del terrenoadquirido por el comitente.', 'img6.jpg', 'img-6.jpg', 'img-8.jpg', 'img-9.jpg'),
(2, 'STAND MILLER', 'Pensado como un \"contenedor muestrario de doble escala\". Un pasaje a travez de los elementos producidos por la empresa metalurgica Miller. Resultando en las misma pieza dos escalas posibles de ejecucion.', 'img1.png', 'img2.png', 'img3.png', 'img4.png'),
(3, 'PROPUESTA REMODELACION BAR GEEK', 'Propuesta realizada para reacondicionar el interior y fachada.\r\nLa malla metalica recompone la fachada, generando un patio de ingreso mas resguardado', 'bar1.png', 'bar2.png', 'bar3.png', 'bar4.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
