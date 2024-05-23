-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 10:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `counselling`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tele` varchar(20) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `email`, `tele`, `userName`, `pass`) VALUES
(1, 'Grace', 'grace@example.com', '1112223333', 'graceadmin', 'adminpass123'),
(2, 'Hank', 'hank@example.com', '4445556666', 'hankadmin', 'adminpass456');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `clientId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `birthDate` date NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`clientId`, `userId`, `birthDate`, `phone`, `address`) VALUES
(1, 2, '1990-01-01', '1234567890', '123 Main St, Anytown, USA');

-- --------------------------------------------------------

--
-- Table structure for table `copingstrategies`
--

CREATE TABLE `copingstrategies` (
  `strategyId` int(11) NOT NULL,
  `clientId` int(11) NOT NULL,
  `strategyDescription` text NOT NULL,
  `dateAssigned` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `copingstrategies`
--

INSERT INTO `copingstrategies` (`strategyId`, `clientId`, `strategyDescription`, `dateAssigned`) VALUES
(1, 1, 'Practice mindfulness meditation daily.', '2024-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `counsellors`
--

CREATE TABLE `counsellors` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `tele` varchar(20) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counsellors`
--

INSERT INTO `counsellors` (`id`, `firstName`, `lastName`, `email`, `country`, `tele`, `userName`, `pass`) VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', 'USA', '1231231234', 'alicejohnson', 'password789'),
(2, 'Bob', 'Brown', 'bob.brown@example.com', 'UK', '3213214321', 'bobbrown', 'password012');

-- --------------------------------------------------------

--
-- Table structure for table `counselors`
--

CREATE TABLE `counselors` (
  `counselorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `specialty` varchar(100) NOT NULL,
  `experienceYears` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counselors`
--

INSERT INTO `counselors` (`counselorId`, `userId`, `specialty`, `experienceYears`) VALUES
(1, 1, 'Family Therapy', 10);

-- --------------------------------------------------------

--
-- Table structure for table `invite`
--

CREATE TABLE `invite` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `tele` varchar(20) NOT NULL,
  `loca` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invite`
--

INSERT INTO `invite` (`id`, `firstName`, `lastName`, `tele`, `loca`) VALUES
(1, 'Charlie', 'Davis', '5556667777', 'New York'),
(2, 'Dana', 'Miller', '4445556666', 'Los Angeles');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthDay` date NOT NULL,
  `country` varchar(50) NOT NULL,
  `tele` varchar(20) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `firstName`, `lastName`, `email`, `birthDay`, `country`, `tele`, `userName`, `pass`) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '1980-01-15', 'USA', '1234567890', 'johndoe', 'password123'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '1990-05-30', 'Canada', '0987654321', 'janesmith', 'password456');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tele` varchar(20) NOT NULL,
  `skype` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `memberId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `firstName`, `age`, `email`, `tele`, `skype`, `createdAt`, `memberId`) VALUES
(1, 'Eve', 25, 'eve@example.com', '3334445555', 'eve_skype', '2024-05-22 12:00:00', 1),
(2, 'Frank', 30, 'frank@example.com', '2223334444', 'frank_skype', '2024-05-22 13:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sessionId` int(11) NOT NULL,
  `clientId` int(11) NOT NULL,
  `counselorId` int(11) NOT NULL,
  `sessionDate` datetime NOT NULL,
  `durationMinutes` int(11) NOT NULL,
  `sessionNotes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sessionId`, `clientId`, `counselorId`, `sessionDate`, `durationMinutes`, `sessionNotes`) VALUES
(1, 1, 1, '2024-05-22 14:00:00', 60, 'Initial consultation session.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','counselor','client') NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `firstName`, `lastName`, `email`, `password`, `role`, `createdAt`) VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', 'password123', 'counselor', '2024-05-22 19:36:12'),
(2, 'Bob', 'Smith', 'bob.smith@example.com', 'password456', 'client', '2024-05-22 19:36:12'),
(3, 'Charlie', 'Brown', 'charlie.brown@example.com', 'password789', 'admin', '2024-05-22 19:36:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`clientId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `copingstrategies`
--
ALTER TABLE `copingstrategies`
  ADD PRIMARY KEY (`strategyId`),
  ADD KEY `clientId` (`clientId`);

--
-- Indexes for table `counsellors`
--
ALTER TABLE `counsellors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counselors`
--
ALTER TABLE `counselors`
  ADD PRIMARY KEY (`counselorId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `invite`
--
ALTER TABLE `invite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `memberId` (`memberId`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sessionId`),
  ADD KEY `clientId` (`clientId`),
  ADD KEY `counselorId` (`counselorId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `clientId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `copingstrategies`
--
ALTER TABLE `copingstrategies`
  MODIFY `strategyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `counsellors`
--
ALTER TABLE `counsellors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `counselors`
--
ALTER TABLE `counselors`
  MODIFY `counselorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invite`
--
ALTER TABLE `invite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `sessionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Constraints for table `copingstrategies`
--
ALTER TABLE `copingstrategies`
  ADD CONSTRAINT `copingstrategies_ibfk_1` FOREIGN KEY (`clientId`) REFERENCES `clients` (`clientId`);

--
-- Constraints for table `counselors`
--
ALTER TABLE `counselors`
  ADD CONSTRAINT `counselors_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`memberId`) REFERENCES `members` (`id`);

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`clientId`) REFERENCES `clients` (`clientId`),
  ADD CONSTRAINT `sessions_ibfk_2` FOREIGN KEY (`counselorId`) REFERENCES `counselors` (`counselorId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
