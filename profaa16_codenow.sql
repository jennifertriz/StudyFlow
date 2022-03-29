-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 25-Fev-2022 às 11:54
-- Versão do servidor: 5.6.41-84.1
-- versão do PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `profaa16_codenow`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `CicloDeEstudos`
--

CREATE TABLE `CicloDeEstudos` (
  `codCiclo` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nome_ciclo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `inicioCiclo` date NOT NULL,
  `fimCiclo` date NOT NULL,
  `horasDiarias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `CicloDeEstudos`
--

INSERT INTO `CicloDeEstudos` (`codCiclo`, `id_usuario`, `nome_ciclo`, `inicioCiclo`, `fimCiclo`, `horasDiarias`) VALUES
(67, 22, 'ENEM', '2021-04-20', '2021-06-01', 17),
(69, 22, 'Cursinho', '2021-04-24', '2021-04-30', 10),
(72, 22, 'Concurso A', '2021-04-05', '2021-05-07', 6),
(129, 46, 'Ciclo teste', '2021-12-16', '2021-12-16', 4),
(130, 46, 'Ciclo teste', '2021-12-16', '2021-12-16', 4),
(131, 51, 'Ciclo do TCC', '2021-12-26', '2021-12-31', 5),
(132, 52, 'Ciclo do TCC', '2021-12-26', '2021-12-31', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `Ciclo_Materia`
--

CREATE TABLE `Ciclo_Materia` (
  `codMateria` int(11) NOT NULL,
  `codCiclo` int(11) NOT NULL,
  `horasDia_materia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `Ciclo_Materia`
--

INSERT INTO `Ciclo_Materia` (`codMateria`, `codCiclo`, `horasDia_materia`) VALUES
(11, 130, 240),
(11, 129, 128),
(12, 129, 80),
(13, 129, 32),
(29, 131, 128.571),
(30, 131, 85.7143),
(31, 131, 85.7143),
(32, 132, 100),
(33, 132, 83.3333),
(34, 132, 116.667);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0627cj9dhjr9u37tu2qh3ot85ibpplp3', '10.1.50.239', 1632990884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633323939303838343b),
('0cl39jceng6qfrkbhf8s4bfep21kufed', '10.1.31.170', 1619672727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393637323732373b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223139223b6d73677c733a34303a224369636c6f2064652065737475646f7320617475616c697a61646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('0fmrh3a11plvor9gpf7h4juthc88lnid', '10.1.92.5', 1619558612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393535383534353b6d73677c733a32353a224369636c6f2063726961646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('0g192hta8h9r592md1ebhh3eakoiuica', '::1', 1627569499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373536393439393b),
('0g2k3gtevua21f1nsbdqjl1dtttckp0p', '10.1.22.114', 1619684123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393638343131323b),
('0its3bfatp15kfhp84qnr8ruue02v69u', '::1', 1627568576, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373536383537363b),
('0jvt1n5332npdko3ncs9qtv355fmdpeo', '10.1.41.65', 1639825920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393832353930333b6572726f7c733a32353a22557375c3a172696f206ec3a36f20c3a92076c3a16c69646f21223b5f5f63695f766172737c613a313a7b733a343a226572726f223b733a333a226f6c64223b7d),
('0rdii3fnnsml7oem2m40i53f58koc7p6', '10.1.58.203', 1619705314, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393730353331343b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223232223b),
('1j7iua0sc7l8ckieodkt9erdp3oiek0i', '::1', 1627567623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373536373632333b),
('1vubvi8a6c8d8v6stvledb95g6nn5tdc', '10.1.45.60', 1632887001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633323838363937343b6572726f7c733a32353a22557375c3a172696f206ec3a36f20c3a92076c3a16c69646f21223b5f5f63695f766172737c613a313a7b733a343a226572726f223b733a333a226f6c64223b7d),
('22d10odqlig10b5l1qmanknh4ttp4nmp', '10.1.23.227', 1619545444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393534353434343b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223139223b6d73677c733a33393a224369636c6f2064652065737475646f73206578636c75c3ad646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('27oapk3jdmc5sc17746nk2krhl1r7lig', '10.1.43.92', 1619546287, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393534363238373b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223139223b6d73677c733a33393a224369636c6f2064652065737475646f73206578636c75c3ad646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('2k8jre8abdr8mqo254h9hptei7889hvu', '::1', 1627570279, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373537303138343b),
('2vcc98qen16qlk4o65llhnhpd4cg9agh', '::1', 1637580366, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373538303336363b),
('3fbplithsnjqiesfgnkba18h6738358q', '10.1.17.22', 1628248885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383234383838353b),
('3lob5nvlqbogvm4b7b2b96l2he97ml53', '10.1.39.115', 1627662231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636323233313b),
('4ehvuri7blkid5op04m3jngn0atsd4g2', '10.1.36.241', 1619547586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393534373538363b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223139223b6d73677c733a33393a224369636c6f2064652065737475646f73206578636c75c3ad646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('4hm7semde0n3o08k35d5tje4fl57u6fn', '::1', 1627569836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373536393833363b),
('5u3d19ue258a9idh0esu96hf033vr629', '10.1.46.49', 1640469010, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303436383938323b),
('6ar0r2e0g5277eopvhg25i2oq04id7d8', '::1', 1627662079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636323037393b),
('6nbqis7iipvu0vcjo5pbresldakafkdp', '10.1.63.220', 1634059799, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343035393739393b),
('6vjc4l0u85h7jrk6cdnbbllur1hqudhp', '10.1.38.143', 1632886643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633323838363634333b),
('7lfgpfd4hmj681kjjnd6dp2tq59ummr9', '10.1.43.92', 1619547931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393534373933313b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223139223b6d73677c733a33393a224369636c6f2064652065737475646f73206578636c75c3ad646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('7pg04duthece637mavkq78akpg76vod4', '10.1.91.241', 1628249576, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383234393537363b),
('92q36r996116r15td8e4kjccd7rm8s82', '10.1.23.23', 1619550039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393535303033393b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223139223b6d73677c733a33393a224369636c6f2064652065737475646f73206578636c75c3ad646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('97ijfih7b25a6vamcrl5642275bounuf', '10.1.56.163', 1632884663, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633323838343636333b),
('9lgmv2odffov7sd0k3k73hcpncgjuvkp', '10.1.39.115', 1627570456, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373537303435363b),
('a0fmg0ivo076pjngahspm2e3cvr05ubu', '10.1.46.101', 1619557812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393535373831323b6d73677c733a33323a224d6174c3a97269612061646963696f6e61646120636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223232223b),
('a513a2a4ssq3hi0e0ab47mr4p29ai5nd', '10.1.20.194', 1634235857, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343233353835373b),
('a765ep5e733qj30ro3df1h73of2kml2b', '10.1.82.163', 1628249576, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383234393537363b),
('agmov1edh9fi3ve2h20elni17i8rra6o', '10.1.54.61', 1619630414, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393633303431333b6572726f7c733a35323a22566f63c3aa206ec3a36f2074656d207065726d697373c3a36f2070617261206163657373617220657373612070c3a167696e6121223b5f5f63695f766172737c613a313a7b733a343a226572726f223b733a333a226f6c64223b7d),
('apc3caej536ktb92qn1udc41cojk217c', '10.1.92.241', 1632487455, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633323438373435353b),
('b9lfdshltamd34ietpk96giu36upf6v2', '::1', 1627661133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636303933313b),
('bf9tvfturembgrqvvogrm7nrpgue4f21', '10.1.16.248', 1634061961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343036313936313b),
('bhe23kocktg3mjkatubd8tjlp21csq1f', '10.1.43.239', 1623779732, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333737393638333b),
('c36dm5orlumirts643hh2a2oolt8gp1o', '10.1.62.20', 1633959883, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333935393832353b),
('c6f4utlkea7766il6gbud3u23v603uii', '10.1.23.227', 1619550040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393535303033393b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223139223b6d73677c733a33393a224369636c6f2064652065737475646f73206578636c75c3ad646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('cbk6kasu6cnohel2395906m8nljk4m9h', '::1', 1627570273, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373537303233373b),
('cdh7php9r8jgtgmqoi4nmbpb21bdhth4', '10.1.94.234', 1619674450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393637343434343b6d73677c733a34303a224369636c6f2064652065737475646f7320617475616c697a61646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('cfmqpu5illbv0bh1bg8lgvufs8qlg344', '10.1.88.136', 1629810943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393831303934333b),
('cgq1mt80p773rvpiv8rdc7j9kvjnl9n2', '10.1.43.33', 1619696485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393639363438353b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223232223b6d73677c733a33323a224d6174c3a972696120617475616c697a61646120636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('ci8nf9cft9pqd311ge2sf93hdasjepqv', '10.1.42.249', 1639825913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393832353931333b),
('cjhko220mt62sutrvdekg044m6lkd1li', '10.1.30.134', 1632522068, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633323532323036383b),
('cm5for3jensp3mq9hemq90dtc8km5q6u', '10.1.23.23', 1619558866, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393535383734373b6572726f7c733a32353a22557375c3a172696f206ec3a36f20c3a92076c3a16c69646f21223b5f5f63695f766172737c613a323a7b733a343a226572726f223b733a333a226f6c64223b733a333a226d7367223b733a333a226f6c64223b7d6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223232223b6d73677c733a34303a224369636c6f2064652065737475646f7320617475616c697a61646f20636f6d207375636573736f21223b),
('d0lr72o4kr4consc486li5ahnapvk1ug', '10.1.50.117', 1628249576, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383234393537363b),
('d4o6916pa1khg422203m5ahg04tbada3', '10.1.29.78', 1619701620, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393730313632303b),
('d6bbapaukfjbsk2krjj4aa9m53uit8c8', '::1', 1619696683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393639363535353b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223232223b),
('d6hkbh0ebq2hvrij625negi3esq1oe1k', '10.1.81.180', 1619655193, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393635353138363b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223232223b),
('drsoaeogiegmp7jf60p6l46disgghaou', '10.1.54.218', 1632494786, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633323439343738363b),
('e6tl1k95kagjp1n5stk5v0pdc8qbqjbk', '10.1.32.181', 1619724910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393732343930393b),
('e9mpa6tdo4si5jt60jjm8pd6krehb85h', '::1', 1619547504, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393534373234393b),
('enghtjrtt2bcvn9d9imemjdgar8qsdil', '10.1.39.168', 1627662233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636323233333b),
('etmn2vrvcm80cuipbqs9ki8msth71aan', '::1', 1619559528, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393535393532383b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223138223b),
('f3hf48pjdvpk6qtt70hee5a431ki0mcl', '::1', 1627568191, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373536383139313b),
('f5uahbna8p9ld7s36d7iql49dm4io54n', '::1', 1627662478, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636323437383b),
('fgojdua1jsbnd09ckr7f1l52mk7hhca9', '::1', 1619672188, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393637323138383b),
('fvutbg15mu5qcerkv7hdg9ahmf2f3h1o', '::1', 1619559829, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393535393832393b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223231223b),
('g0bjp0cu08hf34760j33nlq7o5u9b2nu', '::1', 1627570184, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373537303138343b),
('g37crq06faveeppmqbphim939tti91gt', '10.1.85.213', 1619691311, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393639313331313b),
('h25evmgu0jplvvtl1ltorpr9qgpcftdi', '10.1.41.208', 1632506210, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633323530363130333b6d73677c733a33323a224d6174c3a97269612061646963696f6e61646120636f6d207375636573736f21223b5f5f63695f766172737c613a323a7b733a333a226d7367223b733a333a226f6c64223b733a343a226572726f223b733a333a226f6c64223b7d6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223234223b6572726f7c733a33313a2253656c6563696f6e6520616f206d656e6f7320756d61206d6174c3a9726961223b),
('h77m26o10fdc1s705e7kh0gsnu38kpm1', '10.1.32.241', 1632505798, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633323530353739383b6d73677c733a33323a22557375c3a172696f206361646173747261646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('h9ka9riqsso99g2tqoatrmusll4isj72', '10.1.94.234', 1620008056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632303030383035363b),
('hmqsm7o6976oq4n9dq4e1tv9c85qkjfq', '10.1.85.109', 1634061961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343036313936313b),
('i21q8avrjof7su5v95ctk249bd25ofn7', '10.1.46.101', 1619558546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393535383534353b6d73677c733a32353a224369636c6f2063726961646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223232223b),
('ifg5tq0q4857nltqrl4fq6rrs1b6jfkc', '10.1.59.35', 1634061028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343036313032383b),
('jirjqnulcq0hptg01ma5t8lm584k26f3', '::1', 1627756939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373735363933383b),
('jq885m8vni34aej02nkaorg6d6le3gsq', '::1', 1619559945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393535393832393b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223232223b),
('k03b0tq3cslk0sikmfna7bk8a592lvl0', '10.1.47.112', 1619548637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393534383633373b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223139223b6d73677c733a33393a224369636c6f2064652065737475646f73206578636c75c3ad646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('ke8fgk4g0i0pa0hrfh4jqmevj27q84hs', '10.1.86.103', 1619547043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393534373034333b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223139223b6d73677c733a33393a224369636c6f2064652065737475646f73206578636c75c3ad646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('kjmfclemv3vqj601g40g6d8tphr93001', '10.1.37.127', 1619705315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393730353331343b),
('ko0r0jbsr4ijajeivj660lestgkpkh7g', '10.1.31.128', 1632494769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633323439343736393b),
('kpm8mgvdpdiadls9fq04qoho1gmjca6m', '::1', 1627570237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373537303233373b),
('kqcu7hplvudfhdg6o2hon4v0s0oihdi6', '10.1.94.18', 1632265759, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633323236353735393b),
('ktp9r2uhdv9nbtrorhtqllqhtkjqudng', '10.1.47.119', 1638490977, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383439303934323b6572726f7c733a32353a22557375c3a172696f206ec3a36f20c3a92076c3a16c69646f21223b5f5f63695f766172737c613a313a7b733a343a226572726f223b733a333a226f6c64223b7d),
('m740e62aajpih0et8vo6bggaiiumepu8', '10.1.84.109', 1619546602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393534363630323b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223139223b6d73677c733a33393a224369636c6f2064652065737475646f73206578636c75c3ad646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('mcc127945eibenmugvqhf246dhgdrhvj', '10.1.22.114', 1619697725, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393639373732353b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223232223b6d73677c733a33323a224d6174c3a972696120617475616c697a61646120636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('n34mcsifp1h62m7f7ljcsl15ja247tb9', '10.1.95.129', 1623258424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333235383432343b),
('npdoirctj5smgamscl4jo6sd9fgvjdpq', '::1', 1627662890, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636323839303b),
('nvo3ussaa0avb5k76jjji5v4p204b7f4', '::1', 1619559222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393535393232323b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223138223b),
('o057lba16l57gfjcm3ie89jhdj9r0mgm', '::1', 1619630422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393633303432323b),
('o227cj4p9767sjh5jrr3fjn9hv0ch8k5', '10.1.49.163', 1619558170, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393535383137303b6d73677c733a33323a224d6174c3a97269612061646963696f6e61646120636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223232223b),
('o9r9fb29t9bhg38mgpimlm05u37jcp6s', '10.1.87.13', 1619544797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393534343739373b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223139223b),
('oup1ch1oi22de1p2uu0mmonu8i2rtege', '::1', 1627569887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373536393838373b),
('p79o3o700vlq4ms9ju3jil2ju0g4f5u6', '10.1.29.47', 1627568961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373536383936313b),
('ph37gduou3nm9d731bqng8ujjoq5bvuh', '10.1.31.170', 1619695567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393639353536373b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223232223b6d73677c733a33333a224e6f766f20726567697374726f20646520686f7261732065737475646164617321223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('pn5r33o2uah8bhei5rd4ccvddql4ko5g', '::1', 1619557426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393535373432363b),
('pnad7efaeaqq91kfkvv9ds2242od0p2m', '10.1.38.143', 1632886974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633323838363937343b),
('pnl7ivv6taia07pme9g5peb14ig94umg', '10.1.22.114', 1619697726, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393639373732353b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223232223b6d73677c733a33323a224d6174c3a972696120617475616c697a61646120636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('q44p31rd5b7e1qluru6vf9eg1f9hklqk', '10.1.57.167', 1638490941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383439303934313b),
('qh487m9gn9vj5cb27m70uhdg9l40utm8', '10.1.81.180', 1619702124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393730313933383b6d73677c733a33323a22557375c3a172696f206361646173747261646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('qh756enhkp4sb62047loecg9v2uavoeg', '10.1.62.31', 1619674444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393637343434343b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223139223b6d73677c733a34303a224369636c6f2064652065737475646f7320617475616c697a61646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('ra15fstnr3a8bcotoocrg8bff2evtuuv', '::1', 1627757152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373735373135323b),
('rcpfod5pffukqk4jtof1c2gjc2e4pt9j', '10.1.58.32', 1619547578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393534373536323b6572726f7c733a35323a22566f63c3aa206ec3a36f2074656d207065726d697373c3a36f2070617261206163657373617220657373612070c3a167696e6121223b5f5f63695f766172737c613a313a7b733a343a226572726f223b733a333a226f6c64223b7d6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223138223b),
('rk3129gnoan6ga158gqqv1lbd4n7i995', '10.1.29.78', 1619655186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393635353138363b),
('rm83a95qs015g5lbai84losep0g70v4o', '10.1.62.20', 1634047513, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343034373531333b),
('s1atnlknl984bofu4slrqgasjhs15nml', '::1', 1627662908, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636323839303b),
('sbvpf837m47u3d26602pipbefb5pitdn', '10.1.82.67', 1632506103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633323530363130333b6d73677c733a33323a224d6174c3a97269612061646963696f6e61646120636f6d207375636573736f21223b5f5f63695f766172737c613a323a7b733a333a226d7367223b733a333a226f6c64223b733a343a226572726f223b733a333a226f6c64223b7d6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223234223b6572726f7c733a33313a2253656c6563696f6e6520616f206d656e6f7320756d61206d6174c3a9726961223b),
('sdu7oeq1u09tb77a2bu3dkguliahh5bj', '10.1.48.210', 1632487454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633323438373435343b),
('ss7hj0ohuquoe6ehajb0uujm1f1cl675', '::1', 1619696537, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393639363533363b),
('t2ros7u9uq5hqbpoerrdk62vdalqnjhl', '::1', 1619544196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393534343139363b),
('t3kvqsiamr9g131jh7prqboto0kdoj1r', '10.1.92.64', 1632881879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633323838313837393b),
('tpok6141k6ovd4lq1l97irbgf1kvovml', '10.1.48.204', 1619545832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393534353833323b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223139223b6d73677c733a33393a224369636c6f2064652065737475646f73206578636c75c3ad646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('trrj4j5l9iuelqrt7e973198iqg9asos', '10.1.22.114', 1619695600, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393639353536373b6d73677c733a33333a224e6f766f20726567697374726f20646520686f7261732065737475646164617321223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('ttvs3ilbrfp2v4si52317tdsmdl02fbi', '10.1.22.114', 1619648731, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393634383733313b),
('uocg0ohmjrtolilmu55796s6of9m94ar', '10.1.44.235', 1627570457, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373537303435363b),
('v0gg94p72p2npka92mrv6jo3k1fkq32j', '10.1.63.23', 1634730674, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343733303637343b),
('veteui5001c7ha29n6887cs89gfihouq', '10.1.23.227', 1619547562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393534373536323b6572726f7c733a35323a22566f63c3aa206ec3a36f2074656d207065726d697373c3a36f2070617261206163657373617220657373612070c3a167696e6121223b5f5f63695f766172737c613a313a7b733a343a226572726f223b733a333a226f6c64223b7d),
('vlekggbpepo2rfdd1cu8vm8h24h9lmni', '::1', 1619604715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393630343731353b),
('vpapp5m54n2dt14kmb6rg8ehlgoee0qg', '10.1.33.145', 1634236067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343233353835383b6572726f7c733a32353a22557375c3a172696f206ec3a36f20c3a92076c3a16c69646f21223b5f5f63695f766172737c613a323a7b733a343a226572726f223b733a333a226f6c64223b733a333a226d7367223b733a333a226f6c64223b7d6d73677c733a33323a22557375c3a172696f206361646173747261646f20636f6d207375636573736f21223b6c6f6761646f7c623a313b69645f7573756172696f7c733a323a223235223b);

-- --------------------------------------------------------

--
-- Estrutura da tabela `HorasEstudadas`
--

CREATE TABLE `HorasEstudadas` (
  `id_insercao_hora` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `codMateria` int(11) NOT NULL,
  `inicioEstudo` datetime NOT NULL,
  `fimEstudo` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `HorasEstudadas`
--

INSERT INTO `HorasEstudadas` (`id_insercao_hora`, `id_usuario`, `codMateria`, `inicioEstudo`, `fimEstudo`) VALUES
(2, 22, 11, '2021-04-17 11:52:00', '2021-04-17 12:00:00'),
(3, 22, 12, '2021-04-17 11:52:00', '2021-04-17 13:00:00'),
(4, 22, 14, '2021-04-22 08:47:00', '2021-04-22 10:47:00'),
(5, 22, 20, '2021-04-17 11:52:00', '2021-04-17 13:00:00'),
(6, 22, 22, '2021-04-22 08:47:00', '2021-04-22 10:47:00'),
(7, 22, 26, '2021-04-17 12:52:00', '2021-04-17 16:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `Lembrete`
--

CREATE TABLE `Lembrete` (
  `codLembrete` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `tipoLembrete` int(11) NOT NULL,
  `nomeLembrete` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8_unicode_ci NOT NULL,
  `data_horaLembrete` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `Lembrete`
--

INSERT INTO `Lembrete` (`codLembrete`, `id_usuario`, `tipoLembrete`, `nomeLembrete`, `descricao`, `data_horaLembrete`) VALUES
(2, 46, 1, 'Prova da UF', 'Prova do concurso da UF', '2021-04-17 10:58:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `Matéria`
--

CREATE TABLE `Matéria` (
  `codMateria` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nivelAfinidade` int(11) NOT NULL,
  `pesoProva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `Matéria`
--

INSERT INTO `Matéria` (`codMateria`, `id_usuario`, `nome`, `nivelAfinidade`, `pesoProva`) VALUES
(11, 46, 'Programação', 4, 1),
(12, 46, 'Design', 2, 3),
(13, 46, 'Banco de Dados', 4, 4),
(14, 22, 'Matemática', 5, 3),
(20, 22, 'Matemática', 2, 4),
(21, 22, 'História', 3, 2),
(22, 22, 'Geografia', 2, 3),
(23, 22, 'Filosofia', 4, 2),
(25, 22, 'Português', 4, 4),
(26, 22, 'Inglês', 5, 2),
(28, 46, 'Matemática', 5, 3),
(29, 51, 'Programação', 1, 3),
(30, 51, 'Design', 2, 2),
(31, 51, 'Português', 4, 2),
(32, 52, 'Programação', 4, 3),
(33, 52, 'Design', 2, 3),
(34, 52, 'Português', 4, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `TipoLembrete`
--

CREATE TABLE `TipoLembrete` (
  `cod_tipoLembrete` int(11) NOT NULL,
  `tipo_lembrete` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `TipoLembrete`
--

INSERT INTO `TipoLembrete` (`cod_tipoLembrete`, `tipo_lembrete`) VALUES
(0, 'Lembrete de Estudos'),
(1, 'Lembrete de Prova');

-- --------------------------------------------------------

--
-- Estrutura da tabela `Usuário`
--

CREATE TABLE `Usuário` (
  `id_usuario` int(11) NOT NULL,
  `nomeUsuario` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varbinary(100) NOT NULL,
  `ativo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `Usuário`
--

INSERT INTO `Usuário` (`id_usuario`, `nomeUsuario`, `email`, `senha`, `ativo`) VALUES
(22, 'ProjetoIntegrador', 'jenniferbeatricemn@gmail.com', 0x6533616665643030343762303830353964306661646131306634303063316535, 0),
(46, 'testesenha', 'teste@gmail.com', 0x243262243038247475736e3044486f5a614571692f4c61397044364b2e75714d5a30396b382e417632686e4b397063434a3271765750576c2e494d4b, 1),
(51, 'ProjetoIntegrador1', 'pi@gmail.com', 0x243262243038246f42326d56726f38674d30496a375446485739323365527476336b6a63777a7356594f364d544967545852435364352f2e3135522e, 1),
(52, 'TCC', 'tcc@gmail.com', 0x24326224303824784934674a7a3059342e334d506558524b5644774775534c4c6252724a52695947386441386c38724570367a67656a5559572e764b, 1),
(53, 'ixvyp', 'deboradeandrade13@gmail.com', 0x24326224303824612e39505546316a3433744d2f6139456944563767752e73394e7369493730477432764569707355747058367869436d774b46552e, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `CicloDeEstudos`
--
ALTER TABLE `CicloDeEstudos`
  ADD PRIMARY KEY (`codCiclo`),
  ADD KEY `FK_Ciclo_usuario` (`id_usuario`);

--
-- Índices para tabela `Ciclo_Materia`
--
ALTER TABLE `Ciclo_Materia`
  ADD KEY `FK_MATERIA_ciclo` (`codMateria`),
  ADD KEY `FK_CICLO_materia` (`codCiclo`);

--
-- Índices para tabela `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Índices para tabela `HorasEstudadas`
--
ALTER TABLE `HorasEstudadas`
  ADD PRIMARY KEY (`id_insercao_hora`),
  ADD KEY `FK_horaMateria` (`codMateria`),
  ADD KEY `FK_horaUsuario` (`id_usuario`);

--
-- Índices para tabela `Lembrete`
--
ALTER TABLE `Lembrete`
  ADD PRIMARY KEY (`codLembrete`),
  ADD KEY `FK_usuarioLembrete` (`id_usuario`),
  ADD KEY `FK_tipoLembrete` (`tipoLembrete`);

--
-- Índices para tabela `Matéria`
--
ALTER TABLE `Matéria`
  ADD PRIMARY KEY (`codMateria`),
  ADD KEY `FK_UsuarioMateria` (`id_usuario`);

--
-- Índices para tabela `TipoLembrete`
--
ALTER TABLE `TipoLembrete`
  ADD PRIMARY KEY (`cod_tipoLembrete`);

--
-- Índices para tabela `Usuário`
--
ALTER TABLE `Usuário`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `CicloDeEstudos`
--
ALTER TABLE `CicloDeEstudos`
  MODIFY `codCiclo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT de tabela `HorasEstudadas`
--
ALTER TABLE `HorasEstudadas`
  MODIFY `id_insercao_hora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `Lembrete`
--
ALTER TABLE `Lembrete`
  MODIFY `codLembrete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `Matéria`
--
ALTER TABLE `Matéria`
  MODIFY `codMateria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `TipoLembrete`
--
ALTER TABLE `TipoLembrete`
  MODIFY `cod_tipoLembrete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `Usuário`
--
ALTER TABLE `Usuário`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `CicloDeEstudos`
--
ALTER TABLE `CicloDeEstudos`
  ADD CONSTRAINT `FK_Ciclo_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `Usuário` (`id_usuario`);

--
-- Limitadores para a tabela `Ciclo_Materia`
--
ALTER TABLE `Ciclo_Materia`
  ADD CONSTRAINT `FK_CICLO_materia` FOREIGN KEY (`codCiclo`) REFERENCES `CicloDeEstudos` (`codCiclo`),
  ADD CONSTRAINT `FK_MATERIA_ciclo` FOREIGN KEY (`codMateria`) REFERENCES `Matéria` (`codMateria`);

--
-- Limitadores para a tabela `HorasEstudadas`
--
ALTER TABLE `HorasEstudadas`
  ADD CONSTRAINT `FK_horaMateria` FOREIGN KEY (`codMateria`) REFERENCES `Matéria` (`codMateria`),
  ADD CONSTRAINT `FK_horaUsuario` FOREIGN KEY (`id_usuario`) REFERENCES `Usuário` (`id_usuario`);

--
-- Limitadores para a tabela `Lembrete`
--
ALTER TABLE `Lembrete`
  ADD CONSTRAINT `FK_tipoLembrete` FOREIGN KEY (`tipoLembrete`) REFERENCES `TipoLembrete` (`cod_tipoLembrete`),
  ADD CONSTRAINT `FK_usuarioLembrete` FOREIGN KEY (`id_usuario`) REFERENCES `Usuário` (`id_usuario`);

--
-- Limitadores para a tabela `Matéria`
--
ALTER TABLE `Matéria`
  ADD CONSTRAINT `FK_UsuarioMateria` FOREIGN KEY (`id_usuario`) REFERENCES `Usuário` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;