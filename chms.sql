-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2025 at 10:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
  `date` date DEFAULT NULL,
  `total` varchar(200) DEFAULT NULL,
  `createdBy` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `name`, `mobileNumber`, `email`, `date`, `total`, `createdBy`) VALUES
(1, 'Hoàng Minh Hậu', '0192191919', 'hau@gmail.com', '2025-05-20', '65', 'admin@gmail.com'),
(2, 'Trần Thu Cúc', '0182182734', 'cuc@gmail.com', '2025-05-20', '50', 'admin@gmail.com'),
(3, 'John', '0292838191', 'john@gmai.com', '2025-05-20', '120', 'admin@gmail.com'),
(4, 'Marry', '0192819827', 'ry@gmail.com', '2025-05-20', '115', 'tuannam@gmail.com'),
(5, 'Tom', '0292838282', 'tom@gmail.com', '2025-05-21', '90', 'tuannam@gmail.com'),
(6, 'Ha', '0987654321', 'ha@gmail.com', '2025-05-21', '210', 'tuannam@gmail.com'),
(7, 'Van', '0987653876', 'van@gmail.com', '2025-05-21', '220', 'tuannam@gmail.com'),
(8, 'Dao', '0357345876', 'dao@gmail.com', '2025-05-21', '40', 'tuannam@gmail.com'),
(9, 'Nhat', '0923346876', 'nhat@gmail.com', '2025-05-21', '15', 'tuannam@gmail.com'),
(10, 'Noah', '0292828384', 'no@gmail.com', '2025-05-21', '35', 'noah@gmail.com'),
(11, 'Bamby', '0293848762', 'bam@gmai.com', '2025-05-21', '50', 'noah@gmail.com'),
(12, 'Min', '0984758672', 'min@gmail.com', '2025-05-21', '75', 'noah@gmail.com'),
(13, 'Noah', '0928328372', 'ah@gmail.com', '2025-05-25', '10', 'admin@gmail.com'),
(14, 'Bamby', '0982738273', 'bma@gmail.com', '2025-05-25', '55', 'admin@gmail.com'),
(15, 'Anh', '0927182778', 'Anh@gmail.com', '2025-05-25', '45', 'admin@gmail.com'),
(16, 'Giang', '0928372819', 'giang@gmail.com', '2025-05-26', '60', 'admin@gmail.com'),
(17, 'Trang', '0839283921', 'trang@gmail.com', '2025-05-26', '35', 'admin@gmail.com'),
(18, 'Jerry', '0928193828', 'ry@gmail.com', '2025-05-26', '20', 'admin@gmail.com'),
(19, 'Gru', '0928182381', 'gru@gmail.com', '2025-05-26', '90', 'bamby@gmail.com'),
(20, 'Lucy', '0828928476', 'cy@gmail.com', '2025-05-26', '45', 'bamby@gmail.com'),
(21, 'Light', '0938928473', 'li@gmail.com', '2025-05-26', '35', 'haman@gmail.com'),
(22, 'Ha Man Nhi', '0471862389', 'hanhi@gmail.com', '2025-05-26', '60', 'haman@gmail.com'),
(23, 'Thanh Cong', '0471974612', 'cong@gmail.com', '2025-05-26', '25', 'haman@gmail.com'),
(24, 'Ha Thanh Mai', '0381564598', 'mai@gmail.com', '2025-05-26', '45', 'haman@gmail.com'),
(25, 'Chu Ngoc Yen', '0471893502', 'yen@gmail.com', '2025-05-26', '200', 'haman@gmail.com'),
(26, 'Chu Ha Thanh', '0471850934', 'thanh@gmail.com', '2025-05-26', '180', 'haman@gmail.com'),
(27, 'Duong Hoai Thanh', '0481283409', 'hathanh@gmail.com', '2025-05-26', '180', 'noah@gmail.com'),
(28, 'Mary', '0481294712', 'mary@gmail.com', '2025-05-26', '180', 'noah@gmail.com'),
(29, 'Linda', '0891752954', 'linad@gmail.com', '2025-05-26', '10', 'noah@gmail.com'),
(30, 'HeLen', '0381264023', 'kenthen@gmail.com', '2025-05-26', '60', 'noah@gmail.com'),
(31, 'Milinda', '0871723492', 'milin@gmail.com', '2025-05-26', '160', 'noah@gmail.com'),
(32, 'Ho Hoai Anh', '0481285723', 'anh@gmail.com', '2025-05-26', '30', 'noah@gmail.com'),
(33, 'Hoai Lam', '0485671287', 'lam@gmail.com', '2025-05-26', '220', 'tuannam@gmail.com'),
(34, 'Kim Ngan', '0481753926', 'ngan@gmail.com', '2025-05-26', '145', 'tuannam@gmail.com'),
(35, 'tran dinh tung', '0391286598', 'tung@gmail.com', '2025-05-26', '50', 'tuannam@gmail.com'),
(36, 'Thanh Cong', '0457824512', 'cong@gmail.com', '2025-05-28', '100', 'admin@gmail.com'),
(37, 'Tat Thang', '0391274592', 'thang@gmail.com', '2025-05-28', '30', 'admin@gmail.com'),
(38, 'ha', '0828927387', 'ha@gmail.com', '2025-05-28', '90', 'tuannam@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `billsdetail`
--

CREATE TABLE `billsdetail` (
  `id` int(11) NOT NULL,
  `billID` int(11) DEFAULT NULL,
  `productName` varchar(200) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billsdetail`
--

INSERT INTO `billsdetail` (`id`, `billID`, `productName`, `quantity`, `price`) VALUES
(1, 1, 'Trà chanh', 1, '20'),
(2, 1, 'Cappuchino', 1, '45'),
(3, 2, 'Bingsu Xoài', 1, '50'),
(4, 3, 'Chanh', 1, '30'),
(5, 3, 'Cappuchino', 2, '45'),
(9, 4, 'Cappuchino', 1, '45'),
(10, 4, 'Trà chanh', 1, '20'),
(11, 4, 'Bingsu Xoài', 1, '50'),
(12, 5, 'Passion Fruit Soda', 1, '25'),
(13, 5, 'Cold Brew', 1, '25'),
(14, 5, 'Fruit Tart', 1, '30'),
(15, 5, 'Tra Hoa Cuc', 1, '10'),
(16, 6, 'Đen Đá', 1, '15'),
(17, 6, 'Vanilla Ice Cream', 2, '15'),
(18, 6, 'Bingsu ChocoLate', 3, '55'),
(19, 7, 'Trà Nhài', 1, '10'),
(20, 7, 'Trà OLong', 1, '30'),
(21, 7, 'Tiramisu', 2, '60'),
(22, 7, 'Bingsu Matcha', 1, '60'),
(23, 8, 'Trà OLong', 1, '30'),
(24, 8, 'Macaron', 1, '10'),
(25, 9, 'Chocolate Ice Cream', 1, '15'),
(26, 10, 'Trà Nhài', 1, '10'),
(27, 10, 'Cream Soda', 1, '25'),
(28, 11, 'Milk Tea', 1, '35'),
(29, 11, 'Chocolate Ice Cream', 1, '15'),
(30, 12, 'Trà Nhài', 1, '10'),
(31, 12, 'Passion Fruit Mousse Cake', 1, '65'),
(32, 13, 'Trà Nhài', 1, '10'),
(33, 14, 'Bingsu Melon', 1, '55'),
(34, 15, 'Bac Xiu', 1, '20'),
(35, 15, 'Cafe Muoi', 1, '25'),
(36, 16, 'Bingsu Matcha', 1, '60'),
(37, 17, 'Brownie', 1, '35'),
(38, 18, 'Bac Xiu', 1, '20'),
(39, 19, 'Passion Fruit Soda', 1, '25'),
(40, 19, 'Bingsu Strawberry', 1, '65'),
(41, 20, 'Trà OLong', 1, '30'),
(42, 20, 'Vanilla Ice Cream', 1, '15'),
(43, 21, 'Milk Tea', 1, '35'),
(44, 22, 'Bac Xiu', 3, '20'),
(45, 23, 'Cafe Muoi', 1, '25'),
(46, 24, 'Chocolate Ice Cream', 3, '15'),
(47, 25, 'Cream Soda', 8, '25'),
(48, 26, 'Tiramisu', 3, '60'),
(49, 27, 'Bingsu Tiramisu', 3, '60'),
(50, 28, 'Bingsu Matcha', 3, '60'),
(51, 29, 'Macaron', 1, '10'),
(52, 30, 'Trà OLong', 1, '30'),
(53, 30, 'Fruit Tart', 1, '30'),
(54, 31, 'Bingsu Xoài', 2, '50'),
(55, 31, 'Cold Brew', 1, '25'),
(56, 31, 'Milk Tea', 1, '35'),
(57, 32, 'Cafe Trung', 1, '30'),
(58, 33, 'Bingsu ChocoLate', 4, '55'),
(59, 34, 'Macaron', 1, '10'),
(60, 34, 'Passion Fruit Mousse Cake', 1, '65'),
(61, 34, 'Tiramisu', 1, '60'),
(62, 34, 'Macaron', 1, '10'),
(63, 35, 'Trà Nhài', 5, '10'),
(64, 36, 'Cafe Muoi', 4, '25'),
(65, 37, 'Tra Hoa Cuc', 3, '10'),
(66, 38, 'Trà OLong', 1, '30'),
(67, 38, 'Bingsu Tiramisu', 1, '60');

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
(5, 'Soda Chanh', 'Soda', '30'),
(6, 'Chocomint Ice Cream', 'Kem', '15'),
(7, 'Trà đá', 'Trà', '5'),
(8, 'Đen Đá', 'Cà phê', '15'),
(9, 'Trà Nhài', 'Trà', '15'),
(10, 'Trà OLong', 'Trà', '30'),
(11, 'Milk Tea', 'Trà', '35'),
(12, 'Tra Hoa Cuc', 'Trà', '10'),
(13, 'Bac Xiu', 'Cà phê', '20'),
(14, 'Cold Brew', 'Cà phê', '25'),
(15, 'Cafe Muoi', 'Cà phê', '25'),
(16, 'Cafe Trung', 'Cà phê', '30'),
(17, 'Bingsu Matcha', 'Bingsu', '60'),
(18, 'Bingsu ChocoLate', 'Bingsu', '55'),
(19, 'Bingsu Tiramisu', 'Bingsu', '60'),
(20, 'Bingsu Melon', 'Bingsu', '55'),
(21, 'Bingsu Strawberry', 'Bingsu', '65'),
(22, 'Cream Soda', 'Soda', '25'),
(23, 'Passion Fruit Soda', 'Soda', '25'),
(24, 'Blueberry Soda', 'Soda', '30'),
(25, 'Mint Soda', 'Soda', '25'),
(26, 'Vanilla Ice Cream', 'Kem', '15'),
(27, 'Chocolate Ice Cream', 'Kem', '15'),
(28, 'Strawberry Ice Cream', 'Kem', '17'),
(29, 'Matcha Ice Cream', 'Kem', '17'),
(30, 'Passion Fruit Mousse Cake', 'Bánh ngọt', '65'),
(31, 'Baked Cheesecake', 'Bánh ngọt', '50'),
(32, 'Fruit Tart', 'Bánh ngọt', '30'),
(33, 'Macaron', 'Bánh ngọt', '10'),
(34, 'Brownie', 'Bánh ngọt', '35');

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
(1, 'Nam Nghệ Tuấn', 'tuannam@gmail.com', '0932149823', 'Hanoi', 'jun', 'Món ăn ưa thích?', 'sushi', 'true'),
(2, 'Admin', 'admin@gmail.com', '0964708639', 'Hà Nội', '020790', 'Quê bạn ở đâu?', 'Hà Nội', 'true'),
(3, 'Đỗ Ngân Hổ', 'nganho@gmail.com', '0839287346', 'Asterum', 'hoby', 'Bạn thích con gì nhất?', 'sói', 'false'),
(4, 'Hàn Nặc Á ', 'noah@gmail.com', '0293728373', 'Caelum', 'alpaca', 'Bạn thích uống gì nhất?', 'protein shake ', 'true'),
(5, 'Du Hà Minh', 'hami@gmail.com', '0928374938', 'Vitaex cube ', 'hameomeo', 'Bạn thích loại hoa quả nào nhất?', 'Dưa lưới', 'false'),
(6, 'Thái Phụng Cửu', 'bamby@gmail.com', '0928374678', 'Bamby Land', 'bonggu', 'Món ăn ưa thích?', 'Mỳ lạnh', 'false'),
(7, 'Du Hà Mẫn', 'haman@gmail.com', '0293847282', 'Cube ', 'haminni', 'Bạn thích con gì?', 'Mèo đen', 'true'),
(9, 'Đỗ Ân Hồ', 'hoho@gmail.com', '0839283746', 'CyperPunk City', 'wofking', 'Con vật yêu thích?', 'Sói', 'false');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billsdetail`
--
ALTER TABLE `billsdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billID` (`billID`);

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
-- AUTO_INCREMENT for table `billsdetail`
--
ALTER TABLE `billsdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billsdetail`
--
ALTER TABLE `billsdetail`
  ADD CONSTRAINT `billsdetail_ibfk_1` FOREIGN KEY (`billID`) REFERENCES `bill` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
