-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2023 at 04:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pavan`
--

-- --------------------------------------------------------

--
-- Table structure for table `billrequest`
--

CREATE TABLE `billrequest` (
  `S_NO` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Amount` varchar(255) NOT NULL,
  `Attachments` varchar(255) NOT NULL,
  `Employee_ID` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billrequest`
--

INSERT INTO `billrequest` (`S_NO`, `Date`, `Name`, `Amount`, `Attachments`, `Employee_ID`, `Status`) VALUES
(1, '2023-10-31', 'Pavan', '2500', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAB4AAAAQ4CAYAAADo08FDAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAEnQAABJ0Ad5mH3gAAP+lSURBVHhe7J0HgBzFlfff5M1B2lXOOSKiyDmZcNgYsLHPAZ/POeB8588+h7PvbIMDzueMbWyDCQYHTM4IBAKEMiiHlbQ57+zk770KMz2zkzZI2pX+v9m3X', 'A1', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `S_NO` int(255) NOT NULL,
  `Employee_ID` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` varchar(255) NOT NULL,
  `Manager_ID` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `mobile` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`S_NO`, `Employee_ID`, `Name`, `Password`, `Role`, `Manager_ID`, `Email`, `mobile`) VALUES
(1, 'A1', 'Pavan', 'Pavan@9381', 'Manager', '1234', 'pavankumar167066@gmail.com', 9381861993),
(2, 'A2', 'Kumar', 'Kumar@123', 'Employee', '1234', 'pk3970@gmail.com', 9908063699),
(3, 'A3', 'Eswar', 'Eswar@143', 'Accountant', '1234', 'saieswarreddy5166@gmail.com', 8328640221);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billrequest`
--
ALTER TABLE `billrequest`
  ADD PRIMARY KEY (`S_NO`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`S_NO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billrequest`
--
ALTER TABLE `billrequest`
  MODIFY `S_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
