-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 17, 2018 at 12:05 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_docs`
--

-- --------------------------------------------------------

--
-- Table structure for table `tab_document`
--

DROP TABLE IF EXISTS `tab_document`;
CREATE TABLE IF NOT EXISTS `tab_document` (
  `codigo` int(10) NOT NULL,
  `version` int(5) NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `proposito` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `alcance` text COLLATE utf8_spanish_ci NOT NULL,
  `respon_funcion` text COLLATE utf8_spanish_ci NOT NULL,
  `regis_x_actividad` text COLLATE utf8_spanish_ci NOT NULL,
  `identi_cambios` text CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `fecha_revi` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `aprobacion` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `descri_actividades` text COLLATE utf8_spanish_ci NOT NULL,
  `anexos` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `tab_document`
--

INSERT INTO `tab_document` (`codigo`, `version`, `titulo`, `proposito`, `alcance`, `respon_funcion`, `regis_x_actividad`, `identi_cambios`, `fecha_revi`, `aprobacion`, `descri_actividades`, `anexos`) VALUES
(1, 1, 'por fin lina', 'unico', 'muchos', 'muchass', '', '', '', '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
