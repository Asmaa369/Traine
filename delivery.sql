-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13 مارس 2024 الساعة 00:16
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delivery`
--

-- --------------------------------------------------------

--
-- بنية الجدول `driver`
--

CREATE TABLE `driver` (
  `id` int(50) NOT NULL,
  `driverID` varchar(10) DEFAULT NULL,
  `driverName` varchar(50) DEFAULT NULL,
  `phoneNo` varchar(50) DEFAULT NULL,
  `driverLicense` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `driver`
--

INSERT INTO `driver` (`id`, `driverID`, `driverName`, `phoneNo`, `driverLicense`) VALUES
(1, '123456', 'Mohammed', '00112233', 'xx112233'),
(2, 'xxxxxxxx1', 'Ahmed', '00000000', '00000000'),
(3, 'xxxxxxxx2', 'Ahmed', '00000000', '00000000'),
(4, 'xxxxxxxx2', 'Ahmed', '00000000', '00000000'),
(5, 'xxxxxxxx2', 'Ahmed', '00000000', '00000000'),
(6, 'xxxxxxxx2', 'Ahmed', '00000000', '00000000'),
(7, 'xxxxxxxx2', 'Ahmed', '00000000', '00000000'),
(8, 'xxxxxxxx2', 'Ahmed', '00000000', '00000000'),
(9, 'xxxxxxxx2', 'Ahmed', '00000000', '00000000'),
(10, 'xxxxxxxx2', 'Ahmed', '00000000', '00000000'),
(11, 'xxxxxxxx2', 'Ahmed', '00000000', '00000000'),
(12, 'xxxxxxxx', 'Mohammed1', '00112233', 'xx112233'),
(13, 'xxxxxxxx2', 'Mohammed2', '000000001', '000000001');

-- --------------------------------------------------------

--
-- بنية الجدول `trips`
--

CREATE TABLE `trips` (
  `id` int(50) NOT NULL,
  `tripNo` varchar(10) DEFAULT NULL,
  `busDepartureTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `arrivalTimeToDestination` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tripDestination` varchar(50) DEFAULT NULL,
  `StudentNo` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `trips`
--

INSERT INTO `trips` (`id`, `tripNo`, `busDepartureTime`, `arrivalTimeToDestination`, `tripDestination`, `StudentNo`) VALUES
(1, 'TN 1', '2024-03-12 23:53:00', '2024-03-13 02:56:00', 'Abha', 25),
(2, 'TN 2', '2024-03-12 23:54:00', '2024-03-13 01:56:00', 'Jazan', 22),
(3, 'TN 6', '2024-03-13 00:02:00', '2024-03-13 05:08:00', 'Abha', 15),
(4, 'TN 6', '2024-03-13 00:02:00', '2024-03-13 05:08:00', 'Abha', 15),
(5, 'TN 6', '2024-03-13 00:02:00', '2024-03-13 05:08:00', 'Abha', 15),
(6, 'TN 6', '2024-03-13 00:02:00', '2024-03-13 05:08:00', 'Abha', 15),
(7, 'TN 6', '2024-03-13 00:02:00', '2024-03-13 05:08:00', 'Abha', 15),
(8, 'TN 6', '2024-03-13 00:02:00', '2024-03-13 05:08:00', 'Abha', 15),
(9, 'TN 6', '2024-03-13 00:02:00', '2024-03-13 05:08:00', 'Abha', 15),
(10, 'TN 6', '2024-03-13 00:02:00', '2024-03-13 05:08:00', 'Abha', 15),
(11, 'TN 6', '2024-03-13 00:02:00', '2024-03-13 05:08:00', 'Abha', 15),
(12, 'TN 3', '2024-03-13 00:11:00', '2024-03-13 01:12:00', 'Jazan', 14),
(13, 'TN 4', '2024-03-13 00:14:00', '2024-03-13 14:16:00', 'Madina', 22);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
