-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2022 at 03:40 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoe`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ID_Item` int(20) NOT NULL,
  `Item_name` varchar(50) NOT NULL,
  `Item_price` int(20) NOT NULL,
  `Item_amount` int(11) NOT NULL,
  `Item_model` varchar(50) NOT NULL,
  `Image_item` varchar(200) NOT NULL,
  `Type_item` varchar(200) NOT NULL,
  `Item_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ID_Item`, `Item_name`, `Item_price`, `Item_amount`, `Item_model`, `Image_item`, `Type_item`, `Item_data`) VALUES
(1, 'Jordan 1 Retro High Off-White Chicago', 490000, 100, 'Jordan', 'Jordan 1 Retro High Off-White Chicago.png', 'Nike', '{\"Brand\":\"Nike\" , \"Item_name\": \"Jordan 1 Retro High Off-White Chicago\" , \"Price\":\"490000 ฿\"}'),
(2, 'Jordan 1 Retro High Off-White White', 390000, 100, 'Jordan', 'Jordan 1 Retro High Off-White White.png', 'Nike', '{\"Brand\":\"Nike\" , \"Item_name\": \"Jordan 1 Retro High Off-White White\" , \"Price\":\"390000 ฿\"}'),
(3, 'Jordan 1 Retro High Off-White University Blue', 72900, 100, 'Jordan', 'Jordan 1 Retro High Off-White University Blue.png', 'Nike', '{\"Brand\":\"Nike\" , \"Item_name\": \"Jordan 1 Retro High Off-White University Blue\" , \"Price\":\"72900 ฿\"}'),
(4, 'Nike Air Force 1 Low G-Dragon Peaceminusone Para-N', 21500, 100, 'Air Force 1', 'Nike Air Force 1 Low G-Dragon Peaceminusone Para-Noise.png', 'Nike', '{\"Brand\":\"Nike\" , \"Item_name\": \"Nike Air Force 1 Low G-Dragon Peaceminusone Para-N\" , \"Price\":\"21500 ฿\"}'),
(5, 'Nike Kwondo 1 G-Dragon Peaceminusone Triple White', 15000, 100, 'Kwondo', 'Nike Kwondo 1 G-Dragon Peaceminusone Triple White.png', 'Nike', '{\"Brand\":\"Nike\" , \"Item_name\": \"Nike Kwondo 1 G-Dragon Peaceminusone Triple White\" , \"Price\":\"15000 ฿\"}'),
(6, 'Yeezy Boost 350 V2 Zebra', 22000, 100, 'Yeezy Boost 350 V2', 'Yeezy Boost 350 V2 Zebra.png', 'Adidas', '{\"Brand\":\"Adidas\" , \"Item_name\": \"Yeezy Boost 350 V2\" , \"Price\":\"22000 ฿\"}'),
(7, 'Yeezy Boost 350 V2 Black Red', 15000, 100, 'Yeezy Boost 350 V2', 'Yeezy Boost 350 V2 Black Red.png', 'Adidas', '{\"Brand\":\"Adidas\" , \"Item_name\": \"Yeezy Boost 350 V2 Black Red\" , \"Price\":\"15000 ฿\"}'),
(8, 'Yeezy Boost 350 V2 Blue Tint', 18000, 100, 'Yeezy Boost 350 V2', 'Yeezy Boost 350 V2 Blue Tint.png', 'Adidas', '{\"Brand\":\"Adidas\" , \"Item_name\": \"Yeezy Boost 350 V2 Blue Tint\" , \"Price\":\"18000 ฿\"}'),
(9, 'Yeezy Wave Runner 700 Solid Grey', 25000, 100, 'Yeezy Wave Runner 700', 'Yeezy Wave Runner 700 Solid Grey.png', 'Adidas', '{\"Brand\":\"Adidas\" , \"Item_name\": \"Yeezy Wave Runner 700 Solid Grey\" , \"Price\":\"25000 ฿\"}'),
(10, 'Adidas ADI2000 Yu-Gi-Oh! Blue Eyes White Dragon', 5000, 100, 'ADI2000', 'Adidas ADI2000 Yu-Gi-Oh! Blue Eyes White Dragon.png', 'Adidas', '{\"Brand\":\"Adidas\" , \"Item_name\": \"Adidas ADI2000 Yu-Gi-Oh! Blue Eyes White Dragon\" , \"Price\":\"5000 ฿\"}'),
(11, 'Adidas ADI2000 Yu-Gi-Oh! Dark Magician', 5000, 100, 'ADI2000', 'Adidas ADI2000 Yu-Gi-Oh! Dark Magician.png', 'Adidas', '{\"Brand\":\"Adidas\" , \"Item_name\": \"Adidas ADI2000 Yu-Gi-Oh! Dark Magician\" , \"Price\":\"5000 ฿\"}'),
(12, 'Nike Air Force 1 Low G-Dragon Peaceminusone Para-N', 21500, 100, 'Air Force 1', 'Nike Air Force 1 Low G-Dragon Peaceminusone Para-Noise 2.0.png', 'Nike', '{\"Brand\":\"Nike\" , \"Item_name\": \"Nike Air Force 1 Low G-Dragon Peaceminusone Para-Noise 2.0\" , \"Price\":\"21500 ฿\"}');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `ID_Item` int(10) NOT NULL,
  `ID_Order` int(10) NOT NULL,
  `ID_User` int(255) NOT NULL,
  `Item_amount` int(255) NOT NULL,
  `Time` datetime NOT NULL DEFAULT current_timestamp(),
  `ID_Receipt` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`ID_Item`, `ID_Order`, `ID_User`, `Item_amount`, `Time`, `ID_Receipt`) VALUES
