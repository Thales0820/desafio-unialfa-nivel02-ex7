-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Jun-2023 às 20:31
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ex.7`
--
CREATE DATABASE IF NOT EXISTS `ex.7` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ex.7`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pesquisa`
--

CREATE TABLE `pesquisa` (
  `ID` int(11) NOT NULL,
  `regiao` varchar(100) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pesquisa`
--

INSERT INTO `pesquisa` (`ID`, `regiao`, `descricao`, `status`) VALUES
(1, 'Sul', 'A região Sul é composta por três estados: Paraná, Santa Catarina e Rio Grande do Sul', 'É a segunda maior densidade demográfica do Brasil, ficando atrás apenas da região Sudeste'),
(2, 'Sudeste', 'A região Sudeste é formada pelos estados de São Paulo, Rio de Janeiro, Espírito Santo e Minas Gerais', 'A região Sudeste é a mais desenvolvida do Brasil'),
(3, 'Norte', 'Envolve sete estados brasileiros: Acre, Amapá, Amazonas, Pará, Rondônia, Roraima e Tocantins', 'A Região Norte é maior região do Brasil em extensão territorial');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
