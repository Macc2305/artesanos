-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-07-2025 a las 10:58:17
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
(1, 'El costurero de michelle', 'tejidos a mano', '3127491233', 'calle 4 N° 11-37', '3127491233', NULL, NULL, 'monigd@hotmail.com', 1, 'images\\localmonica.jpeg', 'Llevo prácticamente toda mi vida, alrededor de 20 años, haciendo este tipo de productos. Quería tener un sitio donde exhibir mis creaciones, y así empecé mi negocio en noviembre de 2024, en el lugar donde actualmente me encuentro ubicada. He pasado por tiempos buenos y malos, pero aquí sigo, aprovechando la oportunidad que me brindaron.'),
(2, 'B\'AK\'TUN', 'Emprendimiento artesanal que comercializa productos únicos resaltando la diversidad cultural, la creatividad y el trabajo hecho a mano con identidad y calidad', '3204859040', 'calle 4 N° 11-37', '3204859040', NULL, NULL, 'henryquintero1808@gmail.com', 2, 'images\\localhenry.jpeg', 'B’AK’TUN es un emprendimiento que nació hace dos años, como idea de superación comercial, dedicado a la comercialización de pijamas perfumes, después incursionó en el mundo de la artesanía nicho que se sostiene hasta el momento para brindar a nuestros clientes una experiencia cultural y mágica por medio de nuestras creaciones'),
(3, 'Artesanias Martika Malagon', 'Artesanías hechas a mano: productos únicos y 100% artesanales, desde tejidos tradicionales hasta artículos decorativos elaborados con técnicas manuales. Calidad, creatividad y autenticidad en cada pieza artesanal.', '3124033723', 'calle 4 N° 11-37', '3124033723', NULL, 'Marta Malagon Guevara', '1304pym@gmail.com', 3, 'images\\localmartha.jpeg', 'Nuestras Artesanías son un legado familiar ya que nuestros padres nos enseñaron a elaborar diferentes artículos desde muy pequeños en fibras y semillas naturales, en las tardes nos sentábamos a tejer y así fuimos realizando más productos artesanales y hoy en día seguimos nuestras tradiciones creando y elaborando nuestros productos con creatividad y mucho amor.\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(100) DEFAULT NULL,
  `descripcion_producto` text DEFAULT NULL,
  `materiales_producto` text DEFAULT NULL,
  `precio_producto` text DEFAULT NULL,
  `imagen_producto` varchar(255) DEFAULT NULL,
  `id_local` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `materiales_producto`, `precio_producto`, `imagen_producto`, `id_local`) VALUES
