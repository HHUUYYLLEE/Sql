-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2022 at 08:43 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csdl`
--

-- --------------------------------------------------------

--
-- Table structure for table `adverts`
--

CREATE TABLE `adverts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adverts`
--

INSERT INTO `adverts` (`id`, `name`, `description`, `image_path`, `image_name`, `created_at`, `updated_at`) VALUES
(2, 'Ối dồi ôi', 'Sách Huấn Rose giảm giá 69% ショック', '/storage/advert23/0zQwHfxRiqy6Hnq3BnfX.download.jpg', 'download.jpg', '2021-10-14 19:21:11', '2022-01-16 05:33:18'),
(3, '1 tỷ gói mè', 'GIẢM ĐẾN 50%. Nhưng vẫn chưa biết bao lâu thì bán hết', '/storage/advert23/IMn3yjhBHvuNaaUGAOxw.Mè-Đen-Việt-San-Gói-150g.png', 'Mè-Đen-Việt-San-Gói-150g.png', '2021-10-14 19:31:15', '2022-01-16 05:33:11'),
(4, 'Nhà tài trợ chính', 'Lê Bá Huy - Phạm Hồng Đức - Phạm Nguyễn Gia Hòa - Nguyễn Thành Dương', '/storage/advert23/yGBV9uyP2WpjSQuHTumz.ban-hang-da-cap-la-gi.jpg', 'ban-hang-da-cap-la-gi.jpg', '2021-10-16 00:30:59', '2022-01-16 05:32:52'),
(5, '恋人が頬しいですか。「cưa gái đại cương」をおすすめますよ。', '👩❤️👨\r\n👍👍👍', '/storage/advert23/WQd6Y6iFhU2hxsSPUhEO.251890_492042860809761_1748212707_n.jpg', '251890_492042860809761_1748212707_n.jpg', '2022-01-16 07:18:19', '2022-01-16 07:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `chitietthehangs`
--

CREATE TABLE `chitietthehangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `CTTH_TheHangId` bigint(20) UNSIGNED NOT NULL,
  `CTTH_SachId` bigint(20) UNSIGNED NOT NULL,
  `CTTH_SoLuong` int(11) NOT NULL,
  `CTTH_ThanhTien` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `danhmucsaches`
--

CREATE TABLE `danhmucsaches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `DMS_Tieude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DMS_parentId` int(11) NOT NULL DEFAULT 0,
  `DMS_Mota` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DMS_Vitri` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danhmucsaches`
--

INSERT INTO `danhmucsaches` (`id`, `DMS_Tieude`, `DMS_parentId`, `DMS_Mota`, `DMS_Vitri`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Truyện cổ tích', 2, 'truyện cổ tích', 1, NULL, '2021-10-12 11:30:21', NULL),
(2, 'Sách thiếu nhi', 0, 'sách thiếu nhi', 0, '2021-10-09 17:47:29', '2021-10-12 11:29:53', NULL),
(3, 'Truyện tranh', 2, 'truyện tranh', 1, '2021-10-12 11:30:53', '2021-10-12 11:30:53', NULL),
(4, 'Kiến thức Bách Khoa', 2, 'kiến thức bách khoa', 1, '2021-10-12 11:33:09', '2021-10-12 11:33:09', NULL),
(5, 'Truyện kể cho bé', 2, 'truyện kể cho bé', 1, '2021-10-12 11:34:35', '2021-10-12 11:34:35', NULL),
(6, 'Tô màu - Luyện chữ', 2, 'Tô màu - luyện chữ', 1, '2021-10-12 11:35:06', '2021-10-12 11:35:06', NULL),
(7, 'Văn học thiếu nhi', 2, 'văn học thiếu nhi', 1, '2021-10-12 11:35:32', '2021-10-12 11:35:32', NULL),
(8, 'Truyện tranh ehon', 2, 'truyện tranh ehon', 1, '2021-10-12 11:36:18', '2021-10-12 11:36:18', NULL),
(9, 'Sách kỹ năng sống', 0, 'sách kỹ năng sống', 0, '2021-10-12 11:37:20', '2021-10-12 11:37:20', NULL),
(10, 'Sách tư duy - Kỹ năng sống', 9, 'sách tư duy - kỹ năng sống', 2, '2021-10-12 11:37:49', '2021-10-12 11:37:49', NULL),
(11, 'Sách nghệ thuật sống đẹp', 9, 'NT sống đẹp', 2, '2021-10-12 11:38:20', '2021-10-12 11:38:20', NULL),
(12, 'Sách hướng nghiệp - kỹ năng mềm', 9, 'hướng nghiệp, kĩ năng mềm', 2, '2021-10-12 11:39:12', '2021-10-12 11:39:12', NULL),
(13, 'Sách kinh tế', 0, 'sách kinh tế', 0, '2021-10-12 11:40:06', '2021-10-12 11:40:06', NULL),
(14, 'Sách kĩ năng làm việc', 13, 'kĩ năng làm việc', 3, '2021-10-12 11:40:42', '2021-10-12 11:40:42', NULL),
(15, 'Bài học kinh doanh', 13, 'kinh doanh', 3, '2021-10-12 11:41:11', '2021-10-12 11:41:11', NULL),
(16, 'Sách marketing - Bán hàng', 13, 'Marketing', 3, '2021-10-12 11:41:37', '2021-10-12 11:41:37', NULL),
(17, 'Sách kinh tế học', 13, 'kinh tế học', 3, '2021-10-12 11:42:32', '2021-10-12 11:42:32', NULL),
(18, 'Sách khởi nghiệp', 13, 'startup', 3, '2021-10-12 11:43:04', '2021-10-12 11:43:04', NULL),
(19, 'Sách lịch sử', 0, 'lịch sử', 0, '2021-10-12 11:44:12', '2021-10-12 11:44:12', NULL),
(20, 'Lịch sử thế giới', 19, 'lịch sử thế giới', 4, '2021-10-12 11:44:42', '2021-10-12 11:44:42', NULL),
(21, 'Lịch sử Việt Nam', 19, 'lịch sử Việt Nam', 4, '2021-10-12 11:45:13', '2021-10-12 11:45:13', NULL),
(22, 'Văn phòng phẩm', 0, 'vpp', 0, '2021-10-12 11:46:34', '2021-10-12 11:46:34', NULL),
(23, 'Dụng cụ văn phòng', 22, 'dụng cụ vp', 5, '2021-10-12 11:47:35', '2021-10-12 11:47:35', NULL),
(24, 'Bút - Viết các loại', 22, 'bút', 5, '2021-10-12 11:48:02', '2021-10-12 11:48:02', NULL),
(25, 'Dụng cụ học sinh', 22, 'dụng cụ học sinh', 5, '2021-10-12 11:48:42', '2021-10-12 11:48:42', NULL),
(26, 'Sổ các loại', 22, 'sổ', 5, '2021-10-12 11:49:15', '2021-10-12 11:49:15', NULL),
(27, 'Sách y học', 0, 'sách y học', 0, '2021-10-13 20:54:40', '2021-10-13 20:54:40', NULL),
(28, 'Sách giáo khoa', 0, 'sgk', 0, '2021-10-14 19:48:31', '2021-10-14 19:48:31', NULL),
(29, 'Sách Tôn Giáo - Tâm Linh', 0, 'tôn giáo', 0, '2021-10-14 19:49:03', '2021-10-14 19:49:03', NULL),
(30, 'Từ điển', 0, 'từ điển', 0, '2021-10-14 19:49:22', '2021-10-14 19:49:22', NULL),
(31, 'Sách học ngoại ngữ', 0, 'ngoại ngữ', 0, '2021-10-14 19:49:47', '2021-10-14 19:49:47', NULL),
(32, 'Sách tham khảo', 0, 'tham khảo', 0, '2021-10-14 19:50:03', '2021-10-14 19:50:03', NULL),
(33, 'Sách tâm lý', 0, 'tâm lý', 0, '2021-10-14 19:52:10', '2021-10-14 19:52:10', NULL),
(34, 'Tạp chí', 0, 'tạp chí', 0, '2021-10-14 19:52:30', '2021-10-14 19:52:30', NULL),
(35, 'Thể dục - thể thao', 0, 'thể thao', 0, '2021-10-14 19:52:48', '2021-10-14 19:52:48', NULL),
(36, 'Sách A', 0, 'dfasdf', 0, '2022-01-01 15:35:40', '2022-01-01 15:35:47', '2022-01-01 15:35:47'),
(37, 'Truyện cổ tích', 1, 'aa', 0, '2022-01-03 23:30:14', '2022-01-03 23:30:14', NULL),
(38, 'Truyện cổ tích', 1, 'aa', 0, '2022-01-03 23:31:04', '2022-01-03 23:31:12', '2022-01-03 23:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `nhomtins`
--

CREATE TABLE `nhomtins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NT_Ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NT_MoTa` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `NT_ViTri` int(11) NOT NULL,
  `NT_TrangThai` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhomtins`
--

