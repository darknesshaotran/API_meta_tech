-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 04:00 AM
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
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_role` int(11) NOT NULL,
  `forgot_password_token` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `email`, `password`, `id_role`, `forgot_password_token`, `createdAt`, `updatedAt`) VALUES
(2, 'darknessclmm@gmail.com', 'cc2d80098f6cb0843e2b11315f3994c0a0fe05842a0a5e018d6b084566ee03cc', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySUQiOjIsInR5cGUiOiJmb3Jnb3RQYXNzd29yZFRva2VuIiwiaWF0IjoxNzA0ODk4NDIyLCJleHAiOjE3MDUwNzEyMjJ9.D9kqhnlcr5-DQYi-_T-kFp_SPjE-rD5XBz1_KYwNzR8', '2023-10-27 08:51:32', '2024-01-12 02:23:14'),
(5, 'hothanhhungtran@gmail.com', 'cc2d80098f6cb0843e2b11315f3994c0a0fe05842a0a5e018d6b084566ee03cc', 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySUQiOjUsInR5cGUiOiJmb3Jnb3RQYXNzd29yZFRva2VuIiwiaWF0IjoxNjk4ODI0NTExLCJleHAiOjE2OTg5OTczMTF9.kvCnD6GMZhhe5qVufCjY0Wri3QljsUYRwEkYF5ZiwSk', '2023-11-01 07:35:08', '2023-11-01 07:41:51'),
(6, 'hothanhhungtran1@gmail.com', 'cc2d80098f6cb0843e2b11315f3994c0a0fe05842a0a5e018d6b084566ee03cc', 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySUQiOjYsInR5cGUiOiJmb3Jnb3RQYXNzd29yZFRva2VuIiwiaWF0IjoxNjk4ODI0Mzk3LCJleHAiOjE2OTg5OTcxOTd9.L37kBCUkfexxYwHE1IB9GufnyrJi_lTZW_6hSIH4JvM', '2023-11-01 07:36:30', '2023-11-01 07:39:57'),
(7, 'darknessclmm1@gmail.com', 'cc2d80098f6cb0843e2b11315f3994c0a0fe05842a0a5e018d6b084566ee03cc', 2, NULL, '2023-11-03 07:00:41', '2023-11-03 07:00:41'),
(8, 'manhddt2508@gmail.com', 'cc2d80098f6cb0843e2b11315f3994c0a0fe05842a0a5e018d6b084566ee03cc', 2, NULL, '2023-11-30 11:07:40', '2023-11-30 11:07:40'),
(9, 'manhddt111@gmail.com', 'cc2d80098f6cb0843e2b11315f3994c0a0fe05842a0a5e018d6b084566ee03cc', 2, NULL, '2023-11-30 16:23:49', '2023-11-30 16:23:49'),
(10, 'manhddt250811@gm1ail.com', 'cc2d80098f6cb0843e2b11315f3994c0a0fe05842a0a5e018d6b084566ee03cc', 2, NULL, '2023-12-01 06:18:18', '2023-12-01 06:18:18'),
(11, 'manhddt1234@gmail.com', 'cc2d80098f6cb0843e2b11315f3994c0a0fe05842a0a5e018d6b084566ee03cc', 2, NULL, '2023-12-01 06:24:14', '2023-12-01 06:24:14'),
(12, 'manhddt12345@gmail.com', 'cc2d80098f6cb0843e2b11315f3994c0a0fe05842a0a5e018d6b084566ee03cc', 2, NULL, '2023-12-01 09:20:26', '2023-12-01 09:20:26'),
(13, 'manhddt250802@gmail.com', '2c91440bfacd977e1a27d76d53e199521669b68a06c6e6e07edd17a952f978ff', 2, NULL, '2023-12-08 09:32:21', '2023-12-08 09:32:21'),
(14, 'darknessclmm3@gmail.com', 'cc2d80098f6cb0843e2b11315f3994c0a0fe05842a0a5e018d6b084566ee03cc', 2, NULL, '2024-01-12 02:21:55', '2024-01-12 02:21:55');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `createAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `id_account`, `createAt`, `createdAt`, `updatedAt`) VALUES
(1, 2, '2023-10-27 08:51:32', '2023-10-27 08:51:32', '2023-10-27 08:51:32'),
(4, 5, '2023-11-01 07:35:08', '2023-11-01 07:35:08', '2023-11-01 07:35:08'),
(5, 6, '2023-11-01 07:36:30', '2023-11-01 07:36:30', '2023-11-01 07:36:30'),
(6, 7, '2023-11-03 07:00:41', '2023-11-03 07:00:41', '2023-11-03 07:00:41'),
(7, 8, '2023-11-30 11:07:41', '2023-11-30 11:07:41', '2023-11-30 11:07:41'),
(8, 9, '2023-11-30 16:23:49', '2023-11-30 16:23:49', '2023-11-30 16:23:49'),
(9, 10, '2023-12-01 06:18:18', '2023-12-01 06:18:18', '2023-12-01 06:18:18'),
(10, 11, '2023-12-01 06:24:14', '2023-12-01 06:24:14', '2023-12-01 06:24:14'),
(11, 12, '2023-12-01 09:20:26', '2023-12-01 09:20:26', '2023-12-01 09:20:26'),
(12, 13, '2023-12-08 09:32:21', '2023-12-08 09:32:21', '2023-12-08 09:32:21'),
(13, 14, '2024-01-12 02:21:55', '2024-01-12 02:21:55', '2024-01-12 02:21:55');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `id_color_item` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `createdAt`, `updatedAt`) VALUES
(9, 'T-Shirt', 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/f04b21ff620d77aa91ca82d00.jpg', '2024-01-11 03:30:35', '2024-01-11 03:30:35'),
(10, 'Jeans', 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/f04b21ff620d77aa91ca82d01.jpg', '2024-01-11 03:30:58', '2024-01-11 03:30:58'),
(11, 'Jacket', 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/f04b21ff620d77aa91ca82d02.jpg', '2024-01-11 03:31:13', '2024-01-11 03:31:13'),
(12, 'accessories', 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/f04b21ff620d77aa91ca82d04.jpg', '2024-01-11 03:32:32', '2024-01-11 03:32:32'),
(13, 'Vest', 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/f04b21ff620d77aa91ca82d05.jpg', '2024-01-11 03:32:46', '2024-01-11 03:32:46'),
(14, 'Shoes', 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5106.jpg', '2024-01-11 03:55:58', '2024-01-11 03:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `color_items`
--

CREATE TABLE `color_items` (
  `id` int(11) NOT NULL,
  `color` varchar(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `color_items`
--

INSERT INTO `color_items` (`id`, `color`, `id_item`, `amount`, `createdAt`, `updatedAt`) VALUES
(7133, 'black', 1438, 46, '2024-01-11 04:34:56', '2024-01-11 07:06:24'),
(7134, 'brown', 1438, 50, '2024-01-11 04:34:56', '2024-01-11 04:34:56'),
(7135, 'blue', 1440, 50, '2024-01-11 04:35:45', '2024-01-11 04:35:45'),
(7136, 'brown', 1437, 49, '2024-01-11 04:35:45', '2024-01-11 07:57:26'),
(7137, 'yellow', 1444, 49, '2024-01-11 04:36:26', '2024-01-11 08:00:17'),
(7138, 'black', 1428, 48, '2024-01-11 04:36:26', '2024-01-11 07:50:29'),
(7139, 'white', 1430, 48, '2024-01-11 04:37:08', '2024-01-11 07:54:03'),
(7140, 'black', 1430, 49, '2024-01-11 04:37:08', '2024-01-11 07:56:48'),
(7141, 'black', 1436, 50, '2024-01-11 04:37:35', '2024-01-11 04:37:35'),
(7142, 'green', 1436, 46, '2024-01-11 04:37:35', '2024-01-11 07:58:22'),
(7143, 'blue', 1429, 45, '2024-01-11 04:38:13', '2024-01-11 07:49:26'),
(7144, 'gray', 1435, 50, '2024-01-11 04:38:13', '2024-01-11 04:38:13'),
(7145, 'black', 1441, 50, '2024-01-11 04:38:35', '2024-01-11 04:38:35'),
(7146, 'brown', 1441, 47, '2024-01-11 04:38:35', '2024-01-11 07:46:50'),
(7147, 'black', 1449, 50, '2024-01-11 04:39:00', '2024-01-11 04:39:00'),
(7148, 'pink', 1451, 47, '2024-01-11 04:39:25', '2024-01-11 07:44:46'),
(7149, 'brown', 1451, 50, '2024-01-11 04:39:25', '2024-01-11 04:39:25'),
(7150, 'white', 1451, 50, '2024-01-11 04:39:41', '2024-01-11 04:39:41'),
(7151, 'green', 1451, 50, '2024-01-11 04:39:41', '2024-01-11 04:39:41'),
(7152, 'blue', 1447, 50, '2024-01-11 04:40:25', '2024-01-11 04:40:25'),
(7153, 'red', 1432, 47, '2024-01-11 04:40:25', '2024-01-11 08:00:42'),
(7154, 'white', 1424, 50, '2024-01-11 04:40:56', '2024-01-11 04:40:56'),
(7155, 'black', 1424, 46, '2024-01-11 04:40:56', '2024-01-11 07:53:12'),
(7156, 'black', 1425, 50, '2024-01-11 04:41:29', '2024-01-11 04:41:29'),
(7157, 'brown', 1425, 42, '2024-01-11 04:41:29', '2024-01-11 07:47:21'),
(7158, 'black', 1426, 50, '2024-01-11 04:42:08', '2024-01-11 04:42:08'),
(7159, 'gray', 1445, 49, '2024-01-11 04:42:08', '2024-01-12 02:42:50'),
(7160, 'black', 1442, 48, '2024-01-11 04:42:52', '2024-01-11 08:01:45'),
(7161, 'gray', 1433, 41, '2024-01-11 04:42:52', '2024-01-11 07:59:19'),
(7162, 'black', 1427, 44, '2024-01-11 04:43:14', '2024-01-11 07:46:17'),
(7163, 'white', 1427, 50, '2024-01-11 04:43:14', '2024-01-11 04:43:14'),
(7164, 'black', 1450, 50, '2024-01-11 04:43:37', '2024-01-11 04:43:37'),
(7165, 'white', 1450, 48, '2024-01-11 04:43:37', '2024-01-11 07:51:16'),
(7166, 'pink', 1434, 50, '2024-01-11 04:44:03', '2024-01-11 04:44:03'),
(7167, 'green', 1434, 49, '2024-01-11 04:44:03', '2024-01-11 07:49:52'),
(7168, 'yellow', 1443, 47, '2024-01-11 04:44:38', '2024-01-11 07:56:16'),
(7169, 'black', 1439, 49, '2024-01-11 04:44:38', '2024-01-11 07:59:45'),
(7170, 'blue', 1448, 48, '2024-01-11 04:45:31', '2024-01-11 08:01:18'),
(7171, 'gray', 1448, 50, '2024-01-11 04:45:31', '2024-01-11 04:45:31'),
(7172, 'black', 1431, 50, '2024-01-11 04:45:50', '2024-01-11 04:45:50'),
(7173, 'white', 1431, 49, '2024-01-11 04:45:50', '2024-01-11 07:52:38'),
(7174, 'black', 1446, 50, '2024-01-11 04:46:16', '2024-01-11 04:46:16'),
(7175, 'blue', 1446, 49, '2024-01-11 04:46:16', '2024-01-11 07:51:41'),
(7176, 'red', 1424, 50, '2024-01-11 04:54:30', '2024-01-11 04:54:30'),
(7177, 'blue', 1451, 50, '2024-01-12 02:33:58', '2024-01-12 02:33:58');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `id_item` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `id_item`, `createdAt`, `updatedAt`) VALUES
(1426, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5102.jpg', 1425, '2024-01-11 03:50:20', '2024-01-11 03:50:20'),
(1427, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5103.jpg', 1426, '2024-01-11 03:52:45', '2024-01-11 03:52:45'),
(1428, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5104.jpg', 1427, '2024-01-11 03:53:53', '2024-01-11 03:53:53'),
(1429, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5105.jpg', 1428, '2024-01-11 03:54:45', '2024-01-11 03:54:45'),
(1430, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5107.jpg', 1429, '2024-01-11 03:58:28', '2024-01-11 03:58:28'),
(1431, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5108.jpg', 1430, '2024-01-11 03:59:26', '2024-01-11 03:59:26'),
(1432, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b510a.jpg', 1431, '2024-01-11 04:00:22', '2024-01-11 04:00:22'),
(1433, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5109.jpg', 1431, '2024-01-11 04:00:22', '2024-01-11 04:00:22'),
(1434, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b510b.jpg', 1432, '2024-01-11 04:01:10', '2024-01-11 04:01:10'),
(1435, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b510c.jpg', 1433, '2024-01-11 04:03:34', '2024-01-11 04:03:34'),
(1436, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b510d.jpg', 1434, '2024-01-11 04:06:22', '2024-01-11 04:06:22'),
(1437, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b510e.jpg', 1434, '2024-01-11 04:06:22', '2024-01-11 04:06:22'),
(1438, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b510f.jpg', 1435, '2024-01-11 04:08:49', '2024-01-11 04:08:49'),
(1439, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5110.jpg', 1436, '2024-01-11 04:12:05', '2024-01-11 04:12:05'),
(1440, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5111.jpg', 1437, '2024-01-11 04:13:58', '2024-01-11 04:13:58'),
(1441, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5112.jpg', 1438, '2024-01-11 04:15:21', '2024-01-11 04:15:21'),
(1442, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5113.jpg', 1439, '2024-01-11 04:17:04', '2024-01-11 04:17:04'),
(1443, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5114.jpg', 1440, '2024-01-11 04:17:47', '2024-01-11 04:17:47'),
(1444, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5115.jpg', 1441, '2024-01-11 04:19:12', '2024-01-11 04:19:12'),
(1445, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5116.jpg', 1441, '2024-01-11 04:19:12', '2024-01-11 04:19:12'),
(1446, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5117.jpg', 1442, '2024-01-11 04:20:14', '2024-01-11 04:20:14'),
(1447, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5118.jpg', 1443, '2024-01-11 04:21:22', '2024-01-11 04:21:22'),
(1448, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b511a.jpg', 1444, '2024-01-11 04:22:29', '2024-01-11 04:22:29'),
(1449, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b511b.jpg', 1445, '2024-01-11 04:23:36', '2024-01-11 04:23:36'),
(1450, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b511c.jpg', 1446, '2024-01-11 04:25:30', '2024-01-11 04:25:30'),
(1451, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b511d.jpg', 1447, '2024-01-11 04:26:57', '2024-01-11 04:26:57'),
(1452, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b511f.jpg', 1448, '2024-01-11 04:28:30', '2024-01-11 04:28:30'),
(1453, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5120.jpg', 1449, '2024-01-11 04:29:32', '2024-01-11 04:29:32'),
(1454, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5122.jpg', 1450, '2024-01-11 04:31:53', '2024-01-11 04:31:53'),
(1455, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/3c0ebbf4f8ef539a0a04b5123.jpg', 1451, '2024-01-11 04:33:06', '2024-01-11 04:33:06'),
(1456, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/e7b8e4e6e3f6ba5e6ddbbf800.jpg', 1424, '2024-01-11 04:56:24', '2024-01-11 04:56:24'),
(1457, 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/6f54f86821200f1f09c36b900.jpg', 1452, '2024-01-12 02:34:37', '2024-01-12 02:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `inforusers`
--

CREATE TABLE `inforusers` (
  `id` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inforusers`
--

INSERT INTO `inforusers` (`id`, `id_account`, `lastname`, `firstname`, `phoneNumber`, `avatar`, `createdAt`, `updatedAt`) VALUES
(1, 2, 'Anh Hào', 'Trần', '0962240446', 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/540fd0557fff9d64707711700.jpg', '2023-10-27 08:51:32', '2024-01-12 02:24:13'),
(4, 5, 'hào thanh hưng', 'trần', '3111111111', NULL, '2023-11-01 07:35:08', '2023-11-01 07:35:08'),
(5, 6, 'hào thanh hưng', 'trần', '3111111111', NULL, '2023-11-01 07:36:30', '2023-11-01 07:36:30'),
(6, 7, 'Thanh', 'Hưng gà', '3111111111', 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/d5d65b52e1174eaef76b19d01.jpg', '2023-11-03 07:00:41', '2023-11-21 15:37:08'),
(7, 8, 'Duc Manh', 'Nguyen', '3111111111', NULL, '2023-11-30 11:07:41', '2023-11-30 11:07:41'),
(8, 9, 'Duc Manh', 'Nguyen', '0905897381', NULL, '2023-11-30 16:23:49', '2023-11-30 16:23:49'),
(9, 10, 'Duc Manh', 'Nguyen', '3111111111', NULL, '2023-12-01 06:18:18', '2023-12-01 06:18:18'),
(10, 11, 'Duc Manh', 'Nguyen', '0905897381', NULL, '2023-12-01 06:24:14', '2023-12-01 06:24:14'),
(11, 12, 'Duc Manh', 'Nguyen', '0905897381', NULL, '2023-12-01 09:20:26', '2023-12-01 09:20:26'),
(12, 13, 'Mạnh', 'Nguyễn', '0905897381', 'https://pbl6-shoesshop.s3.ap-southeast-1.amazonaws.com/804118f41351568757bf12d01.jpg', '2023-12-08 09:32:21', '2023-12-08 09:55:20'),
(13, 14, 'hào thanh hưng', 'trần', '3111111111', NULL, '2024-01-12 02:21:55', '2024-01-12 02:21:55');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `import_price` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `id_category`, `name`, `price`, `import_price`, `description`, `createdAt`, `updatedAt`) VALUES
(1424, 9, 'Nike Sportswear shirt', 1379000, 1000000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 03:44:33', '2024-01-11 04:55:46'),
(1425, 9, 'NIKE Tee shirt 04284', 180000, 95000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 03:50:20', '2024-01-11 03:50:20'),
(1426, 9, 'Pepe Frog T Shirt Funny Meme Men Casual Me Smart Tee Shirt Short Sleeve ', 180000, 95000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 03:52:45', '2024-01-11 03:52:45'),
(1427, 9, 'smudge cat meme shitpost t-shirt distro', 99000, 50000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 03:53:53', '2024-01-11 03:53:53'),
(1428, 9, 'Comrade John Xina T-shirts', 250000, 180000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 03:54:45', '2024-01-11 03:54:45'),
(1429, 10, 'Dico Boy Jeans ', 790000, 560000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 03:58:28', '2024-01-11 03:58:28'),
(1430, 14, 'Converse Chuck taylor ', 1200000, 780000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 03:59:26', '2024-01-11 03:59:26'),
(1431, 14, 'Vans old skool', 1360000, 780000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:00:22', '2024-01-11 04:00:22'),
(1432, 14, 'nike jodan rep 1:1', 460000, 300000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:01:10', '2024-01-11 04:01:10'),
(1433, 10, 'Retro Ulzzang jeans ', 720000, 300000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:03:34', '2024-01-11 04:03:34'),
(1434, 9, 'Teelab Sweet Balloon TS006', 199000, 120000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:06:22', '2024-01-11 04:06:22'),
(1435, 10, 'Kurabo 15oz Raw Selvedge Denim', 1999000, 1200000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:08:49', '2024-01-11 04:08:49'),
(1436, 11, 'Degrey DA jacket', 990000, 560000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:12:05', '2024-01-11 04:12:05'),
(1437, 11, 'Bomber Jacket High Street Patchwork ', 990000, 560000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:13:58', '2024-01-11 04:13:58'),
(1438, 11, 'Baseball Black Varsity Original Full Bordir Jaket', 349000, 200000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:15:21', '2024-01-11 04:15:21'),
(1439, 12, 'Titan Black Dial World Watch', 670000, 300000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:17:04', '2024-01-11 04:17:04'),
(1440, 12, 'Blue Dial Leather Strap Watch ', 270000, 100000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:17:47', '2024-01-11 04:17:47'),
(1441, 12, 'Leather Belt', 154000, 100000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:19:12', '2024-01-11 04:19:12'),
(1442, 12, 'Power Dragon Powerlifting Belt', 354000, 100000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:20:14', '2024-01-11 04:20:14'),
(1443, 12, 'Tiffany Wire Bracelet White Gold Diamond', 1354000, 1100000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:21:22', '2024-01-11 04:21:22'),
(1444, 12, 'Bvlgari Serpenti Bracelet Rose Gold', 549000, 230000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:22:29', '2024-01-11 04:22:29'),
(1445, 13, 'PIERRE CARDIN PVESB0192', 1549000, 980000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:23:36', '2024-01-11 04:23:36'),
(1446, 13, 'Áo khoác BLAZER nam', 330000, 230000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:25:30', '2024-01-11 04:25:30'),
(1447, 13, 'Navy Blazer - BLN01', 430000, 230000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:26:57', '2024-01-11 04:26:57'),
(1448, 13, 'unisex baggy jeans', 420000, 230000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:28:30', '2024-01-11 04:28:30'),
(1449, 14, 'levis flip flop ', 189000, 60000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:29:32', '2024-01-11 04:29:32'),
(1450, 9, 'SƠ MI TAY NGẮN LƯNG IN ASM013', 289000, 160000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:31:53', '2024-01-11 04:31:53'),
(1451, 9, 'Mũ len classic ', 89000, 60000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-11 04:33:06', '2024-01-11 04:33:06'),
(1452, 9, 'giày ananas', 150000, 90000, 'Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.', '2024-01-12 02:34:37', '2024-01-12 02:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `createAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_status` int(11) NOT NULL,
  `order_address` varchar(255) DEFAULT NULL,
  `order_phoneNumber` varchar(255) DEFAULT NULL,
  `totalPrice` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `id_account`, `createAt`, `id_status`, `order_address`, `order_phoneNumber`, `totalPrice`, `createdAt`, `updatedAt`) VALUES
(23, 2, '2024-01-11 05:15:46', 4, 'Xuan Thieu 14 street', '0962240446', 698000, '2024-01-01 05:15:46', '2024-01-11 05:19:46'),
(24, 2, '2024-01-01 07:06:24', 4, 'nguyễn trãi street', '09622404411', 698000, '2024-01-01 07:06:24', '2024-01-11 07:07:05'),
(25, 2, '2024-01-01 07:44:46', 4, 'nguyễn trãi street', '09622404411', 267000, '2024-01-01 07:44:46', '2024-01-11 07:44:46'),
(26, 2, '2024-01-11 07:45:40', 4, 'nguyễn trãi street', '09622404411', 297000, '2024-01-02 07:45:40', '2024-01-11 07:45:40'),
(27, 7, '2024-01-11 07:46:17', 4, 'nguyễn trãi street', '09622404411', 297000, '2024-01-02 07:46:17', '2024-01-11 07:46:17'),
(28, 7, '2024-01-11 07:46:50', 4, 'nguyễn trãi street', '09622404411', 462000, '2024-01-02 07:46:50', '2024-01-11 07:46:50'),
(29, 7, '2024-01-11 07:47:21', 4, 'nguyễn trãi street', '09622404411', 1440000, '2024-01-03 07:47:21', '2024-01-11 07:47:21'),
(30, 7, '2024-01-11 07:48:02', 4, 'nguyễn trãi street', '09622404411', 3160000, '2024-01-03 07:48:02', '2024-01-11 07:48:02'),
(31, 5, '2024-01-11 07:49:26', 4, 'nguyễn trãi street', '09622404411', 790000, '2024-01-03 07:49:26', '2024-01-11 07:49:26'),
(32, 5, '2024-01-11 07:49:52', 4, 'nguyễn trãi street', '09622404411', 199000, '2024-01-04 07:49:52', '2024-01-11 07:49:52'),
(33, 5, '2024-01-11 07:50:29', 4, 'nguyễn trãi street', '09622404411', 500000, '2024-01-04 07:50:29', '2024-01-11 07:50:29'),
(34, 5, '2024-01-11 07:51:16', 4, 'nguyễn trãi street', '09622404411', 578000, '2024-01-04 07:51:16', '2024-01-11 07:51:16'),
(35, 5, '2024-01-11 07:51:41', 4, 'nguyễn trãi street', '09622404411', 330000, '2024-01-05 07:51:41', '2024-01-11 07:51:41'),
(36, 5, '2024-01-11 07:52:06', 4, 'nguyễn trãi street', '09622404411', 420000, '2024-01-05 07:52:06', '2024-01-11 07:52:06'),
(37, 5, '2024-01-11 07:52:38', 4, 'nguyễn trãi street', '09622404411', 1360000, '2024-01-06 07:52:38', '2024-01-11 07:52:38'),
(38, 5, '2024-01-11 07:53:12', 4, 'nguyễn trãi street', '09622404411', 5516000, '2024-01-07 07:53:12', '2024-01-11 07:53:12'),
(39, 5, '2024-01-08 07:54:03', 4, 'nguyễn trãi street', '09622404411', 2400000, '2024-01-08 07:54:03', '2024-01-11 07:54:03'),
(40, 5, '2024-01-11 07:56:16', 4, 'nguyễn trãi street', '09622404411', 4062000, '2024-01-11 07:56:16', '2024-01-11 07:56:16'),
(41, 5, '2024-01-11 07:56:48', 4, 'nguyễn trãi street', '09622404411', 1200000, '2024-01-11 07:56:48', '2024-01-11 07:56:48'),
(42, 5, '2024-01-11 07:57:26', 4, 'nguyễn trãi street', '09622404411', 990000, '2024-01-11 07:57:26', '2024-01-11 07:57:26'),
(43, 5, '2024-01-11 07:58:22', 4, 'nguyễn trãi street', '09622404411', 3960000, '2024-01-11 07:58:22', '2024-01-11 07:58:22'),
(44, 5, '2024-01-11 07:58:51', 4, 'nguyễn trãi street', '09622404411', 2880000, '2024-01-11 07:58:51', '2024-01-11 07:58:51'),
(45, 6, '2024-01-11 07:59:19', 4, 'nguyễn trãi street', '09622404411', 3600000, '2024-01-11 07:59:19', '2024-01-11 07:59:19'),
(46, 6, '2024-01-11 07:59:45', 4, 'nguyễn trãi street', '09622404411', 670000, '2024-01-11 07:59:45', '2024-01-11 07:59:45'),
(47, 6, '2024-01-11 08:00:17', 4, 'nguyễn trãi street', '09622404411', 549000, '2024-01-11 08:00:17', '2024-01-11 08:00:17'),
(48, 6, '2024-01-11 08:00:36', 4, 'nguyễn trãi street', '09622404411', 460000, '2024-01-11 08:00:36', '2024-01-11 08:00:36'),
(49, 6, '2024-01-11 08:00:40', 4, 'nguyễn trãi street', '09622404411', 460000, '2024-01-11 08:00:40', '2024-01-11 08:00:40'),
(50, 6, '2024-01-11 08:00:42', 4, 'nguyễn trãi street', '09622404411', 460000, '2024-01-11 08:00:42', '2024-01-11 08:00:42'),
(51, 6, '2024-01-11 08:01:18', 4, 'nguyễn trãi street', '09622404411', 420000, '2024-01-11 08:01:18', '2024-01-11 08:01:18'),
(52, 6, '2024-01-11 08:01:45', 4, 'nguyễn trãi street', '09622404411', 708000, '2024-01-11 08:01:45', '2024-01-11 08:01:45'),
(53, 6, '2024-01-11 08:09:05', 4, 'nguyễn trãi street', '09622404411', 1549000, '2024-01-11 08:09:05', '2024-01-11 08:09:05'),
(54, 2, '2024-01-12 02:40:58', 5, 'nguyễn trãi street', '09622404411', 1549000, '2024-01-12 02:40:58', '2024-01-12 02:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `id_color_item` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `fixed_price` int(11) DEFAULT NULL,
  `isRate` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `id_color_item`, `id_order`, `quantity`, `fixed_price`, `isRate`, `createdAt`, `updatedAt`) VALUES
(22, 7133, 23, 2, 698000, 1, '2024-01-11 05:15:46', '2024-01-12 02:52:04'),
(23, 7133, 24, 2, 698000, 1, '2024-01-11 07:06:24', '2024-01-11 07:06:24'),
(24, 7148, 25, 3, 267000, 1, '2024-01-11 07:44:46', '2024-01-11 07:44:46'),
(25, 7162, 26, 3, 297000, 1, '2024-01-11 07:45:40', '2024-01-11 07:45:40'),
(26, 7162, 27, 3, 297000, 1, '2024-01-11 07:46:17', '2024-01-11 07:46:17'),
(27, 7146, 28, 3, 462000, 1, '2024-01-11 07:46:50', '2024-01-11 07:46:50'),
(28, 7157, 29, 8, 1440000, 1, '2024-01-11 07:47:21', '2024-01-11 07:47:21'),
(29, 7143, 30, 4, 3160000, 1, '2024-01-11 07:48:02', '2024-01-11 07:48:02'),
(30, 7143, 31, 1, 790000, 1, '2024-01-11 07:49:26', '2024-01-11 07:49:26'),
(31, 7167, 32, 1, 199000, 1, '2024-01-11 07:49:52', '2024-01-11 07:49:52'),
(32, 7138, 33, 2, 500000, 1, '2024-01-11 07:50:29', '2024-01-11 07:50:29'),
(33, 7165, 34, 2, 578000, 1, '2024-01-11 07:51:16', '2024-01-11 07:51:16'),
(34, 7175, 35, 1, 330000, 1, '2024-01-11 07:51:41', '2024-01-11 07:51:41'),
(35, 7170, 36, 1, 420000, 1, '2024-01-11 07:52:06', '2024-01-11 07:52:06'),
(36, 7173, 37, 1, 1360000, 1, '2024-01-11 07:52:38', '2024-01-11 07:52:38'),
(37, 7155, 38, 4, 5516000, 1, '2024-01-11 07:53:12', '2024-01-11 07:53:12'),
(38, 7139, 39, 2, 2400000, 1, '2024-01-11 07:54:03', '2024-01-11 07:54:03'),
(39, 7168, 40, 3, 4062000, 1, '2024-01-11 07:56:16', '2024-01-11 07:56:16'),
(40, 7140, 41, 1, 1200000, 1, '2024-01-11 07:56:48', '2024-01-11 07:56:48'),
(41, 7136, 42, 1, 990000, 1, '2024-01-11 07:57:26', '2024-01-11 07:57:26'),
(42, 7142, 43, 4, 3960000, 1, '2024-01-11 07:58:22', '2024-01-11 07:58:22'),
(43, 7161, 44, 4, 2880000, 1, '2024-01-11 07:58:51', '2024-01-11 07:58:51'),
(44, 7161, 45, 5, 3600000, 1, '2024-01-11 07:59:19', '2024-01-11 07:59:19'),
(45, 7169, 46, 1, 670000, 1, '2024-01-11 07:59:45', '2024-01-11 07:59:45'),
(46, 7137, 47, 1, 549000, 1, '2024-01-11 08:00:17', '2024-01-11 08:00:17'),
(47, 7153, 48, 1, 460000, 1, '2024-01-11 08:00:36', '2024-01-11 08:00:36'),
(48, 7153, 49, 1, 460000, 1, '2024-01-11 08:00:40', '2024-01-11 08:00:40'),
(49, 7153, 50, 1, 460000, 1, '2024-01-11 08:00:42', '2024-01-11 08:00:42'),
(50, 7170, 51, 1, 420000, 1, '2024-01-11 08:01:18', '2024-01-11 08:01:18'),
(51, 7160, 52, 2, 708000, 1, '2024-01-11 08:01:45', '2024-01-11 08:01:45'),
(52, 7159, 53, 1, 1549000, 1, '2024-01-11 08:09:05', '2024-01-11 08:09:05'),
(53, 7159, 54, 1, 1549000, 0, '2024-01-12 02:40:58', '2024-01-12 02:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `star` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `id_item`, `id_account`, `star`, `comment`, `createdAt`, `updatedAt`) VALUES
(19, 1438, 2, 4, 'good product for user !! but the delivering service is quite bad :) ', '2024-01-11 05:30:01', '2024-01-11 05:30:01'),
(20, 1438, 7, 5, 'good quality', '2024-01-11 07:08:59', '2024-01-11 07:08:59'),
(21, 1438, 6, 3, 'chất vải không tốt lắm', '2024-01-11 07:08:59', '2024-01-11 07:08:59'),
(22, 1440, 10, 1, 'bad quality, with slow derivering service :) ', '2024-01-11 07:10:11', '2024-01-11 07:10:11'),
(23, 1440, 2, 3, NULL, '2024-01-11 07:10:11', '2024-01-11 07:10:11'),
(24, 1437, 6, 5, 'chất lượng xuất xắc', '2024-01-11 07:11:07', '2024-01-11 07:11:07'),
(25, 1437, 11, 4, 'oke ', '2024-01-11 07:11:07', '2024-01-11 07:11:07'),
(26, 1444, 5, 5, 'such a luxury product i had ever try', '2024-01-11 07:12:45', '2024-01-11 07:12:45'),
(27, 1430, 9, 3, 'không giống vói hình ảnh', '2024-01-11 07:12:45', '2024-01-11 07:12:45'),
(28, 1429, 11, 4, 'jean chất vải tạm ổn', '2024-01-11 07:13:18', '2024-01-11 07:13:18'),
(29, 1429, 6, 4, 'sản phảm oke', '2024-01-11 07:13:18', '2024-01-11 07:13:18'),
(30, 1441, 13, 5, 'good quality', '2024-01-11 07:13:59', '2024-01-11 07:13:59'),
(31, 1441, 6, 4, 'well ', '2024-01-11 07:13:59', '2024-01-11 07:13:59'),
(32, 1447, 5, 4, 'sản phẩm chất lượng tốt ', '2024-01-11 07:14:43', '2024-01-11 07:14:43'),
(33, 1447, 9, 3, 'tạm ổn', '2024-01-11 07:14:43', '2024-01-11 07:14:43'),
(34, 1447, 5, 4, 'sản phẩm chất lượng tốt ', '2024-01-11 07:14:48', '2024-01-11 07:14:48'),
(35, 1447, 9, 3, 'tạm ổn', '2024-01-11 07:14:48', '2024-01-11 07:14:48'),
(36, 1424, 2, 5, 'sản phẩm chất lượng tốt :v', '2024-01-11 07:15:51', '2024-01-11 07:15:51'),
(37, 1424, 10, 5, 'GOOD QUALITY', '2024-01-11 07:15:51', '2024-01-11 07:15:51'),
(38, 1424, 8, 4, NULL, '2024-01-11 07:16:29', '2024-01-11 07:16:29'),
(39, 1424, 5, 5, 'ok', '2024-01-11 07:16:29', '2024-01-11 07:16:29'),
(40, 1451, 2, 3, 'tạm ổn', '2024-01-11 07:18:18', '2024-01-11 07:18:18'),
(41, 1451, 13, 1, 'the worst product that i have ever seen', '2024-01-11 07:18:18', '2024-01-11 07:18:18'),
(42, 1425, 6, 4, 'quite good', '2024-01-11 07:19:09', '2024-01-11 07:19:09'),
(43, 1426, 11, 5, 'áo chất lượng cao :v', '2024-01-11 07:19:09', '2024-01-11 07:19:09'),
(44, 1450, 12, 5, 'sản phẩm chất lượng tốt. đẹp hơn trên ảnh ', '2024-01-11 07:20:21', '2024-01-11 07:20:21'),
(45, 1427, 7, 4, '@@', '2024-01-11 07:20:21', '2024-01-11 07:20:21'),
(46, 1434, 8, 3, 'chất vải thô, không đáng tiền để mua :D', '2024-01-11 07:21:16', '2024-01-11 07:21:16'),
(47, 1434, 7, 4, 'tạm dudowcj', '2024-01-11 07:21:16', '2024-01-11 07:21:16'),
(48, 1431, 2, 5, 'giày đẹp sỉu ;v', '2024-01-11 07:22:12', '2024-01-11 07:22:12'),
(49, 1431, 7, 5, 'high quality, the best service', '2024-01-11 07:22:12', '2024-01-11 07:22:12'),
(50, 1448, 10, 3, 'tạm ổn', '2024-01-11 07:23:00', '2024-01-11 07:23:00'),
(51, 1443, 8, 1, ' như hàng nhựa vậy', '2024-01-11 07:23:00', '2024-01-11 07:23:00'),
(52, 1438, 2, 4, 'good product for user !! but the delivering service is quite bad :)', '2024-01-12 02:52:02', '2024-01-12 02:52:02'),
(53, 1438, 2, 4, 'good product for user !! but the delivering service is quite bad :)', '2024-01-12 02:52:04', '2024-01-12 02:52:04');

-- --------------------------------------------------------

--
-- Table structure for table `refreshtokens`
--

CREATE TABLE `refreshtokens` (
  `id` int(11) NOT NULL,
  `refreshToken` varchar(255) DEFAULT NULL,
  `exp` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `refreshtokens`
--

INSERT INTO `refreshtokens` (`id`, `refreshToken`, `exp`, `createdAt`, `updatedAt`) VALUES
(97, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySUQiOjIsInJvbGUiOiJhZG1pbiIsImlhdCI6MTcwNDk5Njc4MCwiZXhwIjoxNzA1MTY5NTgwfQ.vjHf7yi90nCQ4rSxA4I-jOVZegU387JTxnQHcUT7AiY', '1705169580', '2024-01-11 18:13:00', '2024-01-11 18:13:00'),
(98, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySUQiOjIsInJvbGUiOiJhZG1pbiIsImlhdCI6MTcwNTAyNjA1MSwiZXhwIjoxNzA1MTk4ODUxfQ.rPzXnQr7uD0KDUGmgBFTt_q7KpAL62vWgTiWjBiNe0w', '1705198851', '2024-01-12 02:20:51', '2024-01-12 02:20:51'),
(99, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySUQiOjIsInJvbGUiOiJhZG1pbiIsImlhdCI6MTcwNTAyNjE3NywiZXhwIjoxNzA1MTk4OTc3fQ.LOVTW5IHuD_JVzB7XTlxKh5KA7zcYdakEQ5AViyZHfk', '1705198977', '2024-01-12 02:22:57', '2024-01-12 02:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `roleName`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', '2023-10-27 08:51:25', '2023-10-27 08:51:25'),
(2, 'custommer', '2023-10-27 08:51:25', '2023-10-27 08:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('acreate-role.js'),
('bcreate-account.js'),
('ccreate-brand.js'),
('dcreate-status.js'),
('ecreate-infor-user.js'),
('fcreate-category.js'),
('gcreate-message.js'),
('icreate-shoes.js'),
('jcreate-addressInfor.js'),
('jcreate-cart.js'),
('kcreate-order.js'),
('lcreate-cart-item.js'),
('mcreate-order-item.js'),
('ncreate-image.js'),
('ncreate-rating.js'),
('refreshToken-create.js');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'đang chờ', '2023-10-27 09:02:47', '2023-10-27 09:02:47'),
(2, 'đang chuẩn bị', '2023-10-27 09:03:17', '2023-10-27 09:03:17'),
(3, 'đang giao', '2023-10-27 09:03:17', '2023-10-27 09:03:17'),
(4, 'giao thành công', '2023-10-27 09:03:17', '2023-10-27 09:03:17'),
(5, 'đã hủy', '2023-10-27 09:03:17', '2023-10-27 09:03:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_role` (`id_role`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_account` (`id_account`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cart` (`id_cart`),
  ADD KEY `id_size_item` (`id_color_item`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_items`
--
ALTER TABLE `color_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `size_items_ibfk_1` (`id_item`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_shoes` (`id_item`);

--
-- Indexes for table `inforusers`
--
ALTER TABLE `inforusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_account` (`id_account`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_account` (`id_account`),
  ADD KEY `id_status` (`id_status`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_size_item` (`id_color_item`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_shoes` (`id_item`),
  ADD KEY `id_account` (`id_account`);

--
-- Indexes for table `refreshtokens`
--
ALTER TABLE `refreshtokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `color_items`
--
ALTER TABLE `color_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7178;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1458;

--
-- AUTO_INCREMENT for table `inforusers`
--
ALTER TABLE `inforusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1453;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `refreshtokens`
--
ALTER TABLE `refreshtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`id_cart`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_items_ibfk_3` FOREIGN KEY (`id_color_item`) REFERENCES `color_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `color_items`
--
ALTER TABLE `color_items`
  ADD CONSTRAINT `color_items_ibfk_1` FOREIGN KEY (`id_item`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id_item`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inforusers`
--
ALTER TABLE `inforusers`
  ADD CONSTRAINT `inforusers_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_status`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_3` FOREIGN KEY (`id_color_item`) REFERENCES `color_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`id_item`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
