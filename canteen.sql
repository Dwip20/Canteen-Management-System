-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2023 at 06:20 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `canteen`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `serialno` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`serialno`, `username`, `email`, `password`, `date`) VALUES
(3, 'admin', 'takeabite2023@gmail.com', 'admin', '2023-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `sr.no` int(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `food_id` varchar(100) NOT NULL,
  `food` varchar(100) NOT NULL,
  `price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`sr.no`, `image`, `food_id`, `food`, `price`) VALUES
(9, '../Photos/fried chiken.jpg', ' Fried chiken ', 'fried chiken', 50),
(7, '../Photos/bargur.jpg', 'burger', 'bargur', 60),
(8, '../Photos/chiken .jpg', 'chiken ', 'chiken ', 90),
(6, '../Photos/momo.jpg', 'momo', 'momo', 40);

-- --------------------------------------------------------

--
-- Table structure for table `order_manager`
--

CREATE TABLE `order_manager` (
  `order_id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_no` bigint(100) NOT NULL,
  `dept_name` varchar(100) NOT NULL,
  `sem_name` varchar(100) NOT NULL,
  `registration` varchar(100) NOT NULL,
  `pay_mode` varchar(100) NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_manager`
--

INSERT INTO `order_manager` (`order_id`, `name`, `email`, `phone_no`, `dept_name`, `sem_name`, `registration`, `pay_mode`, `Date`, `time`) VALUES
(9, 'Dwip Sasmal', '', 9083204059, 'BCA', '6th', '21', 'COD', '2023-06-05', '12:33:35'),
(10, 'dwip', '', 9083204059, 'BCA', '6th', '21', 'COD', '2023-06-09', '11:42:30'),
(11, 'imon', '', 9083204059, 'BCA', '6th', '23', 'COD', '2023-06-09', '13:37:27'),
(12, 'admin', '', 9083204059, 'BCA', '6th', '576', 'COD', '2023-06-09', '15:47:59'),
(19, 'Akik Mukherjee', 'mukherjeeakik2027@gmail.com', 7719217227, 'BCA', '6th', '202005000417', 'COD', '2023-06-17', '18:42:45'),
(20, 'Akik Mukherjee', 'mukherjeeakik2027@gmail.com', 7719217227, 'BCA', '6th', '202005000417', 'COD', '2023-06-17', '19:10:27'),
(21, 'Akik Mukherjee', 'mukherjeeakik2027@gmail.com', 7719217227, 'BCA', '6th', '202005000417', 'COD', '2023-06-17', '19:11:47'),
(23, 'Surabhi das', 'dassurabhi25@gmail.com', 9883506734, 'BCA', '6th', '202005000596 ', 'COD', '2023-06-17', '21:04:32'),
(24, 'Surabhi das', 'dassurabhi25@gmail.com', 9883506734, 'BCA', '6th', '202005000596 ', 'COD', '2023-06-17', '21:07:53'),
(25, 'Dwip Sasmal', 'sasmaldwip@gmail.com', 9083204059, 'BCA', '6th', '202005000474', 'COD', '2023-06-17', '21:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(250) NOT NULL,
  `registration` varchar(255) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phno` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `dep` varchar(250) NOT NULL,
  `sem` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `cpassword` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `registration`, `name`, `phno`, `email`, `dep`, `sem`, `password`, `cpassword`) VALUES
(7, '202005000474', 'Dwip Sasmal', '9083204059', 'sasmaldwip@gmail.com', 'BCA', '6th', 'dwip', 'dwip'),
(8, '202005000416', 'Aditya Mitra ', '6295477693', 'adityamitra256@gmail.com', ' BCA', '6th', 'a', 'a'),
(9, '202005000490', 'Krishnendu Dey', '6295785440', 'krishnendudey0516@gmail.com', 'BCA', '6th', 'k', 'k'),
(10, '202005000570', 'Sougata Saha', '9832885482', 'sougatasaha722@gmail.com', 'BCA', '6th', 's', 's'),
(11, '202005000601', 'Swarnabha Chakraborty', '7001844407', 'chakrabortyswarnabha700@gmail.com', 'BCA', '6th', 's', 's'),
(12, '202005000484', ' kankan Das', '8670689866', 'kankan.das.1024@gmail.com', 'BCA', '6th', 'k', 'k'),
(13, '202005000596 ', 'Surabhi das', '9883506734', 'dassurabhi25@gmail.com', 'BCA', '6th', 's', 's'),
(14, '202005000417', 'Akik Mukherjee', '7719217227', 'mukherjeeakik2027@gmail.com', 'BCA', '6th', 'a', 'a'),
(15, '202005000600', 'Swarnab Adhikary', '8768592036', 'excursion967@gmail.com', 'BCA', '6th', 's', 's');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` varchar(100) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `item_name`, `price`, `quantity`) VALUES
('9', 'bargur', 90, 2),
('9', 'chiken stick', 100, 2),
('10', 'bargur', 90, 2),
('10', 'chiken stick', 100, 3),
('10', 'momo', 60, 2),
('11', 'chiken stick', 100, 1),
('11', 'momo', 60, 1),
('12', 'bargur', 60, 3),
('12', 'momo', 60, 2),
('13', 'bargur', 60, 1),
('13', 'chiken ', 90, 3),
('14', 'bargur', 60, 1),
('14', 'chiken ', 90, 1),
('15', 'fried chiken', 50, 1),
('16', 'bargur', 60, 1),
('16', 'fried chiken', 50, 1),
('17', 'bargur', 60, 1),
('17', 'chiken ', 90, 1),
('18', 'bargur', 60, 1),
('19', 'bargur', 60, 1),
('20', 'bargur', 60, 1),
('21', 'bargur', 60, 1),
('21', 'chiken ', 90, 1),
('22', 'fried chiken', 50, 2),
('22', 'bargur', 60, 1),
('23', 'fried chiken', 50, 2),
('23', 'bargur', 60, 1),
('24', 'bargur', 60, 1),
('25', 'bargur', 60, 2),
('25', 'fried chiken', 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_signup`
--

CREATE TABLE `user_signup` (
  `serialno` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_signup`
--

INSERT INTO `user_signup` (`serialno`, `username`, `email`, `password`, `status`, `date`) VALUES
(21, ' Dwip', 'sasmaldwip@gmail.com', '$2y$10$HtbIcwDh6n2az168WQXcNOsAxQSXctah8WpATIPk93GBdwV2DiCAe', 1, '2023-06-09'),
(22, ' akik27', 'mukherjeeakik2027@gmail.com', '$2y$10$hvEiKeTYknKK0WNP7oy.HucFn64PQIYSBVdsY5hEcWSKDr.yAf0iS', 1, '2023-06-13'),
(24, ' Nabendra nath Bishnu', 'n9832040901@gmail.com', '$2y$10$pWl/LhIWZv86H5UOX350Du2tKYrmLO/nz55NaMppCenY.3PiMvInG', 1, '2023-06-17'),
(31, ' akik', 'mukherjeeakik@gmail.com', '$2y$10$alApYA/rhN/SBJG1QgWKt.Jm7POT8l/tB8ZwyuD1ymyWoJRs3nfWu', 1, '2023-06-17'),
(32, ' surabhi', 'dassurabhi25@gmail.com', '$2y$10$mXMIeEvgI7oKN/7D5K4RlOwZJeldLjep.8CNovnJQTrd3hCiyvfpm', 1, '2023-06-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`serialno`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`food_id`),
  ADD KEY `sr.no` (`sr.no`);

--
-- Indexes for table `order_manager`
--
ALTER TABLE `order_manager`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_signup`
--
ALTER TABLE `user_signup`
  ADD PRIMARY KEY (`serialno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `serialno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `sr.no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_manager`
--
ALTER TABLE `order_manager`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_signup`
--
ALTER TABLE `user_signup`
  MODIFY `serialno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
