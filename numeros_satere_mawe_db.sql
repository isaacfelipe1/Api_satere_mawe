-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 15-Set-2023 às 08:42
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `numeros_satere_mawe_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alfabeto`
--

DROP TABLE IF EXISTS `alfabeto`;
CREATE TABLE IF NOT EXISTS `alfabeto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `letra` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `alfabeto`
--

INSERT INTO `alfabeto` (`id`, `letra`) VALUES
(1, 'a'),
(2, 'b'),
(3, 'c'),
(4, 'd'),
(5, 'e'),
(6, 'f'),
(7, 'g'),
(8, 'h'),
(9, 'i'),
(10, 'j'),
(11, 'k'),
(12, 'l'),
(13, 'm'),
(14, 'n'),
(15, 'o'),
(16, 'p'),
(17, 'q'),
(18, 'r'),
(19, 's'),
(20, 't'),
(21, 'u'),
(22, 'v'),
(23, 'w'),
(24, 'x'),
(25, 'y'),
(26, 'z');

-- --------------------------------------------------------

--
-- Estrutura da tabela `numeros_descricoes`
--

DROP TABLE IF EXISTS `numeros_descricoes`;
CREATE TABLE IF NOT EXISTS `numeros_descricoes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero` int NOT NULL,
  `descricao` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `numeros_descricoes`
--

INSERT INTO `numeros_descricoes` (`id`, `numero`, `descricao`) VALUES
(1, 0, 'Kat’i'),
(2, 1, 'Wentup'),
(3, 2, 'Typy'),
(4, 3, 'Mye’ym'),
(5, 4, 'Tukawa'),
(6, 5, 'Mantukawa'),
(7, 6, 'Mantuwe'),
(8, 7, 'Mantuty '),
(9, 8, 'Mantumye'),
(10, 9, 'Mantutu '),
(11, 10, 'Wekat '),
(12, 11, 'Wekawe'),
(13, 12, ' Wekaty'),
(14, 13, 'Wekamye'),
(15, 14, 'Wekatu  '),
(16, 15, 'Wekaman '),
(17, 16, ' Weka man we '),
(18, 17, ' Wekaman ty  '),
(19, 18, '  Wekaman mye '),
(20, 19, ' Wekaman tu  '),
(21, 20, ' Tykat  '),
(22, 21, 'Tykawe'),
(23, 22, 'Tykaty'),
(24, 23, 'Tykamye'),
(25, 24, 'Tykatu'),
(26, 25, 'Tykaman'),
(27, 26, 'Tykamanwe'),
(28, 27, 'Tykamanty'),
(29, 28, 'Tykamanmye'),
(30, 29, 'Tykamantu'),
(31, 30, 'Myekat'),
(32, 31, 'Myekawe'),
(33, 32, 'Mye katy'),
(34, 33, 'Mye ka mye'),
(35, 34, 'Mye katu'),
(36, 35, 'Mye kaman '),
(37, 36, ' Mye kamanwe'),
(38, 37, 'Mye kamanty '),
(39, 38, 'Mye kamanmye '),
(40, 39, ' Mye kamantu '),
(41, 40, 'Tukat '),
(42, 41, ' Tukawe'),
(43, 42, 'Tukaty '),
(44, 43, 'Tukamye '),
(45, 44, 'Tukatu '),
(46, 45, ' Tukaman'),
(47, 46, 'Tukamanwe '),
(48, 47, 'Tukamanty'),
(49, 48, 'Tukamanmye'),
(50, 49, 'Tukamantu'),
(51, 50, 'Mantukat');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vogais`
--

DROP TABLE IF EXISTS `vogais`;
CREATE TABLE IF NOT EXISTS `vogais` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero` int NOT NULL,
  `descricao` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `vogais`
--

INSERT INTO `vogais` (`id`, `numero`, `descricao`) VALUES
(1, 1, 'A'),
(2, 2, 'E'),
(3, 3, 'I'),
(4, 4, 'Y'),
(5, 5, 'O'),
(6, 6, 'U');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