(1, 'Gorro de ranita', 'Gorro de rana tejido a mano\r\n', 'Lana', '35000.00', 'images\\monica1.jpeg', 1),
(2, 'Gorro de colitas', 'Un gorro con dos colitas a los lados tejido a mano', 'Lana', '40000.00', 'images\\monica2.jpeg', 1),
(3, 'Gorro con línea azul', 'Un gorrito negro con una línea azul tejido a mano', 'Lana', '50000.00', 'images\\monica3.jpeg', 1),
(4, 'Bolso de Colombia grande', 'Un bolso bastante espacioso con los colores de la bandera colombiana tejido a mano', 'Lana', '130000.00', 'images\\monica4.jpeg', 1),
(5, 'Mochila de osito', 'Una mochila bastante cómoda de osito tejido a mano', 'Lana', '150000.00', 'images\\monica5.jpeg', 1),
(6, 'Bolso de flor', 'Un bolso color negro con un patrón de flor en el medio tejido a mano', 'Lana', '90000.00', 'images\\monica6.jpeg', 1),
(7, 'Bolso de cuadros florales', 'Un bolso color morado de cuadros con un patron de flor dentro tejido a mano', 'Lana', '100000.00', 'images\\monica7.jpeg', 1),
(8, 'Gorro degradado de verde', 'Gorro con un degradado de verdes tejido a mano', 'Lana', '50000.00', 'images\\monica8.jpeg', 1),
(9, 'Bolso morado de tiritas', 'Un bolso morado con unas tiritas de colores amarillos morados y rosas tejido a mano', 'Lana', '70000.00', 'images\\monica9.jpeg', 1),
(10, 'Gorro con una rosa', 'Gorro de color rosa y blanco con una flor en medio tejido a mano', 'Lana', '50000.00', 'images\\monica10.jpeg', 1),
(11, 'Muñecas decorativas', 'muñecas decorativas elaboradas a mano', 'elaboradas en capacho de la mazorca, cabuya y semillas naturales \r\n', '45000.00', 'images\\marthayluiz1.jpeg', 3),
(12, 'Imanes nevera de café', 'Imanes para la nevera de cafe con relación al Líbano', 'Hechos de café', '10000.00', 'images\\marthayluiz2.jpeg', 3),
(13, 'Imanes nevera de madera', 'Imanes para la nevera hechos de madera con relación al Líbano Tolima', 'Hechos de madera', '12000.00', 'images\\marthayluiz3.jpeg', 3),
(14, 'Pesebre en baúl', 'un pesebre en miniatura hecho de resina en un baúl', 'resina y madera', '25000.00-35000.00', 'images\\marthayluiz4.jpeg', 3),
(15, 'Canastica de café', 'Una canasta pequeña decorativa de café hecha de manera artesanal', 'hecha de café', '25000.00', 'images\\marthayluiz5.jpeg', 3),
(16, 'Gasas\r\n', 'Gasas o cinturones para bolsos tejidos a mano\r\n', 'hilo macrame\r\n', '25000.00', 'images\\marthayluiz6.jpeg', 3),
(17, 'Bolso blanco y negro\r\n', 'un bolso de color blanco y principalmente negro bastante grande y espacioso tejido a mano\r\n', 'hilo macrame\r\n', '160000.00', 'images\\marthayluiz7.jpeg', 3),
(18, 'Bolso de 4 colores\r\n', 'Un bolso tejido a mano de color verde rojo amarillo y negro bastante espacioso\r\n', 'hilo macrame\r\n', '120000.00', 'images\\marthayluiz8.jpeg', 3),
(19, 'Bolso naranja\r\n\r\n', 'Bolso de color naranja tejido a mano bastante cómodo\r\n', 'lana de ovejo', '60000.00', 'images\\marthayluiz9.jpeg', 3),
(20, 'Monederos\r\n\r\n', 'Monederos tejidos a mano de colores grandes y pequeños', 'Hilo macrame', '15000.00-20000.00', 'images\\marthayluiz10.jpeg', 3),
(21, 'Servilletero', 'hermoso servilletero, modelo máquina de café descerezadora en colores rojo, café y verde, que hace homenaje a nuestra tierra caficultora.', 'madera, pintura y laca.', '25000.00', 'images\\henry1.jpeg', 2),
(22, 'Bolso tejido en crochet', 'Combinando tradición artesanal con un diseño moderno y funcional.\r\nElaborados con hilos de alta calidad, presenta un tejido firme, ligero y resistente, ideal para acompañarte en tu día a día.\r\n', 'Hilo crochet', '85000.00', 'images\\henry2.jpeg', 2),
(23, 'Perfumería a base de aceite inspiradas en las marcas mas vendidas del mercado internacional.\r\n', 'Nuestros perfumes en aceite son una alternativa elegante, están elaborados a base de aceites esenciales y extractos aromáticos de alta concentración, lo que les permite ofrecer una duración prolongada y una experiencia olfativa mas intima y sofisticada.', 'Esencia a base de aceite inspirada en aromas florales, amaderados, dulces, cítricos, orientales, árabes, entre otros.', '5000.00-60000.00', 'images\\henry3.jpeg', 2),
(24, 'Souvenirs', 'Nuestros souvenirs son pequeños tesoros, pensados para detalles especiales y dejar una huella en el corazón, cada pieza es elaborada con dedicación, combinando técnicas artesanales con materiales naturales y diseños únicos que reflejan amor, creatividad y tradición.', 'Madera, bambú, yute, pasta, café.', '12000.00-35000.00', 'images\\henry4.jpeg', 2),
(25, 'recordatorios', 'Nuestros imanes para la nevera están hechos a mano con creatividad y dedicación, convirtiendo cada pieza en una mini obra de arte. Son perfectos para decorar tu cocina, sujetar notas importantes o simplemente darle un toque especial y personalizado a tu hogar.\r\n', 'Madera, pintura acrílica, pasta.', '12000.00', 'images\\henry5.jpeg', 2),
(26, 'Aretes artesanales ', 'Nuestros aretes artesanales son piezas únicas que combinan tradición, estilo y creatividad, cada par es elaborado cuidadosamente a mano por manos expertas, estos accesorios no solo completan tu estilo, sino que también cuentan historias: de culturas, colores, raíces y saberes ancestrales.\r\n', 'Hilos, piedras, semillas, metales, arcilla, madera o tejidos.', '10000.00-20000.00', 'images\\henry6.jpeg', 2),
(27, 'Manillas', 'Nuestras manillas tejidas a mano con dedicación y estilo, combinando colores, nudos y texturas que reflejan identidad, cultura y conexión. Cada pieza es única, hecha con hilos resistentes y materiales naturales, pensada para acompañarte o regalar como símbolo de amistad, amor o protección.', 'Oro laminado, acero, hilo, mostacilla, neopreno, cuero, fibras naturales, entre otros.', '4000.00+', 'images\\henry7.jpeg', 2),
(28, 'Collares', 'Collares inspirados en la naturaleza, la cultura y la tradición, cada collar combina materiales nobles logrando diseños llenos de significado y belleza.\r\n', 'Hilos, piedras naturales, semillas, mostacillas, madera, metales.\r\n', '10000.00+', 'images\\henry8.jpeg', 2),
(29, 'Monederos', 'Monederos hechos a mano con materiales de alta calidad y un cuidado especial en cada detalle. Diseñados para combinar funcionalidad con belleza, son perfectos para llevar monedas, billetes, tarjetas o pequeños objetos con total seguridad y estilo.', 'Cuero, hilos, iraca.', '15000.00-30000.00', 'images\\henry9.jpeg', 2),
(30, 'Comestibles a base de café ', 'Nuestros productos comestibles elaborados a base de café combinan lo mejor del sabor artesanal con la riqueza del grano colombiano. Cada bocado es una experiencia única que resalta los aromas, texturas y propiedades del café, transformado en deliciosas creaciones ideales para disfrutar o regalar. ', 'Café molido, harina, avena, azúcar, mantequilla, huevo, polvo de hornear, vainilla, chocolate, leche, coco, canela, entre otros.', '3000.00-28000.00', 'images\\henry10.jpeg', 2);

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
