-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 11:30 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- Database: `fcadatabase`
--
-- --------------------------------------------------------
--
-- Table structure for table `account`
--
CREATE TABLE `account` (
  `accountID` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `accountType` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `account`
--
INSERT INTO `account` (`accountID`, `email`, `password`, `accountType`) VALUES
(1, 'josh.coach@fca.com', 'pass', 'coach'),
(2, 'josh.analyst@fca.com', 'pass', 'analyst');
-- --------------------------------------------------------
--
-- Table structure for table `game`
--
CREATE TABLE `game` (
  `gameID` int(11) NOT NULL,
  `teamID` int(11) NOT NULL,
  `opponentName` text NOT NULL,
  `isHome` tinyint(1) NOT NULL,
  `gameDate` varchar(18) NOT NULL,
  `youtubeLink` varchar(256) NOT NULL,
  `isAnnotated` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `game`
--
INSERT INTO `game` (`gameID`, `teamID`, `opponentName`, `isHome`, `gameDate`, `youtubeLink`, `isAnnotated`) VALUES
(7, 1, 'Ball State', 1, '2020-12-12', 'https://www.youtube.com/watch?v=kMOERvN82Ow', 0),
(8, 1, 'Ball State', 0, '2020-12-18', 'https://www.youtube.com/watch?v=kMOERvN82Ow', 0);
-- --------------------------------------------------------
--
-- Table structure for table `player`
--
CREATE TABLE `player` (
  `playerID` int(11) NOT NULL,
  `teamID` int(11) NOT NULL,
  `playerFirstName` tinytext DEFAULT NULL,
  `playerLastName` tinytext DEFAULT NULL,
  `playerAge` varchar(2) DEFAULT NULL,
  `playerHeight` varchar(5) DEFAULT NULL,
  `playerWeight` varchar(3) DEFAULT NULL,
  `playerGrade` varchar(2) DEFAULT NULL,
  `playerNumber` varchar(2) DEFAULT NULL,
  `playerPosition` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `player`
--
INSERT INTO `player` (`playerID`, `teamID`, `playerFirstName`, `playerLastName`, `playerAge`, `playerHeight`, `playerWeight`, `playerGrade`, `playerNumber`, `playerPosition`) VALUES
(97, 1, 'Justin', 'Russell', '22', '70', '170', '12', '00', 'Point Guard'),
(99, 1, 'Zach', 'Hoeing', '21', '70', '170', '12', '01', 'Shooting Guard'),
(101, 1, 'Corbin', 'Curnutt', '22', '70', '170', '12', '02', 'Small Forward'),
(103, 1, 'Jacob', 'Davis', '21', '70', '170', '12', '03', 'Power Forward'),
(105, 1, 'Bryce ', 'Woody', '21', '70', '170', '12', '04', 'Center');
-- --------------------------------------------------------
--
-- Table structure for table `playerstats`
--
CREATE TABLE `playerstats` (
  `playerID` int(11) NOT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `fgm` int(11) NOT NULL DEFAULT 0,
  `fga` int(11) NOT NULL DEFAULT 0,
  `tpm` int(11) NOT NULL DEFAULT 0,
  `tpa` int(11) NOT NULL DEFAULT 0,
  `assists` int(11) NOT NULL DEFAULT 0,
  `rebounds` int(11) NOT NULL DEFAULT 0,
  `turnovers` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `playerstats`
--
INSERT INTO `playerstats` (`playerID`, `points`, `fgm`, `fga`, `tpm`, `tpa`, `assists`, `rebounds`, `turnovers`) VALUES
(97, 44, 13, 15, 2, 4, 2, 2, 2),
(99, 9, 5, 7, 1, 1, 0, 0, 0),
(101, 10, 6, 6, 0, 0, 3, 0, 1),
(103, 7, 4, 4, 1, 1, 2, 1, 2),
(105, 15, 7, 9, 3, 4, 0, 1, 0);
-- --------------------------------------------------------
--
-- Table structure for table `team`
--
CREATE TABLE `team` (
  `teamID` int(11) NOT NULL,
  `accountID` int(11) NOT NULL,
  `teamName` text DEFAULT NULL,
  `coachFirstName` text DEFAULT NULL,
  `coachLastName` text DEFAULT NULL,
  `teamCity` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `team`
--
INSERT INTO `team` (`teamID`, `accountID`, `teamName`, `coachFirstName`, `coachLastName`, `teamCity`) VALUES
(1, 1, 'Mastadons', 'Josh', 'Kelly', 'Fort Wayne');
--
-- Indexes for dumped tables
--
--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`accountID`);
--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`gameID`),
  ADD KEY `teamID` (`teamID`);
--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`playerID`);
--
-- Indexes for table `playerstats`
--
ALTER TABLE `playerstats`
  ADD KEY `playerID` (`playerID`);
--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamID`),
  ADD KEY `accountID` (`accountID`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `accountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `gameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `playerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `teamID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- Constraints for dumped tables
--
--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_teamID` FOREIGN KEY (`teamID`) REFERENCES `team` (`teamID`);
--
-- Constraints for table `playerstats`
--
ALTER TABLE `playerstats`
  ADD CONSTRAINT `playerID` FOREIGN KEY (`playerID`) REFERENCES `player` (`playerID`);
--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_accountID` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`);
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
