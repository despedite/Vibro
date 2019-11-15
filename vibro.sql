-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2019 at 05:55 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vibro`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `author` varchar(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` varchar(800) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `author`, `title`, `content`, `date`) VALUES
(1, 'Autor 1', 'Titulo 1', 'Contenido del post 1', '2017-06-11 00:26:07'),
(2, 'Autor 2', 'Titulo 2', 'Contenido del post 2', '2017-06-12 00:26:07'),
(3, 'Autor 3', 'Titulo 3', 'Contenido del post 3', '2017-06-13 00:26:07'),
(4, 'Autor 4', 'Titulo 4', 'Contenido del post 4', '2017-06-14 00:26:07'),
(5, 'Autor 5', 'Titulo 5', 'Contenido del post 5', '2017-06-15 00:26:07'),
(6, 'Autor desconocido', 'uwu', 'la cague', '2019-10-25 21:59:34'),
(7, 'Autor desconocido', 'patas', 'aaa', '2019-10-25 22:03:27'),
(8, 'Autor desconocido', 'eze por favor deja de decirle uwu a mi novia', 'estoy hartote voy a rec agar a ctormpadas', '2019-10-25 22:04:58'),
(9, 'Autor desconocido', 'hola', 'hola profe se meacaba la barteonma', '2019-10-25 22:21:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
