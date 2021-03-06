-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2021 at 04:30 AM
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
(152, 'bwoody3142@gmail.com', 'pass', 'coach'),
(153, 'testfca6@gmail.com', 'password12!', 'analyst');

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
(83, 102, 'Ball State', 1, '2021-02-03', 'kMOERvN82Ow', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gamestats`
--

CREATE TABLE `gamestats` (
  `gameStatsID` int(11) NOT NULL,
  `gameID` int(11) NOT NULL,
  `playerID` int(11) NOT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `fgm` int(11) NOT NULL DEFAULT 0,
  `fga` int(11) NOT NULL DEFAULT 0,
  `ftm` int(11) NOT NULL DEFAULT 0,
  `fta` int(11) NOT NULL DEFAULT 0,
  `tpm` int(11) NOT NULL DEFAULT 0,
  `tpa` int(11) NOT NULL DEFAULT 0,
  `assists` int(11) NOT NULL DEFAULT 0,
  `defRebounds` int(11) NOT NULL DEFAULT 0,
  `offRebounds` int(11) NOT NULL DEFAULT 0,
  `steals` int(11) NOT NULL DEFAULT 0,
  `blocks` int(11) NOT NULL DEFAULT 0,
  `turnovers` int(11) NOT NULL DEFAULT 0,
  `personalFouls` int(11) NOT NULL DEFAULT 0,
  `minutesPlayed` int(11) NOT NULL DEFAULT 0,
  `offPossessions` int(11) NOT NULL DEFAULT 0,
  `defPossessions` int(11) NOT NULL DEFAULT 0,
  `pointsAllowedWhileOnCourt` int(11) NOT NULL DEFAULT 0,
  `offReboundsAllowedWhileOnCourt` int(11) NOT NULL DEFAULT 0,
  `defReboundsAllowedWhileOnCourt` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gamestats`
--

INSERT INTO `gamestats` (`gameStatsID`, `gameID`, `playerID`, `points`, `fgm`, `fga`, `ftm`, `fta`, `tpm`, `tpa`, `assists`, `defRebounds`, `offRebounds`, `steals`, `blocks`, `turnovers`, `personalFouls`, `minutesPlayed`, `offPossessions`, `defPossessions`, `pointsAllowedWhileOnCourt`, `offReboundsAllowedWhileOnCourt`, `defReboundsAllowedWhileOnCourt`) VALUES
(66, 83, 271, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0),
(67, 83, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0),
(68, 83, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0),
(69, 83, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0),
(70, 83, 283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `opponentstats`
--

CREATE TABLE `opponentstats` (
  `teamID` int(11) NOT NULL,
  `games` int(11) NOT NULL DEFAULT 0,
  `offPossessions` int(11) NOT NULL DEFAULT 0,
  `defPossessions` int(11) NOT NULL DEFAULT 0,
  `fgm` int(11) NOT NULL DEFAULT 0,
  `fga` int(11) NOT NULL DEFAULT 0,
  `tpm` int(11) NOT NULL DEFAULT 0,
  `tpa` int(11) NOT NULL DEFAULT 0,
  `ftm` int(11) NOT NULL DEFAULT 0,
  `fta` int(11) NOT NULL DEFAULT 0,
  `offRebounds` int(11) NOT NULL DEFAULT 0,
  `defRebounds` int(11) NOT NULL DEFAULT 0,
  `assists` int(11) NOT NULL DEFAULT 0,
  `steals` int(11) NOT NULL DEFAULT 0,
  `blocks` int(11) NOT NULL DEFAULT 0,
  `turnovers` int(11) NOT NULL DEFAULT 0,
  `fouls` int(11) NOT NULL DEFAULT 0,
  `points` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `opponentstats`
--

INSERT INTO `opponentstats` (`teamID`, `games`, `offPossessions`, `defPossessions`, `fgm`, `fga`, `tpm`, `tpa`, `ftm`, `fta`, `offRebounds`, `defRebounds`, `assists`, `steals`, `blocks`, `turnovers`, `fouls`, `points`) VALUES
(102, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2);

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
(271, 102, 'a', 'a', '1', '1', '1', '1', '1', 'Point Guard'),
(272, 102, 'b', 'b', '2', '2', '2', '2', '2', 'Shooting Guard'),
(273, 102, 'c', 'c', '2', '2', '2', '2', '2', 'Shooting Guard'),
(274, 102, 'cd', 'c', '2', '2', '2', '2', '2', 'Shooting Guard'),
(283, 102, 'cd', 'cdh', '2', '2', '2', '2', '2', 'Shooting Guard');

-- --------------------------------------------------------

--
-- Table structure for table `playerstats`
--

CREATE TABLE `playerstats` (
  `playerID` int(11) NOT NULL,
  `games` int(11) NOT NULL DEFAULT 0,
  `gamesStarted` int(11) NOT NULL DEFAULT 0,
  `points` int(11) NOT NULL DEFAULT 0,
  `fgm` int(11) NOT NULL DEFAULT 0,
  `fga` int(11) NOT NULL DEFAULT 0,
  `ftm` int(11) NOT NULL DEFAULT 0,
  `fta` int(11) NOT NULL DEFAULT 0,
  `tpm` int(11) NOT NULL DEFAULT 0,
  `tpa` int(11) NOT NULL DEFAULT 0,
  `assists` int(11) NOT NULL DEFAULT 0,
  `defRebounds` int(11) NOT NULL DEFAULT 0,
  `offRebounds` int(11) NOT NULL DEFAULT 0,
  `steals` int(11) NOT NULL DEFAULT 0,
  `blocks` int(11) NOT NULL DEFAULT 0,
  `turnovers` int(11) NOT NULL DEFAULT 0,
  `personalFouls` int(11) NOT NULL DEFAULT 0,
  `minutesPlayed` int(11) NOT NULL DEFAULT 0,
  `offPossessions` int(11) NOT NULL DEFAULT 0,
  `defPossessions` int(11) NOT NULL DEFAULT 0,
  `teamPointsWhileOnCourt` int(11) NOT NULL DEFAULT 0,
  `teamFgmWhileOnCourt` int(11) NOT NULL DEFAULT 0,
  `pointsAllowedWhileOnCourt` int(11) NOT NULL DEFAULT 0,
  `teamOffReboundsWhileOnCourt` int(11) NOT NULL DEFAULT 0,
  `teamDefReboundsWhileOnCourt` int(11) NOT NULL DEFAULT 0,
  `offReboundsAllowedWhileOnCourt` int(11) NOT NULL DEFAULT 0,
  `defReboundsAllowedWhileOnCourt` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playerstats`
--

INSERT INTO `playerstats` (`playerID`, `games`, `gamesStarted`, `points`, `fgm`, `fga`, `ftm`, `fta`, `tpm`, `tpa`, `assists`, `defRebounds`, `offRebounds`, `steals`, `blocks`, `turnovers`, `personalFouls`, `minutesPlayed`, `offPossessions`, `defPossessions`, `teamPointsWhileOnCourt`, `teamFgmWhileOnCourt`, `pointsAllowedWhileOnCourt`, `teamOffReboundsWhileOnCourt`, `teamDefReboundsWhileOnCourt`, `offReboundsAllowedWhileOnCourt`, `defReboundsAllowedWhileOnCourt`) VALUES
(271, 1, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 1, 0, 0, 0, 0, 0),
(272, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(273, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(274, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(283, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0);

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
(102, 152, 'Mastadons', 'Bryce', 'Woody', 'Syracuse');

-- --------------------------------------------------------

--
-- Table structure for table `teamstats`
--

CREATE TABLE `teamstats` (
  `teamID` int(11) NOT NULL,
  `games` int(11) NOT NULL DEFAULT 0,
  `points` int(11) NOT NULL DEFAULT 0,
  `fgm` int(11) NOT NULL DEFAULT 0,
  `fga` int(11) NOT NULL DEFAULT 0,
  `ftm` int(11) NOT NULL DEFAULT 0,
  `fta` int(11) NOT NULL DEFAULT 0,
  `tpm` int(11) NOT NULL DEFAULT 0,
  `tpa` int(11) NOT NULL DEFAULT 0,
  `assists` int(11) NOT NULL DEFAULT 0,
  `defRebounds` int(11) NOT NULL DEFAULT 0,
  `offRebounds` int(11) NOT NULL DEFAULT 0,
  `steals` int(11) NOT NULL DEFAULT 0,
  `blocks` int(11) NOT NULL DEFAULT 0,
  `turnovers` int(11) NOT NULL DEFAULT 0,
  `fouls` int(11) NOT NULL DEFAULT 0,
  `offPossessions` int(11) NOT NULL DEFAULT 0,
  `defPossessions` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teamstats`
--

INSERT INTO `teamstats` (`teamID`, `games`, `points`, `fgm`, `fga`, `ftm`, `fta`, `tpm`, `tpa`, `assists`, `defRebounds`, `offRebounds`, `steals`, `blocks`, `turnovers`, `fouls`, `offPossessions`, `defPossessions`) VALUES
(102, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`accountID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`gameID`),
  ADD KEY `teamID` (`teamID`);

--
-- Indexes for table `gamestats`
--
ALTER TABLE `gamestats`
  ADD PRIMARY KEY (`gameStatsID`),
  ADD KEY `playerID` (`playerID`),
  ADD KEY `gameID` (`gameID`);

--
-- Indexes for table `opponentstats`
--
ALTER TABLE `opponentstats`
  ADD UNIQUE KEY `teamID_2` (`teamID`),
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
-- Indexes for table `teamstats`
--
ALTER TABLE `teamstats`
  ADD UNIQUE KEY `teamID_2` (`teamID`),
  ADD KEY `teamID` (`teamID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `accountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `gameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `gamestats`
--
ALTER TABLE `gamestats`
  MODIFY `gameStatsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `playerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `teamID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_teamID` FOREIGN KEY (`teamID`) REFERENCES `team` (`teamID`);

--
-- Constraints for table `gamestats`
--
ALTER TABLE `gamestats`
  ADD CONSTRAINT `gamestats_ibfk_1` FOREIGN KEY (`gameID`) REFERENCES `game` (`gameID`),
  ADD CONSTRAINT `gamestats_ibfk_2` FOREIGN KEY (`playerID`) REFERENCES `player` (`playerID`);

--
-- Constraints for table `opponentstats`
--
ALTER TABLE `opponentstats`
  ADD CONSTRAINT `teamID` FOREIGN KEY (`teamID`) REFERENCES `team` (`teamID`);

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

--
-- Constraints for table `teamstats`
--
ALTER TABLE `teamstats`
  ADD CONSTRAINT `teamstats_teamID` FOREIGN KEY (`teamID`) REFERENCES `team` (`teamID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
