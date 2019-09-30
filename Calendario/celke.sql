-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 04-Set-2019 às 00:19
-- Versão do servidor: 5.7.23
-- versão do PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `celke`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela 'agenda'
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(220) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS agenda;
CREATE TABLE IF NOT EXISTS agenda (
  id int(11) NOT NULL AUTO_INCREMENT,
  nome varchar(220) DEFAULT NULL,
  time varchar(10) DEFAULT NULL,
  start datetime DEFAULT NULL,
  end datetime DEFAULT NULL,
  PRIMARY KEY (id')
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `events`
--
INSERT INTO agenda (id, nome, time, start, end) VALUES 
(NULL, 'luciano.fagundes','Italia', '2019','09','30 14:00:00',   '2019','09','30 15:00:00'),
(NULL, 'tiago.davi' ,'Italia', '2019','09','30 09:00:00',   '2019','09','30 11:00:00'),
(NULL, 'tiago.quadros','Alemanha', '2019','10','01 21:00:00',   '2019','10','01 23:00:00'),
(NULL, 'rodrigo.silva','Russia','2019','10','01 03:00:00',   '2019','10','01 05:00:00'),
(NULL, 'pedro.oliveira','Japao', '2019','10','01 08:00:00',   '2019','10','01 10:00:00'),
(NULL, 'ciclano.rocha','Brasil', '2019','10','02 16:00:00',   '2019','10','02 17:00:00'),
(NULL, 'fulano.pereira','Franca', '2019','10','03 17:00:00',   '2019','10','03 19:00:00'),
(NULL, 'beltrano.pereira','Alemanha', '2019','10','03 18:00:00',   '2019','10','03 20:00:00'),
(NULL, 'josias.matos','Franca', '2019','10','02 22:00:00',   '2019','10','02 23:00:00'),
(NULL, 'douglas.xuint','Russia', '2019','10','03 14:00:00',   '2019','10','03 15:00:00')

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
