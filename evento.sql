-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2017 at 03:53 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evento`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(5) NOT NULL,
  `cat_name` varchar(20) NOT NULL,
  `cat_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_desc`) VALUES
(1, 'sports', 'Join in to have some fun!Showcase your talent in games like football,badminton or mini militia and win attractive cash prizes'),
(2, 'technical', 'Reach out to your technical side!show off your coding or literary skills and be the best of the best'),
(3, 'cultural', 'Dance,drama and music can never be left out of any fest!Join us and make your day memorable!');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `cat_id` int(11) NOT NULL,
  `event_id` varchar(25) NOT NULL,
  `event_name` varchar(25) NOT NULL,
  `no_of_mem` int(10) NOT NULL,
  `reg_fee` int(20) NOT NULL,
  `venue` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `prize` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`cat_id`, `event_id`, `event_name`, `no_of_mem`, `reg_fee`, `venue`, `date`, `time`, `prize`) VALUES
(1, 'bad', 'Badminton', 3, 100, 'Badminton court', '2017-11-15', '10:00:00', 2000),
(1, 'bas', 'Basketball', 3, 100, 'basketball court', '2017-11-15', '11:30:00', 2000),
(2, 'cir', 'Circuitrix', 2, 200, 'room 115', '2017-11-15', '10:00:00', 2000),
(3, 'classi', 'Classical dance', 5, 150, 'auditorium', '2017-11-15', '17:00:00', 3000),
(2, 'cod', 'Coding', 1, 50, 'room 107', '2017-11-15', '10:00:00', 1000),
(3, 'coll', 'Collage', 2, 50, 'room 101', '2017-11-15', '11:00:00', 1000),
(2, 'deb', 'Debugging', 2, 100, 'room 200', '2017-11-15', '12:00:00', 1000),
(1, 'foot', 'Football', 11, 300, 'Football Ground', '2017-11-15', '12:00:00', 5000),
(1, 'mini', 'Mini Militia', 3, 100, 'cs seminar hall', '2017-11-15', '12:00:00', 1000),
(3, 'paint', 'Painting', 1, 50, 'cs seminar hall', '2017-11-15', '14:00:00', 1000),
(2, 'pap', 'Paper Presentation', 1, 50, 'cs seminar hall', '2017-11-15', '09:00:00', 1000),
(3, 'photo', 'Photography', 1, 100, 'main block', '2017-11-15', '10:00:00', 2000),
(2, 'quad', 'Quadcopter', 1, 50, 'ground', '2017-11-15', '09:30:00', 500),
(2, 'rub', 'Rubix cube', 1, 50, 'room 104', '2017-11-15', '11:30:00', 3000),
(3, 'solo d', 'Solo dance', 1, 50, 'auditorium', '2017-11-15', '15:00:00', 1000),
(1, 'treas', 'Treasure hunt', 3, 100, 'ground', '2017-11-15', '14:00:00', 1000),
(3, 'vocal', 'Vocal solo', 1, 50, 'auditorium', '2017-11-15', '11:00:00', 1000),
(1, 'vol', 'Volleyball', 6, 200, 'volleyball court', '2017-11-15', '11:00:00', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

CREATE TABLE `participant` (
  `event_id` varchar(25) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `usn` varchar(50) NOT NULL,
  `college` varchar(50) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`event_id`, `p_name`, `usn`, `college`, `phone`, `email`) VALUES
('bad', 'richa', '1mv19', 'sir mvit', 9490675324, 'richa@gmail.com'),
('bas', 'richa', '1mv19', 'sir mvit', 2147483647, 'richa@gmail.com'),
('bas', 'rahul', '1sv17', 'svit', 7689546783, 'rh@gmail.com'),
('foot', 'ram', '1sv18', 'svit', 2873898765, 'ram@gmail.com'),
('mini', 'mithun', '1mv15is017', 'sir mvit', 2147483647, 'mithun@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`,`cat_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`event_id`,`usn`),
  ADD KEY `event_id` (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `participant`
--
ALTER TABLE `participant`
  ADD CONSTRAINT `participant_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
