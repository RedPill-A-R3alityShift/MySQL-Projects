-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 20, 2012 at 04:29 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `cust_id` int(5) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(30) NOT NULL,
  `cust_address` varchar(40) NOT NULL,
  `cust_city` varchar(35) NOT NULL,
  `cust_state` varchar(2) NOT NULL,
  `cust_zip` int(5) NOT NULL,
  `cust_phone` int(12) NOT NULL,
  `cust_email` varchar(30) NOT NULL,
  `rep_id` int(11) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `cust_name`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_phone`, `cust_email`, `rep_id`) VALUES
(1, 'Oscar Baltazar', '2207 S 9th ST', 'Sheboygan', 'WI', 53081, 2147483647, 'oscar.baltazar@live.com', 10),
(2, 'Gabbriella Dimas', '1705 N 13th ST', 'Sheboygan', 'WI', 53081, 2147483647, 'g_dimas@gmail.com', 12),
(3, 'Crystal Dimas', '2207 S 9th ST Apt A', 'Sheboygan', 'WI', 53081, 2147483647, 'crystal.dimas@gmail.com', 10);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
