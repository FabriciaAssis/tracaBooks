-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03-Dez-2022 às 01:01
-- Versão do servidor: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traca_books`
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
(3, 'Daisy Jones and The Six: Uma histÃ³ria de amor e mÃºsica', 'Embalado pelo melhor do rockâ€™nâ€™roll, um romance inesquecÃ­vel sobre uma banda dos anos 1970, sua apaixonante vocalista e o amor Ã  mÃºsica. Da autora de Em outra vida, talvez?.  . Todo mundo conhece Daisy Jones & The Six. Nos anos setenta, dominavam as paradas de sucesso, faziam shows para plateias lotadas e conquistavam milhÃµes de fÃ£s. Eram a voz de uma geraÃ§Ã£o, e Daisy, a inspiraÃ§Ã£o de toda garota descolada. Mas no dia 12 de julho de 1979, no Ãºltimo show da turnÃª Aurora, eles se separaram. E ninguÃ©m nunca soube por quÃª. AtÃ© agora. Esta Ã© histÃ³ria de uma menina de Los Angeles que sonhava em ser uma estrela do rock e de uma banda que tambÃ©m almejava seu lugar ao sol. E de tudo o que aconteceu â€• o sexo, as drogas, os conflitos e os dramas â€• quando um produtor apostou (certo!) que juntos poderiam se tornar lendas da mÃºsica. Neste romance inesquecÃ­vel narrado a partir de entrevistas, Taylor Jenkins Reid reconstitui a trajetÃ³ria de uma banda fictÃ­cia com a intensidade presente nos melhores backstages do rockâ€™nâ€™roll.', 'Romance, FicÃ§Ã£o histÃ³rica', 'https://m.media-amazon.com/images/I/51zH8sO2fcL._SX346_BO1,204,203,200_.jpg', '+18'),
(4, 'Textos cruÃ©is demais para serem lidos rapidamente', 'Indo contra a tendÃªncia dos textos curtos e superficiais que sÃ£o postados nas redes sociais, o coletivo literÃ¡rio Textos cruÃ©is demais para serem lidos rapidamente (TCD) passou a produzir e compartilhar um conteÃºdo extenso, profundo e extremamente poÃ©tico em suas pÃ¡ginas no Facebook e no Instagram. Com seus escritos e ilustraÃ§Ãµes, eles acabaram atingindo um pÃºblico muito maior do que o esperado, nos mostrando como, apesar da crescente agilidade que nossa comunicaÃ§Ã£o exige, ainda precisamos de tempo para digerir e entender nossas complexas relaÃ§Ãµes humanas. Para este livro, foram produzidos textos inÃ©ditos que ganharam a companhia das sensÃ­veis ilustraÃ§Ãµes de AnÃ¡lia Moraes.', ' Poesia, Romance contemporÃ¢neo', 'https://m.media-amazon.com/images/I/41WSVHqqbkL._SY344_BO1,204,203,200_QL70_ML2_.jpg', '14 anos'),
(7, 'CrepÃºsculo ', 'CrepÃºsculo poderia ser uma histÃ³ria comum, nÃ£o fosse um elemento irresistÃ­vel: o objeto da paixÃ£o da protagonista Ã© um vampiro.  Assim, soma-se Ã  paixÃ£o um perigo sobrenatural temperado com muito suspense, e o resultado Ã© uma leitura de tirar o fÃ´lego. Um romance repleto das angÃºstias e incertezas da juventude - o arrebatamento, a atraÃ§Ã£o, a ansiedade que antecede cada palavra, cada gesto, e todos os medos.  Isabella Swan chega Ã  nublada e chuvosa cidadezinha de Forks - Ãºltimo lugar onde gostaria de viver. Tenta se adaptar Ã  vida provinciana na qual aparentemente todos se conhecem, lidar com sua constrangedora falta de coordenaÃ§Ã£o motora e se habituar a morar com um pai com quem nunca conviveu. Em seu destino estÃ¡ Edward Cullen.  Lindo, perfeito, misterioso ele Ã© Ã  primeira vista, hostil Ã  presenÃ§a de Bella - o que provoca nela uma inquietaÃ§Ã£o desconcertante. Ela se apaixona. Ele, no melhor estilo \"amor proibido\", alerta: Sou um risco para vocÃª. Ela Ã© uma garota incomum. Ele Ã© um vampiro. Ela precisa aprender a controlar seu corpo quando ele a toca. Ele, a controlar sua sede pelo sangue dela. Em meio a descobertas e sobressaltos, Edward Ã©, sim, perigoso: um perigo que qualquer mulher escolheria correr.  Nesse universo fantasioso, os personagens construÃ­dos por Stephenie Meyer - humanos ou nÃ£o - se mostram de tal forma familiares em seus dilemas e em seu comportamento que o sobrenatural parece real. Meyer torna perfeitamente plausÃ­vel - e irresistÃ­vel - a paixÃ£o de uma garota de 17 anos por um vampiro encantador.', 'Romance, Fantaisa', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcREFE6Qq3uPDhW9VvxjpP4OGTdBnOmnnI_CNsjKVqK-lhR9H97iePyrfT066j4vH7NpNuLkMTIXO51c_SMmzJKrJfgxVxvx_AvTYq5mUCKM9hukJ9bO5g&usqp=CAc', '14 anos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `producoes`
--
ALTER TABLE `producoes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `producoes`
--
ALTER TABLE `producoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
