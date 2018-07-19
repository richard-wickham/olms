-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2018 at 10:56 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `EmailAddress` varchar(50) NOT NULL,
  `ContactNumber` varchar(15) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `UPassword` varchar(255) NOT NULL,
  `Type` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usponsor`
--

CREATE TABLE IF NOT EXISTS `usponsor` (
  `Occupation` varchar(25) NOT NULL,
  `UserID` int(11) NOT NULL,
  KEY `Occupation` (`Occupation`,`UserID`),
  KEY `UserID` (`UserID`),
  KEY `UserID_2` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ustaff`
--

CREATE TABLE IF NOT EXISTS `ustaff` (
  `EmpNum` varchar(25) NOT NULL,
  `LinkedIn` varchar(50) NOT NULL,
  `GitHub` varchar(50) NOT NULL,
  `UserID` int(11) NOT NULL,
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ustudent`
--

CREATE TABLE IF NOT EXISTS `ustudent` (
  `StudentNumber` varchar(25) NOT NULL,
  `LinkedIn` varchar(50) NOT NULL,
  `GitHub` varchar(50) NOT NULL,
  `Permission` tinyint(1) NOT NULL,
  `UserID` int(11) NOT NULL,
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `usponsor`
--
ALTER TABLE `usponsor`
  ADD CONSTRAINT `usponsor_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `ustaff`
--
ALTER TABLE `ustaff`
  ADD CONSTRAINT `ustaff_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `ustudent`
--
ALTER TABLE `ustudent`
  ADD CONSTRAINT `ustudent_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