(8, 197, 1, 4, '2022-12-05 14:11:15', 8),
(9, 198, 1, 13, '2022-12-05 14:11:22', 8),
(6, 200, 1, 2, '2022-12-05 14:14:46', 8),
(10, 201, 1, 8, '2022-12-05 14:17:07', 8),
(3, 202, 2, 7, '2022-12-05 14:22:21', 9),
(4, 203, 2, 2, '2022-12-05 14:22:25', 9),
(10, 204, 2, 1, '2022-12-05 14:22:27', 9),
(2, 205, 2, 2, '2022-12-05 14:22:49', 10),
(8, 206, 2, 3, '2022-12-05 14:22:51', 10),
(6, 208, 2, 1, '2022-12-05 14:25:08', 11),
(1, 211, 2, 2, '2022-12-05 14:26:08', 12),
(9, 212, 2, 1, '2022-12-05 14:32:49', 13),
(7, 213, 1, 4, '2022-12-05 14:33:35', 14),
(11, 214, 1, 6, '2022-12-05 14:34:12', 14),
(3, 215, 3, 1, '2022-12-05 14:40:53', 15),
(9, 216, 3, 1, '2022-12-05 14:40:56', 15),
(1, 217, 3, 1, '2022-12-05 14:41:00', 15),
(3, 218, 5, 8, '2022-12-05 15:03:02', 16),
(9, 219, 5, 2, '2022-12-05 15:03:04', 16),
(1, 220, 5, 4, '2022-12-05 15:03:05', 16),
(8, 221, 5, 1, '2022-12-05 15:04:18', 17),
(4, 222, 5, 2, '2022-12-05 15:04:22', 17),
(10, 223, 5, 3, '2022-12-05 15:04:25', 17),
(12, 226, 5, 1, '2022-12-05 15:07:28', 18),
(11, 227, 5, 2, '2022-12-05 15:07:43', 18),
(1, 228, 1, 4, '2022-12-05 15:09:37', 19),
(3, 229, 1, 1, '2022-12-05 15:09:39', 19),
(3, 230, 1, 1, '2022-12-05 15:23:36', 20),
(4, 231, 1, 1, '2022-12-05 15:23:39', 20),
(1, 232, 1, 1, '2022-12-05 15:23:41', 20),
(1, 233, 1, 1, '2022-12-05 15:23:46', 21),
(10, 234, 1, 1, '2022-12-05 15:23:48', 21),
(12, 235, 1, 1, '2022-12-05 15:23:51', 21),
(3, 236, 1, 1, '2022-12-05 15:23:54', 21),
(10, 237, 1, 1, '2022-12-05 15:28:54', 22),
(2, 238, 1, 1, '2022-12-05 15:36:05', 22);

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `ID_Receipt` int(20) NOT NULL,
  `Total_price` int(255) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `ID_User` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`ID_Receipt`, `Total_price`, `Status`, `ID_User`) VALUES
(9, 99400, 'confired', 2),
(10, 408000, 'confired', 2),
(11, 22000, 'confired', 2),
(12, 490000, 'confired', 2),
(13, 25000, 'confired', 2),
(14, 35000, 'confired', 1),
(15, 0, 'order', 3),
(16, 587900, 'confired', 5),
(17, 44500, 'confired', 5),
(18, 0, 'order', 5),
(19, 1052900, 'confired', 1),
(20, 584400, 'confired', 1),
(21, 589400, 'confired', 1),
(22, 0, 'order', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID_User` int(10) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `email` varchar(30) NOT NULL,
  `Tel` varchar(10) NOT NULL,
  `Fullname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID_User`, `Username`, `Password`, `email`, `Tel`, `Fullname`) VALUES
(1, 'Wichan', '111111', 't@hotmail.com', '0812345678', 'Tiktokza007'),
(2, 'Thongtong', '1234567', 'p@hotmail.com', '0912345678', 'Por'),
(3, 'Bobady', '1234567', 'b@hotmail.com', '0912345743', 'Bow'),
(4, 'zeakhinet', '123456', 'z@hotmail.com', '0846694215', 'Jump'),
(5, 'test1', '111111', 't22@hotmail.com', '0846694215', 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ID_Item`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`ID_Order`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`ID_Receipt`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID_User`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ID_Item` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `ID_Order` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `ID_Receipt` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID_User` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
