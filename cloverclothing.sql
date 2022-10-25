-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2022 at 06:11 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloverclothing`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(12) NOT NULL,
  `prod_id` int(12) NOT NULL,
  `prod_qty` int(12) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `sub_total`, `created_at`) VALUES
(37, 5, 7, 4, 2080, '2022-07-30 15:30:36'),
(38, 5, 0, 5, 5250, '2022-07-30 15:30:43'),
(39, 5, 9, 1, 999, '2022-07-30 15:33:04'),
(40, 4, 8, 1, 4760, '2022-07-30 15:38:15'),
(41, 4, 1, 1, 975, '2022-07-30 15:42:27'),
(42, 4, 7, 1, 520, '2022-07-30 15:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `slug` varchar(32) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) NOT NULL,
  `meta_title` varchar(32) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Indian Wear', 'Indian_wear', 'The grandeur of maximal forms, lushness of colour, and splendour of rich details come together in Indya’s plush new line of festive finery, Indya Luxe. Encompassing lavish head-to-toe ensembles laden with meticulous crafts and dipped in lush celebratory hues, this collection is perfect for the modern bridesmaid at the quintessential big fat Indian wedding.', 0, 1, '1658748227.jpg', 'Indian wear', 'Indian wearI ndian wear', 'Indian wear', '2022-07-24 10:22:18', '2022-07-24 10:22:18'),
(2, 'Western Wear', 'western_wear', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 0, 1, '1658748595.jpg', 'western_wear', '`western_wear', 'western_wear', '2022-07-24 14:02:26', '2022-07-24 14:02:26'),
(3, 'Party Wear', 'party_wear', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 0, 1, '1658748688.jpg', 'party_wear', 'party_wear', 'party_wear', '2022-07-24 14:42:58', '2022-07-24 14:42:58'),
(4, 'Kids Wear', 'kids_wear', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 0, 1, '1658748543.jpg', 'kids_wear', 'kids_wear', 'kids_wear', '2022-07-25 09:39:23', '2022-07-25 09:39:23'),
(5, 'Bags', 'bags', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 0, 1, '1658748523.jpg', 'bags', 'bags', 'bags', '2022-07-25 09:46:34', '2022-07-25 09:46:34'),
(6, 'Footwear', 'footwear', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 0, 1, '1658742611.jpg', 'footwear', 'footwear', 'footwear', '2022-07-25 09:50:11', '2022-07-25 09:50:11');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `subject` varchar(32) NOT NULL,
  `message` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Shakthi Vignesh J', '2020', '0', '0'),
(2, 'Shakthi Vignesh J', '2020', '0', '0'),
(3, 'Shakthi Vignesh J', '2020cs0233@svce.ac.in', 'sad', 'sd'),
(4, 'Shakthi Vignesh J', 'q2@w', 'qws', 'wq'),
(5, 'Shakthi Vignesh J', '2020cs0233@svce.ac.in', 'dw', 'sda'),
(6, 'Shakthi Vignesh J', '2020cs0233@svce.ac.in', 'dw', 'sda'),
(7, 'Shakthi Vignesh J', '2020cs0233@svce.ac.in', 'asd', '853\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(32) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `prod_id` int(32) NOT NULL,
  `prod_qty` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `prod_id`, `prod_qty`) VALUES
