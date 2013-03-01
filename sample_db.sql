-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 28, 2013 at 11:27 PM
-- Server version: 5.5.25
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEES`
--

CREATE TABLE `EMPLOYEES` (
  `employee_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(80) NOT NULL,
  `pass` char(40) NOT NULL,
  `role` varchar(40) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `EMPLOYEES`
--

INSERT INTO `EMPLOYEES` (`employee_id`, `first_name`, `last_name`, `email`, `pass`, `role`, `date_created`) VALUES
(1, 'Lovell', 'Felix', 'hello@lovellfelix.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'admin', '2013-02-28 23:17:01'),
(2, 'John', 'Lennon', 'john@beatles.com', '2a50435b0f512f60988db719106a258fb7e338ff', 'admin', '2013-02-28 23:17:01'),
(3, 'Paul', 'McCartney', 'paul@beatles.com', '6ae16792c502a5b47da180ce8456e5ae7d65e262', 'waiter', '2013-02-28 23:17:01'),
(4, 'George', 'Harrison', 'george@beatles.com', '1af17e73721dbe0c40011b82ed4bb1a7dbe3ce29', 'supervisor', '2013-02-28 23:17:01'),
(5, 'Ringo', 'Starr', 'ringo@beatles.com', '520f73691bcf89d508d923a2dbc8e6fa58efb522', 'waiter', '2013-02-28 23:17:01'),
(6, 'David', 'Jones', 'davey@monkees.com', 'ec23244e40137ef72763267f17ed6c7ebb2b019f', 'manager', '2013-02-28 23:17:01'),
(7, 'Peter', 'Tork', 'peter@monkees.com', 'b8f6bc0c646f68ec6f27653f8473ae4ae81fd302', 'manager', '2013-02-28 23:17:01'),
(8, 'Micky', 'Dolenz', 'micky@monkees.com', '0599b6e3c9206ef135c83a921294ba6417dbc673', 'waiter', '2013-02-28 23:17:01'),
(9, 'Mike', 'Nesmith', 'mike@monkees.com', '804a1773e9985abeb1f2605e0cc22211cc58cb1b', 'waiter', '2013-02-28 23:17:01'),
(10, 'David', 'Sedaris', 'david@authors.com', 'f54e748ae9624210402eeb2c15a9f506a110ef72', 'waiter', '2013-02-28 23:17:01');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
