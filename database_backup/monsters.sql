-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/10/2023 às 16:46
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

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
-- Estrutura para tabela `monsters`
--

CREATE TABLE `monsters` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `rank` enum('F','E','D','C','B','A','S','SS') NOT NULL,
  `size` enum('1','2','3','4') NOT NULL,
  `family` enum('Slime','Nature','Beast','Material','Undead','Devil','Dragon','Break','???') NOT NULL,
  `hp` int(11) NOT NULL,
  `mp` int(11) NOT NULL,
  `atk` int(11) NOT NULL,
  `def` int(11) NOT NULL,
  `agi` int(11) NOT NULL,
  `int` int(11) NOT NULL,
  `recipe` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `monsters`
--

INSERT INTO `monsters` (`id`, `name`, `rank`, `size`, `family`, `hp`, `mp`, `atk`, `def`, `agi`, `int`, `recipe`) VALUES
(1, 'Black Dragon', 'S', '2', 'Dragon', 1750, 380, 930, 830, 690, 740, 'Great Dragon + Darkwood Spirit'),
(2, 'Nemeslime', 'S', '1', 'Slime', 1480, 560, 990, 730, 900, 870, 'None (Online Gift Disc)'),
(3, 'Phantomount', 'SS', '1', 'Beast', 1200, 650, 900, 920, 1450, 780, 'Godsteed + Wonder Wyrtle'),
(4, 'Baramos', 'SS', '1', '???', 1650, 780, 640, 890, 720, 1230, 'Baramonster + Bones of Baramos'),
(5, 'Overlord Rigor Mortex', 'SS', '3', '???', 1380, 560, 940, 820, 740, 1240, 'None (Online Gift Disc)');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `monsters`
--
ALTER TABLE `monsters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
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