(117, 4, 'Shakthi Vignesh J', '2020cs0233@svce.ac.in', 8, 1),
(118, 4, 'Shakthi Vignesh J', '2020cs0233@svce.ac.in', 1, 1),
(119, 4, 'Shakthi Vignesh J', '2020cs0233@svce.ac.in', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(32) NOT NULL,
  `name` varchar(320) NOT NULL,
  `slug` varchar(32) NOT NULL,
  `small_description` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` varchar(32) NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(0, 1, 'Mint Grid Foil Strappy Straight ', 'women_1', 'Mint Grid Foil Strappy Straight Kurta', 'Mint Grid Foil Strappy Straight Kurta', 2100, 1050, '1658749870.jpg', 15, 0, 1, 'indian_women', 'indian_women', 'indian_women', '2022-07-24 10:36:15', '2022-07-24 10:36:15'),
(1, 1, 'Lavender Mukaish', 'women_2', 'Lavender Mukaish', 'Lavender Mukaish', 1950, 975, '1658749981.jpg', 20, 0, 1, 'indian_women', 'indian_women', 'indian_women', '2022-07-24 10:41:06', '2022-07-24 10:41:06'),
(4, 1, 'PLAIN LINEN MEN SHIRT', 'men_1', 'Model height 188cm. The model (Chest-39,Waist-32,Hips-38) is wearing a size M', 'Solid Modal  fabric. Spread collar. Long buttoned sleeve. Button fastening on the front section.\r\n\r\n-A premium solid shirt\r\n-Can be worn for from office to after meeting evening get together.\r\n-Liked by Father and Son age groups\r\n-Spread Collar.\r\n-Modal Linen solid fabric.\r\n-Full Sleeves\r\n-Tailored Fit / Perfected pattern after extensive research on body measurements.\r\n-Hand Wash - For detailed instructions- follow the wash-care label on the garment.\r\n-Can be paired with Rare Rabbit Trousers.', 2799, 1400, '1658749478.jpg', 30, 0, 1, 'indian_men', 'indian_men', 'indian_men', '2022-07-24 13:38:05', '2022-07-24 13:38:05'),
(5, 1, 'PLAIN STRETCH MEN SHIRT', 'men_2', 'Model height 188cm. The model (Chest-39,Waist-32,Hips-38) is wearing a size M.', '-A classic solid shirt in green\r\n- Can be worn for from office to after meeting evening get together.\r\n-Liked by Father and Son age groups\r\n-Invisible buttoned down collar so the collars stays at place all day with ease.\r\n-97% Cotton 3% Lycra plain stretch fabric,\r\n-Full Sleeves\r\n-Tailored Fit / Perfected pattern after extensive research on body measurements.\r\n- Hand Wash - For detailed instructions- follow the wash-care label on the garment.\r\n- Can be paired with Rare Rabbit Trouser', 3499, 1499, '1658749830.jpg', 15, 0, 1, 'indian_men', 'indian_men', 'indian_men', '2022-07-24 13:42:52', '2022-07-24 13:42:52'),
(6, 2, 'Floral Print Fit & Flare Dress', 'western_women1', 'Lightweight Fabric Soft Texture Summer Friendly & Breathable\r\nWe recommend you buy a size larger\r\nPackage Contains: 1 Dress\r\nLightweight, Soft Texture, georgette\r\nMachine wash', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 2249, 999, '1658749409.jpg', 49, 0, 1, 'western_women', 'western_women', 'western_women', '2022-07-24 14:13:06', '2022-07-24 14:13:06'),
(7, 2, 'Floral Print Round-Neck Fit & Fl', 'western_women2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 1299, 520, '1658749186.jpg', 25, 0, 1, 'western_women', 'western_women', 'western_women', '2022-07-24 14:18:17', '2022-07-24 14:18:17'),
(8, 2, 'Khurta and dhoti pant set', 'western_men1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 11900, 4760, '1658749311.jpg', 12, 0, 1, 'western_men', 'western_men', 'western_men', '2022-07-24 14:28:58', '2022-07-24 14:28:58'),
(9, 2, 'Highlander Full Sleeve solid men jacket', 'western_men2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 1394, 999, '1658749263.jpg', 16, 0, 1, 'western_men', 'western_men', 'western_men', '2022-07-24 14:33:48', '2022-07-24 14:33:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role_as` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `password`, `role_as`, `created_at`, `updated_at`) VALUES
(1, 'ji', '234', 'qwe@qwe', 'ewe', 0, '2022-07-23 08:47:23', '2022-07-23 08:47:23'),
(2, 'qwerrtg', '1234567890', '2020cs0233@svce.ac.in', 'qwer', 0, '2022-07-23 08:48:39', '2022-07-23 08:48:39'),
(3, 'qwerrtg', '1234567890', '2020cs0233@svce.ac.in', 'qwer', 0, '2022-07-23 08:53:52', '2022-07-23 08:53:52'),
(4, 'Shakthi Vignesh J', '09941949400', '2020cs0233@svce.ac.in', '1234', 1, '2022-07-23 09:47:07', '2022-07-23 09:47:07'),
(5, 'user', '3456789', 'user@gmail.com', '1234', 0, '2022-07-23 10:46:20', '2022-07-23 10:46:20'),
(6, 'Shakthi', '741', 'user2@gmail.com', '1234', 0, '2022-07-29 16:32:22', '2022-07-29 16:32:22'),
(7, 'Vignesh', '12341234', 'user3@gmail.com', '1234', 0, '2022-07-29 16:35:18', '2022-07-29 16:35:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
