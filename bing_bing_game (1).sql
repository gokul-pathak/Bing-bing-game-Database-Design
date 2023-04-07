-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2022 at 12:04 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bing_bing_game`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `PlayerUID` int(7) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `Social_account` varchar(60) NOT NULL,
  `Country` varchar(15) NOT NULL,
  `Phone_number` int(15) NOT NULL,
  `Server_ID` int(6) NOT NULL,
  `PlayerName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`PlayerUID`, `Gender`, `Social_account`, `Country`, `Phone_number`, `Server_ID`, `PlayerName`) VALUES
(100001, 'Male', 'mark@yahoo.com', 'US', 1987888, 88881, 'Mark Angel'),
(100002, 'Male', 'ram25@yahoo.com', 'Nepal', 2147483647, 88881, 'Ram Paudel'),
(100003, 'Female', 'sita29@yahoo.com', 'Nepal', 2147483647, 88882, 'Sita Sharma'),
(100004, 'Male', 'abner30@gmail.com', 'USA', 198678885, 88883, 'Abner Trel'),
(100005, 'Female', 'esther98@gmail.com', 'India', 2147483647, 88884, 'Esther Gel'),
(100006, 'Male', 'rahul320@yahoo.com', 'India', 2147483647, 88885, 'Rahul Khan'),
(100007, 'Female', 'elior69@yahoo.com', 'USA', 19756355, 88883, 'Elior Olam'),
(100008, 'Male', 'oroli108@yahoo.com', 'USA', 197566998, 88883, 'Oroli Loizou'),
(100009, 'Female', 'oriya38@yahoo.com', 'Spain', 689555223, 88883, 'Oriya Cohen'),
(100010, 'Female', 'priya63@gmail.com', 'Nepal', 2147483647, 88881, 'Priya GC'),
(100011, 'Male', 'steve33@gmail.com', 'Finland', 2147483647, 88881, 'Steve Rogers'),
(100012, 'male', 'govind393@gmail.com', 'Nepal', 2147483647, 88881, 'Govind Hamal'),
(100013, 'Male', 'wwilson@yahoo.com', 'USA', 14461054, 88883, 'Wade Wilson');

-- --------------------------------------------------------

--
-- Table structure for table `blue_team`
--

CREATE TABLE `blue_team` (
  `Blue_team_ID` int(7) NOT NULL,
  `Player_1UID` int(7) NOT NULL,
  `Player_2UID` int(7) NOT NULL,
  `Player_3UID` int(7) NOT NULL,
  `Player_4UID` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blue_team`
--

INSERT INTO `blue_team` (`Blue_team_ID`, `Player_1UID`, `Player_2UID`, `Player_3UID`, `Player_4UID`) VALUES
(66661, 100001, 100010, 100009, 100006),
(66662, 100002, 100003, 100009, 100006),
(66663, 100010, 100012, 100009, 100011),
(66664, 100003, 100012, 100009, 100007),
(66665, 100005, 100002, 100009, 100007),
(66666, 100004, 100010, 100009, 100007),
(66667, 100001, 100011, 100006, 100004),
(66668, 100002, 100009, 100007, 100013),
(66669, 100005, 100010, 100013, 100004),
(66670, 100005, 100008, 100010, 100007);

-- --------------------------------------------------------

--
-- Table structure for table `blue_team_hero`
--

CREATE TABLE `blue_team_hero` (
  `Blue_team_HeroID` int(7) NOT NULL,
  `Player1_HeroID` int(7) NOT NULL,
  `Player2_HeroID` int(7) NOT NULL,
  `Player3_HeroID` int(7) NOT NULL,
  `Player4_HeroID` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blue_team_hero`
--

INSERT INTO `blue_team_hero` (`Blue_team_HeroID`, `Player1_HeroID`, `Player2_HeroID`, `Player3_HeroID`, `Player4_HeroID`) VALUES
(654722, 11111, 11119, 11119, 11115),
(654723, 11112, 11113, 11119, 11115),
(654724, 11119, 11113, 11119, 11118),
(654725, 11113, 11113, 11119, 11116),
(654726, 11115, 11112, 11119, 11116),
(654727, 11119, 11119, 11119, 11116),
(6547228, 11111, 11118, 11115, 11114),
(6547229, 11112, 11119, 11116, 11114),
(6547230, 11115, 11119, 11114, 11114),
(6547231, 11115, 11117, 11119, 11116);

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `Game_ID` int(7) NOT NULL,
  `Lobby_ID` int(7) NOT NULL,
  `Game_Date` date NOT NULL,
  `Game_Time` time NOT NULL,
  `Game_Result` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`Game_ID`, `Lobby_ID`, `Game_Date`, `Game_Time`, `Game_Result`) VALUES
