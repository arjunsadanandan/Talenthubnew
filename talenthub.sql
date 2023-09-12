-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2023 at 10:57 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `talenthub`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'pencil'),
(2, 'canvas'),
(3, 'painting'),
(4, 'pencil'),
(5, 'bca');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `college_id` int(11) NOT NULL,
  `college_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `place` varchar(30) NOT NULL,
  `status` int(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `login` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`college_id`, `college_name`, `email`, `mobile`, `place`, `status`, `uname`, `password`, `login`) VALUES
(1, 'AMRUTHA ', 'karthi@123', '8590119749', 'kozhikode', 2, 'karthi', '7777', 1),
(2, ' VIDHAYALAYUM', 'arjungniit@gmail.com', '8590119749', 'vatakara', 1, 'arjun', '1995', 2),
(3, 'A.J.C Bose ', 'pranav@gmail.com', '9990119749', 'kolkata', 2, 'vishnu', '9876', 3),
(5, 'AMRUTHA VIDHAYALAYUM', 'pranav@gmail.com', '8590119749', 'allappy', 2, 'ywy', '199b', 9),
(6, 'A.J.C Bose College Kolkata - A', 'amal@123', '9990119799', 'kolkata', 2, 'vinu', '123', 10),
(7, 'A.J.C Bose College Kolkata - A', 'adsfdgfg', '9990119799', 'kolkata', 2, 'aaaaa', '12345', 11);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(30) NOT NULL,
  `college_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `college_name`) VALUES
(1, 'maths', '333'),
(2, 'picaso', 'A.J.C Bose College Kolkata - A'),
(3, 'picaso', 'A.J.C Bose College Kolkata - A'),
(4, '1', '1'),
(5, '1', '1'),
(6, '1', '1'),
(7, '1', '1'),
(8, '', '1'),
(9, 'hhh', ''),
(10, 'picaso', ''),
(11, 'lkjh', ''),
(12, 'lkjh', ''),
(13, 'cyfj', ''),
(14, 'rrrr', ''),
(15, 'rrrr', ''),
(16, 'rrrr', ''),
(17, 'picaso', 'A.J.C Bose College Kolkata - A'),
(18, 'vhhvd', ''),
(19, 'picaso', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `uname`, `password`, `type`) VALUES
(1, 'arjun', '1995', '2'),
(2, 'suhail', '2143', '1'),
(3, 'vismaya', '11111', '0'),
(9, 'ywy', '199b', '2'),
(10, 'vinu', '123', '2'),
(11, 'aaaaa', '12345', '2'),
(12, 'zxc', 'zxc123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(30) NOT NULL,
  `titile` varchar(30) NOT NULL,
  `content` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `titile`, `content`) VALUES
(9, 'hvye', 'ghfyuuy');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(30) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `student_name` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `product_name`, `student_name`, `price`, `image`) VALUES
(1, 'fri', 'pranav', '2000', '2131375410.gif'),
(2, 'dfafs', 'suss', '564', '1797255911.jpeg'),
(3, 'fghj', 'suhail', '48000', '1280064265.png'),
(4, '', '', '', ''),
(5, '', '', '', '1870931341.png');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `student_name` varchar(30) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL,
  `status` int(30) NOT NULL,
  `payment` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `student_name`, `category_name`, `price`, `image`, `status`, `payment`) VALUES
(3, '', 'arjun', '', '480', '1326253011.png', 2, '0'),
(13, 'pencil', 'suhail', 'pencil', '2000', '1656761463.png', 1, '0'),
(19, 'fghj', 'suhail', 'canvas', '48000', '1280064265.png', 0, '3'),
(20, '', '', 'pencil', '', '', 0, '4'),
(21, '', '', 'pencil', '', '1870931341.png', 0, '5');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(30) NOT NULL,
  `college_name` varchar(30) NOT NULL,
  `department_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` int(30) NOT NULL,
  `age` int(30) NOT NULL,
  `status` int(30) NOT NULL,
  `pass` int(11) NOT NULL,
  `login` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `college_name`, `department_name`, `email`, `mobile`, `age`, `status`, `pass`, `login`) VALUES
(1, 'akhil', 'sgnsd delhi', 'B.TECH', 'du666@gmail.com', 2147483647, 21, 1, 333, 9),
(5, 'pranav', 'asrd college delhi', 'B.TECH', 'sgnsd22@gmail.com', 987455622, 26, 1, 1188, 7),
(6, 'pranav', 'aryabattacollege', '', '', 987455622, 26, 1, 1188, 8),
(7, 'zxc', '', 'picaso', 'amal@123', 12, 21, 1, 0, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `college_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
