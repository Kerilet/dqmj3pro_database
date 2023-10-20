-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Out-2023 às 19:16
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dqmj3pro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `monsters`
--

CREATE TABLE `monsters` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `rank` enum('F','E','D','C','B','A','S','SS') NOT NULL,
  `size` enum('S','M','G','U') NOT NULL,
  `family` enum('Slime','Nature','Beast','Material','Undead','Devil','Dragon','Break','Unknown') NOT NULL,
  `hp` int(11) NOT NULL,
  `mp` int(11) NOT NULL,
  `atk` int(11) NOT NULL,
  `def` int(11) NOT NULL,
  `agi` int(11) NOT NULL,
  `int` int(11) NOT NULL,
  `recipe` varchar(90) NOT NULL,
  `skill` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `monsters`
--

INSERT INTO `monsters` (`id`, `name`, `rank`, `size`, `family`, `hp`, `mp`, `atk`, `def`, `agi`, `int`, `recipe`, `skill`) VALUES
(1, 'Black Dragon', 'S', 'M', 'Dragon', 1750, 380, 930, 830, 690, 740, 'Great Dragon + Darkwood Spirit', 'Zam'),
(2, 'Nemeslime', 'S', 'S', 'Slime', 1480, 560, 990, 730, 900, 870, 'None (Online Gift Disc)', 'Slider'),
(3, 'Phantomount', 'SS', 'S', 'Beast', 1200, 650, 900, 920, 1450, 780, 'Godsteed + Wonder Wyrtle', 'Sizz'),
(4, 'Baramos', 'SS', 'S', 'Unknown', 1650, 780, 640, 890, 720, 1230, 'Baramonster + Bones of Baramos', 'Baramos'),
(5, 'Overlord Rigor Mortex', 'SS', 'G', 'Unknown', 1380, 560, 940, 820, 740, 1240, 'None (Online Gift Disc)', 'Rigor Mortex (Super Light)');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `monsters`
--
ALTER TABLE `monsters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `monsters`
--
ALTER TABLE `monsters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
