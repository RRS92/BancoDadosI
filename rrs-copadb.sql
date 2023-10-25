-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/10/2023 às 02:46
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

--
-- Despejando dados para a tabela `arbitro`
--

INSERT INTO `arbitro` (`ID`, `nome`) VALUES
(1, 'Abdulrahman Al-Jassim'),
(2, 'Chris Beath'),
(3, 'Bakary Gassama'),
(4, 'Victor Gomes');

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

--
-- Despejando dados para a tabela `atleta`
--

INSERT INTO `atleta` (`Id`, `nome`, `data_nasc`, `posicao_id`, `pais_id`) VALUES
(1, 'Alisson', '2000-01-01 03:00:00', 1, 1),
(2, 'Alex Sandro', '1999-02-02 03:00:00', 2, 1),
(3, 'Daniel Alves', '1998-03-03 03:00:00', 2, 1),
(4, 'Thiago Silva', '1997-04-04 03:00:00', 2, 1),
(5, 'Éder Militão', '1996-05-05 03:00:00', 2, 1),
(6, 'Marquinhos', '1995-06-06 03:00:00', 2, 1),
(7, 'Casemiro', '1994-07-07 03:00:00', 3, 1),
(8, 'Fred', '1993-08-08 03:00:00', 3, 1),
(9, 'Lucas Paquetá', '1992-09-09 03:00:00', 3, 1),
(10, 'Neymar', '1991-10-10 03:00:00', 4, 1),
(11, 'Vinicius Jr.', '1990-11-11 03:00:00', 4, 1),
(12, 'Andries Noppert', '2000-01-01 03:00:00', 1, 2),
(13, 'Daley Blind', '1999-02-02 03:00:00', 2, 2),
(14, 'Stefan de Vrij', '1998-03-03 03:00:00', 2, 2),
(15, 'Virgil van Dijk', '1997-04-04 03:00:00', 2, 2),
(16, 'Matthijs de Ligt', '1996-05-05 03:00:00', 2, 2),
(17, 'Frenkie de Jong', '1995-06-06 03:00:00', 3, 2),
(18, 'Steven Berghuis', '1994-07-07 03:00:00', 3, 2),
(19, 'Teun Koopmeiners', '1993-08-08 03:00:00', 3, 2),
(20, 'Luuk de Jong', '1992-09-09 03:00:00', 4, 2),
(21, 'Vincent Janssen', '1991-10-10 03:00:00', 4, 2),
(22, 'Cody Gakpo', '1990-11-11 03:00:00', 4, 2),
(23, 'Franco Armani', '2000-01-01 03:00:00', 1, 3),
(24, 'Gonzalo Montiel', '1999-02-02 03:00:00', 2, 3),
(25, 'Nahuel Molina', '1998-03-03 03:00:00', 2, 3),
(26, 'Germán Pezzella', '1997-04-04 03:00:00', 2, 3),
(27, 'Leandro Paredes', '1996-05-05 03:00:00', 3, 3),
(28, 'Thiago Almada', '1995-06-06 03:00:00', 3, 3),
(29, 'Enzo Fernández', '1994-07-07 03:00:00', 3, 3),
(30, 'Lionel Messi', '1993-08-08 03:00:00', 4, 3),
(31, 'Lautaro Martínez', '1992-09-09 03:00:00', 4, 3),
(32, 'Ángel Di María', '1991-10-10 03:00:00', 4, 3),
(33, 'Paulo Dybala', '1990-11-11 03:00:00', 4, 3),
(34, 'Hugo Lloris', '2000-01-01 03:00:00', 1, 4),
(35, 'Benjamin Pavard', '1999-02-02 03:00:00', 2, 4),
(36, 'Jules Koundé', '1998-03-03 03:00:00', 2, 4),
(37, 'Axel Disasi', '1997-04-04 03:00:00', 2, 4),
(38, 'Raphaël Varane', '1996-05-05 03:00:00', 2, 4),
(39, 'Adrien Rabiot', '1995-06-06 03:00:00', 3, 4),
(40, 'Aurélien Tchouaméni', '1994-07-07 03:00:00', 3, 4),
(41, 'Karim Benzema', '1993-08-08 03:00:00', 4, 4),
(42, 'Kylian Mbappé', '1992-09-09 03:00:00', 4, 4),
(43, 'Olivier Giroud', '1991-10-10 03:00:00', 4, 4),
(44, 'Antoine Griezmann', '1990-11-11 03:00:00', 4, 4),
(45, 'Aaron Ramsdale', '2000-01-01 03:00:00', 1, 5),
(46, 'Conor Coady', '1999-02-02 03:00:00', 2, 5),
(47, 'Eric Dier', '1998-03-03 03:00:00', 2, 5),
(48, 'Harry Maguire', '1997-04-04 03:00:00', 2, 5),
(49, 'Luke Shaw', '1996-05-05 03:00:00', 2, 5),
(50, 'Jude Bellingham', '1995-06-06 03:00:00', 3, 5),
(51, 'Conor Gallagher', '1994-07-07 03:00:00', 3, 5),
(52, 'Jordan Henderson', '1993-08-08 03:00:00', 3, 5),
(53, 'Harry Kane', '1992-09-09 03:00:00', 4, 5),
(54, 'Phil Foden', '1991-10-10 03:00:00', 4, 5),
(55, 'Jack Grealish', '1990-11-11 03:00:00', 4, 5),
(56, 'Dominik Livakovic', '2000-01-01 03:00:00', 1, 6),
(57, 'Domagoj Vida', '1999-02-02 03:00:00', 2, 6),
(58, 'Dejan Lovren', '1998-03-03 03:00:00', 2, 6),
(59, 'Borna Barisic', '1997-04-04 03:00:00', 2, 6),
(60, 'Josip Juranovic', '1996-05-05 03:00:00', 2, 6),
(61, 'Luka Modric', '1995-06-06 03:00:00', 3, 6),
(62, 'Mateo Kovacic', '1994-07-07 03:00:00', 3, 6),
(63, 'Nikola Vlasic', '1993-08-08 03:00:00', 3, 6),
(64, 'Ivan Perisic', '1992-09-09 03:00:00', 4, 6),
(65, 'Andrej Kramaric', '1991-10-10 03:00:00', 4, 6),
(66, 'Mislav Orsic', '1990-11-11 03:00:00', 4, 6),
(67, 'Munir Mohamedi', '2000-01-01 03:00:00', 1, 7),
(68, 'Romain Saïss', '1999-02-02 03:00:00', 2, 7),
(69, 'Achraf Hakimi', '1998-03-03 03:00:00', 2, 7),
(70, 'Noussair Mazraoui', '1997-04-04 03:00:00', 2, 7),
(71, 'Sofyan Amrabat', '1996-05-05 03:00:00', 3, 7),
(72, 'Selim Amallah', '1995-06-06 03:00:00', 3, 7),
(73, 'Ilias Chair', '1994-07-07 03:00:00', 3, 7),
(74, 'Azzedine Ounahi', '1993-08-08 03:00:00', 3, 7),
(75, 'Youssef En-Nesyri', '1992-09-09 03:00:00', 4, 7),
(76, 'Anass Zaroury', '1991-10-10 03:00:00', 4, 7),
(77, 'Hakim Ziyech', '1990-11-11 03:00:00', 4, 7),
(78, 'Rui Patrício', '2000-01-01 03:00:00', 1, 8),
(79, 'Pepe', '1999-02-02 03:00:00', 2, 8),
(80, 'Danilo Pereira', '1998-03-03 03:00:00', 2, 8),
(81, 'aphaël Guerreiro', '1997-04-04 03:00:00', 2, 8),
(82, 'Rúben Dias', '1996-05-05 03:00:00', 2, 8),
(83, 'Willian Carvalho', '1995-06-06 03:00:00', 3, 8),
(84, 'Bernardo Silva', '1994-07-07 03:00:00', 3, 8),
(85, 'Bruno Fernandes', '1993-08-08 03:00:00', 3, 8),
(86, 'Cristiano Ronaldo', '1992-09-09 03:00:00', 4, 8),
(87, 'André Silva', '1991-10-10 03:00:00', 4, 8),
(88, 'João Félix', '1990-11-11 03:00:00', 4, 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estadio`
--

CREATE TABLE `estadio` (
  `ID` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estadio`
--

INSERT INTO `estadio` (`ID`, `nome`) VALUES
(1, 'Al Bayt Stadium'),
(2, 'Lusail Stadium'),
(3, 'Khalifa Internacional Stadium'),
(4, 'Al Thumama Stadium');

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

--
-- Despejando dados para a tabela `jogos`
--

INSERT INTO `jogos` (`ID`, `data_jogo`, `estadio_ID`, `pais1_ID`, `pais2_ID`, `arbitro_ID`) VALUES
(1, '2022-08-01 03:00:00', 1, 1, 2, 1),
(2, '2022-08-01 03:00:00', 2, 3, 4, 2),
(3, '2022-08-01 03:00:00', 3, 5, 6, 3),
(4, '2022-08-01 03:00:00', 4, 7, 8, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pais`
--

CREATE TABLE `pais` (
  `ID` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `tecnico_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pais`
--

INSERT INTO `pais` (`ID`, `nome`, `tecnico_id`) VALUES
(1, 'Brasil', 1),
(2, 'Holanda', 2),
(3, 'Argentina', 3),
(4, 'França', 4),
(5, 'Inglaterra', 5),
(6, 'Croácia', 6),
(7, 'Marrocos', 7),
(8, 'Portugal', 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `posicao`
--

CREATE TABLE `posicao` (
  `ID` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `posicao`
--

INSERT INTO `posicao` (`ID`, `nome`) VALUES
(1, 'goleiro'),
(2, 'zagueiro'),
(3, 'meio-campo'),
(4, 'atacante');

-- --------------------------------------------------------

--
-- Estrutura para tabela `resultado`
--

CREATE TABLE `resultado` (
  `ID` int(11) NOT NULL,
  `gol` int(11) DEFAULT NULL,
  `atleta_id` int(11) DEFAULT NULL,
  `jogos_id` int(11) DEFAULT NULL
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
-- Despejando dados para a tabela `tecnico`
--

INSERT INTO `tecnico` (`ID`, `nome`) VALUES
(1, 'Tite'),
(2, 'Louis van Gaal'),
(3, 'Lionel Scaloni'),
(4, 'Deschamps'),
(5, 'Gareth Southgate'),
(6, 'Zlatko Dalic'),
(7, 'Walid Regragui'),
(8, 'Roberto Martínez');

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
-- Índices de tabela `resultado`
--
ALTER TABLE `resultado`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk1_gols` (`atleta_id`),
  ADD KEY `fk2_gols` (`jogos_id`);

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

--
-- Restrições para tabelas `resultado`
--
ALTER TABLE `resultado`
  ADD CONSTRAINT `fk1_gols` FOREIGN KEY (`atleta_id`) REFERENCES `atleta` (`Id`),
  ADD CONSTRAINT `fk2_gols` FOREIGN KEY (`jogos_id`) REFERENCES `jogos` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
