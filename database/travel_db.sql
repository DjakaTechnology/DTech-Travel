-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2018 at 08:14 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `f_customer`
--

CREATE TABLE `f_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` varchar(32) NOT NULL,
  `phone` int(11) NOT NULL,
  `gender` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_reservation`
--

CREATE TABLE `f_reservation` (
  `id` int(11) NOT NULL,
  `reservation_code` int(11) NOT NULL,
  `reservation_at` int(11) NOT NULL,
  `reservation_date` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `seat_code` int(11) NOT NULL,
  `ruteid` int(11) NOT NULL,
  `depart_at` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_route`
--

CREATE TABLE `f_route` (
  `id` int(11) NOT NULL,
  `depart_at` datetime NOT NULL,
  `route_from` varchar(32) NOT NULL,
  `route_to` varchar(32) NOT NULL,
  `price` bigint(20) NOT NULL,
  `transport_id` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_transport`
--

CREATE TABLE `f_transport` (
  `id` int(11) NOT NULL,
  `code` varchar(16) NOT NULL,
  `description` varchar(32) NOT NULL,
  `sear_qty` int(11) NOT NULL,
  `trasnport_type` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_transport_type`
--

CREATE TABLE `f_transport_type` (
  `id` tinyint(3) NOT NULL,
  `description` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_user`
--

CREATE TABLE `f_user` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  `fullname` varchar(32) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `f_route`
--
ALTER TABLE `f_route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_transport`
--
ALTER TABLE `f_transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_user`
--
ALTER TABLE `f_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `f_route`
--
ALTER TABLE `f_route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `f_transport`
--
ALTER TABLE `f_transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `f_user`
--
ALTER TABLE `f_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
