-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2023 at 06:32 AM
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
-- Database: `duticorp`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` bigint(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `status`, `created_on`, `updated_on`, `deleted_on`) VALUES
(1, 'Sagar Pund', 'sagarpund@gmail.com', 123456, 'active', '2023-06-09 11:01:00', NULL, NULL),
(3, 'sad sda', 'sagarpund33@gmail.com', 0, 'active', '2023-06-09 02:54:40', NULL, NULL),
(4, 'Sagar Pund', 'sagarpund21@gmail.com', 123456, 'active', '2023-06-09 03:33:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_billing_shipping_details`
--

CREATE TABLE `user_billing_shipping_details` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_billing_shipping_details`
--

INSERT INTO `user_billing_shipping_details` (`id`, `user_id`, `fname`, `lname`, `email`, `company_name`, `address`, `country`, `state`, `city`, `postcode`, `phone`, `address_type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Sagar', 'Pund', 'sagarpund@gmail.com', 'Duti Corp', 'Old sangavi Pune', 'India', 'Maharashtra', 'Pune', '414111', '9689853790', 'billing', 'active', '2023-06-09 03:23:57', NULL, NULL),
(2, 1, 'Sagar', 'Pund', 'sagarpund@gmail.com', 'Duti Corp', 'Old sangavi Pune', 'India', 'Maharashtra', 'Pune', '414101', '9689853790', 'billing', 'active', '2023-06-09 03:30:45', NULL, NULL),
(3, 1, 'Sagar', 'Pund', 'sagarpund21@gmail.com', 'Duti Corp', 'Old sangavi Pune', 'India', 'Maharashtra', 'Pune', '414111', '9689853790', 'billing', 'active', '2023-06-09 03:33:39', NULL, NULL),
(4, 1, 'Sagar', 'Pund', 'sagarpund@gmail.com', 'Duti Corp', 'Old sangavi Pune', 'India', '', 'Pune', '414111', '9689853790', 'billing', 'active', '2023-06-09 03:35:36', NULL, NULL),
(5, 1, 'Pawan', 'Kumar', 'pawan@gmail.com', 'Duti Corp', 'Old Sangavi Pune', 'India', 'Maharashtra', 'Pune', '414111', NULL, 'shipping', 'active', '2023-06-09 03:35:36', NULL, NULL),
(6, 1, 'Sagar', 'Pund', 'sagarpund@gmail.com', 'Duti Corp', 'Old sangavi Pune', 'India', 'Maharashtra', 'Pune', '414111', '9689853790', 'billing', 'active', '2023-06-09 03:38:04', NULL, NULL),
(7, 1, 'Pawan', 'Kumar', 'pawan@gmail.com', 'Duti Corp', 'Old Sangavi Pune', 'India', 'Maharashtra', 'Pune', '414111', NULL, 'shipping', 'active', '2023-06-09 03:38:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_order_details`
--

CREATE TABLE `user_order_details` (
  `id` int(11) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `billing_shipping_addr_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(10) DEFAULT NULL,
  `order_note` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_order_details`
--

INSERT INTO `user_order_details` (`id`, `user_id`, `billing_shipping_addr_id`, `product_id`, `order_note`, `payment_type`, `total_amount`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1', '1,2', 'First Order!.', 'COD', NULL, 'Pending', '2023-06-09 03:23:57', NULL, NULL),
(2, 1, '2', '1,2', '', 'COD', '', 'Pending', '2023-06-09 03:30:45', NULL, NULL),
(3, 1, '3', '1,2', '', 'COD', '1000', 'Pending', '2023-06-09 03:33:39', NULL, NULL),
(4, 1, '4', '1,2', 'Order Placed', 'COD', '1000', 'Pending', '2023-06-09 03:35:36', NULL, NULL),
(5, 1, '6,7', '1,2', 'Test', 'COD', '1000', 'Pending', '2023-06-09 03:38:04', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_billing_shipping_details`
--
ALTER TABLE `user_billing_shipping_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_order_details`
--
ALTER TABLE `user_order_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_billing_shipping_details`
--
ALTER TABLE `user_billing_shipping_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_order_details`
--
ALTER TABLE `user_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
