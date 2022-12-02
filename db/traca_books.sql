-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Nov-2022 às 21:18
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `traca_books`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `producoes`
--

CREATE TABLE `producoes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `sinopse` text NOT NULL,
  `genero` varchar(200) NOT NULL,
  `capa` varchar(600) NOT NULL,
  `classificacao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `producoes`
--

INSERT INTO `producoes` (`id`, `titulo`, `sinopse`, `genero`, `capa`, `classificacao`) VALUES
(1, 'O Príncipe Cruel', 'Envolvida em intrigas e traições do palácio, Jude descobre sua própria capacidade para truques e derramamento de sangue. Mas, com a ameaça de uma guerra civil e o Reino das Fadas por um fio, Jude precisará arriscar sua vida em uma perigosa aliança para salvar suas irmãs, e o próprio Reino.', 'Fantasia Literaria', 'https://cdn.record.com.br/wp-content/uploads/2019/07/26012907/15457-600x889.jpeg', '14');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `producoes`
--
ALTER TABLE `producoes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `producoes`
--
ALTER TABLE `producoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
