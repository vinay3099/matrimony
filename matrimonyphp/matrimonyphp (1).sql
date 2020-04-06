-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2020 at 03:39 AM
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
-- Database: `matrimonyphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `user_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_email` varchar(80) COLLATE utf8_bin NOT NULL,
  `subject` varchar(100) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `profilestat` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `salary` varchar(35) DEFAULT NULL,
  `job` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `dateofbirth` date NOT NULL,
  `gender` varchar(7) NOT NULL,
  `userlevel` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `profilestat`, `username`, `password`, `email`, `mobile`, `salary`, `job`, `image`, `dateofbirth`, `gender`, `userlevel`) VALUES
(1, 0, 'vinay', '1234', 'vinay@gmail.com', '7712345691', '45000', 'Software Engineer', 'Screenshot (101).png', '1998-04-01', 'male', 0),
(3, 0, 'cherry', '12345', 'cherry459@gmail.com', '7730844681', '50000', 'software Engineer', 'Screenshot (103).png', '2000-06-08', 'male', 0),
(4, 0, 'Anu', '123456', 'anu@gmail.com', '9781235463', '35000', 'teacher', 'gr1.jpg', '1999-08-12', 'female', 0),
(6, 0, 'shreya', '12345', 'shreya12@gmail.com', '7842136213', '50000', 'Doctor', 'shreya.jpg', '1998-06-18', 'female', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
