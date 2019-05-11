-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 11, 2019 at 03:28 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abhilash`
--

-- --------------------------------------------------------

--
-- Table structure for table `stud_details`
--

DROP TABLE IF EXISTS `stud_details`;
CREATE TABLE IF NOT EXISTS `stud_details` (
  `rno` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`rno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stud_details`
--

INSERT INTO `stud_details` (`rno`, `name`, `gender`, `branch`, `email`, `address`) VALUES
(1, 'ABHIJITH R', 'M', 'IT', 'abhijthrcr7@gmail.com', 'Pattom'),
(55, 'ABHILASH', 'M', 'IT', 'abhilashiswithu@gmail.com', 'Poovatharakkal(H)\r\nCheruvattoor P.O\r\nKothamangalam\r\n686691'),
(54, 'K SAJUB UR REHMAN', 'M', 'IT', 'rehman@gmail.com', 'Andaman & Nicobar'),
(53, 'AHSAN', 'M', 'IT', 'ahsanshalu@gmail.com', 'Kozhikode'),
(56, 'AJIN THAMPI', 'M', 'IT', 'ajin@gmail.com', 'Koothattukulam');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
