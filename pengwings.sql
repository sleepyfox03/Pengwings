-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2023 at 04:48 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zoosite`
--

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `animals_id` int(11) NOT NULL,
  `animals_name` varchar(20) DEFAULT NULL,
  `scientific_name` varchar(400) NOT NULL,
  `type` varchar(50) NOT NULL,
  `category` varchar(20) NOT NULL,
  `activity` int(11) NOT NULL DEFAULT 1,
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `s_name` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `zoo.zoo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`animals_id`, `animals_name`, `scientific_name`, `type`, `category`, `activity`, `id`, `name`, `gender`, `s_name`, `active`, `zoo.zoo_id`) VALUES
(1, 'Frog', 'Rana Tigrina', 'Terrestrial', 'Amphibian', 1, 0, NULL, NULL, NULL, NULL, NULL),
(2, 'Crocodile', 'Crocodylidae', 'Terrestrials', 'Amphibian', 1, 0, NULL, NULL, NULL, NULL, NULL),
(3, 'Frog', 'Rana Tigrina', 'Terrestrial', 'Amphibian', 1, 0, NULL, NULL, NULL, NULL, NULL),
(4, 'Crocodile', 'Crocodylidae', 'Terrestrial', 'Amphibian', 1, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `animal_zoo_map`
--

CREATE TABLE `animal_zoo_map` (
  `s_no` int(11) NOT NULL,
  `animals_id` varchar(23) NOT NULL,
  `zoo_id` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `animal_zoo_map`
--

INSERT INTO `animal_zoo_map` (`s_no`, `animals_id`, `zoo_id`) VALUES
(1, '1', '1'),
(2, '2', '5'),
(3, '3', '3'),
(4, '4', '5');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phn_no` varchar(50) NOT NULL,
  `role` varchar(10) DEFAULT NULL,
  `pass` varchar(512) DEFAULT NULL,
  `activity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `uname`, `email`, `phn_no`, `role`, `pass`, `activity`) VALUES
(2, 'Satvik', 'satvik@gmail.com', '6230145111', 'Superadmin', '123', 1),
(25, 'Shalini', 'shalini@gmail.com', '9418369111', 'Employee', '123', 1),
(26, 'abc', 'abc@gmail.com', '0', 'User', '123', 1),
(31, 'Rahul', 'rahul@gmail.com', '8580922111', 'Manager', NULL, 1),
(32, 'test user', 't@t.com', '6565548111', 'User', NULL, 1),
(53, 'pawan', 'pawan@gmail.com', '1234', 'Ch2a', '1234', 1),
(54, '12999', 'satviknjnj@gmail.com', '234567576', '234', '124', 1),
(60, 'svk', 'shalinis@gmail.com', '62301454111', 'Admin', '123', 1),
(61, 'shadow', 's@q.com', '687', 'genius', '$2a$12$QnNJWkshapoc96.ggo5uYeGEawHjWfT22V/jWDi.88EmFcurusG76', 1),
(70, 'asd', 'asd@asd.c', '123', 'admin', '$2a$12$18s.y15b4261eUlQffhZAOH/Bj6lL12RGBMEhMSnTjlnzsEqYHx7u', 1),
(71, 'asd', 'p@p.c', '324', 'user', '$2a$12$qMptGYhqjxutEcrp6MvT4ef8upqlLljXQIEkLRp9HpWonHMhk5XIe', 1),
(74, 'Satvik Chandel', 'satvik@pengwings.com', '62301455555', 'Manager', '$2a$12$6.smqN2eCu1bQlx79EoKsudMcJeVRjCRGlSi5u5BO82pOUR4S.JPa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zoo`
--

CREATE TABLE `zoo` (
  `zoo_id` int(11) NOT NULL,
  `zoo_name` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `area` float NOT NULL,
  `activity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zoo`
--

INSERT INTO `zoo` (`zoo_id`, `zoo_name`, `state`, `city`, `area`, `activity`) VALUES
(1, 'National Zoological Parks', '-', 'Delhi', 123, 1),
(2, 'Arignar Anna Zoological Park', 'Tamil Nadu', 'Chennai', 6.02, 1),
(3, 'Chhatbir Zoo', 'Punjab', 'Chandigarh', 2.02, 1),
(4, 'Jijamata Udyaan', 'Maharashtra', 'Mumbai', 0.48, 1),
(5, 'Crocodile Breeding Centre', 'Jharkhand', 'Ranchi', 0.02, 1),
(6, ' memorial', 'solid', 'Delhi', 0, 0),
(7, 'as', 'liquid2', 'as', 312, 0),
(8, '23', '23', '23', 12, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`animals_id`),
  ADD KEY `FK4jqedgpv5yq6et5k23ogjqchy` (`zoo.zoo_id`);

--
-- Indexes for table `animal_zoo_map`
--
ALTER TABLE `animal_zoo_map`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `zoo`
--
ALTER TABLE `zoo`
  ADD PRIMARY KEY (`zoo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
  MODIFY `animals_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `animal_zoo_map`
--
ALTER TABLE `animal_zoo_map`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `zoo`
--
ALTER TABLE `zoo`
  MODIFY `zoo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animals`
--
ALTER TABLE `animals`
  ADD CONSTRAINT `FK4jqedgpv5yq6et5k23ogjqchy` FOREIGN KEY (`zoo.zoo_id`) REFERENCES `zoo` (`zoo_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
