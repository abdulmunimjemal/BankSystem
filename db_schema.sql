-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4000
-- Generation Time: Jun 09, 2023 at 08:20 PM
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
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `national` varchar(255) NOT NULL,
  `id_no` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `name`, `date`, `phone`, `sex`, `national`, `id_no`, `pass`, `status`) VALUES
(6, 'John', '11/11/11', '25121', 'Female', 'Somalia', 'manager1', 'password', 'Active'),
(7, 'chala', '10/11/12', '25122', 'Male', 'ethiopia', 'ets9999', '1q2w', 'Active'),
(8, 'alemu', '345', '0989789345', 'Male', 'etiopian', '1234', '5678', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(255) NOT NULL,
  `to_acc` varchar(255) NOT NULL,
  `from_acc` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `to_acc`, `from_acc`, `amount`, `reason`) VALUES
(3, '432', '6666', '5000', 'dinner'),
(5, '432', '6666', '1000', 'dinner'),
(8, 'erty', '4321', '1000', 'ytu'),
(11, '7777', '2341', '898', 'hh'),
(12, '7777', '2341', '898', 'hh'),
(13, '7777', '2341', '898000000', 'hh');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(255) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `to_acc` varchar(255) NOT NULL,
  `from_acc` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `transaction_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `account_no`, `to_acc`, `from_acc`, `amount`, `reason`, `transaction_type`) VALUES
(1, '6666', '', '', '1000', '', 'Withdraw'),
(2, '4321', '4321', '6666', '2000', 'dinner', 'Deposite'),
(3, '6666', '4321', '6666', '2000', 'dinner', 'Transfer'),
(4, '6666', '', '', '2000', '', 'Withdraw'),
(5, '6666', '', '', '1000', '', 'Withdraw'),
(6, '7777', '7777', '2341', '898', 'hh', 'Deposite'),
(7, '2341', '7777', '2341', '898', 'hh', 'Transfer'),
(8, '7777', '7777', '2341', '898', 'hh', 'Deposite'),
(9, '2341', '7777', '2341', '898', 'hh', 'Transfer'),
(10, '7777', '7777', '2341', '898000000', 'hh', 'Deposite'),
(11, '2341', '7777', '2341', '898000000', 'hh', 'Transfer'),
(12, '12345', '', '', '3000', '', 'Withdraw'),
(13, '2341', '2341', '12345', '500', 'gift', 'Deposite'),
(14, '12345', '2341', '12345', '500', 'gift', 'Transfer');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birth_date` varchar(255) NOT NULL,
  `phone_number` int(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `birth_date`, `phone_number`, `sex`, `nationality`, `account`, `password`, `balance`, `status`) VALUES
(22, 'kebede', '11/1/11', 25199, 'Male', 'Ethiopian', '1234', 'password', 2000, 'Active'),
(27, 'alem', '1/1/1', 25195, 'Female', 'afar', '4321', 'qwer', 9000, 'Active'),
(29, 'Amen', '09-08-2000', 998899889, 'Female', 'Eth', '2341', '2341', 50500, 'Block'),
(30, 'dagi', '09-07-2000', 989987, 'Male', 'Eth', '12345', '123', 500, 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
