-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2015 a las 08:42:23
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

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
  `idAutor` int(10) NOT NULL AUTO_INCREMENT,
  `nombreAutor` varchar(255) NOT NULL,
  PRIMARY KEY (`idAutor`),
  KEY `nombreAutor` (`nombreAutor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concierto`
--

CREATE TABLE IF NOT EXISTS `concierto` (
  `idConcierto` int(10) NOT NULL AUTO_INCREMENT,
  `fechaConcierto` date NOT NULL,
  `horaConcierto` int(10) NOT NULL,
  `tituloConcierto` varchar(255) NOT NULL,
  `duracionConcierto` varchar(255) NOT NULL,
  `idPrograma` int(10) NOT NULL,
  `idTemporada` int(10) NOT NULL,
  `idGrupo` int(10) NOT NULL,
  `idOrquesta` int(10) NOT NULL,
  PRIMARY KEY (`idConcierto`),
  KEY `fechaConcierto` (`fechaConcierto`,`horaConcierto`,`tituloConcierto`,`duracionConcierto`,`idPrograma`,`idTemporada`,`idGrupo`,`idOrquesta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada`
--

CREATE TABLE IF NOT EXISTS `entrada` (
  `codEntrada` int(10) NOT NULL AUTO_INCREMENT,
  `numAsiento` int(10) NOT NULL,
  `numFila` int(10) NOT NULL,
  `precio` varchar(255) NOT NULL,
  `idConcierto` int(10) NOT NULL,
  PRIMARY KEY (`codEntrada`),
  KEY `numAsiento` (`numAsiento`,`numFila`,`precio`,`idConcierto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
  `idGrupo` int(10) NOT NULL AUTO_INCREMENT,
  `nombreGrupo` varchar(255) NOT NULL,
  `numIntegrantes` int(10) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `cedulaMusico` int(10) NOT NULL,
  `telGrupo` int(11) NOT NULL,
  `emailGrupo` varchar(255) NOT NULL,
  PRIMARY KEY (`idGrupo`),
  KEY `nombreGrupo` (`nombreGrupo`,`numIntegrantes`,`tipo`,`cedulaMusico`,`telGrupo`,`emailGrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musico`
--

CREATE TABLE IF NOT EXISTS `musico` (
  `cedulaMusico` int(10) NOT NULL AUTO_INCREMENT,
  `nombreMusico` varchar(255) NOT NULL,
  `instrumento` varchar(255) NOT NULL,
  `cvMusico` varchar(255) NOT NULL,
  `telMusico` int(11) NOT NULL,
  `emailMusico` varchar(255) NOT NULL,
  PRIMARY KEY (`cedulaMusico`),
  KEY `nombreMusico` (`nombreMusico`,`instrumento`,`cvMusico`,`telMusico`,`emailMusico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orquesta`
--

CREATE TABLE IF NOT EXISTS `orquesta` (
  `idOrquesta` int(10) NOT NULL AUTO_INCREMENT,
  `nombreOrquesta` varchar(255) NOT NULL,
  `integrantes` int(10) NOT NULL,
  `telOrquesta` int(11) NOT NULL,
  PRIMARY KEY (`idOrquesta`),
  KEY `nombreOrquesta` (`nombreOrquesta`,`integrantes`,`telOrquesta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE IF NOT EXISTS `programa` (
  `idPrograma` int(10) NOT NULL AUTO_INCREMENT,
  `cancion` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  PRIMARY KEY (`idPrograma`),
  KEY `cancion` (`cancion`,`autor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporada`
--

CREATE TABLE IF NOT EXISTS `temporada` (
  `idTemporada` int(10) NOT NULL AUTO_INCREMENT,
  `tipoTemporada` varchar(255) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFinal` date NOT NULL,
  PRIMARY KEY (`idTemporada`),
  KEY `tipoTemporada` (`tipoTemporada`,`fechaInicio`,`fechaFinal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
