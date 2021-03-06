-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 16, 2013 at 08:47 AM
-- Server version: 5.5.33
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `dulieuvai`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`, `order`) VALUES
(1, 'WOVEN', 0),
(2, 'KNIT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cloth`
--

CREATE TABLE `cloth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `volume` int(11) DEFAULT NULL,
  `size` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `note` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create` date DEFAULT NULL,
  `update` date DEFAULT NULL,
  `Suppliers_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `Type_id` int(11) NOT NULL,
  `Phannhanh_id` int(11) NOT NULL,
  `frame_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_Silks_Suppliers_idx` (`Suppliers_id`),
  KEY `fk_Silks_category1_idx` (`category_id`),
  KEY `fk_Silks_Type1_idx` (`Type_id`),
  KEY `fk_Silks_Phannhanh1_idx` (`Phannhanh_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=368 ;

--
-- Dumping data for table `cloth`
--

INSERT INTO `cloth` (`id`, `code`, `volume`, `size`, `price`, `note`, `image`, `create`, `update`, `Suppliers_id`, `category_id`, `Type_id`, `Phannhanh_id`, `frame_id`) VALUES
(2, 'B003157', 57, '108', 0, 'Mẫu Supplier Gửi', '', '2013-10-30', '0000-00-00', 1, 1, 1, 1, '32'),
(3, 'D005849/TR05', 58, '123', 0, 'Mẫu Supplier Gửi', '', '2013-10-30', '0000-00-00', 1, 1, 1, 1, '1'),
(4, 'D010716/TDG1', 60, '54', 0, 'Mẫu Supplier Gửi', '', '2013-10-30', '0000-00-00', 1, 1, 1, 1, '25,26'),
(5, 'F006365/TDA2', 59, '135', 0, 'Mẫu Supplier Gửi', '', '2013-10-30', '0000-00-00', 1, 1, 1, 4, '31'),
(6, 'D009523/TR59', 57, '177', 0, 'Mẫu Supplier Gửi', '', '2013-10-30', '0000-00-00', 1, 1, 1, 1, '2'),
(7, 'B002762/QR10', 58, '62', 0, 'Mẫu Supplier Gửi', '', '2013-10-30', '0000-00-00', 1, 1, 1, 1, '38'),
(8, 'D010404/EP49', 55, '51', 0, 'Mẫu Supplier Gửi', '', '2013-10-30', '0000-00-00', 1, 1, 3, 1, '26,51'),
(9, 'B000756/PP37', 57, '125', 0, 'Mẫu Supplier Gửi', '', '2013-10-30', '0000-00-00', 1, 1, 3, 1, '29'),
(10, 'T001048/PW78', 56, '143', 0, 'Mẫu Supplier Gửi', '', '2013-10-30', '0000-00-00', 1, 1, 3, 1, '35'),
(11, 'B003366/PPBX', 57, '120', 0, 'Mẫu Supplier Gửi', '', '2013-10-30', '0000-00-00', 1, 1, 3, 1, '34'),
(12, 'D011811/AD39', 54, '95', 0, 'Mẫu Supplier Gửi', '', '2013-10-30', '0000-00-00', 1, 1, 2, 1, '25,26'),
(13, 'D011724/AP56', 56, '89', 0, 'Mẫu Supplier Gửi', '', '2013-10-30', '0000-00-00', 1, 1, 2, 1, '25,26'),
(14, 'B002491/AD17', 52, '277', 0, 'Mẫu Supplier Gửi', '', '2013-10-30', '0000-00-00', 1, 1, 2, 3, '3'),
(16, 'B002291/CD16', 58, '365', 0, 'Mẫu Supplier Gửi', '', '2013-10-30', '0000-00-00', 1, 1, 2, 3, '3'),
(18, 'B003436/AP13', 54, '280', 0, 'Mẫu Supplier Gửi', '', '2013-10-30', '0000-00-00', 1, 1, 2, 3, '3'),
(20, 'B001968/TAE8', 58, '297', 0, 'Mẫu Supplier Gửi', '', '2013-10-30', '0000-00-00', 1, 1, 2, 3, '3'),
(22, 'CHE6078', 57, '72', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 2, 1, '27'),
(23, 'CHOD5956', 56, '150', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 2, 1, '27'),
(24, 'COL5955', 56, '195', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 2, 1, '27'),
(25, 'COD5922', 63, '166', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 2, 1, '27'),
(26, 'CHOE5920', 63, '174', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 2, 1, '27'),
(27, 'COD5923', 54, '151', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 2, 1, '27'),
(28, 'COB5919', 62, '185', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 2, 1, '50,26'),
(29, 'COE5781', 54, '190', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 2, 1, '26'),
(30, 'HOE6066', 55, '119', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 2, 1, '26'),
(31, 'HB5915-R', 58, '97', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 2, 1, '26'),
(32, 'CHE 5727', 54, '88', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 2, 1, '26,64,54'),
(33, 'CHD 5736', 54, '80', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 2, 1, '26,64,54'),
(34, 'CHB 5637', 55, '70', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 2, 1, '26,64,30'),
(35, 'HE6071-S', 58, '103', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26'),
(36, 'HE5882', 58, '80', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26'),
(37, 'HE5912', 58, '118', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26'),
(38, 'HE5913', 58, '174', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26'),
(39, 'HD5916', 58, '105', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26'),
(40, 'HE5917', 58, '134', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26'),
(41, 'HD6001', 56, '134', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26'),
(42, 'HE6000', 58, '135', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26'),
(43, 'HL5999', 53, '124', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26'),
(44, 'HL5995', 53, '126', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26'),
(45, 'HD5997', 53, '127', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26'),
(46, 'HD5998', 58, '117', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26'),
(47, 'HL6002', 56, '137', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26'),
(48, 'HB5996', 53, '130', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26'),
(49, 'HE5993', 53, '129', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26'),
(50, 'HE 3669', 57, '64', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26,43,4'),
(51, 'HE 5738-M', 54, '98', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26,64,56'),
(52, 'HE 3113', 54, '102', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26,64,56'),
(53, 'HE 3756', 57, '63', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26,41'),
(54, 'HB 5866', 59, '29', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26,41'),
(55, 'HE 5163', 59, '41', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26,41'),
(56, 'HB 5161', 56, '50', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26,45'),
(57, 'HE 3753', 58, '50', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26,42'),
(58, 'HB 5893-R', 58, '53', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26,44'),
(59, 'HB 5892-R', 58, '58', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '10'),
(60, 'HB 5896-R', 56, '46', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '26,43'),
(61, 'HD 5895-R', 57, '49', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 3, 1, '10'),
(62, 'CE3603', 55, '87', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '6'),
(63, 'CE099-1', 57, '117', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '28,27'),
(64, 'CE283', 57, '108', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '27'),
(65, 'CE2529', 56, '266', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26'),
(66, 'CB2528', 57, '164', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26'),
(67, 'CB5586-S', 54, '86', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,64,56'),
(68, 'CD 5721', 54, '40', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,48'),
(69, 'CD 5725', 54, '44', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,47'),
(70, 'CD 5722', 55, '70', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,47'),
(71, 'CB 5729', 54, '62', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,64,57'),
(72, 'HB 3872', 54, '104', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,64,56'),
(73, 'CB 5730', 54, '73', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,64,57'),
(74, 'CD 5853', 54, '91', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,64,56'),
(75, 'CB 5090', 59, '38', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,41'),
(76, 'CB 3667', 58, '38', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,45'),
(77, 'CE 3637', 57, '33', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,41'),
(78, 'CE 5018', 58, '49', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,43'),
(79, 'CD 5856', 54, '90', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,64,56'),
(80, 'CB5887', 54, '85', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '30'),
(81, 'CD 5732', 54, '82', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,64,56'),
(82, 'CE 5888', 54, '85', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,64,56'),
(83, 'CL 5890', 54, '87', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,64,56'),
(84, 'CB 5855', 54, '99', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,64,56'),
(85, 'CL 5890', 54, '95', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,64,56'),
(86, 'CD 5817', 54, '93', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-30', '0000-00-00', 2, 1, 1, 1, '26,64,56'),
(87, 'CE3637', 57, '33', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-31', '0000-00-00', 2, 1, 1, 1, '26,52'),
(88, 'HE6179', 60, '55', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-31', '0000-00-00', 2, 1, 1, 1, '65,53,63'),
(89, 'CB6176', 60, '36', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-31', '0000-00-00', 2, 1, 1, 1, '26,49,452'),
(90, 'CB6180', 56, '48', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-31', '0000-00-00', 2, 1, 1, 1, '11'),
(91, 'HB6177', 56, '55', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-31', '0000-00-00', 2, 1, 3, 1, '26,53,63'),
(92, 'HB6170', 57, '62', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-31', '0000-00-00', 2, 1, 3, 1, '26,53'),
(93, 'HE5160', 56, '48', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-31', '0000-00-00', 2, 1, 3, 1, '26,67,52'),
(94, 'HE6178-R', 58, '70', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-31', '0000-00-00', 2, 1, 3, 1, '11'),
(95, 'HE3669', 57, '64', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-31', '0000-00-00', 2, 1, 3, 1, '26,53'),
(96, 'HE6175', 58, '69', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-31', '0000-00-00', 2, 1, 2, 1, '26,53,63'),
(97, 'COD5519', 61, '186', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-31', '0000-00-00', 2, 1, 2, 1, '66,27'),
(98, 'W,HOE4108', 54, '131', 0, 'Mẫu từ Expo ShangHai', '', '2013-10-31', '0000-00-00', 2, 1, 2, 1, '25'),
(99, '00501-10486', 73, '245', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 5, '20'),
(100, '00216-10603', 60, '222', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 5, '4'),
(101, '00206-10541', 60, '310', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 2, '24'),
(102, '00216-10599', 58, '190', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 5, '4'),
(103, '00208-10572', 80, '272', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 5, '4'),
(104, '00402-10133', 63, '327', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 5, '4'),
(105, '00207-10593', 63, '181', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '20'),
(106, '00216-10120', 60, '235', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '20'),
(107, 'HT13014', 60, '251', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(108, '00207-10590', 62, '265', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '20'),
(109, 'HT1308', 58, '286', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(110, '00207-10564', 63, '314', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(111, '00216-10115', 65, '331', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 2, '24'),
(112, '00207-10557', 60, '334', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(113, '00216-10128', 58, '344', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 2, '24'),
(114, '00216-10116', 65, '369', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 2, '24'),
(115, '00207-10592', 63, '294', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 2, '24'),
(116, 'HT13010', 62, '292', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(117, 'HT13009', 60, '291', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(118, '00216-10108', 63, '268', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(119, '00202-10574', 67, '253', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 2, '24'),
(120, '00216-10114', 62, '225', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(121, '00202-10578', 60, '223', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(122, '00207-10580', 61, '162', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(123, '00402-10124', 69, '345', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '4'),
(124, '00402-10124', 69, '345', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '4'),
(125, '00216-10103', 67, '340', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '4'),
(126, '00605-10492', 61, '322', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '4'),
(127, '00209-10544', 81, '293', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 2, '24'),
(128, '00216-10106', 74, '267', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '20'),
(129, '00605-10455', 62, '261', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '4'),
(130, '00402-10123', 69, '250', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 2, '24'),
(131, '00402-10123', 69, '250', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 2, '24'),
(132, '00402-10122', 69, '245', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 2, '24'),
(133, '00402-10122', 69, '245', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 2, '24'),
(134, '00601-10490', 61, '261', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 2, '24'),
(135, '00207-10507', 59, '135', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(136, '00402-10139', 58, '420', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(137, '00402-10141', 62, '383', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(138, '00216-10598', 62, '367', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(139, '00216-10123', 61, '366', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(140, '00216-10107', 65, '355', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 2, '24'),
(141, '00216-10109', 59, '345', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(142, '00216-10604', 60, '343', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '24'),
(143, '00216-10121', 62, '327', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(144, '00207-10597', 58, '319', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(145, '00216-10605', 61, '316', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 2, '24'),
(146, 'HT13015', 61, '305', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(147, 'HT13004', 59, '300', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(148, '00216-10122', 60, '300', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '5'),
(149, '00216-10600', 63, '205', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '4'),
(150, '00216-10127', 60, '250', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '20'),
(151, '00216-10125', 61, '254', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '4'),
(152, '00605-10477', 79, '250', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '4'),
(153, '00601-10491', 60, '262', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '20'),
(154, '00402-10127', 69, '272', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 2, '24'),
(155, '00216-10601', 71, '272', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 2, '24'),
(156, '00402-10129', 67, '280', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 2, '24'),
(157, '00208-10594', 57, '289', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 2, '24'),
(158, '00402-10131', 60, '306', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '4'),
(159, '00216-10124', 64, '307', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '4'),
(160, '00402-10126', 61, '308', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '4'),
(161, '00601-10489', 60, '363', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '20'),
(162, '00402-10132', 60, '401', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '20'),
(163, '00601-10494', 156, '314', 0, 'Mẫu Supplier Gửi', '', '2013-10-31', '0000-00-00', 3, 2, 2, 6, '14'),
(164, '00605-10487', 205, '311', 0, 'Mẫu Supplier Gửi', '', '2013-10-31', '0000-00-00', 3, 2, 3, 6, '24,20'),
(165, '00605-10486', 202, '267', 0, 'Mẫu Supplier Gửi', '', '0000-00-00', '0000-00-00', 3, 2, 3, 6, '24'),
(166, '00605-10485', 156, '256', 0, 'Mẫu Supplier Gửi', '', '2013-10-31', '0000-00-00', 3, 2, 3, 6, '24'),
(167, '00114-11005', 161, '241', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 6, '24'),
(168, '00606-10493', 153, '227', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 6, '24'),
(169, '00602-10483', 153, '221', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 6, '61,14'),
(170, '00602-10484', 160, '218', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 6, '61,14'),
(171, '00114-11006', 155, '215', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 6, '24'),
(172, '00209-10543', 174, '205', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 6, '24'),
(173, '00501-10487', 195, '201', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 6, '24'),
(174, '00106-10983', 162, '189', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 6, '24'),
(175, '00501-10489', 175, '180', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '16'),
(176, '00114-10923', 163, '177', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 6, '20'),
(177, '00101-10988', 151, '173', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 6, '61'),
(178, '00101-10997', 192, '172', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '36'),
(179, '00101-10995', 161, '169', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '58'),
(180, '00101-10994', 158, '163', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '61,62'),
(181, '00101-10996', 163, '161', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '16'),
(182, '00101-10998', 162, '176', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '61'),
(183, '00101-10987', 169, '160', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '61'),
(184, '00501-10490', 211, '159', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '39'),
(185, '00602-10500', 170, '158', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '39'),
(186, '00101-10939', 180, '157', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '7'),
(187, '00111-11009', 172, '155', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '12'),
(188, '00101-10990', 164, '154', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '7'),
(189, '00101-10992', 173, '153', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '14,15'),
(190, '00501-10488', 114, '149', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '24'),
(191, '00101-10987', 162, '145', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '16'),
(192, '00114-11007', 170, '145', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '12'),
(193, '00101-10993', 175, '145', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '14'),
(194, '00101-11001', 156, '139', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '14,7'),
(195, '00101-11004', 160, '137', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '13'),
(196, '00602-10496', 166, '136', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '7'),
(197, '00101-10999', 217, '135', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '7'),
(198, '00101-10957', 175, '124', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '16'),
(199, '00101-11011', 159, '124', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '17'),
(200, '00101-10991', 157, '120', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '23'),
(201, '00101-10938', 175, '116', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '39'),
(202, '00101-11000', 157, '103', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '8'),
(203, '00101-11002', 150, '111', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '40'),
(204, '00601-10495', 161, '297', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 6, '20,7'),
(205, '00605-10478', 186, '278', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 6, '37'),
(206, '00601-10452', 159, '265', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 6, '14'),
(207, '00601-10463', 163, '253', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 6, '16'),
(208, '00216-10126', 175, '243', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '39'),
(209, '00101-10978', 174, '242', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '20,22'),
(210, '00209-10568', 142, '242', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 6, '14'),
(211, '00501-10477', 206, '229', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 3, 6, '24'),
(212, '00501-10473', 161, '229', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 6, '14'),
(213, '00602-10480', 159, '220', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 6, '9'),
(214, '00501-10485', 173, '202', 0, 'Mẫu Supplier Gửi', '', '2013-01-11', '0000-00-00', 3, 2, 2, 6, '18'),
(215, 'SL-70175', 160, '270', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 2, '5'),
(216, 'SL-72293', 155, '160', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 2, '4'),
(217, 'SL--72492', 155, '140', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 2, '5'),
(218, 'SL-69244', 155, '200', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 2, '5'),
(219, 'SL-72492', 155, '320', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 2, '5'),
(220, 'SL-72292', 155, '180', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 2, '4'),
(221, 'SL-72012', 155, '255', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 2, '5'),
(222, 'SL-72339', 155, '220', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 2, '5'),
(223, 'SL-72338', 155, '220', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 2, '5'),
(224, 'SL-72182', 155, '260', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 5, '5'),
(225, 'SL-71319', 155, '240', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 2, '5'),
(226, 'SL-71106', 155, '280', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 2, '5'),
(227, 'SL-67871', 158, '275', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 5, '4'),
(228, 'SL-68597', 155, '380', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 5, '5'),
(229, 'SL-67825', 155, '300', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 5, '5'),
(230, 'SL-68638', 160, '260', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 2, 5, '4'),
(231, 'SL-67755', 155, '300', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 5, '5'),
(232, 'HL-65709', 153, '280', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 5, '4,2'),
(233, 'SL-67638', 155, '280', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 5, '5'),
(234, 'SL-68636', 155, '200', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 5, '5,2'),
(235, 'SL-68642', 155, '300', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 5, '5'),
(236, 'SL-67518-1', 155, '270', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 5, '4'),
(237, 'FS-68506', 155, '200', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 4, 2, 3, 2, '24'),
(238, '00605-10476', 180, '202', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 3, 2, 3, 5, '4'),
(239, '00605-10479', 170, '201', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 3, 2, 3, 7, '24'),
(240, '00501-10480', 212, '195', 0, 'Mẫu từ Expo ShangHai', '', '2013-01-11', '0000-00-00', 3, 2, 3, 8, '19'),
(241, 'B001565/QP03', 57, '140', 0, 'Mẫu Supplier Gửi', '', '2013-10-30', '0000-00-00', 1, 1, 1, 1, '33');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `frame`
--

CREATE TABLE `frame` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frame_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=68 ;

--
-- Dumping data for table `frame`
--

INSERT INTO `frame` (`id`, `frame_name`, `order`) VALUES
(2, 'Anti-Mosquito+P/D', 0),
(3, 'Face Fabric : W/R - Back Fabric : Wicking', 0),
(4, 'Cào lông 1 mặt', 0),
(5, 'Cào lông 2 mặt', 0),
(6, 'CRINKLE+WICKING ', 0),
(7, 'Dệt kỹ thuật số', 0),
(8, 'Dệt sợi ngang', 0),
(9, 'Diamond', 0),
(10, 'DWR + CIRE Down Proof(90/10)9 (Pass Rain Test', 0),
(11, 'DWR+Hot Cire Down Proof 80/20 (Pass Rain Test', 0),
(12, 'Hạt mè', 0),
(13, 'Hạt mè lớn', 0),
(14, 'Interlock ', 0),
(15, 'Bird eyes', 0),
(16, 'JK', 0),
(17, 'JK+ Dạ quang 1 mặt', 0),
(18, 'Lay hạt back side', 0),
(19, 'Lưới dày', 0),
(20, 'Melance', 0),
(21, 'Dệt kỹ thuật', 0),
(22, 'Dệt thẳng Knit', 0),
(23, 'Mesh', 0),
(24, 'Normal', 0),
(25, 'P/D', 0),
(26, ' W/R', 0),
(27, 'WICKING', 0),
(28, 'PEACH', 0),
(29, 'PES Breathable Membrane 2-Layer W/P:10000m.m ', 0),
(30, 'Print 2.5 Layer With Silver Printing W/R+W/P ', 0),
(31, 'PU Clear W/P:5000m.m MVP:5.000g/m².D+Embossin', 0),
(32, 'PU Lamination+Tricot 3-Layer W/P:10.000m.m MV', 0),
(33, 'PU Milky Breathable Membrane 2-Layer W/P:10.0', 0),
(34, 'PU Milky Breathable membrane 2-Layer W/P:15.0', 0),
(35, 'Pu Milky Lamination W/P:20.000mm MVP:20.000g/', 0),
(36, 'Sọc', 0),
(37, 'T/C', 0),
(38, 'TPU BreathableMembrane2-Layer,W/P:8.000m.m+Te', 0),
(39, 'Vảy cá', 0),
(40, 'Vây cá dạng lưới', 0),
(41, 'CIRE Down Proof', 0),
(42, 'CIRE Down Proof ( 80/20)', 0),
(43, 'CIRE Down Proof ( 90/10)', 0),
(44, 'Clear Acryl Coating', 0),
(45, 'Hot Cire', 0),
(46, 'Hot Cire Down Proof 80/20 ( Pass Rain Test)', 0),
(47, 'PU Clear Coating 500m.m/M.V.T.2000g/m² 24h Hy', 0),
(48, 'PU Clear Coating 600m.m/M.V.T.2000g/m² 24h Hy', 0),
(49, 'Anti-Static', 0),
(50, 'CRINKLE', 0),
(51, 'Heavy Cire', 0),
(52, 'Hot Cire(Down Proof 90/10)', 0),
(53, 'Hot Cire(Down Proof 80/20)', 0),
(54, 'Dot PU Milky Coating  3000m.m./M.V.T. 3000g/m', 0),
(55, ' Dot PU Milky Lamination 10000M.M/M.V.T/10000', 0),
(56, 'Dot PU Milky Lamination 10000M.M/M.V.T/10000g', 0),
(57, 'Dot PU Milky Lamination 30000M.M/M.V.T/30000g', 0),
(58, 'WEB', 0),
(59, 'WICKING', 0),
(60, 'Wicking +C/K ', 0),
(61, 'YarnDye', 0),
(62, 'Hình chữ nhật', 0),
(63, '( Pass Rain Test)', 0),
(64, 'W/P', 0),
(65, 'DWR', 0),
(66, 'C/K', 0),
(67, 'Printing', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phannhanh`
--

CREATE TABLE `phannhanh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pn_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `phannhanh`
--

INSERT INTO `phannhanh` (`id`, `pn_name`, `order`) VALUES
(1, 'Gia Công', 0),
(2, 'Fleece + Print', 0),
(3, 'Biface', 0),
(4, 'Print', 0),
(5, 'Fleece', 0),
(6, 'Hỗn Hợp', 0),
(7, 'Normal', 0),
(8, 'Mesh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sup_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `type_name`, `order`) VALUES
(1, '100% Nylon', 0),
(2, 'N/T/S', 0),
(3, '100% Poly', 0);