-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2016 a las 05:26:53
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda-online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `_id_categoria` int(3) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` int(60) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='categoria de videojuegos';

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`_id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'Acción', NULL),
(2, 'Estratégia', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `_id_cliente` int(5) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fec_nac` date NOT NULL,
  `nacionalidad` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL,
  `ciudad` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`_id_cliente`, `email`, `fec_nac`, `nacionalidad`, `region`, `ciudad`) VALUES
(15, 'camilo', '0000-00-00', 'lan', 'colombia', 'bogota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_detalle`
--

CREATE TABLE `factura_detalle` (
  `cantidad` int(2) NOT NULL,
  `valor` double NOT NULL,
  `_id_juego` varchar(5) NOT NULL,
  `_id_factura` int(5) NOT NULL,
  `_id_detalle` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_encabezado`
--

CREATE TABLE `factura_encabezado` (
  `_id_factura` int(6) NOT NULL,
  `_id_cliente` int(5) NOT NULL,
  `fecha` date NOT NULL,
  `valor_total` double NOT NULL,
  `estado_activo` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego`
--

CREATE TABLE `juego` (
  `_id_juego` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `sinopsis` text NOT NULL,
  `img_preview` varchar(255) NOT NULL,
  `img_banner` varchar(255) NOT NULL,
  `valor` double NOT NULL,
  `fecha_entrada` date NOT NULL,
  `visitas` int(5) NOT NULL,
  `_id_categoria` varchar(3) NOT NULL,
  `_id_stock` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `juego`
--

INSERT INTO `juego` (`_id_juego`, `nombre`, `sinopsis`, `img_preview`, `img_banner`, `valor`, `fecha_entrada`, `visitas`, `_id_categoria`, `_id_stock`) VALUES
(9, 'heroes', 'rol', 'img/preview/heroes.jpg', 'img/banner/', 100, '2016-10-15', 0, ' 1', '1'),
(4, 'skyrim', 'rol', 'img/preview/4.jpg', 'img/banner/', 200, '2016-09-14', 0, ' 2', '1'),
(5, 'header', 'rol', 'img/preview/header.jpg', 'img/banner/', 80, '2016-09-14', 0, ' 1', '1'),
(6, 'wow', 'rol', 'img/preview/wow-box1.jpg', 'img/banner/', 300, '2016-09-14', 0, ' 1', '1'),
(11, 'luchamex', '', 'img/preview/luchamex.png', 'img/banner/', 400, '2016-10-15', 0, ' 1', '1'),
(10, 'Diablo', 'rol', 'img/preview/diablo.JPG', 'img/banner/', 200, '2016-10-15', 0, ' 1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `_id_stock` int(3) NOT NULL,
  `minimo` int(2) NOT NULL,
  `maximo` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`_id_stock`, `minimo`, `maximo`) VALUES
(1, 10, 20),
(2, 20, 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion`
--

CREATE TABLE `transaccion` (
  `_id_transaccion` int(5) NOT NULL,
  `numero_transaccion` varchar(20) NOT NULL,
  `valor` double NOT NULL,
  `banco` varchar(20) NOT NULL,
  `cuenta_destino` varchar(20) NOT NULL,
  `_id_factura` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `_id_user` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contrasena` varchar(256) NOT NULL,
  `rol` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`_id_user`, `email`, `contrasena`, `rol`) VALUES
(1, 'jhon@jaja', '123', 'usuario'),
(12, 'camilo', '$2y$10$h.ofefcstcXBh8S/IZaS8eitAo99VWPp7IzXJIu8F4ZlHol59aVna', 'cliente'),
(13, 'jja', '$2y$10$wcpxqVta27tVXrwwQYdimuEIhA4R8kWVfstw.of1bzvl3bJ5N20pK', 'cliente'),
(14, 'jhon', '$2y$10$k2bkoVxn8DyHlHwk.hBFJuncrX6XBIswOIJdQ96CJjBdReZspbb9e', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`_id_categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`_id_cliente`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `factura_detalle`
--
ALTER TABLE `factura_detalle`
  ADD PRIMARY KEY (`_id_detalle`),
  ADD KEY `_id_juego` (`_id_juego`),
  ADD KEY `_id_factura` (`_id_factura`);

--
-- Indices de la tabla `factura_encabezado`
--
ALTER TABLE `factura_encabezado`
  ADD PRIMARY KEY (`_id_factura`),
  ADD KEY `_id_cliente` (`_id_cliente`);

--
-- Indices de la tabla `juego`
--
ALTER TABLE `juego`
  ADD PRIMARY KEY (`_id_juego`),
  ADD KEY `_id_juego_id_categoria` (`_id_categoria`),
  ADD KEY `_id_juego_id_stock` (`_id_stock`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`_id_stock`);

--
-- Indices de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD PRIMARY KEY (`_id_transaccion`),
  ADD KEY `_id_factura` (`_id_factura`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`_id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `_id_categoria` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `_id_cliente` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `factura_detalle`
--
ALTER TABLE `factura_detalle`
  MODIFY `_id_detalle` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `juego`
--
ALTER TABLE `juego`
  MODIFY `_id_juego` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `_id_stock` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  MODIFY `_id_transaccion` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `_id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
