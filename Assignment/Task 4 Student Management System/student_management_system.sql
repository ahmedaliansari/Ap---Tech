-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2026 at 04:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `age` int(50) DEFAULT NULL,
  `course` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `contact_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `age`, `course`, `email`, `contact_number`) VALUES
(1, 'Ahmed', 21, 'PHP & MySQL', 'ahmed123@gmail.com', 1234567890),
(2, 'Anas', 22, 'Laravel', 'anas@gmail.com', 2147483647),
(4, 'Usman', 23, 'Python', 'usman@gmail.com', 2147483647),
(5, 'Ayesha', 19, 'Graphic Design', 'ayesha@gmail.com', 2147483647),
(6, 'Bilal', 24, 'JavaScript', 'bilal@gmail.com', 2147483647),
(7, 'Hina', 21, 'UI/UX Design', 'hina@gmail.com', 2147483647),
(8, 'Zain', 22, 'React JS', 'zain@gmail.com', 2147483647),
(9, 'Fatima', 20, 'HTML', 'fatima@gmail.com', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
