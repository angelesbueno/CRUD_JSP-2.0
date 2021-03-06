-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:8889
-- Tiempo de generación: 13-05-2018 a las 21:34:44
-- Versión del servidor: 5.5.42
-- Versión de PHP: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `CLUBPELIS`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `CodPel` int(11) NOT NULL,
  `TitPel` varchar(45) COLLATE utf8_bin NOT NULL,
  `GenPel` varchar(45) COLLATE utf8_bin NOT NULL,
  `DesPel` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ProPel` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`CodPel`, `TitPel`, `GenPel`, `DesPel`, `ProPel`) VALUES
(1, 'El curioso caso de Benjamin Button', 'Drama', 'La historia de un hombre que nació viejo y su vida avanza al revés', 3),
(2, 'Big Fish', 'Drama', 'Cuenta la curiosa forma de ver el mundo un hombre con mucha imaginación', 2),
(4, 'La la land', 'Musical', 'Musical sobre los sueños por cumplir de una pareja en Hollywood', 8),
(5, 'V de Vendetta', 'Acción', 'Thriller político en el Reino Unido futurista', 4),
(6, 'Dirty Dancing', 'Musical', 'Historia de amor entre un bailarín y su aprendiz', 7),
(7, 'Frozen', 'Animación', 'Cuenta la historia de una reina con poderes', 10),
(8, 'Paranormal activity I', 'Terror', 'Sucesos paranormales en la casa de una joven pareja', 9),
(9, 'Stardust', 'Fantasía', 'Una estrella ha caído del cielo y busca su destino', 5),
(10, 'E.T, el extraterrestre', 'Ciencia Ficción', 'Un extraterrestre aparece en la casa de unos niños', 6),
(11, 'Slumdod Millionaire', 'Drama', 'La historia de superación de un chico pobre de la India', 7),
(17, 'Aladdin', 'Animación', 'La historia de un chico pobre que encuentra una lámpara maravillosa', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Prestamo`
--

CREATE TABLE `Prestamo` (
  `CodPre` int(11) NOT NULL,
  `CodSoc` int(11) NOT NULL,
  `CodPEL` int(11) NOT NULL,
  `FecPre` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `Prestamo`
--

INSERT INTO `Prestamo` (`CodPre`, `CodSoc`, `CodPEL`, `FecPre`) VALUES
(3, 10, 9, '2018-03-15 15:30:38'),
(12, 1, 4, '2018-03-20 16:06:07'),
(14, 13, 3, '2018-03-20 21:14:29'),
(15, 14, 13, '2018-03-21 21:57:54'),
(16, 12, 15, '2018-03-21 21:58:23'),
(19, 5, 10, '2018-03-21 22:01:59'),
(20, 4, 16, '2018-03-21 22:03:04'),
(23, 40, 17, '2018-03-21 23:11:03'),
(24, 4, 14, '2018-03-22 16:16:15'),
(25, 7, 7, '2018-05-13 18:15:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socio`
--

CREATE TABLE `socio` (
  `CodSoc` int(11) NOT NULL,
  `NomSoc` varchar(60) COLLATE utf8_bin NOT NULL DEFAULT 'NOT NULL',
  `DniSoc` varchar(45) COLLATE utf8_bin NOT NULL,
  `TlfSoc` varchar(45) COLLATE utf8_bin NOT NULL,
  `DirSoc` varchar(45) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `socio`
--

INSERT INTO `socio` (`CodSoc`, `NomSoc`, `DniSoc`, `TlfSoc`, `DirSoc`) VALUES
(2, 'Soraya Cubino Hernández', '52414871X', '652334120', 'La Princesa, 3'),
(3, 'María Teresa Aguilar Agudo', '50526219A', '657258912', 'Cervantes, 10'),
(4, 'Alberto Bueno Sánchez', '25860977F', '657258911', 'Cervantes, 10'),
(5, 'Mari Carmen Gaitán Ariza', '445678342M', '622318677', 'Dulcinea del Toboso, 4'),
(6, 'Patricia Padilla Rodriguez', '25678543C', '767551024', 'Rúa, 2'),
(7, 'Cristina Pérez Salvatierra', '445678767H', '666912837', 'Juan Sebastián Elcano, 44'),
(8, 'Manuela Hernández Pérez', '55498756H', '654321234', 'Mérida, 54'),
(9, 'Miriam Gutiérrez Cobos', '54367984R', '610225645', 'Ensanche, 6'),
(10, 'Guillermo Becerra Bueno', '44565769Y', '666504022', 'Escudos, 12'),
(11, 'Javier Silvela Velázquez', '44387985H', '775329104', 'Marcos Zapata, 10'),
(12, 'Dolores Fuentes Vaquero', '28053146F', '952292911', 'Soto, 5'),
(13, 'María del Mar Azul Oscuro', '45677882N', '654567219', 'Alderete, 2'),
(14, 'Lucía Flores Padilla', '25479067K', '766409120', 'Rafaelillo, 10'),
(16, 'Lucrecia López Crespo', '44565434T', '666509890', 'Ronda, 6');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`CodPel`),
  ADD KEY `ProPel_idx` (`ProPel`),
  ADD KEY `Genero` (`GenPel`);

--
-- Indices de la tabla `Prestamo`
--
ALTER TABLE `Prestamo`
  ADD PRIMARY KEY (`CodPre`);

--
-- Indices de la tabla `socio`
--
ALTER TABLE `socio`
  ADD PRIMARY KEY (`CodSoc`),
  ADD UNIQUE KEY `DniSoc` (`DniSoc`),
  ADD KEY `Dni` (`DniSoc`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `CodPel` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `Prestamo`
--
ALTER TABLE `Prestamo`
  MODIFY `CodPre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `socio`
--
ALTER TABLE `socio`
  MODIFY `CodSoc` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD CONSTRAINT `ProPel` FOREIGN KEY (`ProPel`) REFERENCES `Socio` (`CodSoc`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
