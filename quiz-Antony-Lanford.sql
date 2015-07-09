-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-07-2015 a las 01:16:43
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `rastreador_tiempos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(255) NOT NULL,
  `ubicacion_cliente` varchar(255) NOT NULL,
  `estado_cliente` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaborador`
--

CREATE TABLE IF NOT EXISTS `colaborador` (
  `id_colaborador` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cedula_colaborador` varchar(25) NOT NULL,
  `nombre_colaborador` varchar(255) NOT NULL,
  `puesto_colaborador` varchar(255) NOT NULL,
  `estado_colaborador` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id_colaborador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE IF NOT EXISTS `proyecto` (
  `id_proyecto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cliente` int(10) unsigned NOT NULL,
  `tipo_proyecto` tinyint(1) unsigned DEFAULT '1',
  `nombre_proyecto` varchar(255) NOT NULL,
  `precio_hora` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_horas`
--

CREATE TABLE IF NOT EXISTS `registro_horas` (
  `id_registro` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_reporte` int(10) unsigned NOT NULL,
  `id_colaborador` int(10) unsigned NOT NULL,
  `id_tarea` int(10) unsigned NOT NULL,
  `descripcion_registro` varchar(255) DEFAULT NULL,
  `fecha_registro` int(10) unsigned NOT NULL,
  `cantidad_horas` tinyint(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_semanal`
--

CREATE TABLE IF NOT EXISTS `reporte_semanal` (
  `id_reporte` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha_inicio_reporte` int(10) unsigned NOT NULL,
  `cantidad_total_horas_reporte` tinyint(2) unsigned DEFAULT NULL,
  `estado_reporte` tinyint(1) unsigned DEFAULT '1',
  `fecha_envio_reporte` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE IF NOT EXISTS `tarea` (
  `id_tarea` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_proyecto` int(10) unsigned NOT NULL,
  `cobrable` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id_tarea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
