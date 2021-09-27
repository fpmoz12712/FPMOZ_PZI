-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2021 at 08:37 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bb`
--

-- --------------------------------------------------------

--
-- Table structure for table `imdbid`
--

CREATE TABLE `imdbid` (
  `id` int(11) UNSIGNED NOT NULL,
  `kor_ime` varchar(255) NOT NULL,
  `movie_id` varchar(255) NOT NULL,
  `kor_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `uloga` enum('user','admin') NOT NULL,
  `ime` varchar(100) NOT NULL,
  `prezime` varchar(100) NOT NULL,
  `korisnicko_ime` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `lozinka` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uloga`, `ime`, `prezime`, `korisnicko_ime`, `email`, `lozinka`) VALUES
(1, 'admin', 'Dario', 'Klaic', 'd_klaic', 'dario@klaic', '8cb2237d0679ca88db6464eac60da96345513964'),
(4, 'user', 'pero', 'peric', 'pero', 'pero@pp', '98fc7b34760face5e268bff318180e05861a970f'),
(5, 'user', 'ja', 'sam', 'ja', 'ja@sam', '111'),
(8, 'user', 'mario', 'qwqw', 'mario', 'lk@jfgsa', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(10, 'user', 'mario', 'maric', 'mario', 'mar@lksjd', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(11, 'user', 'asd', 'asd', 'asd', 'gfhgjkh@sfgz', 'f10e2821bbbea527ea02200352313bc059445190'),
(12, 'user', 'marko', 'marko', 'marko', 'marko@fg', '9efe9a5a1da5f41a4eb7599f2715dc24abf5bbc8'),
(14, 'user', 'Josip Živković', 'dd', 'john', 'josip-zivkovic98@hotmail.com', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(15, 'user', 'jane', 'doe', 'jane', 'jane@hotmail.com', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(16, 'user', 'Josip Živković', 'dd', 'josip', 'josipssss-zivkovic98@hotmail.com', '698d51a19d8a121ce581499d7b701668');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `imdbid`
--
ALTER TABLE `imdbid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user-favorite` (`kor_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `imdbid`
--
ALTER TABLE `imdbid`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `imdbid`
--
ALTER TABLE `imdbid`
  ADD CONSTRAINT `user-favorite` FOREIGN KEY (`kor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
