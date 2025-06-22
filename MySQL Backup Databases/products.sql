-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 20, 2012 at 04:28 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `products`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_num` int(3) NOT NULL DEFAULT '0',
  `customer_name` varchar(30) DEFAULT NULL,
  `street` varchar(25) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` int(5) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `credit_limit` decimal(10,2) DEFAULT NULL,
  `rep_num` int(2) DEFAULT NULL,
  PRIMARY KEY (`customer_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_num`, `customer_name`, `street`, `city`, `state`, `zip`, `balance`, `credit_limit`, `rep_num`) VALUES
(148, 'Al''s Appliance and Sport', '2837 Greenway', 'Fillmore', 'FL', 33336, 6550.00, 7500.00, 20),
(282, 'Brookings Direct', '3827 Devon', 'Grove', 'FL', 33321, 431.50, 10000.00, 35);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_num` int(5) NOT NULL DEFAULT '0',
  `order_date` varchar(10) DEFAULT NULL,
  `customer_num` int(3) DEFAULT NULL,
  PRIMARY KEY (`order_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_num`, `order_date`, `customer_num`) VALUES
(21608, '10/20/2010', 148),
(21610, '10/20/2010', 356);

-- --------------------------------------------------------

--
-- Table structure for table `order_line`
--

CREATE TABLE IF NOT EXISTS `order_line` (
  `order_num` int(5) NOT NULL DEFAULT '0',
  `part_num` varchar(4) NOT NULL DEFAULT '',
  `num_ordered` int(2) DEFAULT NULL,
  `quoted_price` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`order_num`,`part_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_line`
--

INSERT INTO `order_line` (`order_num`, `part_num`, `num_ordered`, `quoted_price`) VALUES
(21608, 'AT94', 11, '$21.95'),
(21610, 'DR93', 1, '$495.00');

-- --------------------------------------------------------

--
-- Table structure for table `part`
--

CREATE TABLE IF NOT EXISTS `part` (
  `part_num` varchar(5) NOT NULL DEFAULT '',
  `description` varchar(20) DEFAULT NULL,
  `on_hand` int(2) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `warehouse` int(1) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`part_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `part`
--

INSERT INTO `part` (`part_num`, `description`, `on_hand`, `class`, `warehouse`, `price`) VALUES
('AT94', 'Iron', 50, 'HW', 3, 24.95),
('BV06', 'Home Gym', 45, 'SG', 2, 794.95);

-- --------------------------------------------------------

--
-- Table structure for table `rep`
--

CREATE TABLE IF NOT EXISTS `rep` (
  `rep_num` int(2) NOT NULL DEFAULT '0',
  `last_name` varchar(8) DEFAULT NULL,
  `first_name` varchar(8) DEFAULT NULL,
  `street` varchar(25) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` int(5) DEFAULT NULL,
  `commission` varchar(10) DEFAULT NULL,
  `rate` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`rep_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rep`
--

INSERT INTO `rep` (`rep_num`, `last_name`, `first_name`, `street`, `city`, `state`, `zip`, `commission`, `rate`) VALUES
(20, 'Kaiser', 'Valerie', '624 Randall', 'Grove', 'FL', 33321, '$20,542.50', 0.05),
(35, 'Hull', 'Richard', '532 Jackson', 'Sheldon', 'FL', 33553, '$39,216.00', 0.07);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
