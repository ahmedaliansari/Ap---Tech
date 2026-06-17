-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2026 at 08:45 PM
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
-- Database: `ahmed_elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_title` varchar(30) DEFAULT NULL,
  `author_name` varchar(30) DEFAULT NULL,
  `isbn_number` int(100) DEFAULT NULL,
  `publication_year` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_title`, `author_name`, `isbn_number`, `publication_year`, `image`) VALUES
(12, 'Atomic Habits', 'James Clear', 978073, 2018, 'assets/img/3.jfif'),
(21, 'Fugiat velit esse p', 'Lee Carr', 322, 2011, 'assets/img/6a32aba60a651_images (4).jfif'),
(24, 'Atomic Habits', 'James Clear', 978073, 2018, 'assets/img/3.jfif'),
(25, 'Aut cillum quod est ', 'Yasir Hayden', 816, 2011, 'assets/img/6a32ab522e997_images (3).jfif'),
(26, 'Fugiat velit esse p', 'Lee Carr', 322, 2011, 'assets/img/6a32aba60a651_images (4).jfif'),
(27, 'Iusto ipsam ratione ', 'Blaine Hardin', 247, 2000, 'assets/img/6a32b9b84410e_images (3).jfif'),
(28, 'Fugiat velit esse p', 'Lee Carr', 322, 2011, 'assets/img/6a32b9c935e00_images (1).jfif'),
(29, 'Atomic Habits', 'James Clear', 978073, 2018, 'assets/img/3.jfif'),
(30, 'Aut cillum quod est ', 'Yasir Hayden', 816, 2011, 'assets/img/6a32ab522e997_images (3).jfif'),
(31, 'Fugiat velit esse p', 'Lee Carr', 322, 2011, 'assets/img/6a32aba60a651_images (4).jfif'),
(32, 'Iusto ipsam ratione ', 'Blaine Hardin', 247, 2000, 'assets/img/6a32b9b84410e_images (3).jfif'),
(33, 'Fugiat velit esse p', 'Lee Carr', 322, 2011, 'assets/img/6a32b9c935e00_images (1).jfif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
