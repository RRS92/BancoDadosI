-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/10/2023 às 20:57
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
-- Banco de dados: `rrs-copadb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `arbitro`
--

CREATE TABLE `arbitro` (
  `ID` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `atleta`
--

CREATE TABLE `atleta` (
  `Id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `data_nasc` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `posicao_id` int(11) DEFAULT NULL,
  `pais_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `estadio`
--

CREATE TABLE `estadio` (
  `ID` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `gols`
--

CREATE TABLE `gols` (
  `ID` int(11) NOT NULL,
  `gol` int(11) DEFAULT NULL,
  `atleta_id` int(11) DEFAULT NULL,
  `jogos_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogos`
--

CREATE TABLE `jogos` (
  `ID` int(11) NOT NULL,
  `data_jogo` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estadio_ID` int(11) DEFAULT NULL,
  `pais1_ID` int(11) DEFAULT NULL,
  `pais2_ID` int(11) DEFAULT NULL,
  `arbitro_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pais`
--

CREATE TABLE `pais` (
  `ID` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `tecnico_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `posicao`
--

CREATE TABLE `posicao` (
  `ID` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tecnico`
--

CREATE TABLE `tecnico` (
  `ID` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `arbitro`
--
ALTER TABLE `arbitro`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `atleta`
--
ALTER TABLE `atleta`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk1_atleta` (`posicao_id`),
  ADD KEY `fk2_atleta` (`pais_id`);

--
-- Índices de tabela `estadio`
--
ALTER TABLE `estadio`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `gols`
--
ALTER TABLE `gols`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk1_gols` (`atleta_id`),
  ADD KEY `fk2_gols` (`jogos_id`);

--
-- Índices de tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk1_jogos` (`estadio_ID`),
  ADD KEY `fk2_jogos` (`pais1_ID`),
  ADD KEY `fk3_jogos` (`pais2_ID`),
  ADD KEY `fk4_jogos` (`arbitro_ID`);

--
-- Índices de tabela `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_pais` (`tecnico_id`);

--
-- Índices de tabela `posicao`
--
ALTER TABLE `posicao`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `tecnico`
--
ALTER TABLE `tecnico`
  ADD PRIMARY KEY (`ID`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atleta`
--
ALTER TABLE `atleta`
  ADD CONSTRAINT `fk1_atleta` FOREIGN KEY (`posicao_id`) REFERENCES `posicao` (`ID`),
  ADD CONSTRAINT `fk2_atleta` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`ID`);

--
-- Restrições para tabelas `gols`
--
ALTER TABLE `gols`
  ADD CONSTRAINT `fk1_gols` FOREIGN KEY (`atleta_id`) REFERENCES `atleta` (`Id`),
  ADD CONSTRAINT `fk2_gols` FOREIGN KEY (`jogos_id`) REFERENCES `jogos` (`ID`);

--
-- Restrições para tabelas `jogos`
--
ALTER TABLE `jogos`
  ADD CONSTRAINT `fk1_jogos` FOREIGN KEY (`estadio_ID`) REFERENCES `estadio` (`ID`),
  ADD CONSTRAINT `fk2_jogos` FOREIGN KEY (`pais1_ID`) REFERENCES `pais` (`ID`),
  ADD CONSTRAINT `fk3_jogos` FOREIGN KEY (`pais2_ID`) REFERENCES `pais` (`ID`),
  ADD CONSTRAINT `fk4_jogos` FOREIGN KEY (`arbitro_ID`) REFERENCES `arbitro` (`ID`);

--
-- Restrições para tabelas `pais`
--
ALTER TABLE `pais`
  ADD CONSTRAINT `fk_pais` FOREIGN KEY (`tecnico_id`) REFERENCES `tecnico` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
