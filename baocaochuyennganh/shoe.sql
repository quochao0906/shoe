-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2018 at 12:26 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_Ad` int(10) UNSIGNED NOT NULL,
  `HoTen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` date DEFAULT NULL,
  `EmailAd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DienThoai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_Ad`, `HoTen`, `Username`, `Password`, `NgaySinh`, `EmailAd`, `DienThoai`, `DiaChi`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin', NULL, NULL, NULL, NULL, '2018-11-23 17:00:00', NULL),
(2, 'Dương Quốc Hào', 'quochao', '12345', '2018-12-12', 'sparta.quochao96@gmail.com', '1555666', 'Hutech, Hutech', '2018-12-03 17:11:10', '2018-12-12 10:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id_CTDH` int(10) UNSIGNED NOT NULL,
  `id_Bill` int(10) UNSIGNED NOT NULL,
  `id_SP` int(10) UNSIGNED NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id_CTDH`, `id_Bill`, `id_SP`, `SoLuong`, `created_at`, `updated_at`) VALUES
(8, 14, 1, 2, '2018-12-09 07:02:31', '2018-12-09 07:02:31'),
(9, 14, 10, 7, '2018-12-09 07:02:31', '2018-12-09 07:02:31'),
(10, 14, 2, 2, '2018-12-09 07:02:31', '2018-12-09 07:02:31'),
(11, 15, 1, 2, '2018-12-09 07:06:52', '2018-12-09 07:06:52'),
(12, 15, 10, 7, '2018-12-09 07:06:52', '2018-12-09 07:06:52'),
(13, 15, 2, 2, '2018-12-09 07:06:52', '2018-12-09 07:06:52'),
(14, 16, 2, 2, '2018-12-12 09:08:02', '2018-12-12 09:08:02'),
(15, 16, 12, 1, '2018-12-12 09:08:02', '2018-12-12 09:08:02'),
(16, 16, 7, 1, '2018-12-12 09:08:02', '2018-12-12 09:08:02'),
(17, 16, 1, 2, '2018-12-12 09:08:03', '2018-12-12 09:08:03');

-- --------------------------------------------------------

--
-- Table structure for table `chude`
--

CREATE TABLE `chude` (
  `id_CD` int(10) UNSIGNED NOT NULL,
  `id_TH` int(10) UNSIGNED NOT NULL,
  `TenCD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chude`
--

INSERT INTO `chude` (`id_CD`, `id_TH`, `TenCD`) VALUES
(1, 1, 'Running'),
(2, 1, 'Football'),
(3, 1, 'Training'),
(4, 2, 'Running'),
(6, 4, 'Running'),
(7, 2, 'Training');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id_Cmt` int(10) UNSIGNED NOT NULL,
  `id_KH` int(10) UNSIGNED NOT NULL,
  `id_SP` int(10) UNSIGNED NOT NULL,
  `NoiDung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id_Cmt`, `id_KH`, `id_SP`, `NoiDung`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Mình đã mua sản phẩm này tại shop, chất lượng đúng như quảng cáo, việc giao hàng rất nhanh. ', '2018-11-24 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE `dondathang` (
  `id_Bill` int(10) UNSIGNED NOT NULL,
  `id_KH` int(10) UNSIGNED NOT NULL,
  `TongTien` double NOT NULL,
  `Payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TinNhanKH` text COLLATE utf8mb4_unicode_ci,
  `TrangThai` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dondathang`
--

INSERT INTO `dondathang` (`id_Bill`, `id_KH`, `TongTien`, `Payment`, `TinNhanKH`, `TrangThai`, `created_at`, `updated_at`) VALUES
(1, 1, 100, 'Baokim', 'k', 0, NULL, NULL),
(2, 1, 100, 'baokim', NULL, 1, NULL, NULL),
(3, 1, 200, 'ádasdad', NULL, 1, NULL, NULL),
(4, 1, 200, 'baokim', NULL, 1, '2018-12-02 09:47:06', '2018-12-02 09:47:06'),
(5, 1, 200, 'baokim', NULL, 1, '2018-12-02 09:48:16', '2018-12-02 09:48:16'),
(6, 1, 200, 'baokim', NULL, 1, '2018-12-02 09:48:17', '2018-12-02 09:48:17'),
(7, 1, 200, 'baokim', NULL, 1, '2018-12-02 09:49:18', '2018-12-02 09:49:18'),
(14, 1, 1100, 'BaoKim', 'Đây là tin nhắn của khách hàng', 0, '2018-12-09 07:02:31', '2018-12-09 07:02:31'),
(15, 1, 1100, 'BaoKim', 'Đây là tin nhắn của khách hàng', 0, '2018-12-09 07:06:52', '2018-12-09 07:06:52'),
(16, 2, 600, 'BaoKim', 'Đây là tin nhắn của khách hàng', 0, '2018-12-12 09:08:02', '2018-12-12 09:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `id_GH` int(10) UNSIGNED NOT NULL,
  `id_SP` int(10) UNSIGNED NOT NULL,
  `id_KH` int(10) UNSIGNED NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `Gia` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id_KH` int(10) UNSIGNED NOT NULL,
  `HoTenKH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenTK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MatKhau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinhKH` date DEFAULT NULL,
  `EmailKH` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DienThoaiKH` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DiaChiKH` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id_KH`, `HoTenKH`, `TenTK`, `MatKhau`, `NgaySinhKH`, `EmailKH`, `DienThoaiKH`, `DiaChiKH`, `created_at`, `updated_at`) VALUES
(1, 'Dương Quốc Hào', 'quochao', '123556', '1996-06-09', 'duongquochao090696@gmail.com', '0967051501', 'TP.Hồ Chí Minh', '2018-11-23 17:00:00', NULL),
(2, 'truong', 'truong', '123456', '2018-12-12', 'caucaluoibieng@yahoo.com.vn', '213243242', 'Hutech, Hutech', '2018-12-11 06:44:33', '2018-12-11 06:44:33');

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
(75, '2018_11_22_152505_admin', 1),
(76, '2018_11_22_154537_khach_hang', 1),
(77, '2018_11_22_165947_thuong_hieu', 1),
(78, '2018_11_22_170528_chu_de', 1),
(79, '2018_11_22_172116_san_pham', 1),
(80, '2018_11_23_044533_don_dat_hang', 1),
(81, '2018_11_23_050556_chi_tiet_d_d_h', 1),
(82, '2018_11_24_070836_comment', 1),
(83, '2018_11_24_073143_thuoc_tinh', 1),
(84, '2018_12_02_204548_giohang', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id_SP` int(10) UNSIGNED NOT NULL,
  `id_CD` int(10) UNSIGNED NOT NULL,
  `id_TH` int(10) UNSIGNED NOT NULL,
  `TenSP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTaSP` text COLLATE utf8mb4_unicode_ci,
  `ImgSP` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GiaSP` double(8,2) NOT NULL,
  `GiaSale` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id_SP`, `id_CD`, `id_TH`, `TenSP`, `MoTaSP`, `ImgSP`, `GiaSP`, `GiaSale`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'ad1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'ad1.jpg', 100.00, 70.00, '2018-11-23 17:00:00', NULL),
(2, 1, 1, 'ad2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'ad2.jpg', 100.00, NULL, '2018-11-24 17:00:00', NULL),
(3, 1, 1, 'ad3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'ad3.jpg', 100.00, NULL, '2018-11-24 17:00:00', NULL),
(4, 1, 1, 'ad4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'ad4.jpg', 100.00, 45.00, '2018-11-24 17:00:00', NULL),
(5, 1, 1, 'ad5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'ad5.jpg', 100.00, 45.00, '2018-11-24 17:00:00', NULL),
(6, 1, 1, 'ad6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'ad6.jpg', 100.00, 60.00, '2018-11-24 17:00:00', NULL),
(7, 1, 1, 'ad7', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'ad7.jpg', 100.00, 60.00, '2018-11-24 17:00:00', NULL),
(8, 1, 1, 'ad8', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'ad8.jpg', 100.00, NULL, '2018-11-24 17:00:00', NULL),
(9, 1, 1, 'ad9', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'ad9.jpg', 100.00, NULL, '2018-11-24 17:00:00', NULL),
(10, 1, 1, 'ad10', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'ad10.jpg', 100.00, NULL, '2018-11-24 17:00:00', NULL),
(11, 4, 2, 'ni1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'ni1.jpg', 100.00, NULL, '2018-11-24 17:00:00', NULL),
(12, 4, 2, 'ni2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'ni2.jpg', 100.00, NULL, '2018-11-24 17:00:00', NULL),
(13, 4, 2, 'ni3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'ni3.jpg', 100.00, NULL, '2018-11-24 17:00:00', NULL),
(14, 4, 2, 'ni4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'ni4.jpg', 100.00, NULL, '2018-11-24 17:00:00', NULL),
(15, 4, 2, 'ni5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'ni5.jpg', 100.00, NULL, '2018-11-24 17:00:00', NULL),
(16, 4, 2, 'ni6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'ni6.jpg', 100.00, 50.00, '2018-11-24 17:00:00', NULL),
(17, 4, 2, 'ni7', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'ni7.jpg', 100.00, 50.00, '2018-11-24 17:00:00', NULL),
(18, 4, 2, 'ni8', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'ni8.jpg', 100.00, 50.00, '2018-11-24 17:00:00', NULL),
(19, 4, 2, 'ni9', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'ni9.jpg', 100.00, 50.00, '2018-11-24 17:00:00', NULL),
(20, 4, 2, 'ni10', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'ni10.jpg', 100.00, 50.00, '2018-11-24 17:00:00', NULL),
(21, 6, 4, 'bi1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'bi1.jpg', 100.00, 45.00, '2018-11-24 17:00:00', NULL),
(22, 6, 4, 'bi2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'bi2.jpg', 100.00, 45.00, '2018-11-24 17:00:00', NULL),
(23, 6, 4, 'bi3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'bi3.jpg', 100.00, 45.00, '2018-11-24 17:00:00', NULL),
(24, 6, 4, 'bi4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'bi4.jpg', 100.00, 45.00, '2018-11-24 17:00:00', NULL),
(25, 6, 4, 'bi5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'bi5.jpg', 100.00, 45.00, '2018-11-24 17:00:00', NULL),
(26, 6, 4, 'bi6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'bi6.jpg', 100.00, NULL, '2018-11-24 17:00:00', NULL),
(27, 6, 4, 'bi7', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'bi7.jpg', 100.00, NULL, '2018-11-24 17:00:00', NULL),
(28, 6, 4, 'bi8', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'bi8.jpg', 100.00, NULL, '2018-11-24 17:00:00', NULL),
(29, 6, 4, 'bi9', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'bi9.jpg', 100.00, NULL, '2018-11-24 17:00:00', NULL),
(30, 6, 4, 'bi10', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'bi10.jpg', 100.00, NULL, '2018-11-24 17:00:00', NULL),
(33, 1, 1, 'ád', '<p></p><ul><li>àdsafdsa<br></li></ul><p></p>', 'logo2.PNG', 10.00, NULL, '2018-12-08 07:36:04', '2018-12-12 10:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `thuoctinh`
--

CREATE TABLE `thuoctinh` (
  `id_ThuocTinh` int(10) UNSIGNED NOT NULL,
  `id_SP` int(10) UNSIGNED NOT NULL,
  `KichThuoc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `MauSac` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `list_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thuoctinh`
--

INSERT INTO `thuoctinh` (`id_ThuocTinh`, `id_SP`, `KichThuoc`, `SoLuong`, `MauSac`, `list_img`, `created_at`, `updated_at`) VALUES
(1, 1, '41', 100, 'xanh dương', NULL, '2018-11-24 17:00:00', NULL),
(2, 1, '42', 100, 'xanh dương', NULL, '2018-11-24 17:00:00', NULL),
(3, 1, '43', 100, 'xanh dương', NULL, '2018-11-24 17:00:00', NULL),
(4, 1, '44', 100, 'xanh dương', NULL, '2018-11-24 17:00:00', NULL),
(5, 1, '41', 100, 'Đỏ', NULL, '2018-11-24 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `id_TH` int(10) UNSIGNED NOT NULL,
  `TenTH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `ImgTH` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`id_TH`, `TenTH`, `Description`, `ImgTH`, `created_at`, `updated_at`) VALUES
(1, 'Adidas', 'Adidas cung cấp các sản phầm giày và trang phục thể thao dành cho cả 3 nhóm đối tượng nam giới, phụ nữ và trẻ em. Trong đó, các dòng sản phẩm được phân biệt với “3S”: Sport, Street và Style.', 'adidas.jpg', '2018-11-23 17:00:00', NULL),
(2, 'Nike', 'Thương hiệu Nike với câu slogan kinh điển “Just do it” hiện đang là một trong những nhà cung cấp quần áo, giày dép và dụng cụ thể thao lớn nhất thế giới', 'nike.jpg', '2018-11-23 17:00:00', NULL),
(3, 'Converse', 'Converse là một trong những tên tuổi “gạo cội” nhất của lịch sử thời trang, thương hiệu Converse có bề dày truyền thống đến hơn một thế kỷ, và là hãng sản xuất cho ra đời những đôi giày bóng rổ đầu tiên trên thế giới. Những đôi giày Converse trải qua thăng trầm của hàng chục thập kỷ, về cơ bản chỉ có một chủng loại chung, tuy nhiên lại là những đôi giày được mua nhiều nhất qua mọi thời đại.', 'converse.jpg', '2018-11-23 17:00:00', NULL),
(4, 'Biti\'s', 'Qua hơn 33 năm hoạt động sản xuất kinh doanh với bao thăng trầm và thách thức, giờ đây, Biti’s đã lớn mạnh và phát triển đi lên cùng đất nước, trở thành một thương hiệu uy tín, tin cậy và quen thuộc với người tiêu dùng và là niềm tự hào của người Việt Nam về một “Thương hiệu Quốc gia” trong lĩnh vực Giày dép uy tín và chất lượng.', 'bitis.jpg', '2018-11-23 17:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_Ad`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id_CTDH`),
  ADD KEY `chitietdonhang_id_bill_foreign` (`id_Bill`),
  ADD KEY `chitietdonhang_id_sp_foreign` (`id_SP`);

--
-- Indexes for table `chude`
--
ALTER TABLE `chude`
  ADD PRIMARY KEY (`id_CD`),
  ADD KEY `chude_id_th_foreign` (`id_TH`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_Cmt`),
  ADD KEY `comment_id_kh_foreign` (`id_KH`),
  ADD KEY `comment_id_sp_foreign` (`id_SP`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`id_Bill`),
  ADD KEY `dondathang_id_kh_foreign` (`id_KH`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id_GH`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id_KH`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_SP`),
  ADD KEY `sanpham_id_cd_foreign` (`id_CD`),
  ADD KEY `sanpham_id_th_foreign` (`id_TH`);

--
-- Indexes for table `thuoctinh`
--
ALTER TABLE `thuoctinh`
  ADD PRIMARY KEY (`id_ThuocTinh`),
  ADD KEY `thuoctinh_id_sp_foreign` (`id_SP`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`id_TH`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_Ad` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id_CTDH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `chude`
--
ALTER TABLE `chude`
  MODIFY `id_CD` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_Cmt` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `id_Bill` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id_GH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id_KH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_SP` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `thuoctinh`
--
ALTER TABLE `thuoctinh`
  MODIFY `id_ThuocTinh` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `id_TH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_id_bill_foreign` FOREIGN KEY (`id_Bill`) REFERENCES `dondathang` (`id_Bill`),
  ADD CONSTRAINT `chitietdonhang_id_sp_foreign` FOREIGN KEY (`id_SP`) REFERENCES `sanpham` (`id_SP`);

--
-- Constraints for table `chude`
--
ALTER TABLE `chude`
  ADD CONSTRAINT `chude_id_th_foreign` FOREIGN KEY (`id_TH`) REFERENCES `thuonghieu` (`id_TH`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_id_kh_foreign` FOREIGN KEY (`id_KH`) REFERENCES `khachhang` (`id_KH`),
  ADD CONSTRAINT `comment_id_sp_foreign` FOREIGN KEY (`id_SP`) REFERENCES `sanpham` (`id_SP`);

--
-- Constraints for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `dondathang_id_kh_foreign` FOREIGN KEY (`id_KH`) REFERENCES `khachhang` (`id_KH`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_id_cd_foreign` FOREIGN KEY (`id_CD`) REFERENCES `chude` (`id_CD`),
  ADD CONSTRAINT `sanpham_id_th_foreign` FOREIGN KEY (`id_TH`) REFERENCES `thuonghieu` (`id_TH`);

--
-- Constraints for table `thuoctinh`
--
ALTER TABLE `thuoctinh`
  ADD CONSTRAINT `thuoctinh_id_sp_foreign` FOREIGN KEY (`id_SP`) REFERENCES `sanpham` (`id_SP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