INSERT INTO `nhomtins` (`id`, `NT_Ten`, `NT_MoTa`, `NT_ViTri`, `NT_TrangThai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Man', 'Men', 0, NULL, '2021-10-09 10:51:37', '2021-10-09 10:51:37', NULL),
(2, 'Man2', 'Men', 1, NULL, '2021-10-09 16:43:55', '2021-10-09 17:00:54', '2021-10-09 17:00:54'),
(3, 'Man1', 'Men', 1, NULL, '2021-10-09 17:04:45', '2021-10-16 09:59:40', '2021-10-16 09:59:40'),
(4, 'Man2', 'Men', 1, NULL, '2021-10-09 17:04:55', '2021-10-16 09:59:28', '2021-10-16 09:59:28'),
(5, 'Man1.1', 'Men', 3, NULL, '2021-10-09 17:05:06', '2021-10-16 09:59:25', '2021-10-16 09:59:25'),
(6, 'Woman', 'Women', 0, NULL, '2021-10-09 17:05:14', '2021-10-16 09:59:17', '2021-10-16 09:59:17'),
(7, 'Woman1', 'Women', 6, NULL, '2021-10-09 17:05:27', '2021-10-16 09:59:09', '2021-10-16 09:59:09'),
(8, 'Review sách', 'review', 0, NULL, '2021-10-16 10:00:13', '2021-10-16 10:00:13', NULL),
(9, 'Sách nên đọc', 'list sách', 0, NULL, '2021-10-16 10:00:30', '2021-10-16 10:00:30', NULL),
(10, 'Thông tin khuyến', 'khuyến', 8, NULL, '2021-10-16 10:00:49', '2022-01-15 05:01:17', NULL),
(11, 'aaaa', 'aaaaa', 9, NULL, '2022-01-15 05:01:27', '2022-01-15 05:01:31', '2022-01-15 05:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `nxbs`
--

CREATE TABLE `nxbs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NXB_Ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NXB_Mota` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nxbs`
--

INSERT INTO `nxbs` (`id`, `NXB_Ten`, `NXB_Mota`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kim Đồng', 'KĐ', '2021-10-13 09:06:00', '2022-01-15 01:40:52', NULL),
(2, 'Giáo Dục', 'GD', '2022-01-15 00:37:37', '2022-01-15 01:40:46', NULL),
(3, 'Huấn Hoa Hồng', 'HHH', '2022-01-15 01:39:49', '2022-01-15 01:39:49', NULL),
(4, 'Hà Nội', 'HN', '2022-01-15 01:41:02', '2022-01-15 01:41:02', NULL),
(5, 'Hải Phòng', 'HP', '2022-01-15 01:41:19', '2022-01-15 01:41:19', NULL),
(6, 'Nghệ An', 'NA', '2022-01-15 01:41:38', '2022-01-15 01:41:38', NULL),
(7, 'Thanh Hóa', 'TH', '2022-01-15 01:41:48', '2022-01-15 01:41:48', NULL),
(8, 'Đà Nẵng', 'ĐN', '2022-01-15 01:41:57', '2022-01-15 01:41:57', NULL),
(9, 'Văn hóa Sài Gòn', 'VHSG', '2022-01-15 01:42:10', '2022-01-15 01:42:10', NULL),
(10, 'Tổng hợp TPHCM', 'THTPHCM', '2022-01-15 01:42:31', '2022-01-15 01:42:31', NULL),
(11, 'Trẻ', 'Tr', '2022-01-15 01:42:41', '2022-01-15 01:42:48', NULL),
(12, 'Văn Nghệ', 'V.Ngh', '2022-01-15 01:42:58', '2022-01-15 01:43:13', NULL),
(13, 'Đồng Nai', 'Đ.Nai', '2022-01-15 01:43:27', '2022-01-15 01:43:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `saches`
--

CREATE TABLE `saches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `S_DanhmucId` bigint(20) UNSIGNED NOT NULL,
  `S_Ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_Ma` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_Anh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_FileUpload` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_Mota` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_Chitiet` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_TuKhoa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_GiaBan` int(11) DEFAULT NULL,
  `S_TrangThai` blob DEFAULT NULL,
  `S_SoLanXem` int(11) DEFAULT NULL,
  `S_KichCo` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_NXBId` bigint(20) UNSIGNED DEFAULT NULL,
  `S_GiaNhap` int(11) DEFAULT NULL,
  `S_SoLuong` int(11) DEFAULT NULL,
  `S_ViTri` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_NguyenBo` int(11) DEFAULT NULL,
  `S_TacGiaId` bigint(20) UNSIGNED DEFAULT NULL,
  `S_CanNang` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saches`
--

INSERT INTO `saches` (`id`, `S_DanhmucId`, `S_Ten`, `S_Ma`, `S_Anh`, `S_FileUpload`, `S_Mota`, `S_Chitiet`, `S_TuKhoa`, `S_GiaBan`, `S_TrangThai`, `S_SoLanXem`, `S_KichCo`, `S_NXBId`, `S_GiaNhap`, `S_SoLuong`, `S_ViTri`, `S_NguyenBo`, `S_TacGiaId`, `S_CanNang`, `created_at`, `updated_at`) VALUES
(1, 4, 'Dạy trẻ kiến thức Bách Khoa', NULL, 'day_tre_kien_thuc_back_khoa_a3746dff35954f989bfbb08386bfbabb.jpg', NULL, NULL, NULL, NULL, 40000, NULL, NULL, NULL, 2, NULL, 50, '/storage/sachs23/9CYiHa0boA5H3RwlYZGq.day_tre_kien_thuc_back_khoa_a3746dff35954f989bfbb08386bfbabb.jpg', NULL, 10, NULL, '2022-01-06 08:56:30', '2022-01-16 05:33:35'),
(2, 4, 'Bách Khoa thư về Khoa học', NULL, '19_3fe44c11b9c24695a5cee15b24c9325e_master.jpg', NULL, NULL, NULL, NULL, 100000, NULL, NULL, NULL, 10, NULL, 99, '/storage/sachs23/5MGFWRJVnxjFZmcu9fDO.19_3fe44c11b9c24695a5cee15b24c9325e_master.jpg', NULL, 7, NULL, NULL, '2022-01-16 05:33:55'),
(3, 28, 'Bộ sách GK lớp 1', NULL, '1.jpg', NULL, NULL, NULL, NULL, 200000, NULL, NULL, NULL, 2, NULL, 70, '/storage/sachs23/xjJtFgV9oOq9Vp8CXx1w.1.jpg', NULL, 6, NULL, NULL, '2022-01-16 05:34:14'),
(4, 28, 'Bộ sách GK lớp 7', NULL, 'SyvKUrHFQUDhm0TNidjL9qnmacppfnjgCb0tndMv.jpg', NULL, NULL, NULL, NULL, 200000, NULL, NULL, NULL, 2, NULL, 30, '/storage/sachs23/yGj88zzXh1xpifEeIe3K.SyvKUrHFQUDhm0TNidjL9qnmacppfnjgCb0tndMv.jpg', NULL, 7, NULL, NULL, '2022-01-16 05:34:53'),
(5, 28, 'Bộ sách GK lớp 9', NULL, 'Bộ-Sách-Giáo-Khoa-Lớp9-600x600.jpg', NULL, NULL, NULL, NULL, 220000, NULL, NULL, NULL, 2, NULL, 100, '/storage/sachs23/KZrSTsxxjnPF7YCVKLCy.Bộ-Sách-Giáo-Khoa-Lớp9-600x600.jpg', NULL, 6, NULL, NULL, '2022-01-16 05:35:33'),
(6, 28, 'Bộ sách GK lớp 10', NULL, 'zJlmjl1.png', NULL, NULL, NULL, NULL, 210000, NULL, NULL, NULL, 2, NULL, 55, '/storage/sachs23/ZNoriiqDMXLgMvcZ1rXP.zJlmjl1.png', NULL, 6, NULL, NULL, '2022-01-16 05:36:48'),
(7, 28, 'Bộ sách GK lớp 12', NULL, 'b70a53ef502b1bd19a224f98a9eb224b.jpg', NULL, NULL, NULL, NULL, 230000, NULL, NULL, NULL, 2, NULL, 77, '/storage/sachs23/yebcIZivff6luBVTGc53.b70a53ef502b1bd19a224f98a9eb224b.jpg', NULL, 8, NULL, NULL, '2022-01-16 05:36:38'),
(8, 35, 'Giáo trình giáo dục học Thể dục Thể thao', NULL, '2015-07-31-08-12-23_image001.jpg', NULL, NULL, NULL, NULL, 40000, NULL, NULL, NULL, 8, NULL, 80, '/storage/sachs23/IZ4yi0O9alHRanMcv6fR.2015-07-31-08-12-23_image001.jpg', NULL, 8, NULL, NULL, '2022-01-16 05:37:38'),
(9, 35, 'Sách giáo viên Thể dục 10', NULL, 'download (1).jpg', NULL, NULL, NULL, NULL, 35000, NULL, NULL, NULL, 6, NULL, 34, '/storage/sachs23/rnLMNgegLOZXjL3L432D.download (1).jpg', NULL, 3, NULL, NULL, '2022-01-16 05:38:00'),
(10, 35, 'Giáo trình quần vợt', NULL, 'download.jpg', NULL, NULL, NULL, NULL, 50000, NULL, NULL, NULL, 5, NULL, 54, '/storage/sachs23/so1FA3SvpoIIfStHuXpy.download.jpg', NULL, 7, NULL, NULL, '2022-01-16 05:38:23'),
(11, 35, 'Giáo trình lý luận và thực tiễn Thể dục và Thể thao giải trí', NULL, 'images.jpg', NULL, NULL, NULL, NULL, 60000, NULL, NULL, NULL, 4, NULL, 43, '/storage/sachs23/KvRW58DUsyGZhBHWSFwo.images.jpg', NULL, 8, NULL, NULL, '2022-01-16 05:38:51'),
(12, 34, 'Tạp chỉ Toán học & Tuổi trẻ', NULL, 'a506c97b109c432741e074328ed1010e.jpg', NULL, NULL, NULL, NULL, 56000, NULL, NULL, NULL, 5, NULL, 100, '/storage/sachs23/dmuD4n0oYlK9yAafJnJP.a506c97b109c432741e074328ed1010e.jpg', NULL, 6, NULL, NULL, '2022-01-16 05:39:45'),
(13, 15, 'Đệ nhất kiếm tiền', NULL, 'Đệ nhất kiếm tiền.jpg', NULL, NULL, NULL, NULL, 50000, NULL, NULL, NULL, 3, NULL, 50, '/storage/sachs23/leN9yXAdT2BmfYvui9rF.Đệ nhất kiếm tiền.jpg', NULL, 5, NULL, '2022-01-15 07:59:25', '2022-01-16 05:40:09'),
(14, 1, '101 truyện cổ tích chọn lọc', NULL, '101-truyen-co-tich-chon-loc-440_1.jpg', NULL, NULL, NULL, NULL, 59800, NULL, NULL, NULL, 1, NULL, 30, '/storage/sachs23/qInVU8QZAExKisEVvURl.101-truyen-co-tich-chon-loc-440_1.jpg', NULL, 3, NULL, '2021-10-15 00:18:38', '2022-01-16 05:40:33'),
(15, 1, 'Cô bé quàng khăn đỏ', NULL, 'cô bè quàng khăn đỏ.jpg', NULL, NULL, NULL, NULL, 52000, NULL, NULL, NULL, 1, NULL, 20, '/storage/sachs23/RRuAr5oh0VDfVdGWV6WO.cô bè quàng khăn đỏ.jpg', NULL, 3, NULL, '2021-10-15 00:24:36', '2022-01-16 05:41:00'),
(16, 1, 'Alice ở xứ sở thần tiên', NULL, 'nxbtre_full_28402016_104013.jpg', NULL, NULL, NULL, NULL, 82000, NULL, NULL, NULL, 1, NULL, 40, '/storage/sachs23/VGOh60ZEd2IdJp7R2bab.nxbtre_full_28402016_104013.jpg', NULL, 3, NULL, '2021-10-15 00:25:48', '2022-01-16 05:41:31'),
(17, 1, 'Cây khế', NULL, 'cay-khe_bia-1_0_a229ea9fe9e24fd5b6066e0d4765c837.jpg', NULL, NULL, NULL, NULL, 26000, NULL, NULL, NULL, 1, NULL, 20, '/storage/sachs23/M6ZXOdoGdypgB0VJcLmx.cay-khe_bia-1_0_a229ea9fe9e24fd5b6066e0d4765c837.jpg', NULL, 8, NULL, '2021-10-15 00:29:56', '2022-01-16 05:42:05'),
(18, 1, 'Cây tre trăm đốt', NULL, '230px-Cay_tre_tram_dot_bia_truyen.jpg', NULL, NULL, NULL, NULL, 35000, NULL, NULL, NULL, 1, NULL, 16, '/storage/sachs23/lgwYL7mpi2lT1HGfQU0S.230px-Cay_tre_tram_dot_bia_truyen.jpg', NULL, 6, NULL, '2021-10-15 00:32:58', '2022-01-16 05:42:31'),
(19, 1, 'Chiếc hũ thần', NULL, 'download.jpg', NULL, NULL, NULL, NULL, 15000, NULL, NULL, NULL, 1, NULL, 12, '/storage/sachs23/PsspkJ5F565nfPQIqfKP.download.jpg', NULL, 10, NULL, '2021-10-15 00:34:08', '2022-01-16 05:42:48'),
(20, 1, 'Chú Cuội', NULL, 'chu-cuoi-cung-trang_5d1d2d405c0c4c06b9e9958475885f1f.jpg', NULL, NULL, NULL, NULL, 27000, NULL, NULL, NULL, 1, NULL, 30, '/storage/sachs23/W9xpmKFV7WGINk6MwPlV.chu-cuoi-cung-trang_5d1d2d405c0c4c06b9e9958475885f1f.jpg', NULL, 3, NULL, '2021-10-15 00:35:29', '2022-01-16 05:43:11'),
(21, 1, 'Cô bé bán diêm', NULL, 'f07e5890f4b2d3e792ea916325af1f0e.jpg', NULL, NULL, NULL, NULL, 14000, NULL, NULL, NULL, 1, NULL, 23, '/storage/sachs23/dBtAa3SyJ24zr6rOQ6cH.f07e5890f4b2d3e792ea916325af1f0e.jpg', NULL, 9, NULL, '2021-10-15 00:36:15', '2022-01-16 05:43:31'),
(22, 1, 'Kho tàng truyện cổ tích Việt Nam', NULL, 'download (1).jpg', NULL, NULL, NULL, NULL, 98000, NULL, NULL, NULL, 1, NULL, 24, '/storage/sachs23/BbBEqSQVnaNRQPvFwBn8.download (1).jpg', NULL, 8, NULL, '2021-10-15 00:39:25', '2022-01-16 05:44:04'),
(23, 1, 'Sọ dừa', NULL, '250px-So_dua_bia_truyen.jpg', NULL, NULL, NULL, NULL, 13400, NULL, NULL, NULL, 1, NULL, 56, '/storage/sachs23/9JlmibzYYlIo5XU0tYHC.250px-So_dua_bia_truyen.jpg', NULL, 7, NULL, '2021-10-15 00:40:58', '2022-01-16 05:44:18'),
(24, 1, 'Sự tích dưa hấu', NULL, '94814fa5320ba6fefdc1ab3d149ec0c2.jpg_720x720q80.jpg', NULL, NULL, NULL, NULL, 45000, NULL, NULL, NULL, 1, NULL, 23, '/storage/sachs23/Kexan0Wlpwcxs1I9AoCV.94814fa5320ba6fefdc1ab3d149ec0c2.jpg_720x720q80.jpg', NULL, 7, NULL, '2021-10-15 00:44:14', '2022-01-16 05:44:46'),
(25, 1, 'Thạch sanh', NULL, 'thach-sanh_bia-1_753d911b52c844de9235cbbbdba18af3.jpg', NULL, NULL, NULL, NULL, 46000, NULL, NULL, NULL, 1, NULL, 34, '/storage/sachs23/vwg0Rdoc989RmyFsBNFX.thach-sanh_bia-1_753d911b52c844de9235cbbbdba18af3.jpg', NULL, 3, NULL, '2021-10-15 00:45:47', '2022-01-16 05:45:04'),
(26, 1, 'Truyện cổ tích hay nhất Việt Nam phần 3', NULL, 'maxresdefault.jpg', NULL, NULL, NULL, NULL, 57000, NULL, NULL, NULL, 1, NULL, 45, '/storage/sachs23/Xr3hlUqQq03a5fGK9UUP.maxresdefault.jpg', NULL, 7, NULL, '2021-10-15 00:47:58', '2022-01-16 05:45:38'),
(27, 1, 'Truyện cổ tích Việt Nam hay nhất', NULL, 'truyen-co-tich-viet-nam-hay-nhat-tap-1-tb-2019-_102038_1.jpg', NULL, NULL, NULL, NULL, 101000, NULL, NULL, NULL, 1, NULL, 27, '/storage/sachs23/OolZjuH9S32EwSnRWiTT.truyen-co-tich-viet-nam-hay-nhat-tap-1-tb-2019-_102038_1.jpg', NULL, 3, NULL, '2021-10-15 00:53:06', '2022-01-16 05:45:56'),
(28, 1, 'Tấm cám', NULL, 'download (2).jpg', NULL, NULL, NULL, NULL, 89700, NULL, NULL, NULL, 1, NULL, 17, '/storage/sachs23/CAxS0wkYSVYkSJcm6zlG.download (2).jpg', NULL, 3, NULL, '2021-10-15 00:54:28', '2022-01-16 05:46:38'),
(29, 1, 'Truyện cổ tích hay nhất Việt Nam phần 2', NULL, 'd3f5a7051eb03c78dd1b4f8073d9ad2c.jpg', NULL, NULL, NULL, NULL, 98000, NULL, NULL, NULL, 1, NULL, 28, '/storage/sachs23/sj8xLBcw2F5p8STSzAC0.d3f5a7051eb03c78dd1b4f8073d9ad2c.jpg', NULL, 3, NULL, '2021-10-15 00:57:57', '2022-01-16 05:46:17'),
(30, 1, 'Vịt con xấu xí', NULL, 'download (3).jpg', NULL, NULL, NULL, NULL, 34000, NULL, NULL, NULL, 1, NULL, 37, '/storage/sachs23/pTAa0apdSp9hEh2qTs9z.download (3).jpg', NULL, 3, NULL, '2021-10-15 00:59:26', '2022-01-16 05:46:58'),
(31, 1, 'Ba chú lợn con', NULL, 'bia_-_ba_chu_lon_con_7-2020_2f21dd42912d4fe682c88c2c936a53cc_master.jpg', NULL, NULL, NULL, NULL, 56500, NULL, NULL, NULL, 1, NULL, 61, '/storage/sachs23/A8yDspibpqDKsGSGsLvj.bia_-_ba_chu_lon_con_7-2020_2f21dd42912d4fe682c88c2c936a53cc_master.jpg', NULL, 3, NULL, '2021-10-15 01:05:11', '2022-01-16 05:47:43'),
(32, 33, 'Tâm lý học tội phạm', NULL, 'cd6e9e0a3c37a83b5263c10692664423.jpg', NULL, NULL, NULL, NULL, 54000, NULL, NULL, NULL, 7, NULL, 29, '/storage/sachs23/CvZTArGgk7uakajPW0ZK.cd6e9e0a3c37a83b5263c10692664423.jpg', NULL, 7, NULL, NULL, '2022-01-16 05:48:14'),
(33, 33, 'Thấu hiểu tâm lý học đường', NULL, 'download (2).jpg', NULL, NULL, NULL, NULL, 46000, NULL, NULL, NULL, 8, NULL, 45, '/storage/sachs23/quUni49htUi2u2yWxyVt.download (2).jpg', NULL, 8, NULL, NULL, '2022-01-16 05:48:42'),
(34, 32, 'Bí quyết chinh phục điểm cao Ngữ Văn', NULL, 'c2b7eb76c6467552cec644a165fd44ed.jpg', NULL, NULL, NULL, NULL, 38000, NULL, NULL, NULL, NULL, NULL, 27, '/storage/sachs23/Q4jiRJVkSZh3nilw6m7B.c2b7eb76c6467552cec644a165fd44ed.jpg', NULL, 8, NULL, NULL, '2022-01-16 05:50:00'),
(35, 32, 'Làm chủ môn Toán', NULL, 'download (1).jpg', NULL, NULL, NULL, NULL, 425000, NULL, NULL, NULL, 10, NULL, 12, '/storage/sachs23/cNXM8L9lRuuGoLpJ3x0c.download (1).jpg', NULL, 9, NULL, NULL, '2022-01-16 05:51:37'),
(36, 32, 'Cùng em học Tiếng Việt', NULL, 'download.jpg', NULL, NULL, NULL, NULL, 47500, NULL, NULL, NULL, 13, NULL, 53, '/storage/sachs23/FXl4HNwzVYFvshVPDSXm.download.jpg', NULL, 10, NULL, NULL, '2022-01-16 05:52:06'),
(37, 3, 'Thám tử lừng danh Conan tập 1', NULL, '1_83_da008b07bd564225a05be09610af7131.jpg', NULL, NULL, NULL, NULL, 20000, NULL, NULL, NULL, 1, NULL, 5, '/storage/sachs23/bakcpWzA2zycrfSmA7oW.1_83_da008b07bd564225a05be09610af7131.jpg', NULL, 3, NULL, '2021-10-15 23:26:40', '2022-01-16 05:52:46'),
(38, 3, 'Thám tử lừng danh Conan tập 3', NULL, '3_173_49a200f0dcb44560abc0705c29a35ced_master.jpg', NULL, NULL, NULL, NULL, 20000, NULL, NULL, NULL, 1, NULL, 7, '/storage/sachs23/r0Le4phh42PGiBk8Z0G3.3_173_49a200f0dcb44560abc0705c29a35ced_master.jpg', NULL, 3, NULL, '2021-10-15 23:36:19', '2022-01-16 05:52:58'),
(39, 3, 'Thám tử lừng danh Conan tập 5', NULL, 'conan5_2.jpg', NULL, NULL, NULL, NULL, 20000, NULL, NULL, NULL, 1, NULL, 45, '/storage/sachs23/cBqiVSayZtAQwD5KmcBJ.conan5_2.jpg', NULL, 3, NULL, '2021-10-15 23:36:59', '2022-01-16 05:53:13'),
(40, 3, 'Thám tử lừng danh Conan tập 7', NULL, '7_81_c10ae378a0754a988f93c1b95a869004_master.jpg', NULL, NULL, NULL, NULL, 20000, NULL, NULL, NULL, 1, NULL, 6, '/storage/sachs23/c7ZA0yy7UL3OIYKdHgjZ.7_81_c10ae378a0754a988f93c1b95a869004_master.jpg', NULL, 3, NULL, '2021-10-15 23:37:32', '2022-01-16 05:53:28'),
(41, 3, 'Thám tử lừng danh Conan tập 10', NULL, '10_baa5aaf8647e4cb890490de8514725ee_master.jpg', NULL, NULL, NULL, NULL, 20000, NULL, NULL, NULL, 1, NULL, 23, '/storage/sachs23/n6vIHKRjlVRGYUoFBYZR.10_baa5aaf8647e4cb890490de8514725ee_master.jpg', NULL, 3, NULL, '2021-10-15 23:38:14', '2022-01-16 05:53:53'),
(42, 3, 'Thám tử lừng danh Conan tập 11', NULL, '11_21_d594cfb0b13243fc935b3a8fd60af09b_master.jpg', NULL, NULL, NULL, NULL, 20000, NULL, NULL, NULL, 1, NULL, 43, '/storage/sachs23/pej0NZ9A30HYGDb4TZxF.11_21_d594cfb0b13243fc935b3a8fd60af09b_master.jpg', NULL, 3, NULL, '2021-10-15 23:38:47', '2022-01-16 05:54:04'),
(43, 3, 'Thám tử lừng danh Conan tập 17', NULL, '17_21_451b0c045ce649e1bcfdd8e4c6cecd72_d7ae43ac8a0147fc9419d0ba4761dac2_master.jpg', NULL, NULL, NULL, NULL, 20000, NULL, NULL, NULL, 1, NULL, 54, '/storage/sachs23/0GqJGFJVgVKz6Nnw0I9q.17_21_451b0c045ce649e1bcfdd8e4c6cecd72_d7ae43ac8a0147fc9419d0ba4761dac2_master.jpg', NULL, 3, NULL, '2021-10-15 23:39:23', '2022-01-16 05:54:18'),
(44, 3, 'Thám tử lừng danh Conan tập 30', NULL, '30_22_499bf75821734ecf9ff6700e47754f87_67b5e634ed334065924b580944c40c7b.jpg', NULL, NULL, NULL, NULL, 20000, NULL, NULL, NULL, 1, NULL, 87, '/storage/sachs23/MJT0gYkn71NdCeLVZGsU.30_22_499bf75821734ecf9ff6700e47754f87_67b5e634ed334065924b580944c40c7b.jpg', NULL, 3, NULL, '2021-10-15 23:40:00', '2022-01-16 05:54:46'),
(45, 3, 'Thám tử lừng danh Conan tập 42', NULL, '42_8_8f09bdb449284ff998004b2b27bf5ef2.jpg', NULL, NULL, NULL, NULL, 20000, NULL, NULL, NULL, 1, NULL, 56, '/storage/sachs23/0oRwBG76fHcgIHdCFhKP.42_8_8f09bdb449284ff998004b2b27bf5ef2.jpg', NULL, 3, NULL, '2021-10-15 23:40:41', '2022-01-16 05:55:08'),
(46, 3, 'Thám tử lừng danh Conan tập 75', NULL, 'conan_front.jpg', NULL, NULL, NULL, NULL, 20000, NULL, NULL, NULL, 1, NULL, 44, '/storage/sachs23/9KSQQWsht3GFPa6mI8jY.conan_front.jpg', NULL, 3, NULL, '2021-10-15 23:41:18', '2022-01-16 05:55:33'),
(47, 3, 'Thám tử lừng danh Conan tập 82', NULL, '82_5_96cd2fc844864f67ac2ffdef9b39913e_grande.jpg', NULL, NULL, NULL, NULL, 20000, NULL, NULL, NULL, 1, NULL, 45, '/storage/sachs23/HbAeHCensrIjyD4jWfxO.82_5_96cd2fc844864f67ac2ffdef9b39913e_grande.jpg', NULL, 3, NULL, '2021-10-15 23:41:54', '2022-01-16 05:55:52'),
(48, 3, 'Thám tử lừng danh Conan tập 85', NULL, '85_1_3f0e34f653644fb192224575c5848b06.jpg', NULL, NULL, NULL, NULL, 20000, NULL, NULL, NULL, 1, NULL, 78, '/storage/sachs23/0MVegcVnyRNL98BxXYlt.85_1_3f0e34f653644fb192224575c5848b06.jpg', NULL, 3, NULL, '2021-10-15 23:42:38', '2022-01-16 05:56:08'),
(49, 3, 'Doraemon tập 1', NULL, 'e28a7fcda6271d6ef96c1cb2bd370b18.jpg', NULL, NULL, NULL, NULL, 19000, NULL, NULL, NULL, 1, NULL, 45, '/storage/sachs23/MPcu9ieJWJRgMM22xn7y.e28a7fcda6271d6ef96c1cb2bd370b18.jpg', NULL, 3, NULL, '2021-10-15 23:43:22', '2022-01-16 05:56:25'),
(50, 3, 'Doraemon tập 44', NULL, '44_1_63fec4e745114988a96fdf987f23ff19_master.jpg', NULL, NULL, NULL, NULL, 19000, NULL, NULL, NULL, 1, NULL, 4, '/storage/sachs23/eGjr28yWeeJWjiCHeTfz.44_1_63fec4e745114988a96fdf987f23ff19_master.jpg', NULL, 3, NULL, '2021-10-15 23:43:58', '2022-01-16 05:56:51'),
(51, 3, 'Doraemon tập 6', NULL, 'f304d6e9a05bbff63c0b6c86adb48a12.jpg', NULL, NULL, NULL, NULL, 19000, NULL, NULL, NULL, 1, NULL, 65, '/storage/sachs23/uFsaUkKDuAOhrv0ZT83O.f304d6e9a05bbff63c0b6c86adb48a12.jpg', NULL, 3, NULL, '2021-10-15 23:44:40', '2022-01-16 05:57:05'),
(52, 30, 'Từ điển Tiếng Việt thông dụng', NULL, '7b5d689cdc65ccc195add30f336d5e80.jpg', NULL, NULL, NULL, NULL, 31000, NULL, NULL, NULL, 10, NULL, 67, '/storage/sachs23/LwJNNg1BU8P65E2YXhff.7b5d689cdc65ccc195add30f336d5e80.jpg', NULL, 8, NULL, NULL, '2022-01-16 06:37:51'),
(53, 30, 'Từ điển Anh-Việt', NULL, '84a5fbd30f151a41a7255dda6b63708d.jpg', NULL, NULL, NULL, NULL, 31000, NULL, NULL, NULL, 10, NULL, 87, '/storage/sachs23/AQ8fy9vDStFfFkCvaE2l.84a5fbd30f151a41a7255dda6b63708d.jpg', NULL, 7, NULL, NULL, '2022-01-16 06:38:14'),
(54, 30, 'Từ điển Hán-Việt', NULL, '12311.jpg', NULL, NULL, NULL, NULL, 32000, NULL, NULL, NULL, 11, NULL, 34, '/storage/sachs23/xhIcsDSuZ6OVnHYoDJh1.12311.jpg', NULL, 6, NULL, NULL, '2022-01-16 06:38:29'),
(55, 31, 'Cambridge English Ielts', NULL, 'tai-ngay-tron-bo-cambridge-1-14-full-pdf-audio-giai-chi-tiet.jpg', NULL, NULL, NULL, NULL, 145000, NULL, NULL, NULL, 1, NULL, 40, '/storage/sachs23/DKzFH6AIAgslxYqzlKCp.tai-ngay-tron-bo-cambridge-1-14-full-pdf-audio-giai-chi-tiet.jpg', NULL, 3, NULL, '2021-10-16 00:11:48', '2022-01-16 06:00:21'),
(56, 31, 'Combo 2 cuốn Minna no Nihongo', NULL, '97105e0d2433fd2f491c9a0d6858e956.jpg', NULL, NULL, NULL, NULL, 230000, NULL, NULL, NULL, 1, NULL, 45, '/storage/sachs23/vDHcl1fzHuNdRMVHl7i2.97105e0d2433fd2f491c9a0d6858e956.jpg', NULL, 3, NULL, '2021-10-16 00:12:45', '2022-01-16 06:01:24'),
(57, 31, 'Combo Mimikara Oboeru N3', NULL, 'combo_bo_sach_n3-min_8b950faf51eb4b6ba5f022f509273f02_grande.jpg', NULL, NULL, NULL, NULL, 290000, NULL, NULL, NULL, 1, NULL, 66, '/storage/sachs23/oet5lHIEBsHwdFWwThrl.combo_bo_sach_n3-min_8b950faf51eb4b6ba5f022f509273f02_grande.jpg', NULL, 3, NULL, '2021-10-16 00:13:29', '2022-01-16 06:01:38'),
(58, 31, 'Giải thích ngữ pháp tiếng Anh', NULL, '8b2918e98dfe1deb2c39fced6fe14e13.jpg', NULL, NULL, NULL, NULL, 124000, NULL, NULL, NULL, 1, NULL, 12, '/storage/sachs23/j7x7Vmm2Nh7NGtzRYo3E.8b2918e98dfe1deb2c39fced6fe14e13.jpg', NULL, 3, NULL, '2021-10-16 00:14:38', '2022-01-16 06:02:06'),
(59, 31, 'Hackers Ielts Reading Basic', NULL, 'download.jpg', NULL, NULL, NULL, NULL, 245000, NULL, NULL, NULL, 1, NULL, 45, '/storage/sachs23/Ue9hdvtIU4ID7ez75pBw.download.jpg', NULL, 3, NULL, '2021-10-16 00:15:28', '2022-01-16 06:02:48'),
(60, 31, 'Hackers Ielts Speaking', NULL, 'download.png', NULL, NULL, NULL, NULL, 237000, NULL, NULL, NULL, 10, NULL, 45, '/storage/sachs23/aXbtdNHvw0NY2zEXp7Rs.download.png', NULL, 8, NULL, '2021-10-16 00:16:10', '2022-01-16 06:03:51'),
(61, 31, 'Ielts Academic 14', NULL, 'Iaxqb1.png', NULL, NULL, NULL, NULL, 78000, NULL, NULL, NULL, 5, NULL, 67, '/storage/sachs23/FGNMJu7EWtioAjio5Hsd.Iaxqb1.png', NULL, 6, NULL, '2021-10-16 00:16:59', '2022-01-16 06:04:28'),
(62, 31, 'Mimikara Oboeru Goi N1', NULL, 'sach-luyen-thi-n1-mimikara-oboeru-tu-vung.jpg', NULL, NULL, NULL, NULL, 90000, NULL, NULL, NULL, 10, NULL, 45, '/storage/sachs23/CVx0Z4CqsLcJBZ3eEnVh.sach-luyen-thi-n1-mimikara-oboeru-tu-vung.jpg', NULL, 6, NULL, '2021-10-16 00:18:01', '2022-01-16 06:04:43'),
(63, 31, 'Mimikara Oboeru Goi N2', NULL, 'Mini_kara_Oboeru_Goi_N2_Book&AudioCD.jpg', NULL, NULL, NULL, NULL, 95000, NULL, NULL, NULL, 1, NULL, 56, '/storage/sachs23/hKJ3LFya2sn4QIaq4b8h.Mini_kara_Oboeru_Goi_N2_Book&AudioCD.jpg', NULL, 3, NULL, '2021-10-16 00:19:02', '2022-01-16 06:05:14'),
(64, 4, 'Bách Khoa tri thức phổ thông', NULL, 'bach-khoa-tri-thuc-pho-thong-mua-sach-hay.jpg', NULL, NULL, NULL, NULL, 67000, NULL, NULL, NULL, 6, NULL, 45, '/storage/sachs23/pwlv7zG4XPyOJFtvPuMB.bach-khoa-tri-thuc-pho-thong-mua-sach-hay.jpg', NULL, 9, NULL, '2022-01-13 21:05:26', '2022-01-16 06:39:15'),
(66, 34, 'Tổ chức nhà nước', NULL, 'b5c35888278cbc301bbd804eb5e3606f-Thiet-ke-6.2020_in-25.06.2020_001.jpg', NULL, NULL, NULL, NULL, 45000, NULL, NULL, NULL, 9, NULL, 32, '/storage/sachs23/T46rPHAMJ0He7iDcHjxU.b5c35888278cbc301bbd804eb5e3606f-Thiet-ke-6.2020_in-25.06.2020_001.jpg', NULL, 5, NULL, NULL, '2022-01-16 06:39:35'),
(67, 34, 'Giáo trình Chính sách & quản lý; Khoa học và công nghệ', NULL, 'homepageImage_vi_VN.png', NULL, NULL, NULL, NULL, 30000, NULL, NULL, NULL, 8, NULL, 43, '/storage/sachs23/JN5I521TawnVVRuYDIZa.homepageImage_vi_VN.png', NULL, 8, NULL, NULL, '2022-01-16 06:39:52'),
(68, 33, 'Tâm lý học Psychology', NULL, '0f1167f115d3462689fa46f6c120d3b1.u5102.d20170329.t143139.537727.jpg', NULL, NULL, NULL, NULL, 40000, NULL, NULL, NULL, 7, NULL, 55, '/storage/sachs23/vTo4CcmKE5uIpM2nkYXJ.0f1167f115d3462689fa46f6c120d3b1.u5102.d20170329.t143139.537727.jpg', NULL, 9, NULL, NULL, '2022-01-16 06:40:06'),
(69, 30, 'Từ điển Nhật-Việt', NULL, 'el45Eimage (21).png', NULL, NULL, NULL, NULL, 78000, NULL, NULL, NULL, 10, NULL, 46, '/storage/sachs23/2LhOoajPC2YIrFnaJYsS.el45Eimage (21).png', NULL, 8, NULL, NULL, '2022-01-16 06:07:45'),
(70, 29, 'Cuộc đời Đức Phật', NULL, 'Cuoc-doi-Duc-Phat_coverfull-1.jpg', NULL, NULL, NULL, NULL, 40000, NULL, NULL, NULL, 12, NULL, 20, '/storage/sachs23/Z8daaKdKdNVWQfGidDqc.Cuoc-doi-Duc-Phat_coverfull-1.jpg', NULL, 5, NULL, NULL, '2022-01-16 06:09:35'),
(71, 29, 'Phật giáo hòa hảo', NULL, 'images.jpg', NULL, NULL, NULL, NULL, 25000, NULL, NULL, NULL, 10, NULL, 8, '/storage/sachs23/8KjzrSBw1FdvUatOzDXL.images.jpg', NULL, 5, NULL, NULL, '2022-01-16 06:10:01'),
(72, 29, 'Đạo lý nhà Phật', NULL, 'img163_4.jpg', NULL, NULL, NULL, NULL, 30000, NULL, NULL, NULL, 10, NULL, 12, '/storage/sachs23/FKFzU8JQFhNTB96bHcMI.img163_4.jpg', NULL, 7, NULL, NULL, '2022-01-16 06:10:30'),
(73, 27, 'Sinh lý học Y khoa', NULL, '36603031_469813263479165_3699205274200965120_n-600x883.jpg', NULL, NULL, NULL, NULL, 50000, NULL, NULL, NULL, 7, NULL, 32, '/storage/sachs23/ygYzZActp4YVlAu76P1E.36603031_469813263479165_3699205274200965120_n-600x883.jpg', NULL, 8, NULL, NULL, '2022-01-16 06:11:51'),
(74, 27, 'Bách Khoa y học Thường thức trong gia đình', NULL, 'download (1).jpg', NULL, NULL, NULL, NULL, 50000, NULL, NULL, NULL, 13, NULL, 45, '/storage/sachs23/EEgigJJ7ZYtv9VoaOaVK.download (1).jpg', NULL, 8, NULL, NULL, '2022-01-16 06:11:17'),
(75, 27, 'Y học cổ truyền', NULL, 'download.jpg', NULL, NULL, NULL, NULL, 47000, NULL, NULL, NULL, 10, NULL, 6, '/storage/sachs23/r9RIiSSQ7Ej9FGkqbNFA.download.jpg', NULL, 8, NULL, NULL, '2022-01-16 06:12:15'),
(76, 26, 'Sổ quỹ tiền mặt', NULL, '601268113f5dd_1611819025.png', NULL, NULL, NULL, NULL, 35000, NULL, NULL, NULL, 12, NULL, 13, '/storage/sachs23/AXrg3IZ5rCWfdJJotce3.601268113f5dd_1611819025.png', NULL, 5, NULL, NULL, '2022-01-16 06:12:27'),
(77, 26, 'Sổ tay các loại công trình xây dựng Dữ liệu kiến trúc sư', NULL, 'd-liu-kin-trc-s-s-tay-cc-loi-cng-trnh-xy-dng.jpeg', NULL, NULL, NULL, NULL, 47500, NULL, NULL, NULL, 9, NULL, 20, '/storage/sachs23/E8Dl0modlbzfMXMEaOyj.d-liu-kin-trc-s-s-tay-cc-loi-cng-trnh-xy-dng.jpeg', NULL, 10, NULL, NULL, '2022-01-16 06:12:59'),
(78, 25, 'Vở các loại', NULL, 'bo-dung-cu-hoc-tap-cho-hoc-sinh-cap-1_11.jpg', NULL, NULL, NULL, NULL, 7000, NULL, NULL, NULL, NULL, NULL, 100, '/storage/sachs23/o7jfg9gDVDlfFx3LHiKa.bo-dung-cu-hoc-tap-cho-hoc-sinh-cap-1_11.jpg', NULL, NULL, NULL, NULL, '2022-01-16 06:09:02'),
(79, 24, 'Bút và sổ viết thư pháp', NULL, 'loqow5z.jpg', NULL, NULL, NULL, NULL, 54000, NULL, NULL, NULL, 10, NULL, 54, '/storage/sachs23/T1vLyGJiQwA8CmtYbo2e.loqow5z.jpg', NULL, 3, NULL, NULL, '2022-01-16 06:13:30'),
(80, 24, 'Thư pháp Trung Quốc', NULL, 'thu-phap-trung-quoc.jpg', NULL, NULL, NULL, NULL, 23000, NULL, NULL, NULL, 9, NULL, 34, '/storage/sachs23/zql9AdQ7JaemfK1lQZbV.thu-phap-trung-quoc.jpg', NULL, 3, NULL, NULL, '2022-01-16 06:13:56'),
(81, 23, 'Sống sót nơi văn phòng', NULL, '11.jpg', NULL, NULL, NULL, NULL, 30000, NULL, NULL, NULL, 4, NULL, 46, '/storage/sachs23/x40QEPcy3tRfl1Mbh7JB.11.jpg', NULL, 5, NULL, NULL, '2022-01-16 06:14:26'),
(82, 23, 'Quản trị hành chánh văn phòng', NULL, 'quan-tri-hanh-chinh-van-phong.jpg', NULL, NULL, NULL, NULL, 56500, NULL, NULL, NULL, 12, NULL, 15, '/storage/sachs23/fpt6eUlB7ANn7muw0XYQ.quan-tri-hanh-chinh-van-phong.jpg', NULL, 6, NULL, NULL, '2022-01-16 06:15:00'),
(83, 21, 'Lịch sử Việt Nam', NULL, 'bo-15-tap-lich-su-viet-nam-nguyen-ngoc-mao.jpg', NULL, NULL, NULL, NULL, 45000, NULL, NULL, NULL, 2, NULL, 68, '/storage/sachs23/b9al7ismYqTSl9T17bvB.bo-15-tap-lich-su-viet-nam-nguyen-ngoc-mao.jpg', NULL, 6, NULL, NULL, '2022-01-16 06:15:27'),
(84, 21, 'Tiến trình lịch sử Việt Nam', NULL, 'download.jpg', NULL, NULL, NULL, NULL, 43000, NULL, NULL, NULL, 7, NULL, 23, '/storage/sachs23/Qp04hnbRn2XJbUAHGRUa.download.jpg', NULL, 6, NULL, NULL, '2022-01-16 06:15:57'),
(85, 21, 'Việt Nam sử lược', NULL, 'viet-nam-su-luoc-361597.jpg', NULL, NULL, NULL, NULL, 23000, NULL, NULL, NULL, NULL, NULL, 42, '/storage/sachs23/zGWem3S8fWnh38nGEhH6.viet-nam-su-luoc-361597.jpg', NULL, 8, NULL, NULL, '2022-01-16 06:16:18'),
(86, 20, 'Lịch sử thế giới', NULL, 'download (1).jpg', NULL, NULL, NULL, NULL, 54000, NULL, NULL, NULL, 2, NULL, 21, '/storage/sachs23/z1NGWjFlCJKW85GoTvW8.download (1).jpg', NULL, 5, NULL, NULL, '2022-01-16 06:16:45'),
(87, 20, 'Lịch sử thế giới theo dòng sự kiện', NULL, 'download.jpg', NULL, NULL, NULL, NULL, 20000, NULL, NULL, NULL, 5, NULL, 5, '/storage/sachs23/h2SdSQ3WmV73X9KSyLab.download.jpg', NULL, 6, NULL, NULL, '2022-01-16 06:18:19'),
(88, 20, 'Lịch sử thế giới cận đại', NULL, 'Lich-su-the-gioi-can-dai-Nhieu-tac-gia-200x300.jpg', NULL, NULL, NULL, NULL, 32000, NULL, NULL, NULL, 12, NULL, 22, '/storage/sachs23/QI82lrMwAFjadjEogyy5.Lich-su-the-gioi-can-dai-Nhieu-tac-gia-200x300.jpg', NULL, 6, NULL, NULL, '2022-01-16 06:17:33'),
(89, 18, 'Bí quyết gây dựng cơ nghiệp bạc tỷ', NULL, 'doko-Bi-quyet-gay-dung-co-nghiep-bac-ty.jpg', NULL, NULL, NULL, NULL, 34000, NULL, NULL, NULL, 9, NULL, 14, '/storage/sachs23/JQbVfftenRUqJWZ20HFi.doko-Bi-quyet-gay-dung-co-nghiep-bac-ty.jpg', NULL, 5, NULL, NULL, '2022-01-16 06:18:09'),
(90, 18, 'Khởi nghiệp du kích', NULL, 'khoi-nghiep-du-kich-2.jpg', NULL, NULL, NULL, NULL, 60000, NULL, NULL, NULL, 8, NULL, 6, '/storage/sachs23/sLZ7VWyYwNqe2fjKWNH3.khoi-nghiep-du-kich-2.jpg', NULL, 5, NULL, NULL, '2022-01-16 06:19:10'),
(91, 18, 'Khởi nghiệp tinh gọn', NULL, 'khoi-nghiep-tinh-gon-1533032117331615152370.png', NULL, NULL, NULL, NULL, 78000, NULL, NULL, NULL, 6, NULL, 8, '/storage/sachs23/Aqh1qwQELg6KfsL5QVV3.khoi-nghiep-tinh-gon-1533032117331615152370.png', NULL, 5, NULL, NULL, '2022-01-16 06:18:57'),
(92, 17, 'Giáo trình kinh tế học tập 1', NULL, 'giao-trinh-kinh-te-hoc-tap-1-sachdoanhnhan-1.jpg', NULL, NULL, NULL, NULL, 34500, NULL, NULL, NULL, 4, NULL, 14, '/storage/sachs23/Sm5MSx8VSZVJho4kUorm.giao-trinh-kinh-te-hoc-tap-1-sachdoanhnhan-1.jpg', NULL, 10, NULL, NULL, '2022-01-16 06:20:03'),
(93, 17, 'Kinh tế học', NULL, 'kinh-te-hoc.jpg', NULL, NULL, NULL, NULL, 40000, NULL, NULL, NULL, 10, NULL, 20, '/storage/sachs23/gRyuLlPACZfcv4xADbAz.kinh-te-hoc.jpg', NULL, 8, NULL, NULL, '2022-01-16 06:20:21'),
(94, 17, 'Tinh hoa kinh tế học', NULL, 'tinhhoakinhtehocjpg.jpg', NULL, NULL, NULL, NULL, 38500, NULL, NULL, NULL, 7, NULL, 54, '/storage/sachs23/6uIy8VqPzn57xpOOVy4E.tinhhoakinhtehocjpg.jpg', NULL, 6, NULL, NULL, '2022-01-16 06:20:40'),
(95, 16, '100 ý tưởng bán hàng hay nhất mọi thời đại', NULL, 'download.jpg', NULL, NULL, NULL, NULL, 35000, NULL, NULL, NULL, 5, NULL, 75, '/storage/sachs23/NdAYpVITR9U6BAsYu7ie.download.jpg', NULL, 8, NULL, NULL, '2022-01-16 06:21:28'),
(96, 16, 'Xây dựng hệ thống Marketing & Bán hàng hiệu quả', NULL, 'HR-Marketing-1-01.jpg', NULL, NULL, NULL, NULL, 46000, NULL, NULL, NULL, 7, NULL, 20, '/storage/sachs23/JZu4Gf6jId85jQWPvbEm.HR-Marketing-1-01.jpg', NULL, 7, NULL, NULL, '2022-01-16 06:21:57'),
(97, 16, 'Đánh cắp ý tưởng', NULL, 'sach-hay-ve-marketing-nen-doc-4.png', NULL, NULL, NULL, NULL, 43000, NULL, NULL, NULL, 11, NULL, 60, '/storage/sachs23/ohrWh1MCRiDawSudRiBf.sach-hay-ve-marketing-nen-doc-4.png', NULL, 9, NULL, NULL, '2022-01-16 06:22:29'),
(98, 15, 'Con đường thoát hạn', NULL, 'con-duong-thoat-han.jpg', NULL, NULL, NULL, NULL, 30000, NULL, NULL, NULL, 6, NULL, 20, '/storage/sachs23/TLGizWO8TlxaTUrZpl40.con-duong-thoat-han.jpg', NULL, 5, NULL, NULL, '2022-01-16 06:22:52'),
(99, 15, '101 bài học kinh doanh thực tiễn cho doanh nhân khời nghiệp', NULL, 'nxbtre_full_03432020_034357.jpg', NULL, NULL, NULL, NULL, 80000, NULL, NULL, NULL, 8, NULL, 40, '/storage/sachs23/XLMPZEBsUfz7DHMrOVeN.nxbtre_full_03432020_034357.jpg', NULL, 7, NULL, NULL, '2022-01-16 06:23:21'),
(100, 15, '13 nguyên tắc nghĩ giàu, làm giàu', NULL, 'photo-1-15521862163471148965938.jpg', NULL, NULL, NULL, NULL, 50000, NULL, NULL, NULL, 12, NULL, 20, '/storage/sachs23/rF4cxOJilw35UTm69dEG.photo-1-15521862163471148965938.jpg', NULL, 6, NULL, NULL, '2022-01-16 06:23:46'),
(101, 12, 'Nghệ thuật bán hàng bằng câu chuyện', NULL, '95105e5c2230b319445a1d31ffac8c9e.jpg', NULL, NULL, NULL, NULL, 34000, NULL, NULL, NULL, 7, NULL, 27, '/storage/sachs23/ebSeSvuXib0oL0ujDdX3.95105e5c2230b319445a1d31ffac8c9e.jpg', NULL, 10, NULL, NULL, '2022-01-16 06:24:22'),
(102, 12, 'Làm việc trực tuyến quán xuyến tương lai', NULL, '1615543509_fbac46371df4ce8481f6bed2587e6063.jpg', NULL, NULL, NULL, NULL, 49000, NULL, NULL, NULL, 10, NULL, 56, '/storage/sachs23/FN632nTfy9UFmCx1OmwU.1615543509_fbac46371df4ce8481f6bed2587e6063.jpg', NULL, 8, NULL, NULL, '2022-01-16 06:24:47'),
(103, 12, 'Kỹ năng thuyết trình cho người mới bắt đầu', NULL, 'eb80614c87798d10492882be292b8004_tn.jpg', NULL, NULL, NULL, NULL, 54000, NULL, NULL, NULL, 5, NULL, 43, '/storage/sachs23/P4tC60rRBzlYfjIj0UyL.eb80614c87798d10492882be292b8004_tn.jpg', NULL, 6, NULL, NULL, '2022-01-16 06:25:05'),
(104, 11, 'Đi tìm lẽ sống', NULL, 'di-tim-le-song.jpg', NULL, NULL, NULL, NULL, 45000, NULL, NULL, NULL, 12, NULL, 15, '/storage/sachs23/jWTzNBGtrbTkJdMp2dsb.di-tim-le-song.jpg', NULL, 6, NULL, NULL, '2022-01-16 07:09:08'),
(105, 11, 'Nghệ thuật sống tự tin', NULL, 'nghe-thuat-song-tu-tin-sach-ebook-189x300.jpg', NULL, NULL, NULL, NULL, 25000, NULL, NULL, NULL, 5, NULL, 24, '/storage/sachs23/3L19OQeReUJr8RuthPlO.nghe-thuat-song-tu-tin-sach-ebook-189x300.jpg', NULL, 6, NULL, NULL, '2022-01-16 07:09:24'),
(106, 11, 'Nghệ thuật sống trọn vẹn', NULL, 'sach-song-dep-nghe-thuat-song-tron-ven-450x652.jpg', NULL, NULL, NULL, NULL, 43000, NULL, NULL, NULL, 10, NULL, 23, '/storage/sachs23/qOUZvwwYg0BaAAMxVbgA.sach-song-dep-nghe-thuat-song-tron-ven-450x652.jpg', NULL, 6, NULL, NULL, '2022-01-16 07:09:36'),
(107, 14, 'Giáo trình kỹ năng làm việc nhóm', NULL, 'full-img-3997-1374742169.jpg', NULL, NULL, NULL, NULL, 48000, NULL, NULL, NULL, 4, NULL, 24, '/storage/sachs23/X7zyIR2k0NRXtOMkmWhP.full-img-3997-1374742169.jpg', NULL, 8, NULL, NULL, '2022-01-16 06:29:33'),
(108, 14, 'Kỹ năng làm việc nhóm của người Nhật', NULL, 'ky_nang_lam_viec_nhom_cua_nguoi_nhat_1_2018_08_04_09_31_23.jpg', NULL, NULL, NULL, NULL, 60000, NULL, NULL, NULL, 8, NULL, 27, '/storage/sachs23/pSzDtozZTScRh34oeFFA.ky_nang_lam_viec_nhom_cua_nguoi_nhat_1_2018_08_04_09_31_23.jpg', NULL, 6, NULL, NULL, '2022-01-16 06:29:23'),
(109, 14, 'Tôi tư duy tôi thành đạt', NULL, 'toi-tu-duy-toi-thanh-dat.jpg', NULL, NULL, NULL, NULL, 56000, NULL, NULL, NULL, 4, NULL, 52, '/storage/sachs23/qB2oPkAcksbxi6excHU3.toi-tu-duy-toi-thanh-dat.jpg', NULL, 9, NULL, NULL, '2022-01-16 06:29:50'),
(110, 10, 'Tư duy tích cực tạo thành công', NULL, '7880249190ec669bc5df44a40e2b4b28.jpg', NULL, NULL, NULL, NULL, 90000, NULL, NULL, NULL, 10, NULL, 20, '/storage/sachs23/CurA90giKgqUeE9PpbNT.7880249190ec669bc5df44a40e2b4b28.jpg', NULL, 6, NULL, NULL, '2022-01-16 06:30:19'),
(111, 10, 'Bí mật tư duy triệu phú', NULL, 'download.jpg', NULL, NULL, NULL, NULL, 78000, NULL, NULL, NULL, 7, NULL, 22, '/storage/sachs23/JUMKEizyoXAaiCnpFifc.download.jpg', NULL, 9, NULL, NULL, '2022-01-16 06:30:52'),
(112, 10, 'Quẳng gánh lo đi và vui sống', NULL, 'Quang-ganh-lo-di-va-vui-song-top-10-207x300.jpg', NULL, NULL, NULL, NULL, 50000, NULL, NULL, NULL, 6, NULL, 67, '/storage/sachs23/WGjuRxrSsnEncq05bN71.Quang-ganh-lo-di-va-vui-song-top-10-207x300.jpg', NULL, 9, NULL, NULL, '2022-01-16 06:31:19'),
(113, 8, 'Có phải hình tròn đẹp nhất?', NULL, '3-876a29b2-5e5d-4eaa-9d15-396be4eba5d8.png', NULL, NULL, NULL, NULL, 51000, NULL, NULL, NULL, 1, NULL, 29, '/storage/sachs23/0b22w6unqH12dw9amvZ9.3-876a29b2-5e5d-4eaa-9d15-396be4eba5d8.png', NULL, 6, NULL, NULL, '2022-01-16 06:32:19'),
(114, 8, 'Cùng lau cho sạch nào!', NULL, 'cung-lau-cho-sach-nao-2-1000x1000.jpg', NULL, NULL, NULL, NULL, 50000, NULL, NULL, NULL, 1, NULL, 60, '/storage/sachs23/d8FLxM5Gal2IYLSc9nL2.cung-lau-cho-sach-nao-2-1000x1000.jpg', NULL, 6, NULL, NULL, '2022-01-16 06:32:08'),
(115, 8, 'Tay xinh đâu nhỉ?', NULL, 'ehon-nhat-ban-tay-xinh-dau-nhi.jpg', NULL, NULL, NULL, NULL, 54500, NULL, NULL, NULL, 1, NULL, 34, '/storage/sachs23/6KA7jBdpWwB6houidZax.ehon-nhat-ban-tay-xinh-dau-nhi.jpg', NULL, 6, NULL, NULL, '2022-01-16 06:32:39'),
(116, 7, 'Văn học thiếu nhi với giáo dục trẻ em lứa tuổi mầm non', NULL, 'image.png', NULL, NULL, NULL, NULL, 73000, NULL, NULL, NULL, 2, NULL, 41, '/storage/sachs23/dTQY9EcMlLYDpFFhYk0z.image.png', NULL, 10, NULL, NULL, '2022-01-16 06:33:10'),
(117, 7, 'Ngôi nhà nhỏ trên thảo nguyên', NULL, 'nhung-tac-pham-van-hoc-thieu-nhi-hay-nhat-moi-thoi-dai (1).jpg', NULL, NULL, NULL, NULL, 60000, NULL, NULL, NULL, 12, NULL, 14, '/storage/sachs23/yPWHQbKgeinsUFdkVoVj.nhung-tac-pham-van-hoc-thieu-nhi-hay-nhat-moi-thoi-dai (1).jpg', NULL, 6, NULL, NULL, '2022-01-16 06:33:36'),
(118, 7, 'Hoàng tử bé', NULL, 'nhung-tac-pham-van-hoc-thieu-nhi-hay-nhat-moi-thoi-dai.jpg', NULL, NULL, NULL, NULL, 70000, NULL, NULL, NULL, 1, NULL, 40, '/storage/sachs23/PHMO8Wi0weGvaZ6Ik1Tb.nhung-tac-pham-van-hoc-thieu-nhi-hay-nhat-moi-thoi-dai.jpg', NULL, 8, NULL, NULL, '2022-01-16 06:34:00'),
(119, 6, 'Tập tô chữ 1', NULL, '34e5f80b579c95dfe968be5813ff0bb3.jpg', NULL, NULL, NULL, NULL, 20000, NULL, NULL, NULL, 6, NULL, 25, '/storage/sachs23/awcat4Y1VMjR1nO4OJkc.34e5f80b579c95dfe968be5813ff0bb3.jpg', NULL, 7, NULL, NULL, '2022-01-16 06:34:32'),
(120, 6, 'Bé tập tô màu', NULL, '100-tranh-to-mau-cho-be-500x554.jpg', NULL, NULL, NULL, NULL, 28000, NULL, NULL, NULL, 10, NULL, 48, '/storage/sachs23/F6pTlkItOAkEhbauuv4a.100-tranh-to-mau-cho-be-500x554.jpg', NULL, 8, NULL, NULL, '2022-01-16 06:34:50'),
(121, 6, 'Bé tập viết tô màu luyện viết chữ đẹp', NULL, 'img170_4.jpg', NULL, NULL, NULL, NULL, 35000, NULL, NULL, NULL, 7, NULL, 23, '/storage/sachs23/GyByHO5QPorgLrUbjvmC.img170_4.jpg', NULL, 10, NULL, NULL, '2022-01-16 06:35:11'),
(122, 5, 'Truyện kể cho bé trước giờ đi ngủ', NULL, '015_22.jpg', NULL, NULL, NULL, NULL, 51000, NULL, NULL, NULL, 10, NULL, 41, '/storage/sachs23/OXiTTAWiAYCYSfbUWYpu.015_22.jpg', NULL, 7, NULL, NULL, '2022-01-16 06:35:37'),
(123, 5, 'Chuyện kể cho bé mầm non', NULL, 'chuyen-ke-cho-be-mam-non-t1_fccf3dba18204e67a2e19ebf9dc92692.jpg', NULL, NULL, NULL, NULL, 49500, NULL, NULL, NULL, 9, NULL, 52, '/storage/sachs23/Ft0o2yYmbsKAJs418u9H.chuyen-ke-cho-be-mam-non-t1_fccf3dba18204e67a2e19ebf9dc92692.jpg', NULL, 8, NULL, NULL, '2022-01-16 06:35:57'),
(124, 5, '365 ngày kể chuyện cho bé', NULL, 'download.jpg', NULL, NULL, NULL, NULL, 60000, NULL, NULL, NULL, 4, NULL, 41, '/storage/sachs23/I9MsNsxhXvMGJfsnPKZy.download.jpg', NULL, 9, NULL, NULL, '2022-01-16 06:36:19'),
(125, 4, 'Cưa gái đại cương', NULL, '251890_492042860809761_1748212707_n.jpg', NULL, NULL, NULL, NULL, 69000, NULL, NULL, NULL, 2, NULL, 500, '/storage/sachs23/OIG6Wa1X0MfhMIX5xToM.251890_492042860809761_1748212707_n.jpg', NULL, 5, NULL, NULL, '2022-01-16 07:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`, `type`, `deleted_at`) VALUES
(1, 'phone_contact', '0346674653', '2021-10-13 01:16:21', '2021-10-13 01:16:27', 'Text', '2021-10-13 01:16:27'),
(2, 'phone_contact', '(+84)123456789', '2021-10-14 18:50:42', '2022-01-16 06:45:40', 'Text', NULL),
(3, 'email', 'Duc.ph194516@sis.hust.edu.vn', '2021-10-14 18:59:28', '2022-01-16 06:45:06', 'Text', NULL),
(4, 'facebook_link', 'https://www.facebook.com/huy.leba.75', '2021-10-14 19:01:59', '2022-01-15 04:59:47', 'Text', NULL),
(5, 'twitter_link', 'N/A', '2021-10-14 19:03:13', '2022-01-16 06:44:34', 'Text', NULL),
(6, 'linkedin_link', 'javascript: alert(\"Khong co\")', '2021-10-14 19:03:57', '2022-01-16 07:01:54', 'Text', NULL),
(7, 'footer_infor', 'ĐHBKHN', '2021-10-16 00:35:02', '2022-01-16 06:44:13', 'Text', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tacgias`
--

CREATE TABLE `tacgias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TG_HoTen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TG_Mota` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tacgias`
--

INSERT INTO `tacgias` (`id`, `TG_HoTen`, `TG_Mota`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Phú', 'Links', '2021-10-13 09:17:59', '2021-10-13 09:23:48', '2021-10-13 09:23:48'),
(3, 'Phúc', 'LXP', '2021-10-13 09:18:36', '2021-10-13 09:18:36', NULL),
(4, 'Đức', '[placeholder]', '2022-01-15 00:37:45', '2022-01-15 01:45:01', '2022-01-15 01:45:01'),
(5, 'Huấn Hoa Hồng', 'HHH', '2022-01-15 01:45:12', '2022-01-15 01:45:12', NULL),
(6, 'Nguyễn Vĩnh Nguyên', 'NVN', '2022-01-15 01:45:51', '2022-01-15 01:45:51', NULL),
(7, 'Nguyễn Trương Quý', 'NTQ', '2022-01-15 01:46:01', '2022-01-15 01:46:01', NULL),
(8, 'Đỗ Bích Thúy', 'ĐBT', '2022-01-15 01:46:09', '2022-01-15 01:46:09', NULL),
(9, 'Hồ Anh Thái', 'HAT', '2022-01-15 01:46:21', '2022-01-15 01:46:21', NULL),
(10, 'Nguyễn Mai Chi', 'NMC', '2022-01-15 01:46:29', '2022-01-15 01:46:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thehangs`
--

CREATE TABLE `thehangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TH_KhachHangId` bigint(20) UNSIGNED NOT NULL,
  `TH_Ngay` datetime NOT NULL,
  `TH_ThanhTien` int(11) NOT NULL,
  `TH_TrangThai` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tintucs`
--

CREATE TABLE `tintucs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TT_TieuDe` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TT_TacGia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TT_Ngay` datetime NOT NULL,
  `TT_MoTa` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TT_NoiDung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TT_Anh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TT_HienThi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TT_NhomTin` bigint(20) UNSIGNED NOT NULL,
  `TT_TrangThai` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `TT_paths` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tintucs`
--

INSERT INTO `tintucs` (`id`, `TT_TieuDe`, `TT_TacGia`, `TT_Ngay`, `TT_MoTa`, `TT_NoiDung`, `TT_Anh`, `TT_HienThi`, `TT_NhomTin`, `TT_TrangThai`, `created_at`, `updated_at`, `deleted_at`, `TT_paths`) VALUES
(4, 'Sách hay', 'Phú', '2021-10-06 00:00:00', 'Sách hay của Phú', 'Sách rất hay', '15871906_397733150569242_2817492152696043385_n.jpg', '12', 5, NULL, '2021-10-13 00:33:51', '2021-10-16 10:02:48', '2021-10-16 10:02:48', ''),
(5, 'Sách hay 1', 'Phúc', '2021-10-05 00:00:00', 'Sách hay của Phúc', 'Sách rất hay 1', '17264352_432835953725628_8184855523507418471_n.jpg', '13', 4, NULL, '2021-10-13 00:34:36', '2021-10-13 02:05:13', '2021-10-13 02:05:13', ''),
(6, 'Sách không hay', 'Phúc', '2021-10-14 14:45:00', 'Phúc', 'Phú c', '9f1ce36e753e6bc87fbec5abcb52a0af.jpg', '121', 3, NULL, '2021-10-13 00:36:41', '2021-10-16 10:02:45', '2021-10-16 10:02:45', ''),
(11, 'Sách cho mẹ', 'Thương', '2021-10-16 14:23:00', 'Sách hay của Thương', 'Sách cho mẹ', '3f3d94b75e0e92ef120ee66c177441a1.jpg', '121', 7, NULL, '2021-10-13 20:59:19', '2021-10-16 10:02:42', '2021-10-16 10:02:42', ''),
(12, 'Sách rất hay', 'Phúc', '2021-10-16 14:24:00', 'dsf', 'dsf', 'mimikara combo n3.jpg', 'dsfsfdsf', 1, NULL, '2021-10-16 00:26:44', '2021-10-16 10:02:58', '2021-10-16 10:02:58', '/storage/News1/GWG052GNimeMkMbqSZcx.mimikara combo n3.jpg'),
(13, 'Sách rất hay', 'Phúc', '2021-10-16 14:27:00', 'dsf', 'fdsf', 'mimikara goi n1.jpg', 'dsfdsf', 1, NULL, '2021-10-16 00:27:22', '2021-10-16 10:02:32', '2021-10-16 10:02:32', '/storage/News1/ueR04ezcWzsJZJCpDOe5.mimikara goi n1.jpg'),
(14, '10 Cuốn Sách Hay 2021 Nên đọc', 'Lương Xuân Phúc', '2021-10-14 23:52:00', '10 cuốn sách hay 2021', '1 1. Lặng Nhìn Cuộc Sống 2 2. Muôn Kiếp Nhân Sinh 3 3. Đàn ông sao hỏa đàn bà sao kim 4 4. Ông trăm tuổi trèo qua cửa sổ và biến mất 5 5. Khéo Ăn Nói Sẽ Có Được Thiên Hạ 6 6. Lối sống tối giản của người Nhật 7 7. Tình yêu của anh, thế giới của em 8 8. Biên niên cô đơn 9 9. Chuyện con mèo dạy hải âu bay 10 10. Hành trình về phương đông', 'lối sống tối giản.jpg', 'Lối sống tối giản của người Nhật — Đây là một trong những cuốn sách nổi tiếng, bán chạy nhất mọi thời đại. Không phải một cuốn truyện, không phải ngôn tình, ...', 1, NULL, '2021-10-16 09:54:25', '2021-10-16 09:54:25', NULL, '/storage/News1/J4UQWojQxlXRfcXvkMs3.lối sống tối giản.jpg'),
(15, '[REVIEW] LỐI SỐNG TỐI GIẢN THỜI CÔNG NGHỆ SỐ', 'Nguyễn Như Nam Anh', '2021-10-10 23:57:00', 'review sách', 'Những ngày gần đây, thế giới công nghệ đang “phát sốt” vì những sản phẩm mới “ra lò” của Apple như iPad Air mới, Apple Watch series 6, và đặc biệt là iOS 14. Riêng iPhone 12 thì được “ém”, có lẽ với mục đích marketing và nó kích thích sự tò mò của khách […]', 'dscf0380.jpg', 'Những ngày gần đây, thế giới công nghệ đang “phát sốt” vì những sản phẩm mới “ra lò” của Apple như iPad Air mới, Apple Watch series 6, và đặc biệt là iOS 14. Riêng iPhone 12 thì được “ém”, có lẽ với mục đích marketing và nó kích thích sự tò mò của khách ...', 6, NULL, '2021-10-16 09:58:55', '2021-10-16 09:58:55', NULL, '/storage/News1/WWE3rkIx9sHrKystsP23.dscf0380.jpg'),
(16, '[REVIEW] MÁY ĐỌC SÁCH “VẠN NĂNG” CỦA MÌNH – KINDLE PAPERWHITE', 'Nguyễn Như Nam Anh', '2021-10-05 00:03:00', 'MÁY ĐỌC SÁCH', 'Mấy ngày hôm nay trời Hà Nội mát quá, cứ như là mùa xuân ở nước Nhật vậy. Hôm qua mình đạp xe ven hồ Tây, và chiều nay cũng thế. Mình đạp đến Tranquil Books & Cafe 18b Nguyễn Biểu, lần đầu tiên gọi cốc trà hoa cúc LẠNH (vì đạp xong nóng […]', 'p_20190509_163627-01.jpeg', 'Mấy ngày hôm nay trời Hà Nội mát quá, cứ như là mùa xuân ở nước Nhật vậy. Hôm qua mình đạp xe ven hồ Tây, và chiều nay cũng thế. Mình đạp đến Tranquil Books & Cafe 18b Nguyễn Biểu, lần đầu tiên gọi cốc trà hoa cúc LẠNH (vì đạp xong nóng […]', 8, NULL, '2021-10-16 10:04:32', '2021-10-16 10:04:32', NULL, '/storage/News1/7jcR4cXQf0hqxqS6l6Oo.p_20190509_163627-01.jpeg'),
(17, '[REVIEW] VÌ SAO NGƯỜI ĐAN MẠCH LẠI SỬ DỤNG TIỀN LƯƠNG ĐẦU TIÊN ĐỂ MUA… GHẾ?', 'Nguyễn Như Nam Anh', '2021-10-01 00:05:00', 'review sách', 'Đó là tiêu đề của cuốn sách mà mình đã dành cả buổi sáng hôm nay ngồi đọc ở cafe (tiêu đề gốc tiếng Nhật: “なぜデンマーク人は初任給でイスを買うのか?”). Nó cuốn hút đến nỗi mình gần như quên cả thời gian, để rồi khi mở điện thoại ra thì đã là 11 giờ hơn. Bên trong cuốn sách này có […]', 'dscf3592-01.jpeg', 'Đó là tiêu đề của cuốn sách mà mình đã dành cả buổi sáng hôm nay ngồi đọc ở cafe (tiêu đề gốc tiếng Nhật: “なぜデンマーク人は初任給でイスを買うのか?”). Nó cuốn hút đến nỗi mình gần như quên cả thời gian, để rồi khi mở điện thoại ra thì đã là 11 giờ hơn. Bên trong cuốn sách này có […]', 8, NULL, '2021-10-16 10:06:11', '2021-10-16 10:06:11', NULL, '/storage/News1/zamm8ruZEaGwhioqxvU0.dscf3592-01.jpeg'),
(18, 'BÀN LUẬN VỀ GIẤC NGỦ QUA CUỐN SÁCH “SAO CHÚNG TA LẠI NGỦ”', 'Nguyễn Như Nam Anh', '2021-09-17 00:06:00', 'review sách', 'Đây sẽ là bài viết “review” cuối cùng cho cuốn sách “SAO CHÚNG TA LẠI NGỦ” của Matthew Walker mà mình đã đọc vào tháng 5. Ở phần này, mình muốn chia sẻ về mối liên hệ giữa giấc ngủ và hiệu quả học tập, cũng như là đưa ra lời khuyên về việc làm […]', 'dscf6369-copy.jpg', 'Đây sẽ là bài viết “review” cuối cùng cho cuốn sách “SAO CHÚNG TA LẠI NGỦ” của Matthew Walker mà mình đã đọc vào tháng 5. Ở phần này, mình muốn chia sẻ về mối liên hệ giữa giấc ngủ và hiệu quả học tập, cũng như là đưa ra lời khuyên về việc làm ...', 8, NULL, '2021-10-16 10:07:43', '2021-10-16 10:07:43', NULL, '/storage/News1/G80Kbwvd8SuWO2n7EYmP.dscf6369-copy.jpg'),
(19, '3 CUỐN SÁCH VỀ CHỦ NGHĨA TỐI GIẢN MÀ BẠN NÊN ĐỌC', 'Nguyễn Như Nam Anh', '2021-03-19 00:08:00', 'SÁCH NÊN ĐỌC', 'Tháng 3 luôn là tháng thích hợp để có thể cho ra những bài viết với tiêu đề “top 3”, “3 điều”, “3 thứ”… Năm ngoái mình viết khá nhiều bài với con số 3 này, và năm nay cũng sẽ như vậy. Khởi đầu sẽ là một bài viết về sách. Đúng dịp tròn […]', 'dscf6989.jpg', 'Tháng 3 luôn là tháng thích hợp để có thể cho ra những bài viết với tiêu đề “top 3”, “3 điều”, “3 thứ”… Năm ngoái mình viết khá nhiều bài với con số 3 này, và năm nay cũng sẽ như vậy. Khởi đầu sẽ là một bài viết về sách. Đúng dịp tròn ...', 9, NULL, '2021-10-16 10:09:41', '2021-10-16 10:09:41', NULL, '/storage/News1/ybMgj9dRZHLths5mxNO5.dscf6989.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_role` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_role`) VALUES
(1, 'Group 4', 'thuongx1bg@gmail.com', NULL, '$2y$10$8Jw.YmuABstxiyxy1t7tGOaclUDLx0DiwwNvGJjhhMNlnrBd0pgdG', 'QqDBgRNhhAVoxuh0PF7I8Um5Vl0fSLH8xV5BEWBoRbzjl3EeeM32Hxu2dxDS', NULL, NULL, NULL),
(19, 'Nguyen Thi Nga', 'ntnga@gmail.com', NULL, '$2y$10$xzi7jdKBWIy4AwhqGje2aeyHs1p4Muayb9aDJQJrJWdSq0vr7Ti.C', NULL, '2022-01-03 12:34:04', '2022-01-03 12:34:04', NULL),
(21, 'Trang Ngan', 'trangnganvirgo@gmail.com', NULL, '$2y$10$F6crQmnSdpI6x45o3gX2JeK7/i5imKgDYR4OTjIeeUXm7TRCfvK/u', NULL, '2022-01-03 23:41:04', '2022-01-03 23:41:04', NULL),
(22, 'Trang Ngan', 'trangan@gmail.com', NULL, '$2y$10$ZFrCKMZZ6fxG0bKCBuY4xOkcXlTXoYa6WbrcXnAq./b0RQ4IBt6WK', NULL, '2022-01-14 00:58:14', '2022-01-14 00:58:14', 1),
(23, 'Le Ba Huy', 'lebahuybk@gmail.com', NULL, '$2y$10$LNEhXJXX87i8yUbwDG0S9OEaHXv08F29YT9/H5NxM.tUt/cDJjsDu', 'oZoWrjPkSMeFr1OigRVXmiRV73tt9bLazWZxqqIyNnNVFUpaN2mwRIiR9WOR', '2022-01-15 00:34:52', '2022-01-15 00:34:52', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adverts`
--
ALTER TABLE `adverts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chitietthehangs`
--
ALTER TABLE `chitietthehangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietthehangs_ctth_thehangid_foreign` (`CTTH_TheHangId`),
  ADD KEY `chitietthehangs_ctth_sachid_foreign` (`CTTH_SachId`);

--
-- Indexes for table `danhmucsaches`
--
ALTER TABLE `danhmucsaches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhomtins`
--
ALTER TABLE `nhomtins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nxbs`
--
ALTER TABLE `nxbs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saches`
--
ALTER TABLE `saches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saches_s_danhmucid_foreign` (`S_DanhmucId`),
  ADD KEY `saches_s_nxbid_foreign` (`S_NXBId`),
  ADD KEY `saches_s_tacgiaid_foreign` (`S_TacGiaId`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tacgias`
--
ALTER TABLE `tacgias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thehangs`
--
ALTER TABLE `thehangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thehangs_th_khachhangid_foreign` (`TH_KhachHangId`);

--
-- Indexes for table `tintucs`
--
ALTER TABLE `tintucs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tintucs_tt_nhomtin_foreign` (`TT_NhomTin`);

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
-- AUTO_INCREMENT for table `adverts`
--
ALTER TABLE `adverts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chitietthehangs`
--
ALTER TABLE `chitietthehangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `danhmucsaches`
--
ALTER TABLE `danhmucsaches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `nhomtins`
--
ALTER TABLE `nhomtins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nxbs`
--
ALTER TABLE `nxbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `saches`
--
ALTER TABLE `saches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tacgias`
--
ALTER TABLE `tacgias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `thehangs`
--
ALTER TABLE `thehangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tintucs`
--
ALTER TABLE `tintucs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietthehangs`
--
ALTER TABLE `chitietthehangs`
  ADD CONSTRAINT `chitietthehangs_ctth_sachid_foreign` FOREIGN KEY (`CTTH_SachId`) REFERENCES `saches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitietthehangs_ctth_thehangid_foreign` FOREIGN KEY (`CTTH_TheHangId`) REFERENCES `thehangs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `saches`
--
ALTER TABLE `saches`
  ADD CONSTRAINT `saches_s_danhmucid_foreign` FOREIGN KEY (`S_DanhmucId`) REFERENCES `danhmucsaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saches_s_nxbid_foreign` FOREIGN KEY (`S_NXBId`) REFERENCES `nxbs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saches_s_tacgiaid_foreign` FOREIGN KEY (`S_TacGiaId`) REFERENCES `tacgias` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `thehangs`
--
ALTER TABLE `thehangs`
  ADD CONSTRAINT `thehangs_ibfk_1` FOREIGN KEY (`TH_KhachHangId`) REFERENCES `users` (`id`);

--
-- Constraints for table `tintucs`
--
ALTER TABLE `tintucs`
  ADD CONSTRAINT `tintucs_tt_nhomtin_foreign` FOREIGN KEY (`TT_NhomTin`) REFERENCES `nhomtins` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
