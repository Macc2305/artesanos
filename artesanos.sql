-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 26-07-2025 a las 04:07:06
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
-- Base de datos: `artesanos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `local`
--

CREATE TABLE `local` (
  `id_local` int(11) NOT NULL,
  `nombre_local` varchar(100) DEFAULT NULL,
  `descripcion_local` text DEFAULT NULL,
  `telefono_local` varchar(20) DEFAULT NULL,
  `direccion_local` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `correo_local` varchar(100) DEFAULT NULL,
  `id_usuario` bigint(20) DEFAULT NULL,
  `imagen_local` varchar(255) DEFAULT NULL,
  `historia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `local`
--

INSERT INTO `local` (`id_local`, `nombre_local`, `descripcion_local`, `telefono_local`, `direccion_local`, `whatsapp`, `instagram`, `facebook`, `correo_local`, `id_usuario`, `imagen_local`, `historia`) VALUES
(1, 'El costurero de michelle', 'tejidos a mano', '3127491233', 'calle 4 N° 11-37', '3127491233', NULL, NULL, 'monigd@hotmail.com', 1, 'images\\localmonica.jpeg', NULL),
(2, 'B\'AK\'TUN', 'Emprendimiento artesanal que comercializa productos únicos resaltando la diversidad cultural, la creatividad y el trabajo hecho a mano con identidad y calidad', '3204859040', 'calle 4 N° 11-37', '3204859040', NULL, NULL, 'henryquintero1808@gmail.com', 2, 'images\\localhenry.jpeg', 'B’AK’TUN es un emprendimiento que nació hace dos años, como idea de superación comercial, dedicado a la comercialización de pijamas perfumes, después incursionó en el mundo de la artesanía nicho que se sostiene hasta el momento para brindar a nuestros clientes una experiencia cultural y mágica por medio de nuestras creaciones'),
(3, 'Artesanias Martika Malagon', '', '3124033723', 'calle 4 N° 11-37', '3124033723', NULL, 'Marta Malagon Guevara', '1304pym@gmail.com', 3, 'images\\localmartha.jpeg', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(100) DEFAULT NULL,
  `descripcion_producto` text DEFAULT NULL,
  `materiales_producto` text DEFAULT NULL,
  `precio_producto` decimal(10,2) DEFAULT NULL,
  `imagen_producto` varchar(255) DEFAULT NULL,
  `id_local` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `materiales_producto`, `precio_producto`, `imagen_producto`, `id_local`) VALUES
(1, 'Gorro de ranita', 'Gorro de rana tejido a mano\r\n', 'Lana', 35000.00, 'images\\monica1.jpeg', 1),
(2, 'Gorro de colitas', 'Un gorro con dos colitas a los lados tejido a mano', 'Lana', 40000.00, 'images\\monica2.jpeg', 1),
(3, 'Gorro con línea azul', 'Un gorrito negro con una línea azul tejido a mano', 'Lana', 50000.00, 'images\\monica3.jpeg', 1),
(4, 'Bolso de Colombia grande', 'Un bolso bastante espacioso con los colores de la bandera colombiana tejido a mano', 'Lana', 130000.00, 'images\\monica4.jpeg', 1),
(5, 'Mochila de osito', 'Una mochila bastante cómoda de osito tejido a mano', 'Lana', 150000.00, 'images\\monica5.jpeg', 1),
(6, 'Bolso de flor', 'Un bolso color negro con un patrón de flor en el medio tejido a mano', 'Lana', 90000.00, 'images\\monica6.jpeg', 1),
(7, 'Bolso de cuadros florales', 'Un bolso color morado de cuadros con un patron de flor dentro tejido a mano', 'Lana', 100000.00, 'images\\monica7.jpeg', 1),
(8, 'Gorro degradado de verde', 'Gorro con un degradado de verdes tejido a mano', 'Lana', 50000.00, 'images\\monica8.jpeg', 1),
(9, 'Bolso morado de tiritas', 'Un bolso morado con unas tiritas de colores amarillos morados y rosas tejido a mano', 'Lana', 70000.00, 'images\\monica9.jpeg', 1),
(10, 'Gorro con una rosa', 'Gorro de color rosa y blanco con una flor en medio tejido a mano', 'Lana', 50000.00, 'images\\monica10.jpeg', 1),
(11, 'Imanes nevera de café', 'Imanes para la nevera de cafe con relación al Líbano', 'Hechos de café', 10000.00, 'images\\marthayluiz1.jpeg', 3),
(12, 'Imanes nevera de madera', 'Imanes para la nevera hechos de madera con relación al Líbano Tolima', 'Hechos de madera', 12000.00, 'images\\marthayluiz2.jpeg', 3),
(13, 'Pesebre en baúl', 'un pesebre en miniatura hecho de resina en un baúl', 'resina y madera', 25000.00, 'images\\marthayluiz3.jpeg', 3),
(14, 'Canastica de café', 'Una canasta pequeña decorativa de café hecha de manera artesanal', 'hecha de café', 25000.00, 'images\\marthayluiz4.jpeg', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` bigint(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `contraseña` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `correo`, `contraseña`, `imagen`) VALUES
(1, 'Monica Maria Gonzales Duran', 'monigd@hotmail.com', 'Monigd1101', 'images\\monica.jpeg'),
(2, 'Henry Yesid Quintero Garcia', 'henryquintero1808@gmail.com', 'David2718*', 'images\\henry.jpeg'),
(3, 'Martha Malagon Guevara y Luiz Alberto Martinez', '1304pym@gmail.com', '0413', 'images\\marthayluiz.jpeg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`id_local`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_local` (`id_local`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `local`
--
ALTER TABLE `local`
  ADD CONSTRAINT `local_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_local`) REFERENCES `local` (`id_local`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
