-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-08-2015 a las 01:03:50
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `info_conciertos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE IF NOT EXISTS `autor` (
  `idAutor` int(10) NOT NULL,
  `nombreAutor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concierto`
--

CREATE TABLE IF NOT EXISTS `concierto` (
  `idConcierto` int(10) NOT NULL,
  `fechaConcierto` date NOT NULL,
  `horaConcierto` int(10) NOT NULL,
  `tituloConcierto` varchar(255) NOT NULL,
  `duracionConcierto` varchar(255) NOT NULL,
  `idPrograma` int(10) NOT NULL,
  `idTemporada` int(10) NOT NULL,
  `idGrupo` int(10) NOT NULL,
  `idOrquesta` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_grupo`
--

CREATE TABLE IF NOT EXISTS `email_grupo` (
  `idGrupo` int(10) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_musico`
--

CREATE TABLE IF NOT EXISTS `email_musico` (
  `idMusico` int(10) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada`
--

CREATE TABLE IF NOT EXISTS `entrada` (
  `codEntrada` int(10) NOT NULL,
  `numAsiento` int(10) NOT NULL,
  `numFila` int(10) NOT NULL,
  `precio` varchar(255) NOT NULL,
  `idConcierto` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
  `idGrupo` int(10) NOT NULL,
  `nombreGrupo` varchar(255) NOT NULL,
  `numIntegrantes` int(10) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `cedulaMusico` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musico`
--

CREATE TABLE IF NOT EXISTS `musico` (
  `cedulaMusico` int(10) NOT NULL,
  `nombreMusico` varchar(255) NOT NULL,
  `instrumento` varchar(255) NOT NULL,
  `cvMusico` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orquesta`
--

CREATE TABLE IF NOT EXISTS `orquesta` (
  `idOrquesta` int(10) NOT NULL,
  `nombreOrquesta` varchar(255) NOT NULL,
  `integrantes` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE IF NOT EXISTS `programa` (
  `idPrograma` int(10) NOT NULL,
  `cancion` varchar(255) NOT NULL,
  `autor` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tel_grupo`
--

CREATE TABLE IF NOT EXISTS `tel_grupo` (
  `idGrupo` int(10) NOT NULL,
  `telefono` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tel_musico`
--

CREATE TABLE IF NOT EXISTS `tel_musico` (
  `idMusico` int(10) NOT NULL,
  `telefono` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tel_orquesta`
--

CREATE TABLE IF NOT EXISTS `tel_orquesta` (
  `idOrquesta` int(10) NOT NULL,
  `telefono` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporada`
--

CREATE TABLE IF NOT EXISTS `temporada` (
  `idTemporada` int(10) NOT NULL,
  `tipoTemporada` varchar(255) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFinal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`idAutor`);

--
-- Indices de la tabla `concierto`
--
ALTER TABLE `concierto`
  ADD PRIMARY KEY (`idConcierto`),
  ADD KEY `idPrograma` (`idPrograma`),
  ADD KEY `idTemporada` (`idTemporada`),
  ADD KEY `idGrupo` (`idGrupo`),
  ADD KEY `idOrquesta` (`idOrquesta`);

--
-- Indices de la tabla `email_grupo`
--
ALTER TABLE `email_grupo`
  ADD PRIMARY KEY (`idGrupo`),
  ADD KEY `idGrupo` (`idGrupo`);

--
-- Indices de la tabla `email_musico`
--
ALTER TABLE `email_musico`
  ADD PRIMARY KEY (`idMusico`),
  ADD KEY `idMusico` (`idMusico`);

--
-- Indices de la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD PRIMARY KEY (`codEntrada`),
  ADD KEY `idConcierto` (`idConcierto`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`idGrupo`),
  ADD KEY `cedulaMusico` (`cedulaMusico`);

--
-- Indices de la tabla `musico`
--
ALTER TABLE `musico`
  ADD PRIMARY KEY (`cedulaMusico`);

--
-- Indices de la tabla `orquesta`
--
ALTER TABLE `orquesta`
  ADD PRIMARY KEY (`idOrquesta`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`idPrograma`),
  ADD KEY `idAutor` (`autor`);

--
-- Indices de la tabla `tel_grupo`
--
ALTER TABLE `tel_grupo`
  ADD PRIMARY KEY (`idGrupo`),
  ADD KEY `idGrupo` (`idGrupo`);

--
-- Indices de la tabla `tel_musico`
--
ALTER TABLE `tel_musico`
  ADD PRIMARY KEY (`idMusico`),
  ADD KEY `idMusico` (`idMusico`);

--
-- Indices de la tabla `tel_orquesta`
--
ALTER TABLE `tel_orquesta`
  ADD PRIMARY KEY (`idOrquesta`),
  ADD KEY `idOrquesta` (`idOrquesta`);

--
-- Indices de la tabla `temporada`
--
ALTER TABLE `temporada`
  ADD PRIMARY KEY (`idTemporada`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `idAutor` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `concierto`
--
ALTER TABLE `concierto`
  MODIFY `idConcierto` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `entrada`
--
ALTER TABLE `entrada`
  MODIFY `codEntrada` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `idGrupo` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `musico`
--
ALTER TABLE `musico`
  MODIFY `cedulaMusico` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `orquesta`
--
ALTER TABLE `orquesta`
  MODIFY `idOrquesta` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `programa`
--
ALTER TABLE `programa`
  MODIFY `idPrograma` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `temporada`
--
ALTER TABLE `temporada`
  MODIFY `idTemporada` int(10) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `concierto`
--
ALTER TABLE `concierto`
  ADD CONSTRAINT `concierto_ibfk_1` FOREIGN KEY (`idPrograma`) REFERENCES `programa` (`idPrograma`),
  ADD CONSTRAINT `concierto_ibfk_2` FOREIGN KEY (`idTemporada`) REFERENCES `temporada` (`idTemporada`),
  ADD CONSTRAINT `concierto_ibfk_3` FOREIGN KEY (`idGrupo`) REFERENCES `grupo` (`idGrupo`),
  ADD CONSTRAINT `concierto_ibfk_4` FOREIGN KEY (`idOrquesta`) REFERENCES `orquesta` (`idOrquesta`);

--
-- Filtros para la tabla `email_grupo`
--
ALTER TABLE `email_grupo`
  ADD CONSTRAINT `email_grupo_ibfk_1` FOREIGN KEY (`idGrupo`) REFERENCES `grupo` (`idGrupo`);

--
-- Filtros para la tabla `email_musico`
--
ALTER TABLE `email_musico`
  ADD CONSTRAINT `email_musico_ibfk_1` FOREIGN KEY (`idMusico`) REFERENCES `musico` (`cedulaMusico`);

--
-- Filtros para la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD CONSTRAINT `entrada_ibfk_1` FOREIGN KEY (`idConcierto`) REFERENCES `concierto` (`idConcierto`);

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `grupo_ibfk_1` FOREIGN KEY (`cedulaMusico`) REFERENCES `musico` (`cedulaMusico`);

--
-- Filtros para la tabla `programa`
--
ALTER TABLE `programa`
  ADD CONSTRAINT `programa_ibfk_1` FOREIGN KEY (`autor`) REFERENCES `autor` (`idAutor`);

--
-- Filtros para la tabla `tel_grupo`
--
ALTER TABLE `tel_grupo`
  ADD CONSTRAINT `tel_grupo_ibfk_1` FOREIGN KEY (`idGrupo`) REFERENCES `grupo` (`idGrupo`);

--
-- Filtros para la tabla `tel_musico`
--
ALTER TABLE `tel_musico`
  ADD CONSTRAINT `tel_musico_ibfk_1` FOREIGN KEY (`idMusico`) REFERENCES `musico` (`cedulaMusico`);

--
-- Filtros para la tabla `tel_orquesta`
--
ALTER TABLE `tel_orquesta`
  ADD CONSTRAINT `tel_orquesta_ibfk_1` FOREIGN KEY (`idOrquesta`) REFERENCES `orquesta` (`idOrquesta`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
