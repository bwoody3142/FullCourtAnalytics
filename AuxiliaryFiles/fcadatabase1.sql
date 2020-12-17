-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2020 at 12:05 AM
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
 ADD PRIMARY KEY (`playerID`),
 ADD KEY `teamID` (`teamID`);
--
-- Indexes for table `playerstats`
--
ALTER TABLE `playerstats`
 ADD UNIQUE KEY `playerID_2` (`playerID`),
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
 MODIFY `accountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
 MODIFY `gameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
 MODIFY `playerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
 MODIFY `teamID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- Constraints for dumped tables
--
--
-- Constraints for table `game`
--
ALTER TABLE `game`
 ADD CONSTRAINT `game_teamID` FOREIGN KEY (`teamID`) REFERENCES `team` (`teamID`);
--
-- Constraints for table `player`
--
ALTER TABLE `player`
 ADD CONSTRAINT `player_teamID` FOREIGN KEY (`teamID`) REFERENCES `team` (`teamID`);
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