(33331, 55551, '2021-02-15', '02:30:10', 'Blue Victory'),
(33332, 55552, '2021-02-18', '08:30:10', 'Red Victory'),
(33333, 55557, '2021-02-20', '12:30:10', 'Blue Victory'),
(33334, 55556, '2021-02-23', '10:30:10', 'Blue Victory'),
(33335, 55560, '2021-03-01', '01:30:10', 'Red Victory'),
(33336, 55561, '2021-03-28', '03:30:10', 'Blue Victory'),
(33337, 55553, '2021-04-01', '08:30:10', 'Red Victory');

-- --------------------------------------------------------

--
-- Table structure for table `heros`
--

CREATE TABLE `heros` (
  `Hero_ID` int(7) NOT NULL,
  `Hero_Name` varchar(30) NOT NULL,
  `Hero_Type` varchar(30) NOT NULL,
  `Hero_Power` varchar(40) NOT NULL,
  `Hero_Price` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `heros`
--

INSERT INTO `heros` (`Hero_ID`, `Hero_Name`, `Hero_Type`, `Hero_Power`, `Hero_Price`) VALUES
(11111, 'Dark rose', 'Fighter', 'Full counter', 8),
(11112, 'Aamon', 'Assassin', 'Brust/Magic', 12),
(11113, 'Akai', 'Tank/Support', 'Guard/Crowd control', 20),
(11114, 'Gloo', 'Tank', 'Regen/Control', 20),
(11115, 'Fanny', 'Assassin', 'Chase/Reap', 15),
(11116, 'Franco', 'Tank', 'Initiator/Control', 10),
(11117, 'Gord', 'Mage', 'Poke/Brust', 10),
(11118, 'Hanzo', 'Assassin', 'Poke/Brust', 9),
(11119, 'Hanabi', 'Marksman', 'Reap/Demage', 15);

-- --------------------------------------------------------

--
-- Table structure for table `lobby`
--

CREATE TABLE `lobby` (
  `Lobby_ID` int(7) NOT NULL,
  `Gamemode` varchar(10) NOT NULL,
  `Server_ID` int(6) NOT NULL,
  `Red_team_ID` int(7) NOT NULL,
  `Blue_team_ID` int(7) NOT NULL,
  `Red_team_HeroID` int(7) NOT NULL,
  `Blue_team_HeroID` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lobby`
--

INSERT INTO `lobby` (`Lobby_ID`, `Gamemode`, `Server_ID`, `Red_team_ID`, `Blue_team_ID`, `Red_team_HeroID`, `Blue_team_HeroID`) VALUES
(55551, 'Classic', 88881, 44441, 66661, 751871, 654722),
(55552, 'Arena', 88882, 44442, 66662, 751872, 654723),
(55553, 'Brawl', 88883, 44443, 66663, 751873, 654724),
(55554, 'Classic', 88884, 44444, 66664, 751874, 654725),
(55555, 'Arena', 88885, 44445, 66665, 751875, 654726),
(55556, 'Brawl', 88881, 44446, 66666, 751876, 654727),
(55557, 'Classic', 88885, 44447, 66667, 751877, 6547228),
(55558, 'Classic', 88883, 44448, 66668, 751878, 6547229),
(55560, 'Brawl', 88881, 44449, 66669, 751879, 6547230),
(55561, 'Classic', 88881, 44450, 66670, 751880, 6547231);

-- --------------------------------------------------------

--
-- Table structure for table `player_status`
--

CREATE TABLE `player_status` (
  `Status_ID` int(7) NOT NULL,
  `Player_UID` int(7) NOT NULL,
  `Player_Diamond` int(9) DEFAULT NULL,
  `Player_BP` int(9) DEFAULT NULL,
  `Player_Level` int(3) NOT NULL,
  `Ucharacter_ID` int(7) NOT NULL,
  `Player_Status` varchar(4) NOT NULL,
  `Statics_ID` int(7) NOT NULL,
  `Player_Global_Rank` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `player_status`
--

INSERT INTO `player_status` (`Status_ID`, `Player_UID`, `Player_Diamond`, `Player_BP`, `Player_Level`, `Ucharacter_ID`, `Player_Status`, `Statics_ID`, `Player_Global_Rank`) VALUES
(589811, 100001, 10, 6000, 55, 468111, 'On', 782221, 5),
(589812, 100012, 15, 10000, 60, 468123, 'On', 782227, 9),
(589813, 100007, 9, 2500, 45, 468116, 'Off', 782223, 7),
(589814, 100009, 25, 25000, 75, 468118, 'On', 782225, 1),
(589815, 100006, 10, 7000, 60, 468122, 'Off', 782226, 6),
(589816, 100002, 25, 70000, 70, 468112, 'On', 782224, 8),
(589817, 100003, 500, 90000, 65, 468113, 'Off', 782232, 9),
(589818, 100004, 450, 80000, 55, 468114, 'On', 782229, 2),
(589819, 100008, 500, 90000, 66, 468117, 'On', 782230, 3),
(589820, 100011, 200, 60000, 65, 468119, 'On', 782236, 10);

-- --------------------------------------------------------

--
-- Table structure for table `red_team`
--

CREATE TABLE `red_team` (
  `Red_team_ID` int(7) NOT NULL,
  `Player_1UID` int(7) NOT NULL,
  `Player_2UID` int(7) NOT NULL,
  `Player_3UID` int(7) NOT NULL,
  `Player_4UID` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `red_team`
--

INSERT INTO `red_team` (`Red_team_ID`, `Player_1UID`, `Player_2UID`, `Player_3UID`, `Player_4UID`) VALUES
(44441, 100002, 100011, 100008, 100007),
(44442, 100004, 100005, 100001, 100007),
(44443, 100003, 100004, 100008, 100007),
(44444, 100002, 100011, 100008, 100005),
(44445, 100001, 100003, 100008, 100006),
(44446, 100005, 100011, 100008, 100006),
(44447, 100002, 100007, 100005, 100008),
(44448, 100011, 100010, 100008, 100003),
(44449, 100008, 100012, 100003, 100007),
(44450, 100012, 100003, 100013, 100004);

-- --------------------------------------------------------

--
-- Table structure for table `red_team_hero`
--

CREATE TABLE `red_team_hero` (
  `Red_team_HeroID` int(7) NOT NULL,
  `Player1_HeroID` int(7) NOT NULL,
  `Player2_HeroID` int(7) NOT NULL,
  `Player3_HeroID` int(7) NOT NULL,
  `Player4_HeroID` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `red_team_hero`
--

INSERT INTO `red_team_hero` (`Red_team_HeroID`, `Player1_HeroID`, `Player2_HeroID`, `Player3_HeroID`, `Player4_HeroID`) VALUES
(751871, 11115, 11118, 11117, 11115),
(751872, 11114, 11115, 11111, 11116),
(751873, 11113, 11114, 11117, 11116),
(751874, 11112, 11118, 11117, 11117),
(751875, 11112, 11118, 11117, 11115),
(751876, 11111, 11113, 11117, 11115),
(751877, 11112, 11116, 11115, 11117),
(751878, 11118, 11119, 11117, 11113),
(751879, 11117, 11113, 11113, 11116),
(751880, 11113, 11113, 11114, 11114);

-- --------------------------------------------------------

--
-- Table structure for table `server_t`
--

CREATE TABLE `server_t` (
  `Server_ID` int(6) NOT NULL,
  `Server_Name` varchar(10) NOT NULL,
  `Server_Ping` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_t`
--

INSERT INTO `server_t` (`Server_ID`, `Server_Name`, `Server_Ping`) VALUES
(88881, 'Asia', 50),
(88882, 'KJRP', 275),
(88883, 'America', 150),
(88884, 'North', 300),
(88885, 'East', 250);

-- --------------------------------------------------------

--
-- Table structure for table `skins`
--

CREATE TABLE `skins` (
  `Skin_ID` int(7) NOT NULL,
  `Hero_ID` int(7) NOT NULL,
  `Skin_Name` varchar(30) NOT NULL,
  `Skin_Price` int(4) NOT NULL,
  `Skin_Power` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skins`
--

INSERT INTO `skins` (`Skin_ID`, `Hero_ID`, `Skin_Name`, `Skin_Price`, `Skin_Power`) VALUES
(65, 11111, 'Blood lust set', 11, '10% or more damage'),
(66, 11112, 'Raven', 50, '50% or more damage'),
(67, 11113, 'Ghost', 20, '20% or more damage'),
(68, 11114, 'Christmas', 25, '40% or more damage'),
(69, 11111, 'Dragon Tamer', 20, '29% or more damage'),
(70, 11116, 'Epic', 10, '20% or more damage'),
(71, 11117, 'Painted', 15, '20% or more damage'),
(72, 11118, 'Ragner', 55, '60% or more damage'),
(73, 11111, 'Scared Statue', 100, '90% or more damage'),
(74, 11112, 'Minotaur - Taurus', 50, '60% or more damage');

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE `statics` (
  `Statics_ID` int(7) NOT NULL,
  `Game_ID` int(7) NOT NULL,
  `Player_UID` int(7) NOT NULL,
  `Game_Result` varchar(20) NOT NULL,
  `BP_Earned` int(4) NOT NULL,
  `Diamond_Collected` int(1) NOT NULL,
  `Hero_ID` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `statics`
--

INSERT INTO `statics` (`Statics_ID`, `Game_ID`, `Player_UID`, `Game_Result`, `BP_Earned`, `Diamond_Collected`, `Hero_ID`) VALUES
(782221, 33331, 100001, 'Defeat', 125, 10, 11111),
(782222, 33332, 100002, 'Victory', 500, 16, 11112),
(782223, 33333, 100007, 'Defeat', 100, 10, 11116),
(782224, 33336, 100002, 'Victory', 500, 20, 11112),
(782225, 33337, 100009, 'Defeat', 125, 20, 11119),
(782226, 33334, 100006, 'Defeat', 80, 9, 11116),
(782227, 33336, 100012, 'Defeat', 100, 13, 11113),
(782228, 33337, 100003, 'Victory', 500, 6, 11113),
(782229, 33337, 100004, 'Victory', 450, 3, 11114),
(782230, 33337, 100008, 'Victory', 400, 2, 11117),
(782231, 33337, 100007, 'Victory', 550, 1, 11116),
(782232, 33332, 100003, 'Defeat', 250, 3, 11113),
(782233, 33332, 100002, 'Defeat', 200, 6, 11112),
(782234, 33332, 100009, 'Defeat', 225, 2, 11119),
(782235, 33332, 100006, 'Defeat', 275, 5, 11115),
(782236, 33331, 100011, 'defeat', 500, 2, 11118),
(782237, 33337, 100011, 'defeat', 200, 2, 11118),
(782238, 33333, 100011, 'victory', 550, 3, 11118),
(782239, 33334, 100011, 'defeat', 600, 2, 11119);

-- --------------------------------------------------------

--
-- Table structure for table `user_character`
--

CREATE TABLE `user_character` (
  `uCharacter_ID` int(7) NOT NULL,
  `Player_UID` int(7) NOT NULL,
  `Hero_ID` int(7) NOT NULL,
  `Hero_Skin_ID` int(7) DEFAULT NULL,
  `Hero_level` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_character`
--

INSERT INTO `user_character` (`uCharacter_ID`, `Player_UID`, `Hero_ID`, `Hero_Skin_ID`, `Hero_level`) VALUES
(468111, 100001, 11111, 65, 2),
(468112, 100002, 11112, 66, 1),
(468113, 100003, 11113, 67, 6),
(468114, 100004, 11114, 68, 3),
(468115, 100005, 11115, 69, 5),
(468116, 100007, 11116, 70, 1),
(468117, 100008, 11117, 71, 6),
(468118, 100009, 11119, 73, 2),
(468119, 100011, 11118, 65, 4),
(468120, 100010, 11119, 72, 10),
(468122, 100006, 11115, 69, 2),
(468123, 100012, 11113, 67, 1),
(468124, 100013, 11114, 68, 5),
(468125, 100011, 11114, 68, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`PlayerUID`),
  ADD UNIQUE KEY `PlayerUID` (`PlayerUID`),
  ADD KEY `Server_ID` (`Server_ID`);

--
-- Indexes for table `blue_team`
--
ALTER TABLE `blue_team`
  ADD PRIMARY KEY (`Blue_team_ID`),
  ADD UNIQUE KEY `Blue_team_ID` (`Blue_team_ID`),
  ADD KEY `Player_1UID` (`Player_1UID`),
  ADD KEY `Player_2UID` (`Player_2UID`),
  ADD KEY `Player_3UID` (`Player_3UID`),
  ADD KEY `Player_4UID` (`Player_4UID`);

--
-- Indexes for table `blue_team_hero`
--
ALTER TABLE `blue_team_hero`
  ADD PRIMARY KEY (`Blue_team_HeroID`),
  ADD UNIQUE KEY `Blue_team_HeroID` (`Blue_team_HeroID`),
  ADD KEY `Player1_HeroID` (`Player1_HeroID`),
  ADD KEY `Player2_HeroID` (`Player2_HeroID`),
  ADD KEY `Player3_HeroID` (`Player3_HeroID`),
  ADD KEY `Player4_HeroID` (`Player4_HeroID`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`Game_ID`),
  ADD UNIQUE KEY `Game_ID` (`Game_ID`),
  ADD KEY `Lobby_ID` (`Lobby_ID`);

--
-- Indexes for table `heros`
--
ALTER TABLE `heros`
  ADD PRIMARY KEY (`Hero_ID`),
  ADD UNIQUE KEY `Hero_ID` (`Hero_ID`);

--
-- Indexes for table `lobby`
--
ALTER TABLE `lobby`
  ADD PRIMARY KEY (`Lobby_ID`),
  ADD UNIQUE KEY `Lobby_ID` (`Lobby_ID`),
  ADD KEY `Server_ID` (`Server_ID`),
  ADD KEY `Red_team_ID` (`Red_team_ID`),
  ADD KEY `Blue_team_ID` (`Blue_team_ID`),
  ADD KEY `Blue_team_HeroID` (`Blue_team_HeroID`),
  ADD KEY `Red_team_HeroID` (`Red_team_HeroID`);

--
-- Indexes for table `player_status`
--
ALTER TABLE `player_status`
  ADD PRIMARY KEY (`Status_ID`),
  ADD KEY `Ucharacter_ID` (`Ucharacter_ID`),
  ADD KEY `Statics_ID` (`Statics_ID`),
  ADD KEY `Player_UID` (`Player_UID`);

--
-- Indexes for table `red_team`
--
ALTER TABLE `red_team`
  ADD PRIMARY KEY (`Red_team_ID`),
  ADD UNIQUE KEY `Red_team_ID` (`Red_team_ID`),
  ADD KEY `Player_1UID` (`Player_1UID`),
  ADD KEY `Player_2UID` (`Player_2UID`),
  ADD KEY `Player_3UID` (`Player_3UID`),
  ADD KEY `Player_4UID` (`Player_4UID`);

--
-- Indexes for table `red_team_hero`
--
ALTER TABLE `red_team_hero`
  ADD PRIMARY KEY (`Red_team_HeroID`),
  ADD UNIQUE KEY `Red_team_HeroID` (`Red_team_HeroID`),
  ADD KEY `Player1_HeroID` (`Player1_HeroID`),
  ADD KEY `Player2_HeroID` (`Player2_HeroID`),
  ADD KEY `Player3_HeroID` (`Player3_HeroID`),
  ADD KEY `Player4_HeroID` (`Player4_HeroID`);

--
-- Indexes for table `server_t`
--
ALTER TABLE `server_t`
  ADD PRIMARY KEY (`Server_ID`),
  ADD UNIQUE KEY `Server_ID` (`Server_ID`);

--
-- Indexes for table `skins`
--
ALTER TABLE `skins`
  ADD PRIMARY KEY (`Skin_ID`),
  ADD UNIQUE KEY `Skin_ID` (`Skin_ID`),
  ADD KEY `Hero_ID` (`Hero_ID`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`Statics_ID`),
  ADD UNIQUE KEY `Statics_ID` (`Statics_ID`),
  ADD KEY `Game_ID` (`Game_ID`),
  ADD KEY `Player_UID` (`Player_UID`),
  ADD KEY `Hero_ID` (`Hero_ID`);

--
-- Indexes for table `user_character`
--
ALTER TABLE `user_character`
  ADD PRIMARY KEY (`uCharacter_ID`),
  ADD UNIQUE KEY `uCharacter_ID` (`uCharacter_ID`),
  ADD KEY `Player_UID` (`Player_UID`),
  ADD KEY `Hero_ID` (`Hero_ID`),
  ADD KEY `Hero_Skin_ID` (`Hero_Skin_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `PlayerUID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100014;

--
-- AUTO_INCREMENT for table `blue_team`
--
ALTER TABLE `blue_team`
  MODIFY `Blue_team_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66671;

--
-- AUTO_INCREMENT for table `blue_team_hero`
--
ALTER TABLE `blue_team_hero`
  MODIFY `Blue_team_HeroID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6547232;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `Game_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33338;

--
-- AUTO_INCREMENT for table `heros`
--
ALTER TABLE `heros`
  MODIFY `Hero_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11120;

--
-- AUTO_INCREMENT for table `lobby`
--
ALTER TABLE `lobby`
  MODIFY `Lobby_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55563;

--
-- AUTO_INCREMENT for table `player_status`
--
ALTER TABLE `player_status`
  MODIFY `Status_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=589821;

--
-- AUTO_INCREMENT for table `red_team`
--
ALTER TABLE `red_team`
  MODIFY `Red_team_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44451;

--
-- AUTO_INCREMENT for table `red_team_hero`
--
ALTER TABLE `red_team_hero`
  MODIFY `Red_team_HeroID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=751881;

--
-- AUTO_INCREMENT for table `server_t`
--
ALTER TABLE `server_t`
  MODIFY `Server_ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88888;

--
-- AUTO_INCREMENT for table `skins`
--
ALTER TABLE `skins`
  MODIFY `Skin_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `Statics_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=782240;

--
-- AUTO_INCREMENT for table `user_character`
--
ALTER TABLE `user_character`
  MODIFY `uCharacter_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468126;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`Server_ID`) REFERENCES `server_t` (`Server_ID`);

--
-- Constraints for table `blue_team`
--
ALTER TABLE `blue_team`
  ADD CONSTRAINT `blue_team_ibfk_1` FOREIGN KEY (`Player_1UID`) REFERENCES `account` (`PlayerUID`),
  ADD CONSTRAINT `blue_team_ibfk_2` FOREIGN KEY (`Player_2UID`) REFERENCES `account` (`PlayerUID`),
  ADD CONSTRAINT `blue_team_ibfk_3` FOREIGN KEY (`Player_3UID`) REFERENCES `account` (`PlayerUID`),
  ADD CONSTRAINT `blue_team_ibfk_4` FOREIGN KEY (`Player_4UID`) REFERENCES `account` (`PlayerUID`);

--
-- Constraints for table `blue_team_hero`
--
ALTER TABLE `blue_team_hero`
  ADD CONSTRAINT `blue_team_hero_ibfk_1` FOREIGN KEY (`Player1_HeroID`) REFERENCES `heros` (`Hero_ID`),
  ADD CONSTRAINT `blue_team_hero_ibfk_2` FOREIGN KEY (`Player2_HeroID`) REFERENCES `heros` (`Hero_ID`),
  ADD CONSTRAINT `blue_team_hero_ibfk_3` FOREIGN KEY (`Player3_HeroID`) REFERENCES `heros` (`Hero_ID`),
  ADD CONSTRAINT `blue_team_hero_ibfk_4` FOREIGN KEY (`Player4_HeroID`) REFERENCES `heros` (`Hero_ID`);

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_ibfk_1` FOREIGN KEY (`Lobby_ID`) REFERENCES `lobby` (`Lobby_ID`);

--
-- Constraints for table `lobby`
--
ALTER TABLE `lobby`
  ADD CONSTRAINT `lobby_ibfk_2` FOREIGN KEY (`Server_ID`) REFERENCES `server_t` (`Server_ID`),
  ADD CONSTRAINT `lobby_ibfk_3` FOREIGN KEY (`Red_team_ID`) REFERENCES `red_team` (`Red_team_ID`),
  ADD CONSTRAINT `lobby_ibfk_4` FOREIGN KEY (`Blue_team_ID`) REFERENCES `blue_team` (`Blue_team_ID`),
  ADD CONSTRAINT `lobby_ibfk_5` FOREIGN KEY (`Blue_team_HeroID`) REFERENCES `blue_team_hero` (`Blue_team_HeroID`),
  ADD CONSTRAINT `lobby_ibfk_6` FOREIGN KEY (`Red_team_HeroID`) REFERENCES `red_team_hero` (`Red_team_HeroID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `player_status`
--
ALTER TABLE `player_status`
  ADD CONSTRAINT `player_status_ibfk_1` FOREIGN KEY (`Ucharacter_ID`) REFERENCES `user_character` (`uCharacter_ID`),
  ADD CONSTRAINT `player_status_ibfk_2` FOREIGN KEY (`Statics_ID`) REFERENCES `statics` (`Statics_ID`),
  ADD CONSTRAINT `player_status_ibfk_3` FOREIGN KEY (`Player_UID`) REFERENCES `account` (`PlayerUID`);

--
-- Constraints for table `red_team`
--
ALTER TABLE `red_team`
  ADD CONSTRAINT `red_team_ibfk_1` FOREIGN KEY (`Player_1UID`) REFERENCES `account` (`PlayerUID`),
  ADD CONSTRAINT `red_team_ibfk_2` FOREIGN KEY (`Player_2UID`) REFERENCES `account` (`PlayerUID`),
  ADD CONSTRAINT `red_team_ibfk_3` FOREIGN KEY (`Player_3UID`) REFERENCES `account` (`PlayerUID`),
  ADD CONSTRAINT `red_team_ibfk_4` FOREIGN KEY (`Player_4UID`) REFERENCES `account` (`PlayerUID`);

--
-- Constraints for table `red_team_hero`
--
ALTER TABLE `red_team_hero`
  ADD CONSTRAINT `red_team_hero_ibfk_1` FOREIGN KEY (`Player1_HeroID`) REFERENCES `heros` (`Hero_ID`),
  ADD CONSTRAINT `red_team_hero_ibfk_2` FOREIGN KEY (`Player2_HeroID`) REFERENCES `heros` (`Hero_ID`),
  ADD CONSTRAINT `red_team_hero_ibfk_3` FOREIGN KEY (`Player3_HeroID`) REFERENCES `heros` (`Hero_ID`),
  ADD CONSTRAINT `red_team_hero_ibfk_4` FOREIGN KEY (`Player4_HeroID`) REFERENCES `heros` (`Hero_ID`);

--
-- Constraints for table `skins`
--
ALTER TABLE `skins`
  ADD CONSTRAINT `skins_ibfk_1` FOREIGN KEY (`Hero_ID`) REFERENCES `heros` (`Hero_ID`);

--
-- Constraints for table `statics`
--
ALTER TABLE `statics`
  ADD CONSTRAINT `statics_ibfk_1` FOREIGN KEY (`Game_ID`) REFERENCES `game` (`Game_ID`),
  ADD CONSTRAINT `statics_ibfk_2` FOREIGN KEY (`Player_UID`) REFERENCES `account` (`PlayerUID`),
  ADD CONSTRAINT `statics_ibfk_3` FOREIGN KEY (`Hero_ID`) REFERENCES `heros` (`Hero_ID`);

--
-- Constraints for table `user_character`
--
ALTER TABLE `user_character`
  ADD CONSTRAINT `user_character_ibfk_1` FOREIGN KEY (`Player_UID`) REFERENCES `account` (`PlayerUID`),
  ADD CONSTRAINT `user_character_ibfk_2` FOREIGN KEY (`Hero_ID`) REFERENCES `heros` (`Hero_ID`),
  ADD CONSTRAINT `user_character_ibfk_3` FOREIGN KEY (`Hero_Skin_ID`) REFERENCES `skins` (`Skin_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
