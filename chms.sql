-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2025 at 08:03 AM
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
-- Database: `chms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `total` varchar(200) DEFAULT NULL,
  `createdBy` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `name`, `mobileNumber`, `email`, `date`, `total`, `createdBy`) VALUES
(1, 'Chang', '0385671254', 'chang@gmail.com', '19-04-2025', '20', 'admin@gmail.com'),
(2, 'Nam Yejun', '0346871276', 'junne@gmail.com', '19-04-2025', '300', 'admin@gmail.com'),
(3, 'Do Eunho', '0459871256', 'soihoangcodoc@gmail.com', '19-04-2025', '135', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Trà'),
(2, 'Cà phê'),
(3, 'Bingsu'),
(4, 'Soda'),
(5, 'Kem'),
(6, 'Bánh ngọt');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `category`, `price`) VALUES
(1, 'Tiramisu', 'Bánh ngọt', '60'),
(2, 'Trà chanh', 'Trà', '20'),
(3, 'Cappuchino', 'Cà phê', '45'),
(4, 'Bingsu Xoài', 'Bingsu', '50'),
(5, 'Chanh', 'Soda', '30'),
(6, 'Kem dưa lưới', 'Kem', '10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(10) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `securityQuestion` varchar(200) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobileNumber`, `address`, `password`, `securityQuestion`, `answer`, `status`) VALUES
(1, 'Nam Nghệ Tuấn', 'tuannam@gmail.com', '0932149823', 'Hanoi', '123', 'Quê bạn ở đâu', 'Hanoi', 'true'),
(2, 'Admin', 'admin@gmail.com', '0964708639', 'Hà Nội', '020790', 'Quê bạn ở đâu?', 'Hà Nội', 'true'),
(3, 'Đỗ Ngân Hổ', 'nganho@gmail.com', '0839287346', 'Asterum', 'hoby', 'Bạn thích con gì nhất?', 'sói', 'false'),
(4, 'Hàn Nặc Á ', 'noah@gmail.com', '0293728373', 'Caelum', 'alphaca', 'Bạn thích uống gì nhất?', 'protein shake ', 'false'),
(5, 'Du Hà Minh', 'hami@gmail.com', '0928374938', 'Vitaex cube ', 'hameomeo', 'Bạn thích loại hoa quả nào nhất?', 'Dưa lưới', 'false'),
(6, 'Thái Phụng Cửu', 'bamby@gmail.com', '0928374678', 'Bamby Land', 'bonggu', 'Món ăn ưa thích?', 'Mỳ lạnh', 'true'),
(7, 'Du Hà Mẫn', 'Haman@gmai.com', '0293847282', 'Cube ', 'haminni', 'Bạn thích con gì?', 'Mèo đen', 'false');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
