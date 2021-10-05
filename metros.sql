-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2021 at 04:50 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `metros`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`) VALUES
(1, 'Delhi'),
(2, 'Bengaluru'),
(3, 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sl no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `city` varchar(20) NOT NULL,
  `message` varchar(100) NOT NULL,
  `time` varchar(40) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sl no`, `name`, `email`, `gender`, `city`, `message`, `time`) VALUES
(1, 'nnnn', 'nnnn@gmail.com', 'f', 'delhi', 'wwhwhhw', '2021-10-04 22:42:29'),
(6, 'mamta', 'mamta123@gmail.com', 'f', 'mumbai', 'i was happy with the service!!', '2021-10-04 22:42:29'),
(7, 'linyi', 'linyi@gmail.com', 'm', 'bangalore', 'was interactive website ..liked it :D', '2021-10-04 22:42:29'),
(8, 'linyi', 'linyi@gmail.com', 'm', 'bangalore', 'was interactive website ..liked it :D', '2021-10-04 22:42:29'),
(9, 'nikita', 'nikki@gmail.com', 'f', 'bangalore', 'this was good website helped me to reach the destination.', '2021-10-04 22:42:29'),
(10, 'linyi', 'linyi@gmail.com', 'm', 'bangalore', 'good website helped me a lot!! :D', '2021-10-04 22:42:29'),
(11, 'karthik', 'karthik@gmail.com', 'm', 'delhi', 'keep up with the work.it will be better if few more cities are added ', '2021-10-04 22:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `crossings`
--

CREATE TABLE `crossings` (
  `cross_id` int(11) NOT NULL,
  `line_1` int(11) NOT NULL,
  `line_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crossings`
--

INSERT INTO `crossings` (`cross_id`, `line_1`, `line_2`) VALUES
(12, 10, 21),
(13, 32, 0);

-- --------------------------------------------------------

--
-- Table structure for table `line1`
--

CREATE TABLE `line1` (
  `station_id` int(11) NOT NULL,
  `seq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `line1`
--

INSERT INTO `line1` (`station_id`, `seq`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(21, 11),
(22, 12),
(23, 13),
(24, 14),
(25, 15),
(26, 16),
(27, 17);

-- --------------------------------------------------------

--
-- Table structure for table `line2`
--

CREATE TABLE `line2` (
  `station_id` int(11) NOT NULL,
  `seq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `line2`
--

INSERT INTO `line2` (`station_id`, `seq`) VALUES
(11, 1),
(12, 2),
(13, 3),
(14, 4),
(15, 5),
(16, 6),
(17, 7),
(18, 8),
(19, 9),
(20, 10),
(28, 11),
(29, 12),
(30, 13);

-- --------------------------------------------------------

--
-- Table structure for table `line3`
--

CREATE TABLE `line3` (
  `station_id` int(11) NOT NULL,
  `seq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `line3`
--

INSERT INTO `line3` (`station_id`, `seq`) VALUES
(31, 1),
(32, 2),
(33, 3),
(34, 4),
(35, 5),
(36, 6),
(37, 7),
(38, 8),
(39, 9),
(40, 10),
(41, 11),
(42, 12);

-- --------------------------------------------------------

--
-- Table structure for table `line4`
--

CREATE TABLE `line4` (
  `line_id` int(11) NOT NULL,
  `seq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `line4`
--

INSERT INTO `line4` (`line_id`, `seq`) VALUES
(44, 1),
(45, 2),
(46, 3),
(47, 4),
(48, 5),
(49, 6),
(50, 7);

-- --------------------------------------------------------

--
-- Table structure for table `line5`
--

CREATE TABLE `line5` (
  `line_id` int(11) NOT NULL,
  `seq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `line6`
--

CREATE TABLE `line6` (
  `line_id` int(11) NOT NULL,
  `seq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `line6`
--

INSERT INTO `line6` (`line_id`, `seq`) VALUES
(51, 1),
(52, 2),
(53, 3),
(54, 4),
(55, 5),
(56, 6),
(57, 7),
(58, 8),
(59, 9),
(60, 10);

-- --------------------------------------------------------

--
-- Table structure for table `metrolines`
--

CREATE TABLE `metrolines` (
  `line_id` int(11) NOT NULL,
  `line_name` varchar(20) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metrolines`
--

INSERT INTO `metrolines` (`line_id`, `line_name`, `city_id`) VALUES
(1, 'Purple', 2),
(2, 'Green', 2),
(3, 'blue', 3),
(4, 'red', 1),
(5, 'blue', 1),
(6, 'green', 1),
(7, 'violet', 1),
(8, 'orange', 1),
(9, 'magenta', 1),
(10, 'grey', 1),
(11, 'yellow', 1);

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `route_id` int(11) NOT NULL,
  `src_id` int(11) NOT NULL,
  `dest_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`route_id`, `src_id`, `dest_id`) VALUES
(1, 1, 40),
(2, 11, 33);

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `station_id` int(11) NOT NULL,
  `station_name` varchar(45) NOT NULL,
  `line_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`station_id`, `station_name`, `line_id`) VALUES
(1, 'Baiyyappanahalli', 1),
(2, 'Swami Vivekananda Road', 1),
(3, 'Indiranagar', 1),
(4, 'Halasuru', 1),
(5, 'Trinity', 1),
(6, 'Mahatma Gandhi Road', 1),
(7, 'Cubbon Park', 1),
(8, 'DR.B.R Ambedkar Vidhana Soudha', 1),
(9, 'Sir M Visveswarava Central College', 1),
(10, 'Nadaprabhu KempeGowda Majestic', 1),
(11, 'Yelachenahalli', 2),
(12, 'Jayaprakash Nagar', 2),
(13, 'Banashankri', 2),
(14, 'Rashtriya Vidhyalaya Road', 2),
(15, 'Jayanagar', 2),
(16, 'South End Circle', 2),
(17, 'Lalbagh', 2),
(18, 'National College', 2),
(19, 'Krishna Rajendra Market', 2),
(20, 'Chickpete', 2),
(21, 'KSR City Railway Station', 1),
(22, 'Magadi Road', 1),
(23, 'BGS Hosahalli', 1),
(24, 'Vijayanagar', 1),
(25, 'Attiguppe', 1),
(26, 'Deepanjali', 1),
(27, 'Mysuru Road', 1),
(28, 'Mantri square Sampige Road', 2),
(29, 'Sriampura', 2),
(30, 'Kuvempu Road', 2),
(31, 'Versova', 3),
(32, 'DN Nagar', 3),
(33, 'Azad Nagar', 3),
(34, 'Andheri', 3),
(35, 'Western Express Highway', 3),
(36, 'Chakala(JB Nagar)', 3),
(37, 'Airport Road', 3),
(38, 'Marol Naka', 3),
(39, 'Saki Naka', 3),
(40, 'Asalpha', 3),
(41, 'Jagruti Nagar', 3),
(42, 'Ghatkopar', 3),
(44, 'Shaheed Sthal', 4),
(45, 'Hindon', 4),
(46, 'Arthala', 4),
(47, 'Mohan Nagar', 4),
(48, 'Shyam Park', 4),
(49, 'Major Mohit Sharma', 4),
(50, 'Raj Bagh', 4),
(51, 'Inderlok', 6),
(52, 'Ashok Park Main', 6),
(53, 'Punjabi Bagh', 6),
(54, 'Shivaji Park', 6),
(55, 'Madipur', 6),
(56, 'Paschim Vihar East', 6),
(57, 'Paschim vihar West', 6),
(58, 'Perra Garhi', 6),
(59, 'Udyog Nagar', 6),
(60, 'Surajmal Stadium', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sl no`);

--
-- Indexes for table `crossings`
--
ALTER TABLE `crossings`
  ADD PRIMARY KEY (`cross_id`);

--
-- Indexes for table `line1`
--
ALTER TABLE `line1`
  ADD PRIMARY KEY (`station_id`);

--
-- Indexes for table `line2`
--
ALTER TABLE `line2`
  ADD PRIMARY KEY (`station_id`);

--
-- Indexes for table `line3`
--
ALTER TABLE `line3`
  ADD PRIMARY KEY (`station_id`);

--
-- Indexes for table `line4`
--
ALTER TABLE `line4`
  ADD PRIMARY KEY (`line_id`);

--
-- Indexes for table `metrolines`
--
ALTER TABLE `metrolines`
  ADD PRIMARY KEY (`line_id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`station_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sl no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
