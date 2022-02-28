-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 28, 2022 at 02:13 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livewire_catalog`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Greenlight', NULL, '2022-01-19 19:47:12', '2022-01-19 19:47:12'),
(2, 'Erigo', NULL, '2022-01-19 19:47:32', '2022-01-19 19:47:32'),
(3, 'ThreeSecond', NULL, '2022-01-19 19:47:39', '2022-01-19 19:47:39'),
(4, 'The Executive', NULL, '2022-01-19 19:47:46', '2022-01-19 19:47:46');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'lainnya', NULL, 'secondary-category', NULL, '2022-01-19 19:03:55', '2022-01-19 19:03:55'),
(2, 'Kaos', '6515c0d8df19be0e1a3106681be5af7f', 'main-category', NULL, '2022-01-19 19:49:22', '2022-01-19 19:49:23'),
(3, 'Kemeja', '5d2447d8dad76f2209d90d2be698b25e', 'main-category', NULL, '2022-01-19 19:49:42', '2022-01-19 19:49:42'),
(4, 'Celana', '4913a55e7c92bf7cdb1a2f7e54d1d4dd', 'main-category', NULL, '2022-01-19 19:50:19', '2022-01-19 19:50:19'),
(5, 'Tas', 'e8e722fed04c8e19364e90b593bb0694', 'main-category', NULL, '2022-01-19 19:50:44', '2022-01-19 19:50:44'),
(6, 'Sepatu', '3cb797d63cef1ec7557e64e943884395', 'main-category', NULL, '2022-01-19 19:51:07', '2022-01-19 19:51:07'),
(7, 'Aksesoris', '6e3df9c229773a7ef5819bd1bc897333', 'main-category', NULL, '2022-01-19 19:51:35', '2022-01-19 19:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `category_id`, `product_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 2, 4, NULL, NULL, NULL),
(5, 2, 5, NULL, NULL, NULL),
(6, 2, 6, NULL, NULL, NULL),
(7, 2, 7, NULL, NULL, NULL),
(8, 7, 8, NULL, NULL, NULL),
(9, 7, 9, NULL, NULL, NULL),
(10, 7, 10, NULL, NULL, NULL),
(11, 6, 11, NULL, NULL, NULL),
(12, 6, 12, NULL, NULL, NULL),
(13, 5, 13, NULL, NULL, NULL),
(14, 7, 13, NULL, NULL, NULL),
(15, 5, 14, NULL, NULL, NULL),
(16, 7, 14, NULL, NULL, NULL),
(17, 5, 15, NULL, NULL, NULL),
(18, 5, 16, NULL, NULL, NULL),
(19, 4, 17, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'lainnya', NULL, '2022-01-19 19:05:59', '2022-01-19 19:05:59'),
(2, 'Merah', NULL, '2022-01-19 19:52:41', '2022-01-19 19:52:41'),
(3, 'Hitam', NULL, '2022-01-19 19:52:47', '2022-01-19 19:52:47'),
(4, 'Biru', NULL, '2022-01-19 19:52:52', '2022-01-19 19:52:52'),
(5, 'Hijau', NULL, '2022-01-19 19:52:58', '2022-01-19 19:52:58'),
(6, 'Pink', NULL, '2022-01-19 19:53:04', '2022-01-19 19:53:04'),
(7, 'Putih', NULL, '2022-01-19 19:53:09', '2022-01-19 19:53:09'),
(8, 'Donker', NULL, '2022-01-19 19:53:14', '2022-01-19 19:53:14'),
(9, 'Orange', NULL, '2022-01-19 19:53:19', '2022-01-19 19:53:19'),
(10, 'Cream', NULL, '2022-01-19 19:53:30', '2022-01-19 19:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `color_product`
--

CREATE TABLE `color_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_product`
--

INSERT INTO `color_product` (`id`, `color_id`, `product_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 4, 4, NULL, NULL, NULL),
(5, 2, 4, NULL, NULL, NULL),
(6, 7, 5, NULL, NULL, NULL),
(7, 2, 5, NULL, NULL, NULL),
(8, 4, 5, NULL, NULL, NULL),
(9, 5, 6, NULL, NULL, NULL),
(10, 7, 7, NULL, NULL, NULL),
(11, 6, 7, NULL, NULL, NULL),
(12, 1, 8, NULL, NULL, NULL),
(13, 1, 9, NULL, NULL, NULL),
(14, 1, 10, NULL, NULL, NULL),
(15, 3, 11, NULL, NULL, NULL),
(16, 7, 12, NULL, NULL, NULL),
(17, 1, 13, NULL, NULL, NULL),
(18, 3, 14, NULL, NULL, NULL),
(19, 2, 15, NULL, NULL, NULL),
(20, 3, 15, NULL, NULL, NULL),
(21, 1, 16, NULL, NULL, NULL),
(22, 10, 17, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_16_111654_create_products_table', 1),
(6, '2021_12_16_111731_create_colors_table', 1),
(7, '2021_12_16_111745_create_categories_table', 1),
(8, '2021_12_16_111802_create_brands_table', 1),
(9, '2021_12_16_111817_create_sizes_table', 1),
(10, '2021_12_16_111830_create_photos_table', 1),
(11, '2021_12_16_111846_create_discounts_table', 1),
(12, '2021_12_16_111904_create_transactions_table', 1),
(13, '2021_12_16_111917_create_transaction_details_table', 1),
(14, '2021_12_16_114053_create_category_product_table', 1),
(15, '2021_12_16_114107_create_color_product_table', 1),
(16, '2021_12_16_114124_create_product_size_table', 1),
(17, '2021_12_16_114501_add_foregn_key_product_brand', 1),
(18, '2021_12_16_125603_add_foregn_key_discount_product', 1),
(19, '2021_12_16_125753_add_foregn_key_transaction_user', 1),
(20, '2021_12_16_125912_add_foregn_key_detail_transaction', 1),
(21, '2021_12_16_130217_add_foregn_key_photo_product', 1),
(22, '2021_12_16_131125_add_foregn_key_pivot_category_product', 1),
(23, '2021_12_16_131757_add_foregn_key_pivot_color_product', 1),
(24, '2021_12_16_131819_add_foregn_key_pivot_product_size', 1),
(25, '2022_01_22_132652_create_provinces_table', 2),
(26, '2022_01_22_132723_create_cities_table', 2),
(27, '2022_01_23_113920_create_couriers_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `product_id`, `url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 4, 'd36c4f25977ba0682d1913f299ea2200', NULL, '2022-01-19 20:10:17', '2022-01-19 20:10:17'),
(5, 4, '0cba5d931f8a3f9fe409d46191d36a3e', NULL, '2022-01-19 20:10:17', '2022-01-19 20:10:17'),
(6, 5, '254da92ac8e1786c9057eddaaff8e17c', NULL, '2022-01-19 20:11:35', '2022-01-19 20:11:35'),
(7, 5, '74ea9b3fbb43fbc3b900b8071205e7de', NULL, '2022-01-19 20:11:35', '2022-01-19 20:11:35'),
(8, 6, 'd3b828dd1731756a9be5985be55014ae', NULL, '2022-01-19 20:12:58', '2022-01-19 20:12:58'),
(9, 7, '6ae5fa084d10ef47da687c655a76a43c', NULL, '2022-01-19 20:13:40', '2022-01-19 20:13:40'),
(10, 7, '34e91e14892938a4426bf04b3c80be37', NULL, '2022-01-19 20:13:40', '2022-01-19 20:13:40'),
(11, 8, '7a1df96606181d4c7dc09d78446a0f9a', NULL, '2022-01-19 20:14:54', '2022-01-19 20:14:54'),
(12, 9, '22dc15c6eebdbdd430c60941450dccdd', NULL, '2022-01-19 20:15:17', '2022-01-19 20:15:17'),
(13, 10, '5f31d509373297316ba9ab9dc3647173', NULL, '2022-01-19 20:16:08', '2022-01-19 20:16:08'),
(14, 11, 'cf85b44fdb7d0ce3127092aa1dabbf72', NULL, '2022-01-19 20:17:43', '2022-01-19 20:17:43'),
(15, 12, '9c5e36cf6b8d75637bd442e01ff69ec5', NULL, '2022-01-19 20:18:17', '2022-01-19 20:18:17'),
(16, 13, 'dd29f5f30439b067ad916dbede85a6b9', NULL, '2022-01-19 20:19:15', '2022-01-19 20:19:15'),
(17, 14, '3bb43889b369cf4dd24cf03b7768309f', NULL, '2022-01-19 20:19:55', '2022-01-19 20:19:55'),
(18, 15, '4aadfe6fd430ce00cb9f3fbdbe552e66', NULL, '2022-01-19 20:21:08', '2022-01-19 20:21:08'),
(19, 15, 'f8203ea03542919565d67c0673b4f296', NULL, '2022-01-19 20:21:08', '2022-01-19 20:21:08'),
(20, 16, 'e787444d15c80988b37e834ec50526b0', NULL, '2022-01-19 20:21:46', '2022-01-19 20:21:46'),
(21, 17, 'b9f813c5cb0b8c8291ede9f46db1864d', NULL, '2022-01-19 20:22:50', '2022-01-19 20:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `weight` double NOT NULL,
  `stock` int(11) NOT NULL,
  `short_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `name`, `slug`, `price`, `weight`, `stock`, `short_desc`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 1, 'Kaos Polo', 'kaos-polo', 35000, 0.1, 5, 'Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.', '<p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p>', NULL, '2022-01-19 20:10:17', '2022-01-19 20:10:17'),
(5, 3, 'Kaos Polos', 'kaos-polos', 30000, 0.1, 4, 'Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.', '<p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p>', NULL, '2022-01-19 20:11:35', '2022-01-19 20:11:35'),
(6, 4, 'Kemeja 1', 'kemeja-1', 90000, 0.1, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.', '<p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p>', NULL, '2022-01-19 20:12:57', '2022-01-19 20:12:57'),
(7, 4, 'Kemeja 2', 'kemeja-2', 120000, 0.1, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.', '<p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p>', NULL, '2022-01-19 20:13:40', '2022-01-19 20:13:40'),
(8, 2, 'Jam Tangan 1', 'jam-tangan-1', 300000, 0.1, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.', '<p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p>', NULL, '2022-01-19 20:14:54', '2022-01-19 20:14:54'),
(9, 2, 'Jam Tangan 2', 'jam-tangan-2', 400000, 0.1, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.', '<p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p>', NULL, '2022-01-19 20:15:17', '2022-01-19 20:15:17'),
(10, 2, 'Kaca Mata Fashion', 'kaca-mata-fashion', 150000, 0.1, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.', '<p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p>', NULL, '2022-01-19 20:16:08', '2022-01-19 20:16:08'),
(11, 2, 'Sepatu', 'sepatu', 170000, 0.5, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.', '<p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p>', NULL, '2022-01-19 20:17:43', '2022-01-19 20:17:43'),
(12, 2, 'Sepatu Olahraga', 'sepatu-olahraga', 250000, 0.5, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.', '<p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p>', NULL, '2022-01-19 20:18:17', '2022-01-19 20:18:17'),
(13, 2, 'Dompet Wanita', 'dompet-wanita', 150000, 0.5, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.', '<p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p>', NULL, '2022-01-19 20:19:15', '2022-01-19 20:19:15'),
(14, 2, 'Dompet', 'dompet', 50000, 0.2, 4, 'Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.', '<p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p>', NULL, '2022-01-19 20:19:55', '2022-01-19 20:19:55'),
(15, 4, 'Tas ', 'tas', 150000, 0.5, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.', '<p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p>', NULL, '2022-01-19 20:21:07', '2022-01-19 20:21:07'),
(16, 4, 'Backpack ', 'backpack', 200000, 0.5, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.', '<p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p>', NULL, '2022-01-19 20:21:46', '2022-01-19 20:21:46'),
(17, 1, 'Rok', 'rok', 60000, 0.1, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.', '<p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Eius id vel optio architecto quidem totam! Voluptatum facilis, odit quidem labore alias eveniet perferendis blanditiis, id.</p>', NULL, '2022-01-19 20:22:50', '2022-01-19 20:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`id`, `product_id`, `size_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 4, 4, NULL, NULL, NULL),
(4, 5, 4, NULL, NULL, NULL),
(5, 5, 3, NULL, NULL, NULL),
(6, 6, 4, NULL, NULL, NULL),
(7, 7, 4, NULL, NULL, NULL),
(8, 8, 1, NULL, NULL, NULL),
(9, 9, 1, NULL, NULL, NULL),
(10, 10, 1, NULL, NULL, NULL),
(11, 11, 1, NULL, NULL, NULL),
(12, 12, 1, NULL, NULL, NULL),
(13, 13, 1, NULL, NULL, NULL),
(14, 14, 1, NULL, NULL, NULL),
(15, 15, 1, NULL, NULL, NULL),
(16, 16, 1, NULL, NULL, NULL),
(17, 17, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'lainnya', NULL, '2022-01-19 19:05:59', '2022-01-19 19:05:59'),
(2, 'S', NULL, '2022-01-19 19:51:50', '2022-01-19 19:51:50'),
(3, 'M', NULL, '2022-01-19 19:52:02', '2022-01-19 19:52:02'),
(4, 'L', NULL, '2022-01-19 19:52:07', '2022-01-19 19:52:07'),
(5, 'XL', NULL, '2022-01-19 19:52:13', '2022-01-19 19:52:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ilham Muhamad S', 'ilhammuhamads6999@gmail.com', NULL, '$2y$10$d.1u1MjpompyndHRPU0ZaeS9FG.PlIDphEt6WFazlRrJTE.HTUl82', NULL, '2022-01-19 19:46:37', '2022-01-19 19:46:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_product`
--
ALTER TABLE `color_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `color_product_color_id_foreign` (`color_id`),
  ADD KEY `color_product_product_id_foreign` (`product_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_product_id_foreign` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_size_product_id_foreign` (`product_id`),
  ADD KEY `product_size_size_id_foreign` (`size_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `color_product`
--
ALTER TABLE `color_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `color_product`
--
ALTER TABLE `color_product`
  ADD CONSTRAINT `color_product_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `color_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_size`
--
ALTER TABLE `product_size`
  ADD CONSTRAINT `product_size_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_size_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
