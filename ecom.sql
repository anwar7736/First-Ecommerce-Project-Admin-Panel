-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 05:03 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_table`
--

CREATE TABLE `brand_table` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand_table`
--

INSERT INTO `brand_table` (`id`, `brand_name`, `brand_image`) VALUES
(40, 'ASUS', 'http://superadmin.laptopcitypro.com/storage/app/public/9fx0N5yiNqw1mdVgDu3yfc6fV0BLmiB47mcqDlFV.png'),
(41, 'LENOVO', 'http://superadmin.laptopcitypro.com/storage/app/public/ANCOHzt8uG7pH8bVNTkJGeXWQ3TBrlPLVehtmzRU.png'),
(42, 'HP', 'http://superadmin.laptopcitypro.com/storage/app/public/8tQk9tKAb5hMwRpKoQdQeor5z6EWwZ6FCnNliPbR.png'),
(43, 'DELL', 'http://superadmin.laptopcitypro.com/storage/app/public/9rTDmSMZMQImu99rGMMXHY94OyUxHCxwI6mtLub7.png'),
(44, 'ACER', 'http://superadmin.laptopcitypro.com/storage/app/public/jTLmdCAflGuCrTWdXSBd7oigEFwIdx6mmrlaY5yC.png'),
(45, 'MSI', 'http://superadmin.laptopcitypro.com/storage/app/public/AMz1aTX9um139c5oTHMRrZ2qbdbxceUcch5yHJCk.png'),
(46, 'iLife', 'http://superadmin.laptopcitypro.com/storage/app/public/BSSaFN4tZL8EOyuVhWyoufEsj2ZPakxRkvMpdZ0K.png'),
(47, 'AVITA', 'http://superadmin.laptopcitypro.com/storage/app/public/p1HkX4jRTLJZs7cOPES8ikshfrfH6zI6tKtlrZc1.png'),
(48, 'AORUS', 'http://superadmin.laptopcitypro.com/storage/app/public/Eed6kd7CyRKq3gOSLuXdzRKm6vzkcuSa2U4YBVdD.png'),
(49, 'MacBook', 'http://superadmin.laptopcitypro.com/storage/app/public/G6OI2CWZ0igDw3QpoCkl9GD7hEbyG63yP2d50wZx.png'),
(50, 'Rapoo', 'http://superadmin.laptopcitypro.com/storage/app/public/axYQzR5FIXfaHpiNx7AhohiMyuOZqkrwBkaM0S0j.png'),
(51, 'ADATA', 'http://superadmin.laptopcitypro.com/storage/app/public/2qMcK75HGhwVtaVqQ5ozUFue0A5v8ULYmEpGGf0U.png'),
(52, 'A4-TECH', 'http://superadmin.laptopcitypro.com/storage/app/public/CfzuzWmxmfBTw3IqJ2SvQAjLQ3gI9gtKvay7X7q5.png'),
(54, 'Western Digital', 'http://superadmin.laptopcitypro.com/storage/app/public/6nQWMJw3YAWjOhKiz5vOLxGSDJt4LgklIGBCxsnA.png'),
(55, 'Silicon Power', 'http://superadmin.laptopcitypro.com/storage/app/public/FeOIIZB90yLBh7XjwIQewq0oVNZaQApOyowiflAP.png'),
(56, 'Logitech', 'http://superadmin.laptopcitypro.com/storage/app/public/aw6HJcfic3KrIaiBTzkWtEbwRpGKzDfT1wiSNzt8.png'),
(57, 'PNY', 'http://superadmin.laptopcitypro.com/storage/app/public/O0NnNiy2EefR6NxAkXlg3M6y10gGxzsytJP7Z6nd.png'),
(58, 'Transcend', 'http://superadmin.laptopcitypro.com/storage/app/public/jsN19J4fRUIniBa27ne64Fh27HJHD3x7RVNWfiC4.png'),
(59, 'Corsair', 'http://superadmin.laptopcitypro.com/storage/app/public/T3qexoiBul3Mp8nUqHguJh3drQ4EC11EXJ8mxqOk.png'),
(60, 'Havit', 'http://superadmin.laptopcitypro.com/storage/app/public/JatIpfErs6x2yfx8roxWxlyHOwUXkmW9OnTsp1Lw.png');

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_list`
--

INSERT INTO `cart_list` (`id`, `user_id`, `product_code`, `product_name`, `product_image`, `product_color`, `product_size`, `unit_price`, `product_quantity`, `total_price`, `shop_name`, `shop_code`) VALUES
(5, '1', 'P1019', 'Samsung Galaxy Note20 Ultra', 'https://ecom-admin.coderanwar.online/storage/app/public/Samsung-Galaxy-Note-20.jpg', NULL, NULL, '132000', '4', '528000', 'Laptop City', 'Laptop City'),
(8, '1', 'P1010', 'Dell Latitude 15 3510 Core i3 10th Gen 15.6\" HD Laptop', 'https://ecom-admin.coderanwar.online/storage/app/public/5502-0001-500x500.jpg', 'Black', NULL, '47000', '6', '282000', 'Laptop City', 'Laptop City'),
(9, '1', 'P1023', 'Suzuki-GSX-R150', 'https://ecom-admin.coderanwar.online/storage/app/public/Suzuki-GSX-R150.png', NULL, NULL, '350000', '1', '350000', 'Bike City', 'Bike City'),
(14, '25', 'P1011', 'Asus VivoBook S15 M533UA Ryzen 5 5500U 15.6\" FHD Laptop', 'https://ecom-admin.coderanwar.online/storage/app/public/s433ea-001-500x500.jpg', NULL, NULL, '73000', '7', '511000', 'Laptop City', 'Laptop City'),
(15, '22', 'P1016', 'Xiaomi Mi 11X Pro', 'https://ecom-admin.coderanwar.online/storage/app/public/Xiaomi-Mi-11X-image.jpg', NULL, NULL, '47500', '3', '142500', 'Mobile City', 'Mobile City'),
(16, '22', 'P1017', 'Vivo Y50', 'https://ecom-admin.coderanwar.online/storage/app/public/Vivo-Y50-Bangladesh.jpg', NULL, NULL, '18000', '2', '36000', 'Mobile City', 'Mobile City');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_image`) VALUES
(1, 'LAPTOP', 'https://ecom-admin.coderanwar.online/storage/app/public/s433ea-001-500x500.jpg'),
(2, 'MOBILE', 'https://ecom-admin.coderanwar.online/storage/app/public/Oppo-F17-Pro-blue.jpg'),
(3, 'REFRIGERATOR', 'https://ecom-admin.coderanwar.online/storage/app/public/bcd-218r-ng.jpg'),
(4, 'BIKE', 'https://ecom-admin.coderanwar.online/storage/app/public/Suzuki-GSX-R150.png'),
(5, 'AC', 'https://ecom-admin.coderanwar.online/storage/app/public/green_inverter-sb_3.jpg'),
(6, 'TV', 'https://ecom-admin.coderanwar.online/storage/app/public/w800f-500x500.jpg'),
(7, 'FOOD', 'https://ecom-admin.coderanwar.online/storage/app/public/food.jpg'),
(8, 'FRUITS', 'https://ecom-admin.coderanwar.online/storage/app/public/fruits.jpg'),
(9, 'MICRO OVEN', 'https://ecom-admin.coderanwar.online/storage/app/public/930mco-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `confirm_order`
--

CREATE TABLE `confirm_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_charge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `confirm_order`
--

INSERT INTO `confirm_order` (`id`, `user_id`, `product_code`, `product_name`, `product_image`, `product_color`, `product_size`, `unit_price`, `product_quantity`, `total_price`, `shop_name`, `shop_code`, `customer_city`, `payment_method`, `delivery_charge`, `customer_name`, `customer_mobile`, `customer_address`, `order_status`) VALUES
(1, '1', 'P1010', 'Dell Latitude 15 3510 Core i3 10th Gen 15.6\" HD Laptop', 'https://ecom-admin.coderanwar.online/storage/app/public/5502-0001-500x500.jpg', 'Black', 'N/A', '47000', '2', '94000', 'Laptop City', 'Laptop City', 'Dhaka', 'Cash On Delivery', '50', 'Md Anwar Hossain', '01754253620', 'Polashbari, Dhaka', 'Pending'),
(2, '9', 'P1023', 'Suzuki-GSX-R150', 'https://ecom-admin.coderanwar.online/storage/app/public/Suzuki-GSX-R150.png', NULL, NULL, '350000', '1', '350000', 'Bike City', 'Bike City', 'Dhaka', 'Cash On Delivery', '50', 'uttamm', '01919486006', 'Mymensingh sadar', 'Pending'),
(3, '9', 'P1023', 'Suzuki-GSX-R150', 'https://ecom-admin.coderanwar.online/storage/app/public/Suzuki-GSX-R150.png', NULL, NULL, '350000', '2', '700000', 'Bike City', 'Bike City', 'Dhaka', 'Cash On Delivery', '50', 'te', '01919486009', 'beltoli,mymensingh', 'Pending'),
(4, '22', 'P1010', 'Dell Latitude 15 3510 Core i3 10th Gen 15.6\" HD Laptop', 'https://ecom-admin.coderanwar.online/storage/app/public/5502-0001-500x500.jpg', 'Black', NULL, '47000', '2', '94000', 'Laptop City', 'Laptop City', 'Mymensingh', 'Cash On Delivery', '150', 'Md Anwar Hossain', '01794030592', 'Polashbari, Ashulia, Dhaka-1341', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `contact_date`, `contact_time`) VALUES
(3, 'Md Anwar Hossain', 'abc@gmail.com', 'I am proud of your services', '27-07-2021', '12:09:46am'),
(5, 'Md Anwar Hossain', 'abc@gmail.com', 'Good Products', '27-07-2021', '12:15:48am'),
(6, 'Webslesson', 'webslesson@info.com', 'Eid Mubarak from my youtube channel', '27-07-2021', '09:26:19am'),
(7, 'Md. Anwar Hossain', 'support@coderanwar.com', 'Can i buy fresh fruits?', '03-08-2021', '12:18:06am'),
(8, 'Md Anwar Hossain', 'anwarhossain7736@gmail.com', 'Hey there,\r\nGood Morning!', '04-08-2021', '10:06:01am');

-- --------------------------------------------------------

--
-- Table structure for table `email_otp_verification`
--

CREATE TABLE `email_otp_verification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_otp_verification`
--

INSERT INTO `email_otp_verification` (`id`, `email`, `otp`, `time`, `date`) VALUES
(18, 'anwarhossain7736@gmail.com', '542029', '04:29:46am', '2021-08-02'),
(19, 'anwarhossain7736@gmail.com', '394710', '04:41:48am', '2021-08-02'),
(20, 'anwarhossain7736@gmail.com', '626103', '05:34:03am', '2021-08-02'),
(21, 'anwarhossain7736@gmail.com', '737127', '06:13:04am', '2021-08-02'),
(22, 'anwarhossain7736@gmail.com', '815126', '06:14:40am', '2021-08-02'),
(23, 'anwarhossain7736@gmail.com', '561155', '06:16:41am', '2021-08-02'),
(24, 'anwarhossain7736@gmail.com', '113017', '06:20:44am', '2021-08-02'),
(25, 'anwarhossain7736@gmail.com', '710199', '06:27:09am', '2021-08-02'),
(26, 'anwarhossain7736@gmail.com', '504965', '06:35:29am', '2021-08-02'),
(27, 'anwarhossain7736@gmail.com', '560504', '06:45:00am', '2021-08-02'),
(28, 'anwarhossain7736@gmail.com', '219981', '10:31:45am', '2021-08-02'),
(29, 'shahinhosen@protonmail.com', '702573', '12:21:40pm', '2021-08-02'),
(30, 'shahinhosen@protonmail.com', '405109', '12:23:53pm', '2021-08-02'),
(31, 'shahinhosen@protonmail.com', '962636', '12:24:36pm', '2021-08-02'),
(32, 'shahinhosen@protonmail.com', '965328', '12:24:49pm', '2021-08-02'),
(33, 'shahinhosen@protonmail.com', '183797', '12:26:43pm', '2021-08-02'),
(34, 'shahinhosen@protonmail.com', '301573', '12:26:55pm', '2021-08-02'),
(35, 'shahinhosen@protonmail.com', '613852', '12:27:05pm', '2021-08-02'),
(36, 'shahinhosen@protonmail.com', '857480', '12:27:14pm', '2021-08-02'),
(37, 'shahinhosen@protonmail.com', '893200', '12:27:25pm', '2021-08-02'),
(38, 'shahinhosen@protonmail.com', '586504', '12:28:47pm', '2021-08-02'),
(39, 'anwarhossain7736@gmail.com', '589696', '04:36:33am', '2021-08-04'),
(40, 'anwarhossain7736@gmail.com', '455462', '10:07:49am', '2021-08-04'),
(41, 'mdshahjahansheikh1995@gmail.com', '418917', '11:41:26am', '2021-08-09');

-- --------------------------------------------------------

--
-- Table structure for table `fav_list`
--

CREATE TABLE `fav_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2021_06_21_182822_create_site_info_table', 3),
(5, '2021_06_22_160615_create_category_table', 4),
(6, '2021_06_22_160711_create_subcategory_table', 4),
(9, '2021_06_24_175234_slider_table', 6),
(17, '2021_06_26_195926_users_table', 10),
(35, '2021_06_26_162957_notification_table', 17),
(36, '2021_07_18_173527_notification_info', 17),
(40, '2021_06_20_163430_create_visitor_table', 18),
(41, '2021_06_21_172250_create_contact_table', 18),
(42, '2021_06_23_150852_product_list_table', 18),
(43, '2021_06_24_201134_product_details_table', 18),
(44, '2021_06_25_061537_review_list_table', 18),
(45, '2021_06_30_161154_favourite_table', 18),
(46, '2021_06_30_163639_cart_list_table', 19),
(47, '2021_07_02_043508_confirm_order_table', 19),
(48, '2021_08_01_153542_email_otp_verification', 20),
(49, '2020_10_25_213907_admin_table', 21),
(50, '2020_10_25_214208_home_seo_table', 22),
(51, '2023_04_14_183657_create_orders_table', 23),
(52, '2023_04_14_183939_create_order_lines_table', 24),
(53, '2023_04_14_184013_create_order_payments_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `message`, `date`, `time`) VALUES
(1, 'Hey', 'What\'s up', '2021-07-18', '11:46:18pm'),
(2, 'Hello', 'Message From Admin', '2021-07-18', '11:47:41pm'),
(3, 'Hi', 'Message From Super Admin', '2021-07-18', '11:48:09pm'),
(4, 'Hello', 'Message From Administrator', '2021-07-19', '02:44:38am'),
(5, 'Hello', 'Message From Administrator', '2021-07-19', '03:32:59am'),
(6, 'Hello', 'Message From Administrator', '2021-07-20', '11:54:57am'),
(7, 'Hello', 'Message From Administrator', '2021-07-20', '12:35:33pm'),
(8, 'Hello', 'Message From Administrator', '2021-07-20', '12:35:34pm');

-- --------------------------------------------------------

--
-- Table structure for table `notification_info`
--

CREATE TABLE `notification_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notification_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_info`
--

INSERT INTO `notification_info` (`id`, `notification_id`, `user_id`, `status`) VALUES
(1, '1', '1', 'unread'),
(6, '2', '1', 'unread'),
(11, '3', '1', 'unread'),
(16, '4', '1', 'unread'),
(21, '5', '1', 'unread'),
(27, '6', '1', 'unread'),
(33, '7', '1', 'unread'),
(39, '8', '1', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(16,2) NOT NULL,
  `total_discount` decimal(16,2) NOT NULL,
  `delivery_charge` decimal(16,2) NOT NULL,
  `final_amount` decimal(16,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'unpaid',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `invoice_no`, `name`, `phone`, `address`, `total_amount`, `total_discount`, `delivery_charge`, `final_amount`, `payment_method`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(5, 22, '12566621', 'Md Anwar Hossain', '01794030592', 'Mohammadpur, Dhaka-1207', '1411070.00', '0.00', '150.00', '1411220.00', 'cash', 'unpaid', 'pending', '2023-04-14 15:43:49', '2023-04-14 15:43:49'),
(6, 22, '27983574', 'Md Anwar Hossain', '01795700838', 'Mohammadpur, Dhaka-1207', '459000.00', '0.00', '80.00', '459080.00', 'cash', 'unpaid', 'pending', '2023-04-14 15:46:15', '2023-04-14 15:46:15'),
(7, 22, '90831045', 'Md Anwar Hossain', '01688182028', 'Mohammadpur', '319950.00', '0.00', '150.00', '320100.00', 'bkash', 'paid', 'pending', '2023-04-14 15:48:01', '2023-04-14 15:48:01'),
(8, 22, '77395037', 'Anwar', '01998839860', 'Mohammadpur', '71100.00', '0.00', '80.00', '71180.00', 'cash', 'unpaid', 'pending', '2023-04-14 16:39:07', '2023-04-14 16:39:07'),
(9, 22, '15327880', 'Md Anwar Hossain', '01794030592', 'Mohammadpur, Dhaka', '35550.00', '0.00', '80.00', '35630.00', 'cash', 'unpaid', 'pending', '2023-04-14 20:34:05', '2023-04-14 20:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `order_lines`
--

CREATE TABLE `order_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `productlist_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(16,2) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_lines`
--

INSERT INTO `order_lines` (`id`, `order_id`, `productlist_id`, `price`, `size`, `color`, `quantity`, `discount`, `created_at`, `updated_at`) VALUES
(4, 5, 2, '73000.00', '', '', '2.00', '0.00', '2023-04-14 15:43:49', '2023-04-14 15:43:49'),
(5, 5, 11, '91690.00', '', '', '3.00', '0.00', '2023-04-14 15:43:49', '2023-04-14 15:43:49'),
(6, 5, 13, '165000.00', '', '', '6.00', '0.00', '2023-04-14 15:43:49', '2023-04-14 15:43:49'),
(7, 6, 2, '73000.00', '', '', '3.00', '0.00', '2023-04-14 15:46:15', '2023-04-14 15:46:15'),
(8, 6, 6, '60000.00', '', '', '4.00', '0.00', '2023-04-14 15:46:15', '2023-04-14 15:46:15'),
(9, 7, 3, '35550.00', '', '', '10.00', '0.00', '2023-04-14 15:48:01', '2023-04-14 15:48:01'),
(10, 8, 3, '35550.00', '', '', '1.00', '0.00', '2023-04-14 16:39:07', '2023-04-14 16:39:07'),
(11, 9, 3, '35550.00', '', '', '1.00', '0.00', '2023-04-14 20:34:05', '2023-04-14 20:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'BDT',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'success',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_payments`
--

INSERT INTO `order_payments` (`id`, `user_id`, `order_id`, `amount`, `transaction_id`, `payment_id`, `currency`, `status`, `created_at`, `updated_at`) VALUES
(1, 22, 7, '320100.00', 'DFD231256DF', 'AFE1254DF', 'BDT', 'success', '2023-04-15 00:36:48', '2023-04-15 00:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `productlist`
--

CREATE TABLE `productlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productlist`
--

INSERT INTO `productlist` (`id`, `name`, `price`, `special_price`, `image`, `category`, `subcategory`, `remark`, `brand`, `shop`, `shop_name`, `star`, `code`, `stock`) VALUES
(1, 'Dell Latitude 15 3510 Core i3 10th Gen 15.6\" HD Laptop', '49000', '47000', 'https://ecom-admin.coderanwar.online/storage/app/public/5502-0001-500x500.jpg', 'LAPTOP', 'Dell', 'TOP', 'Dell', 'Laptop City', 'Laptop City', '5', 'P1010', '10'),
(2, 'Asus VivoBook S15 M533UA Ryzen 5 5500U 15.6\" FHD Laptop', '74000', '73000', 'https://ecom-admin.coderanwar.online/storage/app/public/s433ea-001-500x500.jpg', 'LAPTOP', 'Asus', 'TOP', 'Asus', 'Laptop City', 'Laptop City', '5', 'P1011', '10'),
(3, 'Walton Laptop Tamarind ZX3700 | 7th Gen Intel Core i3-7020U 2.30GHz | 1TB HDD | 4GB DDR4 RAM | 14 inch HD Display.', '35550', 'NA', 'https://ecom-admin.coderanwar.online/storage/app/public/Passion-2019-WPBX48U7BL.jpg', 'LAPTOP', 'Walton', 'TOP', 'Walton', 'Laptop City', 'Laptop City', '5', 'P1012', '10'),
(4, 'HP Pavilion 13-bb0071TU 11th Gen Intel Core i5-1135G7, 2.4 to 4.2GHz, 8GB DDR4, 512GB SSD, Win10, 13.3\" FHD Laptop', '79500', 'NA', 'https://ecom-admin.coderanwar.online/storage/app/public/Passion-2019-WPBX48U7BL.jpg', 'LAPTOP', 'HP', 'COLLECTION', 'HP', 'Laptop City', 'Laptop City', '5', 'P1013', '10'),
(5, 'Lenovo V14 IIL Core i3 10th Gen 4GB Ram, 1TB HDD, 14 Inch Business Series Laptop', '40000', '38500', 'https://ecom-admin.coderanwar.online/storage/app/public/ideapad-slim-3i-001-500x500.jpg', 'LAPTOP', 'Lenovo', 'COLLECTION', 'Lenovo', 'Laptop City', 'Laptop City', '5', 'P1014', '10'),
(6, 'Acer Aspire 3 A315-56-54L6 Intel I5-1035G1 1.00 UP TO 3.6 GHz, 8GB RAM, 1TB HDD, 15.6 Inch FHD Display, Windows 10', '60000', 'NA', 'https://ecom-admin.coderanwar.online/storage/app/public/latitude-5410-1-500x500.jpg', 'LAPTOP', 'Acer', 'TOP', 'Acer', 'Laptop City', 'Laptop City', '5', 'P1015', '10'),
(7, 'Xiaomi Mi 11X Pro', '49000', '47500', 'https://ecom-admin.coderanwar.online/storage/app/public/Xiaomi-Mi-11X-image.jpg', 'MOBILE', 'Xiaomi', 'TOP', 'Xiaomi', 'Mobile City', 'Mobile City', '5', 'P1016', '10'),
(8, 'Vivo Y50', '19000', '18000', 'https://ecom-admin.coderanwar.online/storage/app/public/Vivo-Y50-Bangladesh.jpg', 'MOBILE', 'Vivo', 'COLLECTION', 'Vivo', 'Mobile City', 'Mobile City', '5', 'P1017', '10'),
(9, 'Oppo F17 Pro', '25000', 'NA', 'https://ecom-admin.coderanwar.online/storage/app/public/Oppo-F17-Pro-blue.jpg', 'MOBILE', 'Oppo', 'NEW', 'Oppo', 'Mobile City', 'Mobile City', '5', 'P1018', '10'),
(10, 'Samsung Galaxy Note20 Ultra', '134000', '132000', 'https://ecom-admin.coderanwar.online/storage/app/public/Samsung-Galaxy-Note-20.jpg', 'MOBILE', 'Samsung', 'COLLECTION', 'Samsung', 'Laptop City', 'Laptop City', '5', 'P1019', '10'),
(11, 'Refrigerator 521 Ltr Singer Side by Side', '101690', '91690', 'https://ecom-admin.coderanwar.online/storage/app/public/ff2-69d-new.jpg', 'REFRIGERATOR', 'Singer', 'TOP', 'Singer', 'Refrigerator City', 'Refrigerator City', '5', 'P1020', '10'),
(12, ' WFC-3F5-GDNE-XX (Inverter)', '40000', '39000', 'https://ecom-admin.coderanwar.online/storage/app/public/Screenshot 2021-07-08 at 12-16-12 WFC-3D8-GDXX.png', 'REFRIGERATOR', 'Walton', 'NEW', 'Walton', 'Refrigerator City', 'Refrigerator City', '5', 'P1021', '10'),
(13, 'Bajaj Pulsar RS200', '165000', 'NA', 'https://ecom-admin.coderanwar.online/storage/app/public/Bajaj Pulsar RS 200 .png', 'BIKE', 'Bajaj', 'NEW', 'Bajaj', 'Bike City', 'Bike City', '5', 'P1022', '10'),
(14, 'Suzuki-GSX-R150', '350000', 'NA', 'https://ecom-admin.coderanwar.online/storage/app/public/Suzuki-GSX-R150.png', 'BIKE', 'Suzuki', 'NEW', 'Suzuki', 'Bike City', 'Bike City', '5', 'P1023', '10'),
(15, 'Air Conditioner 1.5 Ton Singer Wifi Inverter (Hot & Cool)', '71000', '70550', 'https://ecom-admin.coderanwar.online/storage/app/public/wifi-inv-sb_2.jpg', 'AC', 'Singer', 'COLLECTION', 'Singer', 'AC City', 'AC City', '5', 'P1024', '10'),
(17, 'Microwave Oven 30 Ltr', '17000', '15000', 'https://ecom-admin.coderanwar.online/storage/app/public/930mco-1.jpg', 'MICRO OVEN', 'Singer', 'NEW', 'Singer', 'OVEN City', 'OVEN City', '5', 'P1026', '10'),
(22, 'ABC', '125', 'NA', 'https://ecom-admin.coderanwar.online/storage/app/public/WVH7uOY2UnjLDCiBwuOOXOxw6oW5gleIqzCd5nsR.jpg', 'FOOD', 'Baby Food', 'NEW', 'Havit', '', '', '2', '123', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_code`, `img1`, `img2`, `img3`, `img4`, `des`, `color`, `size`, `details`) VALUES
(1, 'P1010', 'https://ecom-admin.coderanwar.online/storage/app/public/5502-0001-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/zbook-create-g7-03-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/zbook-power-g7-03-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/ideapad-slim-3i-001-500x500.jpg', 'The HP ZBook Power G7 Mobile Workstation comes with Intel Xeon W-10855M Processor (12M Cache, 2.80 GHz up to 5.10 GHz), 16 GB DDR4-2666 ECC SDRAM, 1 TB PCIe NVMe M.2 SSD, and NVIDIA Quadro T2000 4GB with Max-Q Graphics. It has a super-bright, high-resolut', 'Black, White', 'NA', 'The HP ZBook Power G7 Mobile Workstation comes with Intel Xeon W-10855M Processor (12M Cache, 2.80 GHz up to 5.10 GHz), 16 GB DDR4-2666 ECC SDRAM, 1 TB PCIe NVMe M.2 SSD, and NVIDIA Quadro T2000 4GB with Max-Q Graphics. It has a super-bright, high-resolution display in a modern, slim-bezel design. It has a 15.6\" diagonal FHD IPS eDP1.2 anti-glare bent WLED-backlit and ambient light sensor 250 nits 45% NTSC (1920 x 1080) display. Work anywhere without compromising on performance or security with Windows 10 Pro, powered by HP’s collaboration and connectivity technology. It features Audio by Bang & Olufsen, dual stereo speakers, HP World Facing Microphone dual array digital microphone, functions keys for volume up and down, combo microphone/headphone jack, HD audio. Open large files and run apps simultaneously for speedy multi-tasking and productivity with the next generation NVIDIA Quadro T2000 with Max-Q Design 4GB of video memory.  It has a re-designed keyboard. With rubber domes, a power button, and a quiet clickpad for a comfortable experience. The clamshell hinges open almost flat at 170-degree, for easy collaboration and comfortable viewing. It has a 720p HD webcam with IR. It comes with a Fingerprint reader and it has a Trusted Platform Module TPM 2.0 Embedded Security Chip. The workstation is powered by a HP Long Life 6-cell, 83 Wh Li-ion polymer battery and it comes with a 150 W Slim Smart external AC power adapter. It supports fast charging. In the office or in the field, with pro-level performance and a beautiful bright display, you have everything you need to review work and manage projects from anywhere. The HP ZBook Power G7 Mobile Workstation comes with 3 years of warranty.'),
(2, 'P1011', 'https://ecom-admin.coderanwar.online/storage/app/public/5502-0001-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/zbook-create-g7-03-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/zbook-power-g7-03-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/ideapad-slim-3i-001-500x500.jpg', 'The HP ZBook Power G7 Mobile Workstation comes with Intel Xeon W-10855M Processor (12M Cache, 2.80 GHz up to 5.10 GHz), 16 GB DDR4-2666 ECC SDRAM, 1 TB PCIe NVMe M.2 SSD, and NVIDIA Quadro T2000 4GB with Max-Q Graphics. It has a super-bright, high-resolut', 'NA', 'NA', 'The HP ZBook Power G7 Mobile Workstation comes with Intel Xeon W-10855M Processor (12M Cache, 2.80 GHz up to 5.10 GHz), 16 GB DDR4-2666 ECC SDRAM, 1 TB PCIe NVMe M.2 SSD, and NVIDIA Quadro T2000 4GB with Max-Q Graphics. It has a super-bright, high-resolution display in a modern, slim-bezel design. It has a 15.6\" diagonal FHD IPS eDP1.2 anti-glare bent WLED-backlit and ambient light sensor 250 nits 45% NTSC (1920 x 1080) display. Work anywhere without compromising on performance or security with Windows 10 Pro, powered by HP’s collaboration and connectivity technology. It features Audio by Bang & Olufsen, dual stereo speakers, HP World Facing Microphone dual array digital microphone, functions keys for volume up and down, combo microphone/headphone jack, HD audio. Open large files and run apps simultaneously for speedy multi-tasking and productivity with the next generation NVIDIA Quadro T2000 with Max-Q Design 4GB of video memory.  It has a re-designed keyboard. With rubber domes, a power button, and a quiet clickpad for a comfortable experience. The clamshell hinges open almost flat at 170-degree, for easy collaboration and comfortable viewing. It has a 720p HD webcam with IR. It comes with a Fingerprint reader and it has a Trusted Platform Module TPM 2.0 Embedded Security Chip. The workstation is powered by a HP Long Life 6-cell, 83 Wh Li-ion polymer battery and it comes with a 150 W Slim Smart external AC power adapter. It supports fast charging. In the office or in the field, with pro-level performance and a beautiful bright display, you have everything you need to review work and manage projects from anywhere. The HP ZBook Power G7 Mobile Workstation comes with 3 years of warranty.'),
(3, 'P1012', 'https://ecom-admin.coderanwar.online/storage/app/public/5502-0001-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/zbook-create-g7-03-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/zbook-power-g7-03-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/ideapad-slim-3i-001-500x500.jpg', 'The HP ZBook Power G7 Mobile Workstation comes with Intel Xeon W-10855M Processor (12M Cache, 2.80 GHz up to 5.10 GHz), 16 GB DDR4-2666 ECC SDRAM, 1 TB PCIe NVMe M.2 SSD, and NVIDIA Quadro T2000 4GB with Max-Q Graphics. It has a super-bright, high-resolut', 'NA', 'NA', 'The HP ZBook Power G7 Mobile Workstation comes with Intel Xeon W-10855M Processor (12M Cache, 2.80 GHz up to 5.10 GHz), 16 GB DDR4-2666 ECC SDRAM, 1 TB PCIe NVMe M.2 SSD, and NVIDIA Quadro T2000 4GB with Max-Q Graphics. It has a super-bright, high-resolution display in a modern, slim-bezel design. It has a 15.6\" diagonal FHD IPS eDP1.2 anti-glare bent WLED-backlit and ambient light sensor 250 nits 45% NTSC (1920 x 1080) display. Work anywhere without compromising on performance or security with Windows 10 Pro, powered by HP’s collaboration and connectivity technology. It features Audio by Bang & Olufsen, dual stereo speakers, HP World Facing Microphone dual array digital microphone, functions keys for volume up and down, combo microphone/headphone jack, HD audio. Open large files and run apps simultaneously for speedy multi-tasking and productivity with the next generation NVIDIA Quadro T2000 with Max-Q Design 4GB of video memory.  It has a re-designed keyboard. With rubber domes, a power button, and a quiet clickpad for a comfortable experience. The clamshell hinges open almost flat at 170-degree, for easy collaboration and comfortable viewing. It has a 720p HD webcam with IR. It comes with a Fingerprint reader and it has a Trusted Platform Module TPM 2.0 Embedded Security Chip. The workstation is powered by a HP Long Life 6-cell, 83 Wh Li-ion polymer battery and it comes with a 150 W Slim Smart external AC power adapter. It supports fast charging. In the office or in the field, with pro-level performance and a beautiful bright display, you have everything you need to review work and manage projects from anywhere. The HP ZBook Power G7 Mobile Workstation comes with 3 years of warranty.'),
(4, 'P1013', 'https://ecom-admin.coderanwar.online/storage/app/public/5502-0001-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/zbook-create-g7-03-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/zbook-power-g7-03-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/ideapad-slim-3i-001-500x500.jpg', 'The HP ZBook Power G7 Mobile Workstation comes with Intel Xeon W-10855M Processor (12M Cache, 2.80 GHz up to 5.10 GHz), 16 GB DDR4-2666 ECC SDRAM, 1 TB PCIe NVMe M.2 SSD, and NVIDIA Quadro T2000 4GB with Max-Q Graphics. It has a super-bright, high-resolut', 'Black, White', 'NA', 'The HP ZBook Power G7 Mobile Workstation comes with Intel Xeon W-10855M Processor (12M Cache, 2.80 GHz up to 5.10 GHz), 16 GB DDR4-2666 ECC SDRAM, 1 TB PCIe NVMe M.2 SSD, and NVIDIA Quadro T2000 4GB with Max-Q Graphics. It has a super-bright, high-resolution display in a modern, slim-bezel design. It has a 15.6\" diagonal FHD IPS eDP1.2 anti-glare bent WLED-backlit and ambient light sensor 250 nits 45% NTSC (1920 x 1080) display. Work anywhere without compromising on performance or security with Windows 10 Pro, powered by HP’s collaboration and connectivity technology. It features Audio by Bang & Olufsen, dual stereo speakers, HP World Facing Microphone dual array digital microphone, functions keys for volume up and down, combo microphone/headphone jack, HD audio. Open large files and run apps simultaneously for speedy multi-tasking and productivity with the next generation NVIDIA Quadro T2000 with Max-Q Design 4GB of video memory.  It has a re-designed keyboard. With rubber domes, a power button, and a quiet clickpad for a comfortable experience. The clamshell hinges open almost flat at 170-degree, for easy collaboration and comfortable viewing. It has a 720p HD webcam with IR. It comes with a Fingerprint reader and it has a Trusted Platform Module TPM 2.0 Embedded Security Chip. The workstation is powered by a HP Long Life 6-cell, 83 Wh Li-ion polymer battery and it comes with a 150 W Slim Smart external AC power adapter. It supports fast charging. In the office or in the field, with pro-level performance and a beautiful bright display, you have everything you need to review work and manage projects from anywhere. The HP ZBook Power G7 Mobile Workstation comes with 3 years of warranty.'),
(5, 'P1014', 'https://ecom-admin.coderanwar.online/storage/app/public/5502-0001-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/zbook-create-g7-03-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/zbook-power-g7-03-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/ideapad-slim-3i-001-500x500.jpg', 'The HP ZBook Power G7 Mobile Workstation comes with Intel Xeon W-10855M Processor (12M Cache, 2.80 GHz up to 5.10 GHz), 16 GB DDR4-2666 ECC SDRAM, 1 TB PCIe NVMe M.2 SSD, and NVIDIA Quadro T2000 4GB with Max-Q Graphics. It has a super-bright, high-resolut', 'NA', 'NA', 'The HP ZBook Power G7 Mobile Workstation comes with Intel Xeon W-10855M Processor (12M Cache, 2.80 GHz up to 5.10 GHz), 16 GB DDR4-2666 ECC SDRAM, 1 TB PCIe NVMe M.2 SSD, and NVIDIA Quadro T2000 4GB with Max-Q Graphics. It has a super-bright, high-resolution display in a modern, slim-bezel design. It has a 15.6\" diagonal FHD IPS eDP1.2 anti-glare bent WLED-backlit and ambient light sensor 250 nits 45% NTSC (1920 x 1080) display. Work anywhere without compromising on performance or security with Windows 10 Pro, powered by HP’s collaboration and connectivity technology. It features Audio by Bang & Olufsen, dual stereo speakers, HP World Facing Microphone dual array digital microphone, functions keys for volume up and down, combo microphone/headphone jack, HD audio. Open large files and run apps simultaneously for speedy multi-tasking and productivity with the next generation NVIDIA Quadro T2000 with Max-Q Design 4GB of video memory.  It has a re-designed keyboard. With rubber domes, a power button, and a quiet clickpad for a comfortable experience. The clamshell hinges open almost flat at 170-degree, for easy collaboration and comfortable viewing. It has a 720p HD webcam with IR. It comes with a Fingerprint reader and it has a Trusted Platform Module TPM 2.0 Embedded Security Chip. The workstation is powered by a HP Long Life 6-cell, 83 Wh Li-ion polymer battery and it comes with a 150 W Slim Smart external AC power adapter. It supports fast charging. In the office or in the field, with pro-level performance and a beautiful bright display, you have everything you need to review work and manage projects from anywhere. The HP ZBook Power G7 Mobile Workstation comes with 3 years of warranty.'),
(6, 'P1015', 'https://ecom-admin.coderanwar.online/storage/app/public/5502-0001-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/zbook-create-g7-03-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/zbook-power-g7-03-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/ideapad-slim-3i-001-500x500.jpg', 'The HP ZBook Power G7 Mobile Workstation comes with Intel Xeon W-10855M Processor (12M Cache, 2.80 GHz up to 5.10 GHz), 16 GB DDR4-2666 ECC SDRAM, 1 TB PCIe NVMe M.2 SSD, and NVIDIA Quadro T2000 4GB with Max-Q Graphics. It has a super-bright, high-resolut', 'NA', 'NA', 'The HP ZBook Power G7 Mobile Workstation comes with Intel Xeon W-10855M Processor (12M Cache, 2.80 GHz up to 5.10 GHz), 16 GB DDR4-2666 ECC SDRAM, 1 TB PCIe NVMe M.2 SSD, and NVIDIA Quadro T2000 4GB with Max-Q Graphics. It has a super-bright, high-resolution display in a modern, slim-bezel design. It has a 15.6\" diagonal FHD IPS eDP1.2 anti-glare bent WLED-backlit and ambient light sensor 250 nits 45% NTSC (1920 x 1080) display. Work anywhere without compromising on performance or security with Windows 10 Pro, powered by HP’s collaboration and connectivity technology. It features Audio by Bang & Olufsen, dual stereo speakers, HP World Facing Microphone dual array digital microphone, functions keys for volume up and down, combo microphone/headphone jack, HD audio. Open large files and run apps simultaneously for speedy multi-tasking and productivity with the next generation NVIDIA Quadro T2000 with Max-Q Design 4GB of video memory.  It has a re-designed keyboard. With rubber domes, a power button, and a quiet clickpad for a comfortable experience. The clamshell hinges open almost flat at 170-degree, for easy collaboration and comfortable viewing. It has a 720p HD webcam with IR. It comes with a Fingerprint reader and it has a Trusted Platform Module TPM 2.0 Embedded Security Chip. The workstation is powered by a HP Long Life 6-cell, 83 Wh Li-ion polymer battery and it comes with a 150 W Slim Smart external AC power adapter. It supports fast charging. In the office or in the field, with pro-level performance and a beautiful bright display, you have everything you need to review work and manage projects from anywhere. The HP ZBook Power G7 Mobile Workstation comes with 3 years of warranty.'),
(7, 'P1016', 'https://ecom-admin.coderanwar.online/storage/app/public/Oppo-F17-Pro-blue.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/OPPO A31 - 4GB RAM - 128GB.png', 'https://ecom-admin.coderanwar.online/storage/app/public/sfddf.png', 'https://ecom-admin.coderanwar.online/storage/app/public/Oppo-F17-Pro-blue.jpg', '\r\nOnline Mobile Store In USA - Search Online Mobile Store In USA\r\nবিজ্ঞাপন·https://bd.zapmeta.ws/search/now\r\nCheck out Online Mobile Store In USA. Save Time, and Find it Here. Wiki, News & More. The Complete Overview. Web, Images & Video. 100+ Million Vis', 'NA', 'NA', '\r\nOnline Mobile Store In USA - Search Online Mobile Store In USA\r\nবিজ্ঞাপন·https://bd.zapmeta.ws/search/now\r\nCheck out Online Mobile Store In USA. Save Time, and Find it Here. Wiki, News & More. The Complete Overview. Web, Images & Video. 100+ Million Visitors. Information 24/7. Trusted by Millions. Types: pdf, doc, ppt, xls, txt.\r\n\r\nHistory of mobile phones - Engineering Wiki - ethw.org\r\nবিজ্ঞাপন·http://www.ethw.org/telephones\r\nWorld\'s Premier Wiki For Engineering & Technology History. Get in Touch With Latest. Professional Satisfaction. First-Hand Histories. Trusted Primary Sources. Thousands Of Article. Fresh & Original Articles. Types: Communication Wiki, Bioengineering Wiki.\r\n‎Research Now · ‎Computing and electronics · ‎Energy · ‎Communications · ‎Environment\r\nলোকেরা এটাও সার্চ করেছেন\r\nWhat is mobile phone\r\nHistory of mobile phones\r\nAll mobile phone\r\nFirst mobile phone\r\nWho invented mobile phone\r\nFirst mobile phone in world\r\nMobile phone generation pictures\r\nMobile phone Paragraph\r\nA mobile phone (also known as a hand phone, cell phone, or cellular telephone) is a small portable radio telephone. The mobile phone can be used to communicate over long distances without wires. ... Now, more people are using smartphones than the old kind of mobile phone, which are called feature phones.'),
(8, 'P1017', 'https://ecom-admin.coderanwar.online/storage/app/public/Oppo-F17-Pro-blue.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/OPPO A31 - 4GB RAM - 128GB.png', 'https://ecom-admin.coderanwar.online/storage/app/public/sfddf.png', 'https://ecom-admin.coderanwar.online/storage/app/public/Oppo-F17-Pro-blue.jpg', '\r\nOnline Mobile Store In USA - Search Online Mobile Store In USA\r\nবিজ্ঞাপন·https://bd.zapmeta.ws/search/now\r\nCheck out Online Mobile Store In USA. Save Time, and Find it Here. Wiki, News & More. The Complete Overview. Web, Images & Video. 100+ Million Vis', 'NA', 'NA', '\r\nOnline Mobile Store In USA - Search Online Mobile Store In USA\r\nবিজ্ঞাপন·https://bd.zapmeta.ws/search/now\r\nCheck out Online Mobile Store In USA. Save Time, and Find it Here. Wiki, News & More. The Complete Overview. Web, Images & Video. 100+ Million Visitors. Information 24/7. Trusted by Millions. Types: pdf, doc, ppt, xls, txt.\r\n\r\nHistory of mobile phones - Engineering Wiki - ethw.org\r\nবিজ্ঞাপন·http://www.ethw.org/telephones\r\nWorld\'s Premier Wiki For Engineering & Technology History. Get in Touch With Latest. Professional Satisfaction. First-Hand Histories. Trusted Primary Sources. Thousands Of Article. Fresh & Original Articles. Types: Communication Wiki, Bioengineering Wiki.\r\n‎Research Now · ‎Computing and electronics · ‎Energy · ‎Communications · ‎Environment\r\nলোকেরা এটাও সার্চ করেছেন\r\nWhat is mobile phone\r\nHistory of mobile phones\r\nAll mobile phone\r\nFirst mobile phone\r\nWho invented mobile phone\r\nFirst mobile phone in world\r\nMobile phone generation pictures\r\nMobile phone Paragraph\r\nA mobile phone (also known as a hand phone, cell phone, or cellular telephone) is a small portable radio telephone. The mobile phone can be used to communicate over long distances without wires. ... Now, more people are using smartphones than the old kind of mobile phone, which are called feature phones.'),
(9, 'P1018', 'https://ecom-admin.coderanwar.online/storage/app/public/Oppo-F17-Pro-blue.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/OPPO A31 - 4GB RAM - 128GB.png', 'https://ecom-admin.coderanwar.online/storage/app/public/sfddf.png', 'https://ecom-admin.coderanwar.online/storage/app/public/Oppo-F17-Pro-blue.jpg', '\r\nOnline Mobile Store In USA - Search Online Mobile Store In USA\r\nবিজ্ঞাপন·https://bd.zapmeta.ws/search/now\r\nCheck out Online Mobile Store In USA. Save Time, and Find it Here. Wiki, News & More. The Complete Overview. Web, Images & Video. 100+ Million Vis', 'NA', 'NA', '\r\nOnline Mobile Store In USA - Search Online Mobile Store In USA\r\nবিজ্ঞাপন·https://bd.zapmeta.ws/search/now\r\nCheck out Online Mobile Store In USA. Save Time, and Find it Here. Wiki, News & More. The Complete Overview. Web, Images & Video. 100+ Million Visitors. Information 24/7. Trusted by Millions. Types: pdf, doc, ppt, xls, txt.\r\n\r\nHistory of mobile phones - Engineering Wiki - ethw.org\r\nবিজ্ঞাপন·http://www.ethw.org/telephones\r\nWorld\'s Premier Wiki For Engineering & Technology History. Get in Touch With Latest. Professional Satisfaction. First-Hand Histories. Trusted Primary Sources. Thousands Of Article. Fresh & Original Articles. Types: Communication Wiki, Bioengineering Wiki.\r\n‎Research Now · ‎Computing and electronics · ‎Energy · ‎Communications · ‎Environment\r\nলোকেরা এটাও সার্চ করেছেন\r\nWhat is mobile phone\r\nHistory of mobile phones\r\nAll mobile phone\r\nFirst mobile phone\r\nWho invented mobile phone\r\nFirst mobile phone in world\r\nMobile phone generation pictures\r\nMobile phone Paragraph\r\nA mobile phone (also known as a hand phone, cell phone, or cellular telephone) is a small portable radio telephone. The mobile phone can be used to communicate over long distances without wires. ... Now, more people are using smartphones than the old kind of mobile phone, which are called feature phones.'),
(10, 'P1019', 'https://ecom-admin.coderanwar.online/storage/app/public/Oppo-F17-Pro-blue.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/OPPO A31 - 4GB RAM - 128GB.png', 'https://ecom-admin.coderanwar.online/storage/app/public/sfddf.png', 'https://ecom-admin.coderanwar.online/storage/app/public/Oppo-F17-Pro-blue.jpg', '\r\nOnline Mobile Store In USA - Search Online Mobile Store In USA\r\nবিজ্ঞাপন·https://bd.zapmeta.ws/search/now\r\nCheck out Online Mobile Store In USA. Save Time, and Find it Here. Wiki, News & More. The Complete Overview. Web, Images & Video. 100+ Million Vis', 'NA', 'NA', '\r\nOnline Mobile Store In USA - Search Online Mobile Store In USA\r\nবিজ্ঞাপন·https://bd.zapmeta.ws/search/now\r\nCheck out Online Mobile Store In USA. Save Time, and Find it Here. Wiki, News & More. The Complete Overview. Web, Images & Video. 100+ Million Visitors. Information 24/7. Trusted by Millions. Types: pdf, doc, ppt, xls, txt.\r\n\r\nHistory of mobile phones - Engineering Wiki - ethw.org\r\nবিজ্ঞাপন·http://www.ethw.org/telephones\r\nWorld\'s Premier Wiki For Engineering & Technology History. Get in Touch With Latest. Professional Satisfaction. First-Hand Histories. Trusted Primary Sources. Thousands Of Article. Fresh & Original Articles. Types: Communication Wiki, Bioengineering Wiki.\r\n‎Research Now · ‎Computing and electronics · ‎Energy · ‎Communications · ‎Environment\r\nলোকেরা এটাও সার্চ করেছেন\r\nWhat is mobile phone\r\nHistory of mobile phones\r\nAll mobile phone\r\nFirst mobile phone\r\nWho invented mobile phone\r\nFirst mobile phone in world\r\nMobile phone generation pictures\r\nMobile phone Paragraph\r\nA mobile phone (also known as a hand phone, cell phone, or cellular telephone) is a small portable radio telephone. The mobile phone can be used to communicate over long distances without wires. ... Now, more people are using smartphones than the old kind of mobile phone, which are called feature phones.'),
(11, 'P1020', 'https://ecom-admin.coderanwar.online/storage/app/public/ff2-69d-new.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/Samsung Refrigerator RT27HAR9DS8.png', 'https://ecom-admin.coderanwar.online/storage/app/public/Samsung Refrigerator RT27HAR9DS8 (2).png', 'https://ecom-admin.coderanwar.online/storage/app/public/ff2-69d-new.jpg', 'Big on the inside and sleek and cool on the outside, SINGER 521 Ltr, Side by Side Refrigerator keeps all your food in the fridge fresher for longer with Fast Freeze Technology. This setting provides a rapid cooling process and is Ideal for keeping nutriti', 'NA', 'NA', 'Big on the inside and sleek and cool on the outside, SINGER 521 Ltr, Side by Side Refrigerator keeps all your food in the fridge fresher for longer with Fast Freeze Technology. This setting provides a rapid cooling process and is Ideal for keeping nutritional values and flavors intact. Stock up and keep more food chilled and fresh, because it has a capacity of 521 Ltr. The No-Frost Technology defrosts the foods automatically. Anti-Bacterial Gasket prevents the entry of fungi and bacteria inside the refrigerator and forming a biofilm. Satisfy your needs while maintaining a stylish appearance and a trendy water dispenser.'),
(12, 'P1021', 'https://ecom-admin.coderanwar.online/storage/app/public/ff2-69d-new.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/Samsung Refrigerator RT27HAR9DS8.png', 'https://ecom-admin.coderanwar.online/storage/app/public/Samsung Refrigerator RT27HAR9DS8 (2).png', 'https://ecom-admin.coderanwar.online/storage/app/public/ff2-69d-new.jpg', 'Big on the inside and sleek and cool on the outside, SINGER 521 Ltr, Side by Side Refrigerator keeps all your food in the fridge fresher for longer with Fast Freeze Technology. This setting provides a rapid cooling process and is Ideal for keeping nutriti', 'NA', 'NA', 'Big on the inside and sleek and cool on the outside, SINGER 521 Ltr, Side by Side Refrigerator keeps all your food in the fridge fresher for longer with Fast Freeze Technology. This setting provides a rapid cooling process and is Ideal for keeping nutritional values and flavors intact. Stock up and keep more food chilled and fresh, because it has a capacity of 521 Ltr. The No-Frost Technology defrosts the foods automatically. Anti-Bacterial Gasket prevents the entry of fungi and bacteria inside the refrigerator and forming a biofilm. Satisfy your needs while maintaining a stylish appearance and a trendy water dispenser.'),
(13, 'P1022', 'https://ecom-admin.coderanwar.online/storage/app/public/Bajaj Pulsar RS 200 .png', 'https://ecom-admin.coderanwar.online/storage/app/public/Suzuki-GSX-R150.png', 'https://ecom-admin.coderanwar.online/storage/app/public/Bajaj Pulsar RS 200 .png', 'https://ecom-admin.coderanwar.online/storage/app/public/Suzuki-GSX-R150.png', 'The HP ZBook Power G7 Mobile Workstation comes with Intel Xeon W-10855M Processor (12M Cache, 2.80 GHz up to 5.10 GHz), 16 GB DDR4-2666 ECC SDRAM, 1 TB PCIe NVMe M.2 SSD, and NVIDIA Quadro T2000 4GB with Max-Q Graphics. It has a super-bright, high-resolut', 'NA', 'NA', 'The HP ZBook Power G7 Mobile Workstation comes with Intel Xeon W-10855M Processor (12M Cache, 2.80 GHz up to 5.10 GHz), 16 GB DDR4-2666 ECC SDRAM, 1 TB PCIe NVMe M.2 SSD, and NVIDIA Quadro T2000 4GB with Max-Q Graphics. It has a super-bright, high-resolution display in a modern, slim-bezel design. It has a 15.6\" diagonal FHD IPS eDP1.2 anti-glare bent WLED-backlit and ambient light sensor 250 nits 45% NTSC (1920 x 1080) display. Work anywhere without compromising on performance or security with Windows 10 Pro, powered by HP’s collaboration and connectivity technology. It features Audio by Bang & Olufsen, dual stereo speakers, HP World Facing Microphone dual array digital microphone, functions keys for volume up and down, combo microphone/headphone jack, HD audio. Open large files and run apps simultaneously for speedy multi-tasking and productivity with the next generation NVIDIA Quadro T2000 with Max-Q Design 4GB of video memory.  It has a re-designed keyboard. With rubber domes, a power button, and a quiet clickpad for a comfortable experience. The clamshell hinges open almost flat at 170-degree, for easy collaboration and comfortable viewing. It has a 720p HD webcam with IR. It comes with a Fingerprint reader and it has a Trusted Platform Module TPM 2.0 Embedded Security Chip. The workstation is powered by a HP Long Life 6-cell, 83 Wh Li-ion polymer battery and it comes with a 150 W Slim Smart external AC power adapter. It supports fast charging. In the office or in the field, with pro-level performance and a beautiful bright display, you have everything you need to review work and manage projects from anywhere. The HP ZBook Power G7 Mobile Workstation comes with 3 years of warranty.'),
(14, 'P1023', 'https://ecom-admin.coderanwar.online/storage/app/public/Bajaj Pulsar RS 200 .png', 'https://ecom-admin.coderanwar.online/storage/app/public/Suzuki-GSX-R150.png', 'https://ecom-admin.coderanwar.online/storage/app/public/Bajaj Pulsar RS 200 .png', 'https://ecom-admin.coderanwar.online/storage/app/public/Suzuki-GSX-R150.png', 'The HP ZBook Power G7 Mobile Workstation comes with Intel Xeon W-10855M Processor (12M Cache, 2.80 GHz up to 5.10 GHz), 16 GB DDR4-2666 ECC SDRAM, 1 TB PCIe NVMe M.2 SSD, and NVIDIA Quadro T2000 4GB with Max-Q Graphics. It has a super-bright, high-resolut', 'NA', 'NA', 'The HP ZBook Power G7 Mobile Workstation comes with Intel Xeon W-10855M Processor (12M Cache, 2.80 GHz up to 5.10 GHz), 16 GB DDR4-2666 ECC SDRAM, 1 TB PCIe NVMe M.2 SSD, and NVIDIA Quadro T2000 4GB with Max-Q Graphics. It has a super-bright, high-resolution display in a modern, slim-bezel design. It has a 15.6\" diagonal FHD IPS eDP1.2 anti-glare bent WLED-backlit and ambient light sensor 250 nits 45% NTSC (1920 x 1080) display. Work anywhere without compromising on performance or security with Windows 10 Pro, powered by HP’s collaboration and connectivity technology. It features Audio by Bang & Olufsen, dual stereo speakers, HP World Facing Microphone dual array digital microphone, functions keys for volume up and down, combo microphone/headphone jack, HD audio. Open large files and run apps simultaneously for speedy multi-tasking and productivity with the next generation NVIDIA Quadro T2000 with Max-Q Design 4GB of video memory.  It has a re-designed keyboard. With rubber domes, a power button, and a quiet clickpad for a comfortable experience. The clamshell hinges open almost flat at 170-degree, for easy collaboration and comfortable viewing. It has a 720p HD webcam with IR. It comes with a Fingerprint reader and it has a Trusted Platform Module TPM 2.0 Embedded Security Chip. The workstation is powered by a HP Long Life 6-cell, 83 Wh Li-ion polymer battery and it comes with a 150 W Slim Smart external AC power adapter. It supports fast charging. In the office or in the field, with pro-level performance and a beautiful bright display, you have everything you need to review work and manage projects from anywhere. The HP ZBook Power G7 Mobile Workstation comes with 3 years of warranty.'),
(15, 'P1024', 'https://ecom-admin.coderanwar.online/storage/app/public/wifi-inv-sb_2.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/green_inverter-sb_3.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/Screenshot 2021-07-08 at 12-20-53 WSN-DIAMOND-12A.png', 'https://ecom-admin.coderanwar.online/storage/app/public/low_voltage-sb_2.jpg', '\r\n    Btu/h: 12000BTU\r\n    Ton: 1\r\n    Color and Panel: Golden- Acrylic\r\n    Blue Fin : Yes\r\n    Display: LED\r\n    Auto Restart: Yes\r\n    ECO Mode: Yes\r\n    Turbo Mode: Yes\r\n    Filter: Active Carbon Electrostatic Filter\r\n    Capacity (W): 3517\r\n    Rated', 'NA', 'NA', '\r\n    Btu/h: 12000BTU\r\n    Ton: 1\r\n    Color and Panel: Golden- Acrylic\r\n    Blue Fin : Yes\r\n    Display: LED\r\n    Auto Restart: Yes\r\n    ECO Mode: Yes\r\n    Turbo Mode: Yes\r\n    Filter: Active Carbon Electrostatic Filter\r\n    Capacity (W): 3517\r\n    Rated power Input (W): 1288\r\n    Rated current (A): 6\r\n    EER (W/W): 9.317\r\n    Max power Input (W): 1675\r\n    Max current (A): 7.8\r\n    Refrigerant: R410a\r\n    Compressor: Rotary Type\r\n    Indoor Unit Dimension: 777×250×205\r\n    Outdoor Unit Dimension: 817×328×553\r\n'),
(16, 'P1025', 'https://ecom-admin.coderanwar.online/storage/app/public/w800f-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/sony-w660g-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/bravia-55a8h-01-500x500.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/ua65ru7100rser-65-500x500.jpeg', '4K HDR PROCESSOR X1™ – Powerful TV processing that delivers a picture that is smooth and clear, full of rich colors and detailed contrast.\r\nTRILUMINOS™ Display – Reproduces more colors than a conventional TV resulting in picture quality that is natural an', 'NA', 'NA', '4K HDR PROCESSOR X1™ – Powerful TV processing that delivers a picture that is smooth and clear, full of rich colors and detailed contrast.\r\nTRILUMINOS™ Display – Reproduces more colors than a conventional TV resulting in picture quality that is natural and precise, and closer than ever to real life.\r\nFULL ARRAY LED & X-TENDED DYNAMIC RANGE – Precisely controlled backlighting brings out real-life depth and detail with deep blacks and high peak brightness.\r\nGOOGLE TV™ – See 700,000+ movies and TV episodes, plus live TV, all in one place. Google TV brings your favorite content from across your apps and subscriptions and organizes them just for you. Watch content from Netflix, Amazon Prime Video, Disney+, YouTube, the Apple TV app, and many more.1\r\nX-MOTION CLARITY™ – Advanced motion control for smooth pictures that are brighter and clearer, significantly benefiting fast moving action in movies and sports.\r\n4K X-REALITY PRO™ – Our unique 4K database upscales all the HD content you love to near-4K resolution bringing back real-world detail and texture.3\r\nACOUSTIC MULTI-AUDIO – Two sound positioning tweeters on the sides of the TV elevate the soundstage, enabling sound to follow the action for a truly immersive experience. '),
(17, 'P1026', 'https://ecom-admin.coderanwar.online/storage/app/public/930mco-1.jpg', 'https://ecom-admin.coderanwar.online/storage/app/public/Screenshot 2021-07-08 at 12-24-33 WMWO-WG30ESLR (Microwave Oven).png', 'https://ecom-admin.coderanwar.online/storage/app/public/Screenshot 2021-07-08 at 12-24-50 WMWO-M25SCD (Microwave Oven).png', 'https://ecom-admin.coderanwar.online/storage/app/public/25gq5a.jpg', '\r\n    30 Ltr Capacity\r\n    Push Button with Grill & Convection\r\n    Floral Design Outlook\r\n    Child Lock\r\n    5 Power Levels\r\n\r\nTechnical Details:\r\n\r\n    Rated Voltage: 230V\r\n    Rated Frequency: 50Hz\r\n    Rated Output: 900W\r\n    Microwave Frequency: 245', 'NA', 'NA', '\r\n    30 Ltr Capacity\r\n    Push Button with Grill & Convection\r\n    Floral Design Outlook\r\n    Child Lock\r\n    5 Power Levels\r\n\r\nTechnical Details:\r\n\r\n    Rated Voltage: 230V\r\n    Rated Frequency: 50Hz\r\n    Rated Output: 900W\r\n    Microwave Frequency: 2450MHz\r\n    Rated Input (Grill): 1100W\r\n    Rated Input (Convection): 2500W\r\n    Rated Input (Microwave): 1450W\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `review_list`
--

CREATE TABLE `review_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reviewer_id` int(11) NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviewer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_comments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `review_list`
--

INSERT INTO `review_list` (`id`, `reviewer_id`, `product_code`, `reviewer_photo`, `reviewer_name`, `reviewer_rating`, `reviewer_comments`) VALUES
(2, 22, 'P1010', 'https://ecom-admin.coderanwar.online/storage/app/public/BUcZeQnvSMd1OLWIRCQRTOeqMZ2aj26ileKZZPzm.jpg', 'Md Anwar Hossain', '3', 'Good'),
(3, 22, 'undefined', 'http://127.0.0.1:8000/storage/BWVRGkjIo9JOJrtokGE3eRve7bfzMYc2aCkqr6Bp.jpg', 'Md Anwar Hossain', '2', 'Good product');

-- --------------------------------------------------------

--
-- Table structure for table `siteinfo`
--

CREATE TABLE `siteinfo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siteinfo`
--

INSERT INTO `siteinfo` (`id`, `about`, `purchase`, `refund`, `privacy`) VALUES
(1, '<div class=\"\">\r\n<div class=\"animated zoomIn\">\r\n<h2><span style=\"background-color: rgb(255, 255, 255);\">About Us</span><br></h2>\r\n<p>It has been exactly 3 years since I wrote my first blog series entitled “Flavorful Tuscany”, but starting it was definitely not easy. Back then, I didn’t know much about blogging, let alone think that one day it could become <strong>my full-time job</strong>. Even though I had many recipes and food-related stories to tell, it never crossed my mind that I could be sharing them with the whole world.</p>\r\n<p>I am now a <strong>full-time blogger</strong> and the curator of the <a href=\"https://ckeditor.com/ckeditor-4/#\" data-cke-saved-href=\"https://ckeditor.com/ckeditor-4/#\">Simply delicious newsletter</a>, sharing stories about traveling and cooking, as well as tips on how to run a successful blog.</p>\r\n<p>If you are tempted by the idea of creating your own blog, please think about the following:</p>\r\n<ul>\r\n<li>Your story (what do you want to tell your audience)</li>\r\n<li>Your audience (who do you write for)</li>\r\n<li>Your blog name and design</li>\r\n</ul>\r\n<p>After you get your head around these 3 essentials, all you have to do is grab your keyboard and the rest will follow.</p>\r\n</div>\r\n</div>', '<div class=\"\">\r\n<div class=\"animated zoomIn\">\r\n<h2>How To Purchase</h2>\r\n<p>It has been exactly 3 years since I wrote my first blog series entitled “Flavorful Tuscany”, but starting it was definitely not easy. Back then, I didn’t know much about blogging, let alone think that one day it could become <strong>my full-time job</strong>. Even though I had many recipes and food-related stories to tell, it never crossed my mind that I could be sharing them with the whole world.</p>\r\n<p>I am now a <strong>full-time blogger</strong> and the curator of the <a href=\"https://ckeditor.com/ckeditor-4/#\" data-cke-saved-href=\"https://ckeditor.com/ckeditor-4/#\">Simply delicious newsletter</a>, sharing stories about traveling and cooking, as well as tips on how to run a successful blog.</p>\r\n<p>If you are tempted by the idea of creating your own blog, please think about the following:</p>\r\n<ul>\r\n<li>Your story (what do you want to tell your audience)</li>\r\n<li>Your audience (who do you write for)</li>\r\n<li>Your blog name and design</li>\r\n</ul>\r\n<p>After you get your head around these 3 essentials, all you have to do is grab your keyboard and the rest will follow.</p>\r\n</div>\r\n</div>', '<div class=\"\">\r\n<div class=\"animated zoomIn\">\r\n<h2>Refund Policy</h2>\r\n<p>It has been exactly 3 years since I wrote my first blog series entitled &ldquo;Flavorful Tuscany&rdquo;, but starting it was definitely not easy. Back then, I didn&rsquo;t know much about blogging, let alone think that one day it could become <strong>my full-time job</strong>. Even though I had many recipes and food-related stories to tell, it never crossed my mind that I could be sharing them with the whole world.</p>\r\n<p>I am now a <strong>full-time blogger</strong> and the curator of the <a href=\"https://ckeditor.com/ckeditor-4/#\" data-cke-saved-href=\"https://ckeditor.com/ckeditor-4/#\">Simply delicious newsletter</a>, sharing stories about traveling and cooking, as well as tips on how to run a successful blog.</p>\r\n<p>If you are tempted by the idea of creating your own blog, please think about the following:</p>\r\n<ul>\r\n<li>Your story (what do you want to tell your audience)</li>\r\n<li>Your audience (who do you write for)</li>\r\n<li>Your blog name and design</li>\r\n</ul>\r\n<p>After you get your head around these 3 essentials, all you have to do is grab your keyboard and the rest will follow.</p>\r\n</div>\r\n</div>', '<div class=\"\">\r\n<div class=\"animated zoomIn\">\r\n<h2>Privacy Policy</h2>\r\n<p>It has been exactly 3 years since I wrote my first blog series entitled “Flavorful Tuscany”, but starting it was definitely not easy. Back then, I didn’t know much about blogging, let alone think that one day it could become <strong>my full-time job</strong>. Even though I had many recipes and food-related stories to tell, it never crossed my mind that I could be sharing them with the whole world.</p>\r\n<p>I am now a <strong>full-time blogger</strong> and the curator of the <a href=\"https://ckeditor.com/ckeditor-4/#\" data-cke-saved-href=\"https://ckeditor.com/ckeditor-4/#\">Simply delicious newsletter</a>, sharing stories about traveling and cooking, as well as tips on how to run a successful blog.</p>\r\n<p>If you are tempted by the idea of creating your own blog, please think about the following:</p>\r\n<ul>\r\n<li>Your story (what do you want to tell your audience)</li>\r\n<li>Your audience (who do you write for)</li>\r\n<li>Your blog name and design</li>\r\n</ul>\r\n<p>After you get your head around these 3 essentials, all you have to do is grab your keyboard and the rest will follow.</p>\r\n</div>\r\n</div>'),
(2, 'https://ecom-admin.coderanwar.online/storage/app/public/logo.png', '', '', ''),
(3, 'https://ecom-admin.coderanwar.online/storage/app/public/apple.png', '', '', ''),
(4, 'https://ecom-admin.coderanwar.online/storage/app/public/playstore.png', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `site_seo`
--

CREATE TABLE `site_seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_des` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_sitename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bg_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `text_color`, `bg_color`, `image`, `title`, `subtitle`, `product_code`) VALUES
(1, '#000000', '#ffffff', 'https://ecom-admin.coderanwar.online/storage/app/public/5502-0001-500x500.jpg', 'Dell Latitude 15 3510 Core i3 10th Gen', 'New Arrival', 'P1010'),
(2, '#000000', '#ffffff', 'https://ecom-admin.coderanwar.online/storage/app/public/Vivo-Y50-Bangladesh.jpg', 'Vivo Y50', 'New Arrival', 'P1017'),
(3, ' #000000', '#ffffff', 'https://ecom-admin.coderanwar.online/storage/app/public/ff2-69d-new.jpg', 'Refrigerator 521 Ltr Refrigerator', 'New Arrival', 'P1020');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `category_name`, `subcategory_name`) VALUES
(1, 'LAPTOP', 'Dell'),
(2, 'LAPTOP', 'Asus'),
(3, 'LAPTOP', 'Walton'),
(4, 'LAPTOP', 'HP'),
(5, 'LAPTOP', 'Lenovo'),
(6, 'LAPTOP', 'Acer'),
(7, 'MOBILE', 'Xiaomi'),
(8, 'MOBILE', 'Samsung'),
(9, 'MOBILE', 'Oppo'),
(10, 'MOBILE', 'Vivo'),
(11, 'REFRIGERATOR', 'Singer'),
(12, 'REFRIGERATOR', 'LG'),
(13, 'REFRIGERATOR', 'Walton'),
(14, 'REFRIGERATOR', 'Hyundai'),
(15, 'REFRIGERATOR', 'My One'),
(16, 'REFRIGERATOR', 'Hitachi'),
(17, 'BIKE', 'Bajaj'),
(18, 'BIKE', 'Suzuki'),
(19, 'BIKE', 'Yamaha'),
(20, 'BIKE', 'TVS'),
(21, 'AC', 'Singer'),
(22, 'AC', 'Turbo Cool'),
(23, 'AC', 'Ionizer'),
(24, 'TV', 'My One'),
(25, 'TV', 'Sony'),
(26, 'TV', 'Walton'),
(27, 'TV', 'UHD'),
(28, 'TV', 'Samsung'),
(29, 'FOOD', 'Baby Food'),
(30, 'FOOD', 'Egg'),
(31, 'FOOD', 'Meat & Fish'),
(36, 'MICRO OVEN', 'Singer'),
(37, 'MICRO OVEN', 'Walton'),
(38, 'ACCESSORIES', 'Headphones'),
(39, 'ACCESSORIES', 'Charger'),
(40, 'ACCESSORIES', 'Adaptar');

-- --------------------------------------------------------

--
-- Table structure for table `sub_admin`
--

CREATE TABLE `sub_admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_admin`
--

INSERT INTO `sub_admin` (`id`, `name`, `email`, `mobile`, `username`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '01795700838', 'admin1234', 'admin1234');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `phone`, `photo`, `password`) VALUES
(8, 'uttam toni', 'uttam', 'uttam@gmail.com', '01919486004', 'https://ecom-admin.coderanwar.online/storage/app/public/37fT2Q7MZ2PNbQBjidqER7lc3m69UGLTvzAzB1jo.jpg', '$2y$10$ja7ISADOHgW7PI2PPySczeKmU0bznh3.hcGKjNXhxs4iAZAVfSIju'),
(9, 'uttamm', 'uttamm', 'uttam1@gmail.com', '01919486006', 'https://ecom-admin.coderanwar.online/storage/app/public/nWjLamxfzi9KpMcx8gADa89EAS3KNtrPc9bng0pl.jpg', '$2y$10$eEXVbzqeqlTI8SYDmoct8uEAcBoHr80jPQ6knjxdoCsrUuAx6vjUy'),
(14, 'shahin hosen', 'shahinhosen', 'shahinhosen@protonmail.com', '01843506567', 'https://ecom-admin.coderanwar.online/storage/app/public/h6hBqlIhbCxxLLI8IOzoY9Z0fK1SyFdOa6kr2EcZ.png', '$2y$10$EQpFB0VGNMCzbEvdFFb5SuWPun9u8YvDgZntv18GznC3UZfy/crNS'),
(22, 'Md. Anwar Hossain', 'anwar7736', 'anwarhossain7736@gmail.com', '01794030592', 'http://127.0.0.1:8000/storage/BWVRGkjIo9JOJrtokGE3eRve7bfzMYc2aCkqr6Bp.jpg', '$2y$10$5kHEQDCuMVhbihhq3FG4eeNhpi8D.O/1tDTmtMQ1nyo.OMN/KBzta'),
(23, 'Md Shajahan Shek', 'Shajahan', 'mdshahjahansheikh1995@gmail.com', '01745414153', 'https://ecom-admin.coderanwar.online/storage/app/public/O6ZYAxXojfMixJ0EWaH7Sf6KVRl2Vq9bk4tNtB85.jpg', '$2y$10$fRHgnN89EKXkeXFGISSHIev9SyQrX3MU9kpkDNqt4c3WbzUBCbn5G'),
(24, 'Md Sujon Mollah', 'sujon1234', 'sujon1234@gmail.com', '01795700838', 'https://ecom-admin.coderanwar.online/storage/app/public/WK51T57AHivYLJRTER3NWLdPhR6GXDYMALVlPluM.jpg', '$2y$10$fSEuRyVCQ0vIjBVk69.R2.PYO4AkwiPAuEAWGdP9ynGmblDR4AU4.'),
(25, 'Pritom', 'Rana', 'mohapatropritom@gmail.com', '01676682514', 'https://ecom-admin.coderanwar.online/storage/app/public/QsM3IKH8b0CtTMwAGwlyhYSLHDJaqV82JMPm1zBS.jpg', '$2y$10$/Jcv27BtbdVE7D5g6ZUABeKVmadi7NFGWeHJANPb8.6ojKj3UPOFy');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `ip_address`, `visit_time`, `visit_date`) VALUES
(1, '103.126.149.6', '11:44:28am', '09-08-2021'),
(2, '119.30.38.181', '07:31:26pm', '20-07-2021'),
(3, '103.150.18.126', '09:28:33am', '27-07-2021'),
(4, '182.48.72.201', '12:09:08pm', '02-08-2021'),
(5, '66.102.6.211', '12:40:20am', '27-07-2021'),
(6, '103.157.94.90', '08:40:15pm', '20-07-2021'),
(7, '27.147.204.48', '08:46:30pm', '20-07-2021'),
(8, '103.133.205.6', '09:47:00pm', '20-07-2021'),
(9, '37.111.230.155', '10:05:26pm', '20-07-2021'),
(10, '103.113.197.18', '10:18:55pm', '20-07-2021'),
(11, '103.99.182.78', '10:49:54pm', '20-07-2021'),
(12, '103.67.157.185', '11:24:15pm', '20-07-2021'),
(13, '45.248.151.4', '02:17:02am', '21-07-2021'),
(14, '119.30.35.213', '05:04:30pm', '21-07-2021'),
(15, '58.145.189.238', '11:41:20pm', '21-07-2021'),
(16, '37.111.195.70', '11:58:50am', '22-07-2021'),
(17, '103.145.74.158', '10:58:47pm', '24-07-2021'),
(18, '116.58.200.238', '10:59:24pm', '24-07-2021'),
(19, '103.126.149.5', '10:05:48am', '11-08-2021'),
(20, '37.111.217.176', '11:48:48am', '26-07-2021'),
(21, '37.111.219.152', '04:46:03pm', '26-07-2021'),
(22, '116.58.205.240', '06:19:25pm', '27-07-2021'),
(23, '127.0.0.1', '09:00:00am', '15-04-2023'),
(24, '103.151.170.250', '12:16:04pm', '02-08-2021'),
(25, '103.159.188.152', '12:22:21pm', '02-08-2021'),
(26, '103.145.74.148', '09:42:12pm', '02-08-2021'),
(27, '31.13.127.39', '09:42:40pm', '02-08-2021'),
(28, '66.249.84.141', '12:09:28am', '03-08-2021'),
(29, '103.157.94.95', '07:13:28am', '03-08-2021'),
(30, '119.30.39.45', '01:49:52pm', '03-08-2021'),
(31, '103.126.149.4', '05:48:31am', '04-08-2021'),
(32, '119.30.39.212', '04:11:03am', '04-08-2021'),
(33, '66.102.6.213', '05:40:06am', '04-08-2021'),
(34, '103.139.196.43', '08:10:31am', '04-08-2021'),
(35, '103.126.149.7', '12:31:31pm', '04-08-2021'),
(36, '37.111.205.208', '06:36:42pm', '04-08-2021'),
(37, '42.0.7.236', '02:50:40pm', '04-08-2021'),
(38, '37.111.196.33', '10:40:23pm', '05-08-2021'),
(39, '103.139.196.74', '11:32:01am', '09-08-2021'),
(40, '59.153.103.224', '08:32:53pm', '12-10-2022'),
(41, '59.153.103.250', '02:48:04pm', '13-10-2022'),
(42, '74.125.209.21', '02:29:31pm', '13-10-2022'),
(43, '45.248.151.234', '08:38:08pm', '13-10-2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_table`
--
ALTER TABLE `brand_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirm_order`
--
ALTER TABLE `confirm_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_otp_verification`
--
ALTER TABLE `email_otp_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fav_list`
--
ALTER TABLE `fav_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_info`
--
ALTER TABLE `notification_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_lines`
--
ALTER TABLE `order_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_lines_order_id_foreign` (`order_id`),
  ADD KEY `order_lines_productlist_id_foreign` (`productlist_id`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_payments_user_id_foreign` (`user_id`),
  ADD KEY `order_payments_order_id_foreign` (`order_id`);

--
-- Indexes for table `productlist`
--
ALTER TABLE `productlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_list`
--
ALTER TABLE `review_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siteinfo`
--
ALTER TABLE `siteinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_seo`
--
ALTER TABLE `site_seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_admin`
--
ALTER TABLE `sub_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand_table`
--
ALTER TABLE `brand_table`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `confirm_order`
--
ALTER TABLE `confirm_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `email_otp_verification`
--
ALTER TABLE `email_otp_verification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `fav_list`
--
ALTER TABLE `fav_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notification_info`
--
ALTER TABLE `notification_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_lines`
--
ALTER TABLE `order_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `productlist`
--
ALTER TABLE `productlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `review_list`
--
ALTER TABLE `review_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siteinfo`
--
ALTER TABLE `siteinfo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `site_seo`
--
ALTER TABLE `site_seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `sub_admin`
--
ALTER TABLE `sub_admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_lines`
--
ALTER TABLE `order_lines`
  ADD CONSTRAINT `order_lines_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_lines_productlist_id_foreign` FOREIGN KEY (`productlist_id`) REFERENCES `productlist` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD CONSTRAINT `order_payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
