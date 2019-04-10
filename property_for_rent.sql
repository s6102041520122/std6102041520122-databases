-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 10, 2019 at 01:31 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `std6102041520122_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `property_for_rent`
--

CREATE TABLE `property_for_rent` (
  `id` int(11) NOT NULL,
  `property_no` int(11) NOT NULL,
  `street` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `rooms` int(2) DEFAULT NULL,
  `rent` int(4) DEFAULT NULL,
  `fk_pfr_owner_id` int(11) NOT NULL,
  `fk_pfr_staff_id` int(11) DEFAULT NULL,
  `fk_pfr_branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `property_for_rent`
--
ALTER TABLE `property_for_rent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pfr_owner_id_idx` (`fk_pfr_owner_id`),
  ADD KEY `fk_pfr_staff_id_idx` (`fk_pfr_staff_id`),
  ADD KEY `fk_pfr_branch_id_idx` (`fk_pfr_branch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `property_for_rent`
--
ALTER TABLE `property_for_rent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `property_for_rent`
--
ALTER TABLE `property_for_rent`
  ADD CONSTRAINT `fk_pfr_branch_id` FOREIGN KEY (`fk_pfr_branch_id`) REFERENCES `branch` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pfr_owner_id` FOREIGN KEY (`fk_pfr_owner_id`) REFERENCES `private_owner` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pfr_staff_id` FOREIGN KEY (`fk_pfr_staff_id`) REFERENCES `staff` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
