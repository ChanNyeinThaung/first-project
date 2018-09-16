-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2018 at 11:46 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `post_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `post_id`, `created`, `modified`) VALUES
(1, 'Sample comment one', 1, '2018-09-09 09:32:08', '2018-09-09 09:32:08'),
(2, 'Sample comment two', 1, '2018-09-09 09:32:19', '2018-09-09 09:32:19'),
(3, 'Comment one', 2, '2018-09-15 08:05:20', '2018-09-15 08:05:20');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `user_id`, `created`, `modified`) VALUES
(1, 'Internet', 'It has been criticized for violating net neutrality, and by handpicking internet services that are included, for discriminating against companies not in the list, including Facebook\'s rivals.[5][6] In February 2016, regulators banned the Free Basics service in India based on \"Prohibition of Discriminatory Tariffs for Data Services Regulations\".[7] The Telecom Regulatory Authority of India (TRAI) accused Facebook of failing to pass on the four questions in the regulator\'s consultation paper and also blocking access to TRAI\'s designated email for feedback on Free Basics.[8][9] On February 11, 2016, Facebook withdrew the Free Basics platform from India.[10]', 1, '2018-09-09 09:05:06', '2018-09-09 09:05:06'),
(2, 'Manchester United', 'Manchester United Football Club, commonly known as Man. United or simply United, is a professional football club based in Old Trafford, Greater Manchester, England, that competes in the Premier League, the top flight of English football. Nicknamed \"the Red Devils\", the club was founded as Newton Heath LYR Football Club in 1878, changed its name to Manchester United in 1902 and moved to its current stadium, Old Trafford, in 1910. ', 2, '2018-09-09 09:05:40', '2018-09-09 09:05:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created`, `modified`) VALUES
(1, 'Bob', 'bob@gmail.com', '$2y$10$kBFMpaeGqhBGZMtxaIdmXOhnh64u0fdZN0BqbXmiyBA1fW/8Jpdhi', '2018-09-09 09:03:24', '2018-09-15 08:16:41'),
(2, 'david', 'david@gmail.com', '$2y$10$LOQ6Adfxh2D5wF6D0saFxe0zVXp3CVF4SSSP7bcNsgZgU4O7Tjlqy', '2018-09-09 09:04:15', '2018-09-15 08:16:32'),
(3, 'david', 'davidaaa@gmail.com', '$2y$10$QuWwec6XyFWlwM1h.ky3uuAfKy8R9lr0VIkFxZvY9V2KhNsAf93H6', '2018-09-15 08:16:07', '2018-09-15 08:16:07'),
(4, 'lukaku', 'lukaku@manu.com', '$2y$10$8nrXmhyq.dg8EmjUglAeNeAfHdjh/IUHuEoPkgu2WXNHWn2E84h02', '2018-09-15 09:08:29', '2018-09-15 09:08:29'),
(5, 'jones', 'jones@manu.com', '$2y$10$vXQwbUPaeRXhSJ8SAI4smOqeC8nEyvi6YQEnXZLnBqLTZkMr2WsIm', '2018-09-15 09:10:53', '2018-09-15 09:10:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
