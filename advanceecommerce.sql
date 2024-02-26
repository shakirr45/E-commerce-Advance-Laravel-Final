-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2024 at 07:52 PM
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
-- Database: `advanceecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_replies`
--

CREATE TABLE `admin_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `send_message` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_replies`
--

INSERT INTO `admin_replies` (`id`, `name`, `email`, `phone`, `send_message`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'dffas', NULL, NULL, NULL),
(2, NULL, NULL, NULL, 'dffas', NULL, NULL, NULL),
(3, NULL, NULL, NULL, 'ok thank', NULL, NULL, NULL),
(4, NULL, NULL, NULL, 'sadasd', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs_tables`
--

CREATE TABLE `blogs_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `publish_date` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs_tables`
--

INSERT INTO `blogs_tables` (`id`, `blog_category_id`, `title`, `slug`, `publish_date`, `description`, `thumbnail`, `tag`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Toys Category', 'toys-category', '2024-01-09', 'New al toys are here', 'public/files/blog/toys-category.jpg', 'dsfsafsd', 1, NULL, NULL),
(2, 2, 'Food', 'food', '2024-01-09', 'new foods', 'public/files/blog/food.jpeg', 'as', 1, NULL, NULL),
(3, 2, 'Cat', 'cat', '2024-01-02', 'asdasd', 'public/files/blog/cat.jpeg', 'asds', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_category_tables`
--

CREATE TABLE `blog_category_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_category_tables`
--

INSERT INTO `blog_category_tables` (`id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
(2, 'Category Types', 'category-types', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_slug` varchar(255) NOT NULL,
  `brand_logo` varchar(255) DEFAULT NULL,
  `front_page` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `brand_logo`, `front_page`, `created_at`, `updated_at`) VALUES
(2, 'Coca cola', 'coca-cola', 'public/files/brand/coca-cola.png', 1, NULL, NULL),
(3, 'zara Brand', 'zara-brand', 'public/files/brand/zara-brand.png', NULL, NULL, NULL),
(6, 'LG 1', 'lg-1', 'public/files/brand/lg-1.jpeg', NULL, NULL, NULL),
(9, 'china', 'china', 'public/files/brand/china.jpg', NULL, NULL, NULL),
(10, 'apple', 'apple', 'public/files/brand/apple.png', NULL, NULL, NULL),
(11, 'nike', 'nike', NULL, 1, NULL, NULL),
(15, 'newwww', 'newwww', 'public/files/brand/newwww.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `start_date`, `end_date`, `image`, `status`, `discount`, `month`, `year`, `created_at`, `updated_at`) VALUES
(11, 'Hot spacial 2023 December', '2023-12-16', '2023-12-31', 'public/files/campaign/hot-spacial-2023.jpeg', 1, '20', 'November', '2023', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `home_page` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `home_page`, `icon`, `created_at`, `updated_at`) VALUES
(4, 'Mens Fashion', 'mens-fashion', '1', 'public/files/category_icon/mens-fashion.png', NULL, '2023-10-02 03:54:16'),
(6, 'Girls Fashion', 'girls-fashion', '0', 'public/files/category_icon/girls-fashion.png', NULL, '2023-11-06 10:26:04'),
(8, 'Kids Fashion', 'kids-fashion', '0', 'public/files/category_icon/kids-fashion.png', NULL, '2023-10-04 03:30:36'),
(18, 'Electronics', 'electronics', NULL, NULL, NULL, NULL),
(19, 'Furniture', 'furniture', NULL, NULL, NULL, NULL),
(20, 'Vehicle', 'vehicle', '0', '<i class=\"far fa-circle nav-icon\"></i>', NULL, '2023-11-06 10:24:59'),
(21, 'Phone', 'phone', '1', '<i class=\"far fa-circle nav-icon\"></i>', NULL, '2023-11-06 10:29:17'),
(26, 'Food', 'food', '1', '<i class=\"far fa-circle nav-icon\"></i>', NULL, NULL),
(28, 'Book', 'book', '1', 'public/files/category_icon/book.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `childcategory_name` varchar(255) DEFAULT NULL,
  `childcategory_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `category_id`, `subcategory_id`, `childcategory_name`, `childcategory_slug`, `created_at`, `updated_at`) VALUES
(17, 4, 12, 'small shirt', 'small-shirt', NULL, NULL),
(18, 4, 15, 'new watch', 'new-watch', NULL, NULL),
(19, 6, 10, 'short tops', 'short-tops', NULL, NULL),
(20, 8, 13, 'car', 'car', NULL, NULL),
(21, 6, 16, 'new', 'new', NULL, NULL),
(22, 21, 17, 'iphone', 'iphone', NULL, NULL),
(23, 4, 18, 'sport shoe', 'sport-shoe', NULL, NULL),
(24, 4, 12, 'new', 'new', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '12312312', 'good', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `valid_date` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `coupon_amount` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `valid_date`, `type`, `coupon_amount`, `status`, `created_at`, `updated_at`) VALUES
(58, '11', '2024-11-23', 1, 999, 'Inactive', '2023-10-12 10:08:01', '2023-10-13 03:49:53'),
(73, '33', '2023-10-18', 1, 10000, 'Active', '2023-10-13 10:49:17', '2023-12-22 11:29:00'),
(74, '31212', '2023-10-25', 1, 21312, 'Active', '2023-10-13 12:03:19', '2023-10-13 12:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_10_01_103009_create_categories_table', 2),
(7, '2023_10_02_095717_create_subcategories_table', 3),
(8, '2023_10_04_144908_create_childcategories_table', 4),
(9, '2023_10_05_184309_create_brands_table', 5),
(11, '2023_10_07_171632_create_seos_table', 6),
(20, '2023_10_07_202127_create_smtps_table', 7),
(21, '2023_10_08_083041_create_pages_table', 7),
(22, '2023_10_08_173028_create_products_table', 8),
(23, '2023_10_08_180026_create_warehouses_table', 8),
(24, '2023_10_09_090732_create_settings_table', 9),
(25, '2023_10_10_083154_create_coupons_table', 10),
(26, '2023_10_12_101712_create_product_shakirs_table', 11),
(27, '2023_10_13_095358_create_pickup_points_table', 12),
(28, '2023_10_29_181047_create_reviews_table', 13),
(29, '2023_10_30_193651_create_wishlists_table', 14),
(36, '2023_11_03_155230_create_campaigns_table', 15),
(37, '2023_11_16_182301_create_webreviews_table', 16),
(38, '2023_11_17_173619_create_shippings_table', 17),
(39, '2023_11_19_180241_create_newsletters_table', 18),
(40, '2023_11_22_171231_create_orders_table', 19),
(41, '2023_11_22_171259_create_order_details_table', 19),
(42, '2023_11_26_142650_create_tickets_table', 20),
(43, '2023_11_27_171242_create_replies_table', 21),
(45, '2023_12_05_173146_create_payment_getway_bds_table', 22),
(56, '2014_10_12_000000_create_users_table', 23),
(57, '2024_01_07_171250_create_blog_category_tables_table', 23),
(58, '2024_01_07_171420_create_blogs_tables_table', 23),
(59, '2024_01_15_153122_create_contacts_table', 23),
(60, '2024_01_15_185446_create_admin_replies_table', 23);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'shakir@gmail.com', NULL, NULL),
(2, 'user@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `c_phone` varchar(255) DEFAULT NULL,
  `c_email` varchar(255) DEFAULT NULL,
  `c_country` varchar(255) DEFAULT NULL,
  `c_zipcode` varchar(255) DEFAULT NULL,
  `c_address` varchar(255) DEFAULT NULL,
  `c_extra_phone` varchar(255) DEFAULT NULL,
  `c_city` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_discount` varchar(255) DEFAULT NULL,
  `after_discount` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `shipping_charge` varchar(5) DEFAULT NULL,
  `order_id` varchar(25) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `date` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `c_name`, `c_phone`, `c_email`, `c_country`, `c_zipcode`, `c_address`, `c_extra_phone`, `c_city`, `subtotal`, `total`, `coupon_code`, `coupon_discount`, `after_discount`, `payment_type`, `tax`, `shipping_charge`, `order_id`, `status`, `date`, `month`, `year`, `created_at`, `updated_at`) VALUES
(1, 2, 'user', '016', 'user@gmail.com', 'BD', '1234', 'Dhaka', '017', 'Uttara', '2000.00', '2000.00', '11', '999', '1001', 'Hand Cash', '0', '0', '43746', 0, '23-11-2023', 'November', '2023', NULL, NULL),
(2, 2, 'user', '321312', '3123', 'e221e213', '12312', '3123', '3123123', '21312', '1000.00', '1000.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '11181', 0, '23-11-2023', 'November', '2023', NULL, NULL),
(3, 2, 'user', '12312312', 'user@gmail.com', 'BD', '2312', 'Dhaka', '017', 'Uttara 2', '12240.00', '12240.00', '11', '999', '11241', 'Hand Cash', '0', '0', '68065', 0, '23-11-2023', 'November', '2023', NULL, NULL),
(4, 2, 'user', '12312312', 'srs@gmail.com', 'Pakistan', '1234', 'srs', '2131231231231231232', 'ttttttttttttttt', '3500.00', '3500.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '85435', 0, '24-11-2023', 'November', '2023', NULL, NULL),
(5, 2, 'user', '12312312', 'srs@gmail.com', 'Pakistan', '1234', 'srs', '2131231231231231232', 'ttttttttttttttt', '3500.00', '3500.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '73449', 0, '24-11-2023', 'November', '2023', NULL, NULL),
(6, 2, 'user', '1111111111111111', 'sssssssssssssssssssssssss', 'ssssssssssssssssssss', '1111111111111111111111', 'ssssssssssssssssssss', '1111111111111111111111111', 'ssssssss', '3500.00', '3500.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '63284', 0, '24-11-2023', 'November', '2023', NULL, NULL),
(7, 2, 'user', '1111111111111111', 'srs@gmail.com', 'Pakistan', '111111', 'Dhaka', '111111', 'ssssssss', '3500.00', '3500.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '21202', 0, '24-11-2023', 'November', '2023', NULL, NULL),
(8, 2, 'user', '1111111111111111', 'srs@gmail.com', 'Pakistan', '111111', 'Dhaka', '111111', 'ssssssss', '3500.00', '3500.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '62020', 0, '24-11-2023', 'November', '2023', NULL, NULL),
(9, 2, 'user', '00000000000', 'srs@gmail.com', 'xxxxxx', '000000', 'xxxxx', '0000000000000000000', 'xxxx', '10000.00', '10000.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '83261', 0, '24-11-2023', 'November', '2023', NULL, NULL),
(10, 2, 'user', '00000000000', 'srs@gmail.com', 'xxxxxx', '000000', 'xxxxx', '0000000000000000000', 'xxxx', '10000.00', '10000.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '27713', 0, '24-11-2023', 'November', '2023', NULL, NULL),
(11, 2, 'user1', '1111111111111111', '111111111111111', '11111111111111111111', '11111111111111', '11111111111111111', '1111111111111111111111', '111111111111111', '12000.00', '12000.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '42031', 0, '24-11-2023', 'November', '2023', NULL, NULL),
(12, 2, 'user1', '1111111111111111', 'sada', '11111111111111111111', '11111111111111', '11111111111111111', '1111111111111111111111', '111111111111111', '12000.00', '12000.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '52431', 1, '24-11-2023', 'November', '2023', NULL, NULL),
(13, 2, 'user1', '1111111111111111', 'sada', '11111111111111111111', '11111111111111', '11111111111111111', '1111111111111111111111', '111111111111111', '12000.00', '12000.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '89444', 0, '24-11-2023', 'November', '2023', NULL, NULL),
(14, 2, 'user', 'ssssssssssss', '11111@gmail.com', 'asssssssss', 'ssssssssssss', 'ssssssssssssssss', 'ssssssssssssssss', 'ssssssssss', '12000.00', '12000.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '54688', 0, '24-11-2023', 'November', '2023', NULL, NULL),
(15, 2, 'user', '1111111111111111', 'user@gmail.com', 'BD', '2312', 'sdds', '1111111111111111111111', '111111111111111', '160.00', '160.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '10138', 0, '25-11-2023', 'November', '2023', NULL, NULL),
(16, 2, 'user', '12312312', 'srs@gmail.com', 'Pakistan', '11111111111111', '11111111111111111', '111111', 'Uttara', '1500.00', '1500.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '31887', 0, '26-11-2023', 'November', '2023', NULL, NULL),
(17, 2, 'user', '12312312', 'srs@gmail.com', 'Pakistan', '2312', 'Dhaka', '2342342342343', 'dhakasss', '900.00', '900.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '11782', 1, '25-11-2023', 'November', '2023', NULL, NULL),
(18, 2, 'user', 'm', 'm@gmail.com', 'm', 'm', 'm', 'm', 'm', '2000.00', '2000.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '57923', 0, '03-12-2023', 'December', '2023', NULL, NULL),
(21, 2, 'user', '01793096434', '0@gmail.com', 'ooooooo', NULL, 'Dhaka', NULL, '0000000', '1000.00', '1000.00', NULL, NULL, NULL, 'Aamarpay', '0', '0', '40176', 3, '15-12-2023', 'December', '2023', NULL, NULL),
(22, 1, 'admin', 'qweqw', 'user@gmail.com', 'sdfsd', '1231', '21312', '23123', '1231', '3000.00', '3000.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '6095', 1, '17-01-2024', 'January', '2024', NULL, NULL),
(24, 2, 'admin', '1111111111111111', 'user@gmail.com', 'Bangladesh', NULL, '11111111111111111', NULL, 'ewr', '3000.00', '3000.00', '11', '999', '2001', 'Aamarpay', '0', '0', '28301', 1, '01-02-2024', 'February', '2024', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `single_price` varchar(255) DEFAULT NULL,
  `subtotal_price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `color`, `size`, `quantity`, `single_price`, `subtotal_price`, `created_at`, `updated_at`) VALUES
(1, 1, 15, 'Nike Red Shoe', 'red', '10', '1', '1000', '1000', NULL, NULL),
(2, 1, 11, 'iphone 15 pro max', 'red', '4234234', '1', '1000', '1000', NULL, NULL),
(3, 2, 15, 'Nike Red Shoe', 'red', '10', '1', '1000', '1000', NULL, NULL),
(4, 3, 16, 'Watch', 'brawn', '10', '3', '80', '240', NULL, NULL),
(5, 3, 12, 'saas', 'sa', '3424234', '1', '12000', '12000', NULL, NULL),
(6, 8, 15, 'Nike Red Shoe', 'red', '10', '1', '1000', '1000', NULL, NULL),
(7, 8, 14, '234234234', '23423', '4234234', '1', '1500', '1500', NULL, NULL),
(8, 8, 11, 'iphone 15 pro max', 'red', '4234234', '1', '1000', '1000', NULL, NULL),
(9, 10, 15, 'Nike Red Shoe', 'red', '10', '10', '1000', '10000', NULL, NULL),
(10, 14, 12, 'saas', 'sa', '3424234', '1', '12000', '12000', NULL, NULL),
(11, 15, 16, 'Watch', 'brawn', '10', '2', '80', '160', NULL, NULL),
(12, 16, 14, '234234234', '23423', '4234234', '1', '1500', '1500', NULL, NULL),
(13, 17, 1, '312312313123', '213123', '12312312', '1', '900', '900', NULL, NULL),
(14, 18, 15, 'Nike Red Shoe', 'red', '10', '1', '1000', '1000', NULL, NULL),
(15, 18, 11, 'iphone 15 pro max', 'red', NULL, '1', '1000', '1000', NULL, NULL),
(18, 21, 11, 'iphone 15 pro max', 'red', NULL, '1', '1000', '1000', NULL, NULL),
(19, 22, 15, 'Nike Red Shoe', 'red', '10', '3', '1000', '3000', NULL, NULL),
(21, 24, 11, 'iphone 15 pro max', 'red', NULL, '3', '1000', '3000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_position` int(11) DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_slug` varchar(255) DEFAULT NULL,
  `page_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_position`, `page_name`, `page_title`, `page_slug`, `page_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'page 1', 'page 1', 'page-1', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Once the process P2 is allocated some memory space in the\r\nRAM, it is brought to the ready queue by the Operating System. Now, P2 will\r\nwait for the CPU. Note that no other process is waiting for the CPU at this\r\ntime. <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><a name=\"_Hlk119955498\"><span lang=\"EN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">&nbsp;</span></a></p><ol style=\"margin-top:0in\" start=\"1\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;mso-list:l0 level1 lfo1\"><b><span lang=\"EN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\">Draw the contents of the ready\r\n     queue maintained by the kernel R at this time. <o:p></o:p></span></b></li>\r\n</ol><p class=\"MsoNormal\" style=\"margin-left:.5in;text-align:justify\"><b><span lang=\"EN\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">ANS : P2<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Now note that when process P2 has arrived in the ready\r\nqueue, the CPU is busy executing another process P1<b>. </b><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">After some time the CPU asks process P1 to go back to the\r\nready queue and wait for another turn of the CPU<b>.</b> <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Now the CPU starts executing process P2 by bringing the code\r\nof P2 from RAM one line at a time. This happens after a context switch<b>.</b> <o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p>', NULL, NULL),
(2, 1, 'page 2', 'page 1', 'page-1', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Once the process P2 is allocated some memory space in the\r\nRAM, it is brought to the ready queue by the Operating System. Now, P2 will\r\nwait for the CPU. Note that no other process is waiting for the CPU at this\r\ntime. <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><a name=\"_Hlk119955498\"><span lang=\"EN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">&nbsp;</span></a></p><ol style=\"margin-top:0in\" start=\"1\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;mso-list:l0 level1 lfo1\"><b><span lang=\"EN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\">Draw the contents of the ready\r\n     queue maintained by the kernel R at this time. <o:p></o:p></span></b></li>\r\n</ol><p class=\"MsoNormal\" style=\"margin-left:.5in;text-align:justify\"><b><span lang=\"EN\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">ANS : P2<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Now note that when process P2 has arrived in the ready\r\nqueue, the CPU is busy executing another process P1<b>. </b><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">After some time the CPU asks process P1 to go back to the\r\nready queue and wait for another turn of the CPU<b>.</b> <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Now the CPU starts executing process P2 by bringing the code\r\nof P2 from RAM one line at a time. This happens after a context switch<b>.</b> <o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p>', NULL, NULL),
(3, 1, 'page 3', 'This is page 2', 'page-2', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Once the process P2 is allocated some memory space in the\r\nRAM, it is brought to the ready queue by the Operating System. Now, P2 will\r\nwait for the CPU. Note that no other process is waiting for the CPU at this\r\ntime. <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><a name=\"_Hlk119955498\"><span lang=\"EN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">&nbsp;</span></a></p><ol style=\"margin-top:0in\" start=\"1\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;mso-list:l0 level1 lfo1\"><b><span lang=\"EN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\">Draw the contents of the ready\r\n     queue maintained by the kernel R at this time. <o:p></o:p></span></b></li>\r\n</ol><p class=\"MsoNormal\" style=\"margin-left:.5in;text-align:justify\"><b><span lang=\"EN\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">ANS : P2<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Now note that when process P2 has arrived in the ready\r\nqueue, the CPU is busy executing another process P1<b>. </b><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">After some time the CPU asks process P1 to go back to the\r\nready queue and wait for another turn of the CPU<b>.</b> <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Now the CPU starts executing process P2 by bringing the code\r\nof P2 from RAM one line at a time. This happens after a context switch<b>.</b> <o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p>', NULL, NULL),
(4, 1, 'page 4', 'This is page 5', 'page-5', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Once the process P2 is allocated some memory space in the\r\nRAM, it is brought to the ready queue by the Operating System. Now, P2 will\r\nwait for the CPU. Note that no other process is waiting for the CPU at this\r\ntime. <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><a name=\"_Hlk119955498\"><span lang=\"EN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">&nbsp;</span></a></p><ol style=\"margin-top:0in\" start=\"1\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;mso-list:l0 level1 lfo1\"><b><span lang=\"EN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\">Draw the contents of the ready\r\n     queue maintained by the kernel R at this time. <o:p></o:p></span></b></li>\r\n</ol><p class=\"MsoNormal\" style=\"margin-left:.5in;text-align:justify\"><b><span lang=\"EN\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">ANS : P2<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Now note that when process P2 has arrived in the ready\r\nqueue, the CPU is busy executing another process P1<b>. </b><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">After some time the CPU asks process P1 to go back to the\r\nready queue and wait for another turn of the CPU<b>.</b> <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Now the CPU starts executing process P2 by bringing the code\r\nof P2 from RAM one line at a time. This happens after a context switch<b>.</b> <o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p>', NULL, NULL),
(5, 2, 'page 5', 'This is page 6', 'page-7', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Once the process P2 is allocated some memory space in the\r\nRAM, it is brought to the ready queue by the Operating System. Now, P2 will\r\nwait for the CPU. Note that no other process is waiting for the CPU at this\r\ntime. <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><a name=\"_Hlk119955498\"><span lang=\"EN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">&nbsp;</span></a></p><ol style=\"margin-top:0in\" start=\"1\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;mso-list:l0 level1 lfo1\"><b><span lang=\"EN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\">Draw the contents of the ready\r\n     queue maintained by the kernel R at this time. <o:p></o:p></span></b></li>\r\n</ol><p class=\"MsoNormal\" style=\"margin-left:.5in;text-align:justify\"><b><span lang=\"EN\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">ANS : P2<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Now note that when process P2 has arrived in the ready\r\nqueue, the CPU is busy executing another process P1<b>. </b><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">After some time the CPU asks process P1 to go back to the\r\nready queue and wait for another turn of the CPU<b>.</b> <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Now the CPU starts executing process P2 by bringing the code\r\nof P2 from RAM one line at a time. This happens after a context switch<b>.</b> <o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p>', NULL, NULL),
(6, 2, 'page 6', 'This is page 7', 'page-7', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Once the process P2 is allocated some memory space in the\r\nRAM, it is brought to the ready queue by the Operating System. Now, P2 will\r\nwait for the CPU. Note that no other process is waiting for the CPU at this\r\ntime. <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><a name=\"_Hlk119955498\"><span lang=\"EN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">&nbsp;</span></a></p><ol style=\"margin-top:0in\" start=\"1\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;mso-list:l0 level1 lfo1\"><b><span lang=\"EN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\">Draw the contents of the ready\r\n     queue maintained by the kernel R at this time. <o:p></o:p></span></b></li>\r\n</ol><p class=\"MsoNormal\" style=\"margin-left:.5in;text-align:justify\"><b><span lang=\"EN\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">ANS : P2<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Now note that when process P2 has arrived in the ready\r\nqueue, the CPU is busy executing another process P1<b>. </b><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">After some time the CPU asks process P1 to go back to the\r\nready queue and wait for another turn of the CPU<b>.</b> <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Now the CPU starts executing process P2 by bringing the code\r\nof P2 from RAM one line at a time. This happens after a context switch<b>.</b> <o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p>', NULL, NULL),
(7, 1, 'page 7', 'sssssssssssssssssssssss', 'sssssssssssss1', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Once the process P2 is allocated some memory space in the\r\nRAM, it is brought to the ready queue by the Operating System. Now, P2 will\r\nwait for the CPU. Note that no other process is waiting for the CPU at this\r\ntime. <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><a name=\"_Hlk119955498\"><span lang=\"EN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">&nbsp;</span></a></p><ol style=\"margin-top:0in\" start=\"1\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;mso-list:l0 level1 lfo1\"><b><span lang=\"EN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\">Draw the contents of the ready\r\n     queue maintained by the kernel R at this time. <o:p></o:p></span></b></li>\r\n</ol><p class=\"MsoNormal\" style=\"margin-left:.5in;text-align:justify\"><b><span lang=\"EN\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">ANS : P2<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Now note that when process P2 has arrived in the ready\r\nqueue, the CPU is busy executing another process P1<b>. </b><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">After some time the CPU asks process P1 to go back to the\r\nready queue and wait for another turn of the CPU<b>.</b> <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Now the CPU starts executing process P2 by bringing the code\r\nof P2 from RAM one line at a time. This happens after a context switch<b>.</b> <o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p>', NULL, NULL),
(8, 2, 'page 8', '22222222', '2222', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Once the process P2 is allocated some memory space in the\r\nRAM, it is brought to the ready queue by the Operating System. Now, P2 will\r\nwait for the CPU. Note that no other process is waiting for the CPU at this\r\ntime. <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><a name=\"_Hlk119955498\"><span lang=\"EN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">&nbsp;</span></a></p><ol style=\"margin-top:0in\" start=\"1\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;mso-list:l0 level1 lfo1\"><b><span lang=\"EN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\">Draw the contents of the ready\r\n     queue maintained by the kernel R at this time. <o:p></o:p></span></b></li>\r\n</ol><p class=\"MsoNormal\" style=\"margin-left:.5in;text-align:justify\"><b><span lang=\"EN\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">ANS : P2<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Now note that when process P2 has arrived in the ready\r\nqueue, the CPU is busy executing another process P1<b>. </b><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">After some time the CPU asks process P1 to go back to the\r\nready queue and wait for another turn of the CPU<b>.</b> <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Now the CPU starts executing process P2 by bringing the code\r\nof P2 from RAM one line at a time. This happens after a context switch<b>.</b> <o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">&nbsp;</span></p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$3phY4O9oNC0bQSfbDlSbaumxcUmyrRJcvt7FD7PwG3uNiSJX9hwsS', '2023-10-01 02:43:47'),
('user@gmail.com', '$2y$10$Ev/F4CLdoArof1djf1riOeXAgJ2dgiMZAgf1iFyYIVCb2kkFqOmgu', '2023-10-01 02:42:21');

-- --------------------------------------------------------

--
-- Table structure for table `payment_getway_bds`
--

CREATE TABLE `payment_getway_bds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `getway_name` varchar(255) DEFAULT NULL,
  `store_id` varchar(255) DEFAULT NULL,
  `signature_key` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_getway_bds`
--

INSERT INTO `payment_getway_bds` (`id`, `getway_name`, `store_id`, `signature_key`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aamarpay ', 'aamarpay', '28c78bb1f45112f5d40b956fe104645a', NULL, NULL, NULL),
(2, 'SSL Commerz ', 'surjapay', '45435435345345', NULL, NULL, NULL),
(3, 'Surjapay', 'ssl', '28c78bb1f45112f5d40b956fe104645a', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickup_points`
--

CREATE TABLE `pickup_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pickup_point_name` varchar(255) DEFAULT NULL,
  `pickup_point_address` varchar(255) DEFAULT NULL,
  `pickup_point_phone` varchar(255) DEFAULT NULL,
  `pickup_point_phone_two` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pickup_points`
--

INSERT INTO `pickup_points` (`id`, `pickup_point_name`, `pickup_point_address`, `pickup_point_phone`, `pickup_point_phone_two`, `created_at`, `updated_at`) VALUES
(1, 'Uttara Branch', 'Bnani, Dhaka', '12345677777777777', '654321', NULL, '2024-01-15 11:44:46'),
(6, 'Chatmohar', 'Chatmohar', '124352', '241123412', '2024-01-19 05:46:47', '2024-01-19 05:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `childcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `pickup_point_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `purchase_price` varchar(255) DEFAULT NULL,
  `selling_price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `stock_quantity` varchar(255) DEFAULT NULL,
  `warehouse` varchar(199) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `today_deal` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `product_slider` int(255) DEFAULT NULL,
  `product_views` int(11) DEFAULT 0,
  `trendy` int(2) DEFAULT 0,
  `admin_id` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `month` varchar(240) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `pickup_point_id`, `name`, `slug`, `code`, `unit`, `tags`, `color`, `size`, `video`, `purchase_price`, `selling_price`, `discount_price`, `stock_quantity`, `warehouse`, `description`, `thumbnail`, `images`, `featured`, `today_deal`, `status`, `product_slider`, `product_views`, `trendy`, `admin_id`, `date`, `month`, `created_at`, `updated_at`) VALUES
(1, 4, 12, NULL, 6, 1, '312312313123', '312312313123', '3123123', '21312', '23123', '213123', '12312312', '123123', '3123123', '1200', '900', '3123123', 'warehouse  1', '3213123', '312312313123.png', '[\"1779997291063469.png\"]', 1, 0, 1, NULL, 6, 1, 1, '17-10-2023', 'October', NULL, '2023-11-25 10:36:12'),
(2, 4, 12, 17, 2, 1, 'sadsdas', 'sadsdas', '12312312', '1231233213123', '21323', '123213', '12321312', '213123123123', '123123', '100', '90', '312312', 'warehouse  1', '<p>213312312312</p>', 'sadsdas.png', '[\"1779997557422519.png\",\"1779997557662733.png\",\"1779997557849301.png\"]', 1, 0, 1, NULL, 0, 0, 1, '17-10-2023', 'October', NULL, NULL),
(3, 4, 15, 18, 7, 1, '234234', '234234', '42342342', '23423423', '234234', '234234', '4234', '234234', '4234234', '1000', '850', '42342', 'warehouse  1', '<p>4234234234</p>', '234234.png', NULL, 1, 0, 1, NULL, 0, 0, 1, '17-10-2023', 'October', NULL, NULL),
(4, 6, 16, 21, 9, 1, 'Lipstick', 'lipstick', 'lp-001', '1111', 'Lipstick,for_girls', 'red,blue,pink', '1,2,3,4', '231123', '100', '90', '80', '20', 'warehouse  Main 1', 'Brand new lipstick', 'lipstick.jpeg', '[\"1780034221515103.jpg\",\"1780034221605124.jpeg\"]', 1, 0, 1, NULL, 0, 0, 1, '17-10-2023', 'October', NULL, NULL),
(5, 4, 12, 17, 2, 1, '12312', '12312', '31232', '3123123', '7575', '5757575', '7575', 'sadasds', '757', '400', NULL, '7557', 'warehouse  1', '<p>dasdsd</p>', '12312.jpeg', NULL, 1, 0, 1, NULL, 1, 0, 1, '18-10-2023', 'October', NULL, '2023-11-07 12:13:08'),
(6, 4, 12, 17, 2, 1, 'wewe', 'wewe', '212121', '12212', '322', '323', '32323', '2332', '2332', '120', '100', '3232', 'warehouse  Main 1', '<p>23233</p>', 'wewe.jpg', NULL, 1, 0, 1, NULL, 7, 0, 1, '19-10-2023', 'October', NULL, '2023-11-01 11:22:16'),
(7, 21, 17, NULL, 9, 1, 'Apple iPhone 15', 'apple-iphone-15', 'iphone-00014', '12312', 'red,sky,phone', 'red,sky,silver', '00', '23423', '1200', '1000', '990', '500', 'warehouse  Main 1', '<p>new iphone</p>', 'apple-iphone-15.jpg', NULL, 1, 0, 1, NULL, 7, 0, 1, '23-10-2023', 'October', NULL, '2023-11-13 12:43:37'),
(8, 21, 17, 22, 3, 1, 'iphone 15 new vr', 'apple-iphone-15', '4231242', '412412', '4124124', '412421', '4124', '124124', '412412', '1100', NULL, '124214', 'warehouse  1', '<p>124124</p>', 'apple-iphone-15.jpg', NULL, 1, 0, 1, NULL, 8, 0, 1, '23-10-2023', 'October', NULL, '2023-11-13 12:43:37'),
(9, 4, 15, 18, 2, 1, '4234', '4234', '342334', '2342342343', '21321123', '2343423', '42343', '2342343', '324', '3400', '3300', '42342343', 'warehouse  1', '<p>42342343</p>', '4234.png', '', 1, 0, 1, NULL, 13, 1, 1, '23-10-2023', 'October', NULL, '2023-11-07 12:47:19'),
(10, 21, 17, 22, 10, 1, 'Apple Iphone 15 ', 'apple-iphone-15 ', '213', '2131232', '312312', '21312', '31232', '31232', '312312', '1200', '1000', '31232', 'warehouse  1', '<p>21312</p>', 'iiiiiiiiiiiiiiiii.png', NULL, 1, 1, 0, NULL, 3, 0, 1, '23-10-2023', 'October', NULL, '2023-11-13 12:43:37'),
(11, 21, 17, 22, 10, 1, 'iphone 15 pro max', 'iphone-15-pro-max', 'iphone-00015', 'pcs', 'red,sky,phone\n', 'red ,blue,green', NULL, 'DAl3dbTnAgw', '1150', '1200', '1000', '10', 'warehouse  Main 1', 'Available to qualified customers and requires 24-month installment loan when you select Citizens One or Apple Card Monthly Installments (ACMI) as payment type at checkout at Apple. You’ll need to select AT&T, T-Mobile, or Verizon as your carrier when you ', 'iphone-15-pro-max.png', '[\"1780845807954276.jpg\",\"1780845808120887.jpeg\",\"1780845808201158.jpeg\",\"1780845808277433.jpeg\"]', 1, 1, 1, 1, 43, 1, 1, '26-10-2023', 'October', NULL, '2024-01-31 08:00:06'),
(12, 4, 15, 18, 2, 1, 'saas', 'saas', 'aa', 'sasa', 'saa', 'sa', '3424234', '3232', 'saasa', '15000', '12000', 'assa', 'warehouse  1', '<p>323</p>', 'saas.png', NULL, 1, 0, 1, NULL, 5, 0, 1, '26-10-2023', 'October', NULL, '2023-11-01 11:19:16'),
(13, 21, 17, 22, 2, 1, 'wer', 'wer', '2421412124', '234234234', '234234', 'wewqeqw', NULL, NULL, '4234234', '320', '250', '32423', 'warehouse  Main 1', '<p>qweqweqwewe</p>', 'wer.jpeg', '[\"1780845807954276.jpg\",\"1780845808120887.jpeg\",\"1780845808201158.jpeg\",\"1780845808277433.jpeg\"]', 1, 0, 1, NULL, 3, 0, 1, '28-10-2023', 'October', NULL, '2023-11-12 12:12:55'),
(14, 21, 17, 22, 2, 1, '234234234', '234234234', '323423', '234234234234234', NULL, '23423', '4234234', '23423', '23423', '2000', '1500', '4234', 'warehouse  1', '<p>234234</p>', '234234234.jpeg', '[\"1781026138074174.jpeg\"]', 1, 0, 1, NULL, 7, 0, 1, '28-10-2023', 'October', NULL, '2023-11-12 11:49:50'),
(15, 4, 18, 17, 11, 1, 'Nike Red Shoe', 'nike-red-shoe', 'nike-00001', '001', 'sadsdas,dasdasd', 'red,blue,green', '10,20,30', '3q1u4gQRvwE', '1100', '1000', NULL, '2', 'warehouse  1', '<p>sadasdasdasdsdsddsds</p>', 'nike-red-shoe.jpg', '[\"1781385050093718.jpg\"]', 1, 1, 1, NULL, 13, NULL, 1, '01-11-2023', 'November', NULL, '2023-11-09 12:36:26'),
(16, 4, 15, 18, 9, 1, 'Watch', 'watch', 'watch-0001', '23132', 'watch', 'brawn', '10 ,11', '3q1u4gQRvwE', '100', '90', '80', '10', 'warehouse  1', '<p>Amidst the rising horological frenzy over all things vintage and esoteric, UNDONE x Watches.com partnered to bring a contrasting chronograph with all the best&nbsp;<br></p>', 'watch.jpeg', '[\"1781385694215203.jpg\"]', 1, 1, 1, NULL, 3, 1, 1, '01-11-2023', 'November', NULL, '2023-11-02 12:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `reply_date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `ticket_id`, `user_id`, `message`, `reply_date`, `image`, `created_at`, `updated_at`) VALUES
(1, 4, 0, 'Thankyou for your feedback', '2023-11-29', 'public/files/ticket/656760b5bd49d.png', NULL, NULL),
(2, 4, 2, 'you are welcome.thankyou', '2023-11-29', NULL, NULL, NULL),
(3, 4, 2, 'ssss', '2023-11-30', NULL, NULL, NULL),
(4, 4, 0, 'xxxx', NULL, NULL, NULL, NULL),
(5, 4, 0, 'nice', '2023-12-01', NULL, NULL, NULL),
(6, 4, 0, 'ok', '2023-12-01', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `review` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review_date` varchar(255) DEFAULT NULL,
  `review_month` varchar(11) DEFAULT NULL,
  `review_year` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `review`, `rating`, `review_date`, `review_month`, `review_year`, `created_at`, `updated_at`) VALUES
(15, 3, 11, 'dfd', 2, NULL, NULL, NULL, NULL, NULL),
(16, 3, 11, 'trrt', 1, NULL, NULL, NULL, NULL, NULL),
(18, 1, 11, 'joy', 3, '17-01-24', 'January', 2024, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_author` varchar(255) DEFAULT NULL,
  `meta_tag` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `goolge_verification` varchar(255) DEFAULT NULL,
  `google_analytics` varchar(255) DEFAULT NULL,
  `alexa_verification` varchar(255) DEFAULT NULL,
  `google_adsense` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_author`, `meta_tag`, `meta_description`, `meta_keyword`, `goolge_verification`, `google_analytics`, `alexa_verification`, `google_adsense`, `created_at`, `updated_at`) VALUES
(1, 'ABC Ecommerce', 'ABC  Coder', 'Ecommerce Online shop, Online Bazar, Online market', 'ABC Market is an online shop where you see electronic update', 'Ecommerce Online shop, Online Bazar, Online market', 'dasdas', 'asdasd', 'asdasd', 'asddas', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `phone_one` varchar(255) DEFAULT NULL,
  `phone_two` varchar(255) DEFAULT NULL,
  `main_email` varchar(255) DEFAULT NULL,
  `support_email` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `currency`, `phone_one`, `phone_two`, `main_email`, `support_email`, `logo`, `favicon`, `address`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, '৳', '0179309643', '01611273922', 'shakir@gmail.com', 'shamiur@gmail.com', 'public/files/setting/6534228b3d8b0.jpeg', 'public/files/setting/6534228b47536.jpeg', 'Dhaka', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) DEFAULT NULL,
  `shipping_phone` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `shipping_country` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(255) DEFAULT NULL,
  `shipping_zipcode` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smtps`
--

CREATE TABLE `smtps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mailer` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtps`
--

INSERT INTO `smtps` (`id`, `mailer`, `host`, `port`, `user_name`, `password`, `created_at`, `updated_at`) VALUES
(1, 'smtp', 'smtp.mailtrap.io', '2525', 'shamiur', '12345678', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategory_name` varchar(255) DEFAULT NULL,
  `subcat_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcat_slug`, `created_at`, `updated_at`) VALUES
(10, 6, 'Tops Dress', 'tops-dress', NULL, '2023-10-04 03:31:49'),
(11, 8, 'kids pant', 'kids-pant', NULL, '2023-10-16 11:32:55'),
(12, 4, 'shirt', 'shirt', NULL, NULL),
(13, 8, 'kids toy', 'kids-toy', NULL, '2023-10-16 11:33:59'),
(15, 4, 'Men Watch', 'men-watch', NULL, '2023-10-16 11:33:13'),
(16, 6, 'lipstick', 'lipstick', NULL, '2023-10-17 13:57:29'),
(17, 21, 'apple', 'apple', NULL, '2023-10-23 13:37:45'),
(18, 4, 'Shoe', 'shoe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `subject`, `service`, `priority`, `message`, `image`, `status`, `date`, `created_at`, `updated_at`) VALUES
(3, 2, 'SRS IT farm IS One of the best it farm', 'Technical', 'Low', 'SRS IT farm IS One of the best it farm', NULL, 0, '2023-11-25', NULL, NULL),
(4, 2, 'SRS IT farm IS One of the best it farm', 'Technical', 'Low', 'SRS IT farm IS One of the best it farm', 'public/files/ticket/656365491f78c.png', 2, '2023-11-26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `role_admin` int(11) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT 0,
  `product` int(11) DEFAULT 0,
  `offer` int(11) DEFAULT 0,
  `order` int(11) DEFAULT 0,
  `blog` int(11) DEFAULT 0,
  `pickup` int(11) DEFAULT 0,
  `ticket` int(11) DEFAULT 0,
  `contact` int(11) DEFAULT 0,
  `report` int(11) DEFAULT 0,
  `setting` int(11) DEFAULT 0,
  `userrole` int(11) DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `is_admin`, `role_admin`, `google_id`, `category`, `product`, `offer`, `order`, `blog`, `pickup`, `ticket`, `contact`, `report`, `setting`, `userrole`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', NULL, '$2y$10$grhVYrQlt0uzQCQzEGnWHecJNj47Tqmh7Ixeu7Jn1/bVQqKwUCk4i', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '2024-01-21 07:53:07', '2024-01-21 07:53:07'),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$3c.nexNHMIMbGwlkQAArPOS0vmd3zM68.s9gKe790Yin9YdAY.Plq', NULL, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '2024-01-21 07:53:27', '2024-01-21 07:53:27'),
(3, 'shakir', 'shakir@gmail.com', NULL, '$2y$10$lvi1keHFCbuwa4TX14Nm6enlN03Sisu/ztzNn.HNz4VlBNw0jN0FK', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, NULL, '2024-01-21 07:59:11', '2024-01-21 07:59:11'),
(4, 'SRS', 'srs@gmail.com', NULL, '$2y$10$vAZ9Agh/Fz2XsRY2Mg04qOlLSKrPOfWKTGSeFNbcmjOug3rTsHM52', NULL, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL),
(5, 'belal', 'belal@gmail.com', NULL, '$2y$10$HrM0r7IvIyAL1bFrUw1lNe/Qqs1acbHhK5C1C3vg/leMzfjzIX0kK', NULL, 1, 1, NULL, NULL, 1, 1, 1, 1, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL),
(7, 'q', 'q@gmail.com', NULL, '$2y$10$wEKGEKI9KPwXMEfj0xc0ku9EfUTezqAeFGWQC7WijLP5s2yEDNJFG', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(8, 'maysha', 'maysa@gmail.com', NULL, '$2y$10$MJI4qKmKste0T/Xli9Dl2.O88buL9V5VoSalUPovPmmnhN/pQC4Dy', NULL, 1, 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'office', 'office@gmail.com', NULL, '$2y$10$2mjl4DDr6w7247sPibrite9phhMR823yJ7qaAdOGn6heGPCKTrisi', NULL, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'C', 'C@gmail.com', NULL, '$2y$10$6fw0D/IwCfoTwOCxFEKsq.Rf5Zjua/He0j79jcQ2/NZ7KspRlNIk6', NULL, 1, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_name` varchar(255) DEFAULT NULL,
  `warehouse_address` varchar(255) DEFAULT NULL,
  `warehouse_phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `warehouse_name`, `warehouse_address`, `warehouse_phone`, `created_at`, `updated_at`) VALUES
(3, 'warehouse  1', 'Dhaka , Bangladesh', '123123213', NULL, NULL),
(9, 'warehouse  Main 1', 'Pabna', '12345', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webreviews`
--

CREATE TABLE `webreviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `review` text DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `review_date` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webreviews`
--

INSERT INTO `webreviews` (`id`, `user_id`, `name`, `review`, `rating`, `review_date`, `status`, `created_at`, `updated_at`) VALUES
(2, 5, 'srs', 'nice product from your website', 3, '16 , November 2023', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `date`, `created_at`, `updated_at`) VALUES
(25, 1, 11, '17 , January 2024', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_replies`
--
ALTER TABLE `admin_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs_tables`
--
ALTER TABLE `blogs_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_tables_blog_category_id_foreign` (`blog_category_id`);

--
-- Indexes for table `blog_category_tables`
--
ALTER TABLE `blog_category_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `childcategories_category_id_foreign` (`category_id`),
  ADD KEY `childcategories_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_getway_bds`
--
ALTER TABLE `payment_getway_bds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pickup_points`
--
ALTER TABLE `pickup_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_user_id_foreign` (`user_id`);

--
-- Indexes for table `smtps`
--
ALTER TABLE `smtps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webreviews`
--
ALTER TABLE `webreviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webreviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_replies`
--
ALTER TABLE `admin_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs_tables`
--
ALTER TABLE `blogs_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_category_tables`
--
ALTER TABLE `blog_category_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_getway_bds`
--
ALTER TABLE `payment_getway_bds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickup_points`
--
ALTER TABLE `pickup_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smtps`
--
ALTER TABLE `smtps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `webreviews`
--
ALTER TABLE `webreviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs_tables`
--
ALTER TABLE `blogs_tables`
  ADD CONSTRAINT `blogs_tables_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_category_tables` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD CONSTRAINT `childcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `childcategories_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webreviews`
--
ALTER TABLE `webreviews`
  ADD CONSTRAINT `webreviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
