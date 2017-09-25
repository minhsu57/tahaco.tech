-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 25, 2017 at 11:27 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tahaco.tech`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_routes`
--

CREATE TABLE `app_routes` (
  `id` int(11) NOT NULL,
  `slug` varchar(192) NOT NULL,
  `controller` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `banned`
--

CREATE TABLE `banned` (
  `id` int(11) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banned`
--

INSERT INTO `banned` (`id`, `ip`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(2, '100.10.25.40', '2015-05-19 16:37:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(3, '91.220.13.30', '2015-05-19 16:38:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(4, '172.21.13.249', '2017-03-15 09:33:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `content` text,
  `content2` text,
  `content3` text,
  `content4` text,
  `url` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `parent` varchar(100) DEFAULT NULL,
  `level` int(2) DEFAULT '0',
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `content`, `content2`, `content3`, `content4`, `url`, `parent`, `level`, `meta_keyword`, `meta_description`, `modified_date`) VALUES
('drip-fittings', 'DRIP FITTINGS', '<p>Chưa c&oacute;</p>\r\n', '<p><img alt="" src="/public/upload/images/product02.PNG" style="height:206px; width:222px" /></p>\r\n', NULL, NULL, NULL, NULL, NULL, 0, '', '', '2017-09-24 22:33:41'),
('drip-pipes', 'DRIP PIPES', '<h1><span style="color:#8e44ad">DRIP PIPES</span></h1>', '<p><img alt="" src="/public/upload/images/product01.PNG" style="height:215px; width:232px" /></p>', NULL, NULL, NULL, NULL, NULL, 0, '', '', '2017-09-25 10:24:49'),
('filter-system', 'FILTER SYSTEM', '<h1><span style="color:#2980b9">FILTER SYSTEM</span></h1>\r\n', '<p><img alt="" src="/public/upload/images/product05.PNG" style="height:204px; width:219px" /></p>\r\n', NULL, NULL, NULL, NULL, NULL, 0, '', '', '2017-09-24 22:44:02'),
('gioi-thieu', 'Giới thiệu', '<p><span style="color:#9b59b6"><span style="font-size:22px">Đ&acirc;y l&agrave; giới thiệu</span></span></p>\r\n', '', '', '', NULL, NULL, '', -1, NULL, NULL, '2017-09-04 03:01:04'),
('home', 'Home', '', NULL, NULL, NULL, NULL, NULL, NULL, -1, 'Thi thử ITELS, khóa học luyện nói tiếng anh, luyện nói nhóm 4-5 bạn, luyện nói nhóm 8 bạn, luyện thi ielts', 'Thi thử ITELS, khóa học luyện nói tiếng anh, luyện nói nhóm 4-5 bạn, luyện nói nhóm 8 bạn, luyện thi ielts', '2017-09-15 19:21:21'),
('home-page-introduce', 'Home page introduce', '<h3 style="color:#aaaaaa; font-style:italic; text-align:center"><img alt="" src="/public/upload/images/d2bb1e_ea74e810e9e0456eb89f6afe51fda468-mv2.png" /></h3>', '<p><img alt="" src="/public/upload/images/product03.PNG" style="height:206px; width:222px" /></p>', NULL, NULL, NULL, NULL, NULL, -1, '', '', '2017-09-25 16:16:34'),
('ky-thuat', 'Kỹ thuật', '<h1><span style="color:#2980b9">KỸ THUẬT</span></h1>', '<p><img alt="" src="/public/upload/images/d2bb1e_f10767a2b6cd433ea802a458b0875d55.jpg" /></p>', NULL, NULL, NULL, NULL, NULL, 1, '', '', '2017-09-25 11:04:45'),
('lien-he', 'Liên hệ', '<p><span style="color:#2980b9"><span style="font-size:18px"><span style="font-family:Times New Roman,serif"><span style="font-family:Calibri,serif">Nếu bạn c&oacute; thắc mắc về chương tr&igrave;nh học xin li&ecirc;n hệ qua:</span></span></span></span></p>\r\n\r\n<p><span style="font-size:18px"><span style="color:#c0392b"><strong>TAHACO.TECH</strong></span></span></p>\r\n\r\n<p><span style="font-family:Times New Roman,serif"><span style="font-size:medium"><span style="font-family:Calibri,serif">Facebook: <a href="https://www.facebook.com/nongnghieptahaco" target="_blank"><span style="color:#2980b9">https://www.facebook.com/nongnghieptahaco</span></a></span></span></span></p>\r\n\r\n<p><span style="font-family:Times New Roman,serif"><span style="font-size:medium"><span style="font-family:Calibri,serif">Tel: </span></span></span><span style="color:#2980b9"><strong>097 141 91 81</strong></span></p>\r\n\r\n<p><span style="font-family:Times New Roman,serif"><span style="font-size:medium"><span style="font-family:Calibri,serif">Hotline: </span></span></span><span style="color:#2980b9"><strong>097 141 91 81</strong></span></p>\r\n\r\n<p><span style="font-family:Times New Roman,serif"><span style="font-size:medium"><span style="font-family:Calibri,serif">Địa chỉ: </span></span></span><span style="color:#27ae60"><strong>98 Th&ocirc;n 1, Đắk Buk So, Tuy Đức, Đak N&ocirc;ng</strong></span></p>\r\n\r\n<p><span style="font-family:Times New Roman,serif"><span style="font-size:medium"><span style="font-family:Calibri,serif">Giờ l&agrave;m việc: <span style="color:#f39c12"><strong>Thứ 2 &ndash; Chủ nhật (7:00 &ndash; 21:00)</strong></span></span></span></span></p>\r\n\r\n<p><span style="color:#000000">Hoặc gửi th&ocirc;ng tin cho TAHACO.TECH để nhận được những hỗ trợ tốt nhất</span></p>', '<p><img alt="" src="/public/upload/images/logo.jpg" style="height:280px; width:280px" /></p>', NULL, NULL, NULL, NULL, NULL, -1, 'ehouse coffee, luyện nói tiếng anh', 'ehouse coffee, luyện nói tiếng anh', '2017-09-25 16:00:58'),
('login', 'login', '', NULL, NULL, NULL, NULL, NULL, NULL, -1, 'ehouse coffee, luyện nói tiếng anh', 'ehouse coffee, luyện nói tiếng anh', '2017-09-15 19:21:02'),
('pe-fittings', 'PE FITTINGS', '', '<p><img alt="" src="/public/upload/images/product04.PNG" style="height:213px; width:227px" /></p>\r\n', NULL, NULL, NULL, NULL, NULL, 0, '', '', '2017-09-24 22:43:27'),
('product', 'Sản Phẩm', '<h2 style="text-align:center"><span style="color:#8e44ad"><span style="font-size:26px">TH&Ocirc;NG TIN</span></span></h2>\r\n\r\n<h3>Phương ph&aacute;p thiết kế hệ thống tưới nhỏ giọt hiện nay</h3>\r\n\r\n<p>Hiện nay, việc ứng dụng&nbsp;<a href="http://hmkfarm.com/tuoi-nho-giot/" rel="nofollow noopener" target="_blank">tưới nhỏ giọt</a>&nbsp;c&ocirc;ng nghệ Israel ở Việt Nam đang được thực hiện một c&aacute;ch rất nhanh v&agrave; rộng. Hầu hết c&aacute;c vựa cafe, ti&ecirc;u, c&acirc;y ăn quả như cam, qu&iacute;t, bưởi &hellip; đều sử dụng c&ocirc;ng nghệ n&agrave;y v&agrave; n&oacute; đ&atilde; gi&uacute;p cho người lao động đỡ vất vả hơn rất nhiều.</p>\r\n\r\n<p><a href="http://hmkfarm.com/tuoi-nho-giot/" rel="nofollow noopener" target="_blank"><img src="https://media.licdn.com/mpr/mpr/AAEAAQAAAAAAAAufAAAAJGIxOTdjYjZhLWY1NWEtNGJlYi04OTMwLTkxZTc3ZWY1YjE4ZA.jpg" /></a></p>\r\n\r\n<p><a href="http://hmkfarm.com/tuoi-nho-giot/" rel="nofollow noopener" target="_blank">Tưới nhỏ giọt</a>&nbsp;cho c&acirc;y thanh long</p>\r\n\r\n<p>Tuy nhi&ecirc;n hầu hết người d&ugrave;ng đầu tư cho hệ thống n&agrave;y tự ph&aacute;t hoặc theo c&aacute;c đơn vị lắp đặt m&agrave; chưa c&oacute; những t&iacute;nh to&aacute;n đầy đủ. Điều n&agrave;y dẫn đến chi ph&iacute; đầu tư cao, thậm tr&iacute; l&atilde;ng ph&iacute; nguồn đầu tư v&agrave; nguồn nước tưới.</p>\r\n\r\n<p>Tại sao lại vậy, thật đơn giản tại sao bạn sử dụng ống nhựa pvc cho c&aacute;c trục ch&iacute;nh, tại sao bạn d&ugrave;ng ống c&oacute; k&iacute;ch thước phi 60 m&agrave; kh&ocirc;ng d&ugrave;ng ống phi 34 hay 32? Tại sao c&aacute;c đường ống phụ submain line bạn d&ugrave;ng ống hdpe 25 hay 20 hay 16 mm? Tại sao bạn sử dụng ống nhỏ giọt tr&ecirc;n ống (inline) m&agrave; kh&ocirc;ng phải (online) với c&aacute;c loại c&acirc;y kh&aacute;c nhau.</p>\r\n\r\n<p><a href="http://hmkfarm.com/tuoi-nho-giot/" rel="nofollow noopener" target="_blank"><img src="https://media.licdn.com/mpr/mpr/AAEAAQAAAAAAAAzbAAAAJGIwNWUzNzNhLWVjOWQtNGIwZS04YmNhLTAwYmM4MGNjZWE3Ng.jpg" /></a></p>\r\n\r\n<p><a href="http://hmkfarm.com/tuoi-nho-giot/" rel="nofollow noopener" target="_blank">Tưới nhỏ giọt&nbsp;</a>dạng inline hoặc online</p>\r\n\r\n<p>Nếu kh&ocirc;ng hiểu r&otilde; bản chất của hệ thống n&agrave;y, bạn sẽ đầu tư một c&aacute;ch l&atilde;ng ph&iacute; nguồn lực. Bao gồm chi ph&iacute; đầu tư ban đầu như ống ch&iacute;nh, ống phụ, hệ thống d&acirc;y v&agrave; đầu nhỏ giọt cũng như bơm, van v&agrave; thậm ch&iacute; l&agrave; lượng nước ti&ecirc;u thụ cho c&acirc;y.</p>\r\n\r\n<p>Nếu bạn kh&ocirc;ng x&aacute;c định được lượng nước cung cấp cho c&acirc;y trồng h&agrave;ng ng&agrave;y l&agrave; bao nhi&ecirc;u th&igrave; bạn kh&ocirc;ng thể thiết kế hệ thống tưới nhỏ giọt tối ưu được. Đ&uacute;ng vậy, bạn phải t&iacute;nh to&aacute;n cần bơm bao nhi&ecirc;u giờ cho một ng&agrave;y với bơm c&ocirc;ng suất bao nhi&ecirc;u HP&hellip;</p>\r\n\r\n<p>Tất cả điều n&agrave;y đều phụ thuộc v&agrave;o yếu tố đầu ti&ecirc;n, loại c&acirc;y trồng của bạn l&agrave; g&igrave;? C&acirc;y n&agrave;y cần bao nhi&ecirc;u lít nước mỗi ng&agrave;y? Trong từng giai đoạn của c&acirc;y, lưu lượng nước c&oacute; thay đổi kh&ocirc;ng? Để t&iacute;nh được với c&aacute;c loại c&acirc;y trồng n&agrave;y, ch&uacute;ng ta c&oacute; thể tham khảo c&aacute;c chuy&ecirc;n gia về n&ocirc;ng nghiệp, c&aacute;c kỹ sư, nh&agrave; cung cấp giống v&agrave; đương nhi&ecirc;n trong b&agrave;i viết n&agrave;y ch&uacute;ng t&ocirc;i cung cấp cho c&aacute;c bạn một bản phụ lục về c&aacute;c loại c&acirc;y trồng phổ biến m&agrave; tại đ&oacute; c&oacute; t&iacute;nh to&aacute;n chi tiết lượng nước ti&ecirc;u thụ h&agrave;ng ng&agrave;y</p>\r\n\r\n<h3>Phương ph&aacute;p t&iacute;nh lưu lượng nước cho hệ thống&nbsp;<a href="http://hmkfarm.com/tuoi-nho-giot/" rel="nofollow noopener" target="_blank">tưới nhỏ giọt</a></h3>\r\n\r\n<p>C&oacute; rất nhiều phương ph&aacute;p kh&aacute;c nhau, tuy nhi&ecirc;n trong khu&acirc;n khổ b&agrave;i viết ch&uacute;ng t&ocirc;i xin giới thiệu c&aacute;c bạn một phương ph&aacute;p đơn giản v&agrave; dễ hiểu nhất. T&iacute;nh to&aacute;n lượng nước ngược, nghĩa l&agrave; đi từ điểm cuối c&acirc;y trồng bạn cần tưới v&agrave; t&iacute;nh to&aacute;n ngược ra c&aacute;c th&ocirc;ng số cần thiết cho hệ thống đường ống, m&aacute;y bơm để từ đ&oacute; quyết định sử dụng k&iacute;ch thước đường ống v&agrave; m&aacute;y bơm hợp l&yacute;.</p>\r\n\r\n<p>Như đ&atilde; n&ecirc;u tr&ecirc;n, mục ti&ecirc;u ch&iacute;nh của thiết kế n&agrave;y</p>\r\n\r\n<ul>\r\n	<li>Để đạt được hiệu quả sử dụng nước v&agrave; vận chuyển cao hơn.</li>\r\n	<li>Tối ưu h&oacute;a cả chi ph&iacute; ban đầu lẫn chi ph&iacute; vận h&agrave;nh.</li>\r\n	<li>Thiết kế hệ thống hiệu quả l&acirc;u d&agrave;i v&agrave; hiệu quả cao.</li>\r\n	<li>Đ&aacute;p ứng, thoả m&atilde;n c&aacute;c y&ecirc;u cầu của sử dụng</li>\r\n</ul>\r\n\r\n<h3>C&aacute;c yếu tố ảnh hưởng tới thiết kế&nbsp;<a href="http://hmkfarm.com/tuoi-nho-giot/" rel="nofollow noopener" target="_blank">hệ thống tưới nhỏ giọt</a></h3>\r\n\r\n<p>Để c&oacute; 1 bản&nbsp;thiết kế hệ thống&nbsp;<a href="http://hmkfarm.com/tuoi-nho-giot/" rel="nofollow noopener" target="_blank">tưới nhỏ giọt</a>&nbsp;tối ưu, đặc biệt l&agrave; c&aacute;c khu vực trồng c&oacute; diện t&iacute;ch lớn, độ dốc kh&aacute;c nhau ch&uacute;ng ta cần khảo s&aacute;t rất kỹ c&aacute;c yế tố ảnh hưởng tới hệ thống tưới bao gồm:</p>\r\n\r\n<ul>\r\n	<li>Địa h&igrave;nh khu vực trồng, yếu tố n&agrave;y ảnh hưởng kh&aacute; nhiều tới việc thiết kế hệ thống tưới. Tại Việt Nam, địa h&igrave;nh đồi n&uacute;i chiếm tỷ lệ cao nếu việc triển khai hệ thống tưới cần phải t&iacute;nh to&aacute;n độ dốc để c&oacute; thể đi đường ống hợp l&yacute;, vị tr&iacute; bể nước hay khu vực bơm tối ưu nhất.</li>\r\n	<li>Nguồn nước, đ&acirc;y l&agrave; yếu tố then chốt nhất ảnh hưởng tới việc thiết kế tưới. Với c&aacute;c nguồn nước sạch th&igrave; qu&aacute; tr&igrave;nh bơm v&agrave; xử l&yacute; nước sẽ đơn giản hơn so với c&aacute;c khu vực nước lẫn nhiều tạp chất.</li>\r\n	<li>Nguồn điện, do nhu cầu tưới cho c&acirc;y l&agrave; h&agrave;ng ng&agrave;y v&agrave; sử dụng bơm đẩy hoặc bể chứa để tưới do đ&oacute; nguồn điện đủ v&agrave; ổn định l&agrave; rất quan trọng. Với&nbsp;<a href="http://hmkfarm.com/tuoi-nho-giot/" rel="nofollow noopener" target="_blank">hệ thống tưới</a>&nbsp;v&agrave; điều tiết dinh dưỡng tự động từ c&aacute;c chương tr&igrave;nh quản l&yacute; tr&ecirc;n m&aacute;y t&iacute;nh th&igrave; nguồn điện đủ v&agrave; ổn định c&agrave;ng quan trọng hơn nữa. Do đ&oacute;, khi thiết kế hệ thống bạn cần lưu &yacute; vấn đề n&agrave;y để c&oacute; th&ecirc;m nguồn dự ph&ograve;ng nếu cần thiết</li>\r\n</ul>', '<p><img alt="" src="/public/upload/images/product01.PNG" style="height:215px; width:232px" /></p>', NULL, NULL, NULL, NULL, NULL, -1, '', '', '2017-09-25 13:59:02'),
('spray-hose', 'SPRAY HOSE', '<h1><span style="color:#8e44ad">SPRAY HOSE</span></h1>\r\n', '<p><img alt="" src="/public/upload/images/product06.PNG" style="height:203px; width:214px" /></p>\r\n', NULL, NULL, NULL, NULL, NULL, 0, '', '', '2017-09-24 22:44:46'),
('sprinkler-system', 'SPRINKLER SYSTEM', '<p>Chưa c&oacute;</p>\r\n', '<p><img alt="" src="/public/upload/images/product03.PNG" style="height:206px; width:222px" /></p>\r\n', NULL, NULL, NULL, NULL, NULL, 0, '', '', '2017-09-24 22:33:27'),
('tin-tuc', 'Tin tức', '', NULL, NULL, NULL, NULL, NULL, NULL, -1, 'Thi thử ITELS, khóa học luyện nói tiếng anh, luyện nói nhóm 4-5 bạn, luyện nói nhóm 8 bạn, luyện thi ielts', 'Thi thử ITELS, khóa học luyện nói tiếng anh, luyện nói nhóm 4-5 bạn, luyện nói nhóm 8 bạn, luyện thi ielts', '2017-09-20 08:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `common_info`
--

CREATE TABLE `common_info` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(300) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `factory`
--

CREATE TABLE `factory` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `url` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `factory`
--

INSERT INTO `factory` (`id`, `name`, `url`, `status`, `created_date`, `created_by`) VALUES
(2, 'img_5981.jpg', 'img_5981.jpg', 1, '0000-00-00 00:00:00', ''),
(3, 'img-5795.jpg', 'img_5975.jpg', 1, '0000-00-00 00:00:00', ''),
(4, 'img_45591.jpg', 'img_45591.jpg', 1, '2017-04-01 06:58:01', '');

-- --------------------------------------------------------

--
-- Table structure for table `factory_translation`
--

CREATE TABLE `factory_translation` (
  `id` int(11) NOT NULL,
  `factory_id` int(11) NOT NULL,
  `language_slug` varchar(2) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `factory_translation`
--

INSERT INTO `factory_translation` (`id`, `factory_id`, `language_slug`, `name`) VALUES
(1, 1, 'vi', 'Nhà máy số 1'),
(2, 1, 'en', 'Factory No 1'),
(3, 2, 'vi', 'Nhà máy 2'),
(4, 2, 'en', 'Factory No 2');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrators'),
(2, 'members', 'Members');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `chu_dau_tu` text,
  `vi_tri_du_an` text,
  `tien_ich_du_an` text,
  `phuong_thuc_thanh_toan` text,
  `tong_quan_du_an` text,
  `phan_khu_chuc_nang` text,
  `slogan1` text,
  `sub_slogan1` text,
  `slogan2` text,
  `slogan3` text,
  `slogan4` text,
  `phia_dong` text,
  `phia_tay` text,
  `phia_nam` text,
  `phia_bac` text,
  `sub_slogan2` text,
  `image_slogan1` text,
  `image_slogan2` text,
  `image_slogan3` text,
  `image_slogan4` text,
  `item1_slogan1` text,
  `item2_slogan1` text,
  `item3_slogan1` text,
  `item1_slogan3` text,
  `item2_slogan3` text,
  `item3_slogan3` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `chu_dau_tu`, `vi_tri_du_an`, `tien_ich_du_an`, `phuong_thuc_thanh_toan`, `tong_quan_du_an`, `phan_khu_chuc_nang`, `slogan1`, `sub_slogan1`, `slogan2`, `slogan3`, `slogan4`, `phia_dong`, `phia_tay`, `phia_nam`, `phia_bac`, `sub_slogan2`, `image_slogan1`, `image_slogan2`, `image_slogan3`, `image_slogan4`, `item1_slogan1`, `item2_slogan1`, `item3_slogan1`, `item1_slogan3`, `item2_slogan3`, `item3_slogan3`) VALUES
(1, 'Công ty TNHH Siêu Thành làm Chủ đầu tư (Thành viên Tập Đoàn Vietpearl Group)', 'Dự án Hà Đô RiverSide tọa lạc tại 219 đường số 05 Phường xxx, Quận xxx', 'Hồ bơi, phòng tập gym, trung tâm sinh hoạt cộng đồng, trung tâm thương mại, ngân hàng, sân chơi thiếu nhi, khu vực trên của dự án nằm gần với siêu thị Aeon Mall.', 'Với mức giá chỉ từ 700tr/căn, căn hộ dành cho người dân có thu nhập thấp ngân hàng HỖ_TRỢ_VAY_70% tổng giá trị căn hộ với mức lãi suất thấp nhấp thị trường', '<ul>\r\n														<li>Diện tích 8.665m2gồm có 3 blocks nhà cao 20 tầng liền kề nhau.</li>\r\n														<li>1 hầm, trệt 4 tầng thương mại và 16 tầng căn hộ</li>\r\n														<li>Tổng diện tích sàn xây dựng là 50,704,9 m2.</li>\r\n														<li>Quy mô dân số: 1.130 người.</li>\r\n														<li>Tầng cao xây dựng: 20 tầng</li>\r\n														<li>04 tầng thương mại</li>\r\n														<li>16 tầng căn hộ ở với 496 căn hộ</li>\r\n														<li>Diện tích từ 52m2 – 71 m2</li>\r\n														<li>Mật độ xây dựng toàn khu: 32,8%.</li>\r\n														<li>Hệ số sử dụng đất: 5,25</li>\r\n														<li>Diện tích xây dựng: 2.324 m2</li>\r\n													</ul>', '<ul>\r\n													<li>Khu thương mại: 8.468 m2</li>\r\n													<li>Khu để xe: 666 m2</li>\r\n													<li>Khu căn hộ: 257 m2</li>\r\n													<li>Khu cây xanh: 506 m2</li>\r\n													<li>Giao thông: &nbsp;529 m2</li>\r\n												</ul>', 'Hà Đô RiverSide – ĐẲNG CẤP VƯỢT TRỘI TINH HOA HỘI TỤ', '<div class="lead">\r\n<p style="text-align:center"><span style="color:#000080"><strong>TH&Ocirc;NG TIN &ldquo;<span style="color:#ff0000">HOT</span>&rdquo; từ Dự &aacute;n <a href="http://kingswaytower.net" style="color: #000080;">H&agrave; Đ&ocirc; RiverSide</a></strong> </span></p>\r\n\r\n<p style="text-align:center"><span style="color:#0000ff"><span style="color:#000000">Số tiền đặt cọc:</span> <span style="color:#ff0000"><strong><u>20 triệu</u></strong>&nbsp;</span> <span style="color:#000000">chọn trước căn ph&ugrave; hợp nhất </span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#ff00ff"><strong>Đ&atilde; c&oacute; &rdquo; BẢNG GI&Aacute; CH&Iacute;NH THỨC &rdquo; TỪNG CĂN</strong></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#000080">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:#000000">Ưu Ti&ecirc;n chọn ngay căn đẹp từ</span> <span style="color:#ff6600"><em><strong>Chủ đầu tư H&agrave; Đ&ocirc; RiverSide</strong></em></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#000080"><em><u>Hotline:</u></em>&nbsp;<strong><span style="color:#ff0000; font-size:14pt">0911.123 456</span> &ndash; <span style="color:#ff0000; font-size:14pt">0938.123 456</span></strong></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#000000"><span style="color:#008000"><strong>GI&Aacute; TỐT CHỈ </strong></span><strong><span style="color:#008000">15 -&gt;17 Tr (Đ&Atilde; VAT)</span><br />\r\n<span style="color:#008000">ĐĂNG K&Yacute; THAM QUAN NH&Agrave; MẪU NGAY</span></strong></span></p>\r\n\r\n<p style="text-align:center"><a href="http://hadoriverside.org/" style="color: #71b100">H&agrave; Đ&ocirc; RiverSide</a> &ndash; Sở hữu vị tr&iacute; &rdquo; V&agrave;ng&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n', 'Vị trí ”Vàng” Căn Hộ Hà Đô Riverside', 'Mặt bằng ” tốt nhất” cho Căn hộ Hà Đô Riverside', 'Nhà Mẫu Căn hộ Hà Đô Riverside ', 'Giáp đường qui hoạch, kế cận khu dân cư hiện hữu P. Thủ dầu 1', 'Giáp đường qui hoạch, kế cận khu dân cư hiện hữu P. Bình Hưng Hòa.', 'Giáp đường qui hoạch, kế cận khu dân cư hiện hữu P. Bình Hưng Hòa.', 'Giáp đường qui hoạch, kế cận khu dân cư hiện hữu P. Bình Hưng Hòa.', '<p style="text-align:center"><em><strong><a class="green-hado" href="http://hadoriverside.org/">&nbsp;Căn h&ocirc;̣ H&agrave; Đ&ocirc; Riverside </a></strong></em> tọa lạc tại S&ocirc;́ <span style="color:#ff0000; font-size:18pt">234</span>&nbsp;đường s&ocirc;́ <span style="color:#ff0000; font-size:18pt">06</span> Phường Bình Hưng Hòa, Q.Bình T&acirc;n. <a class="green-hado" href="http://hadoriverside.org/vitri">Vị trí </a>này được coi là vị trí <span style="color:#0000ff">phong thủy vượng trạch</span> nh&acirc;́t nhì qu&acirc;̣n 8.</p>\r\n', '<p><img alt="dự án hà đô riverside" src="/public/kcfinder/upload/images/can-ho-ha-do-riverside.jpg" /></p>\r\n', '<p><img alt="du an ha do riverside" class="img-thumbnail" src="/public/kcfinder/upload/images/hinh-anh-thuc-te-can-ho-homyland-2-quan-2-02.jpg" /></p>\r\n', '<p><img alt="can ho ha do riverside" class="img-thumbnail" src="/public/kcfinder/upload/images/hinh-anh-thuc-te-can-ho-homyland-2-quan-2-20(1).jpg" /></p>\r\n', '<p><img alt="can ho ha do riverside" class="img-thumbnail" src="/public/kcfinder/upload/images/trai-nghiem-he-thong-nha-thong-minh-tai-can-ho-ha-do-riverside-355x440.jpg" style="height:440px; width:355px" /></p>\r\n', '<h3><a href="http://hadoriverside.org"><span style="color:#2980b9">Chủ đầu tư dự &aacute;n h&agrave; đ&ocirc; riverside</span></a></h3>\r\n\r\n<p>C&ocirc;ng ty TNHH Si&ecirc;u Th&agrave;nh l&agrave;m Chủ đầu tư (Th&agrave;nh vi&ecirc;n Tập Đo&agrave;n Vietpearl Group)</p>\r\n', '<h3><a href="http://hadoriverside.org/tin-tuc/3-phoi-canh-nha-mau-du-an-ha-do-riverside.html"><span style="color:#2980b9">Tổng quan&nbsp;dự &aacute;n h&agrave; đ&ocirc; riverside</span></a></h3>\r\n\r\n<div>\r\n<ul>\r\n	<li>Diện t&iacute;ch 8.665m2gồm c&oacute; 3 blocks nh&agrave; cao 20 tầng liền kề nhau.</li>\r\n	<li>1 hầm, trệt 4 tầng thương mại v&agrave; 16 tầng căn hộ</li>\r\n	<li>Tổng diện t&iacute;ch s&agrave;n x&acirc;y dựng l&agrave; 50,704,9 m2.</li>\r\n	<li>Quy m&ocirc; d&acirc;n số: 1.130 người.</li>\r\n	<li>Tầng cao x&acirc;y dựng: 20 tầng</li>\r\n	<li>04 tầng thương mại</li>\r\n	<li>16 tầng căn hộ ở với 496 căn hộ</li>\r\n	<li>Diện t&iacute;ch từ 52m2 &ndash; 71 m2</li>\r\n	<li>Mật độ x&acirc;y dựng to&agrave;n khu: 32,8%.</li>\r\n	<li>Hệ số sử dụng đất: 5,25</li>\r\n	<li>Diện t&iacute;ch x&acirc;y dựng: 2.324 m2</li>\r\n</ul>\r\n</div>\r\n', '<h3>Ph&acirc;n khu chức năng</h3>\r\n\r\n<ul>\r\n	<li>Khu thương mại: 8.468 m2</li>\r\n	<li>Khu để xe: 666 m2</li>\r\n	<li>Khu căn hộ: 257 m2</li>\r\n	<li>Khu c&acirc;y xanh: 506 m2</li>\r\n	<li>Giao th&ocirc;ng: &nbsp;529 m2</li>\r\n</ul>\r\n', '<h3>Chủ đầu tư</h3>\r\n\r\n<p>C&ocirc;ng ty TNHH Si&ecirc;u Th&agrave;nh l&agrave;m Chủ đầu tư (Th&agrave;nh vi&ecirc;n Tập Đo&agrave;n Vietpearl Group)</p>\r\n', '<ul>\r\n	<li>Diện t&iacute;ch 8.665m2gồm c&oacute; 3 blocks nh&agrave; cao 20 tầng liền kề nhau.</li>\r\n	<li>1 hầm, trệt 4 tầng thương mại v&agrave; 16 tầng căn hộ</li>\r\n	<li>Tổng diện t&iacute;ch s&agrave;n x&acirc;y dựng l&agrave; 50,704,9 m2.</li>\r\n	<li>Quy m&ocirc; d&acirc;n số: 1.130 người.</li>\r\n	<li>Tầng cao x&acirc;y dựng: 20 tầng</li>\r\n	<li>04 tầng thương mại</li>\r\n	<li>16 tầng căn hộ ở với 496 căn hộ</li>\r\n	<li>Diện t&iacute;ch từ 52m2 &ndash; 71 m2</li>\r\n	<li>Mật độ x&acirc;y dựng to&agrave;n khu: 32,8%.</li>\r\n	<li>Hệ số sử dụng đất: 5,25</li>\r\n	<li>Diện t&iacute;ch x&acirc;y dựng: 2.324 m2</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Khu thương mại: 8.468 m2</li>\r\n	<li>Khu để xe: 666 m2</li>\r\n	<li>Khu căn hộ: 257 m2</li>\r\n	<li>Khu c&acirc;y xanh: 506 m2</li>\r\n	<li>Giao th&ocirc;ng: &nbsp;529 m2</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language_name` varchar(100) NOT NULL,
  `slug` varchar(10) NOT NULL,
  `language_directory` varchar(100) NOT NULL,
  `language_code` varchar(20) DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language_name`, `slug`, `language_directory`, `language_code`, `default`) VALUES
(8, 'English', 'en', 'english', 'en_US', 0),
(2, 'Vietnamese', 'vi', 'vietnamese', 'vi_VI', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `short_content` text NOT NULL,
  `content` text NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `language_slug` varchar(2) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `short_content`, `content`, `keyword`, `meta_description`, `image`, `facebook`, `language_slug`, `modified_date`, `status`) VALUES
(7, 'Tiến độ Son Tra Ocean View tại đà nẵng', 'Tiến độ Son Tra Ocean View tại đà nẵng', '<p>Tiến độ Son Tra Ocean View tại đ&agrave; nẵng</p>\r\n\r\n<p><img alt="" src="/public/upload/images/topic2.jpg" style="height:200px; width:200px" /></p>\r\n', 'Tiến độ Son Tra Ocean View tại đà nẵng', 'Tiến độ Son Tra Ocean View tại đà nẵng', '<p><img alt="" src="/public/upload/images/d2bb1e_f2e26a27e2fa4184be4c43117b689fa4.jpg" style="height:544px; width:1343px" /></p>\r\n', 'https://www.facebook.com/nongnghieptahaco/posts/836934653111400', '', '2017-09-25 09:16:23', 1),
(13, 'Going off topic = No high score?', 'Trong IELTS Speaking, chắc hẳn nhiều thí sinh sẽ phải đối mặt với những bộ mặt “không cảm xúc” của các vị giám khảo.', '<p>Trong IELTS Speaking, chắc hẳn nhiều th&iacute; sinh sẽ phải đối mặt với những bộ mặt &ldquo;kh&ocirc;ng cảm x&uacute;c&rdquo; của c&aacute;c vị gi&aacute;m khảo. Nếu c&aacute;c gi&aacute;m khảo kh&ocirc;ng tỏ th&aacute;i độ g&igrave; với phần thi của c&aacute;c bạn, liệu điều đ&oacute; c&oacute; nghĩa l&agrave; bạn trả lời kh&ocirc;ng tốt hoặc sẽ bị điểm thấp hay kh&ocirc;ng?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder="0" scrolling="no" src="https://www.youtube.com/embed/7gqL53DvDz0"></iframe></p>\r\n', '', '', '<p><img alt="" src="/public/upload/images/logo.jpg" style="height:280px; width:280px" /></p>\r\n', NULL, '', '2017-09-24 14:40:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `type` varchar(50) NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `short_content` text CHARACTER SET utf8,
  `seo` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `type`, `content`, `short_content`, `seo`, `created_date`, `created_by`) VALUES
(1, 'VỊ TRÍ ” VÀNG” KẾT NỐI NHANH ĐẾN TRUNG TÂM THÀNH PHỐ HCM', 'vitri', '<p><cite><span style="color:#c0392b"><span style="font-size:28px"><img alt="" src="/public/kcfinder/upload/images/hinh-anh-thuc-te-can-ho-homyland-2-quan-2-20(1).jpg" style="height:500px; width:1160px" />Vị trí căn h&ocirc;̣ H&agrave; Đ&ocirc; RiverSide Qu&acirc;̣n 10</span></span></cite></p>\r\n\r\n<p><img alt="căn hộ hà đô riverside" src="/public/kcfinder/upload/images/can_ho_ha_do_riverside.jpg" style="height:541px; width:1024px" /></p>\r\n', '', '', '2017-04-12', ''),
(2, 'Tiện ích', 'tienich', '<p><img alt="" src="/public/kcfinder/upload/images/hinh-anh-thuc-te-can-ho-homyland-2-quan-2-20.jpg" style="height:440px; width:355px" /></p>\r\n', '', '', '2017-04-07', ''),
(3, 'Mặt bằng', 'matbang', '<p><img alt="" src="/public/kcfinder/upload/images/matbanghadoriverside.jpg" style="height:1205px; width:1600px" /></p>\r\n', '', '', '2017-04-12', ''),
(4, 'Căn hộ mẫu', 'canhomau', '<p><img alt="" src="/public/kcfinder/upload/images/nhamau_11.png" style="height:469px; width:900px" /></p>\r\n', NULL, NULL, '2017-04-07', NULL),
(5, 'Thanh toán', 'thanhtoan', '<p>sadf</p>\r\n', NULL, NULL, '2017-04-04', NULL),
(6, 'Liên Hệ', 'lienhe', '<p>Mọi th&ocirc;ng tin chi tiết về dự &aacute;n&nbsp;Căn Hộ <span style="color:#c0392b"><em><strong>H&agrave; Đ&ocirc; RiverSide</strong></em></span>&nbsp; Qu&yacute; Kh&aacute;ch H&agrave;ng vui l&ograve;ng li&ecirc;n hệ trực tiếp để nhận th&ocirc;ng tin ch&iacute;nh x&aacute;c nhất!</p>\r\n\r\n<p><strong>Hotline:</strong>&nbsp;<strong>0911.xxx xxxx</strong><br />\r\n<strong>Email:</strong>&nbsp;<a href="mailto:canhohomyland03@gmail.com">acbd@gmail.com</a><br />\r\n<strong>Website:</strong>&nbsp;<a href="http://hadoriverside.org"><em>www.hadoriverside.org</em></a></p>\r\n\r\n<p><img alt="" src="/hadoriverside/public/kcfinder/upload/images/logo.png" style="height:48px; width:210px" /></p>\r\n\r\n<p>Địa chỉ dự &aacute;n: Số 219 Đường số 05, Phường.B&igrave;nh Hưng H&ograve;a, B&igrave;nh T&acirc;n</p>\r\n\r\n<p>Ph&ograve;ng giao dịch chủ đầu tư: 327 Đường số 05, Phường B&igrave;nh Hưng H&ograve;a, Q.B&igrave;nh T&acirc;n</p>\r\n\r\n<p>Trụ sở B&igrave;nh Thạnh: 54A X&ocirc; Viết Nghệ Tĩnh, P.19, Q.B&igrave;nh Thạnh</p>\r\n\r\n<p>C&ocirc;ng ty cổ phần đầu tư Khương Thịnh h&acirc;n hạnh l&agrave; đơn vị ph&acirc;n phối độc quyền căn hộ H&agrave; Đ&ocirc; Raiver Si =))</p>', NULL, NULL, '2017-04-06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `category_id` varchar(100) NOT NULL,
  `image_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description2` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `category_id`, `image_name`, `image`, `link`, `description`, `description2`, `modified_date`, `status`) VALUES
(1, '0', '/public/upload/images/tahaco-banner-trang-chu-4.jpg', '<p><img alt="" src="/public/upload/images/tahaco-banner-trang-chu-4.jpg" /></p>\r\n', '', 'GIẢI PHÁP CHO TƯỜI TIÊU HIỆU QUẢ HƠN', 'CÔNG NGHỆ TƯỚI NHỎ GIỌT', '2017-09-24 10:00:39', 1),
(19, '', '/public/upload/images/d2bb1e_f2e26a27e2fa4184be4c43117b689fa4.jpg', '<p><img alt="" src="/public/upload/images/d2bb1e_f2e26a27e2fa4184be4c43117b689fa4.jpg" /></p>\r\n', 'https://www.facebook.com/nongnghieptahaco/posts/836934653111400', 'TƯỚI TỰ ĐỘNG NÂNG CAO NĂNG SUẤT', 'CÔNG NGHỆ TƯỚI NHỎ GIỌT', '2017-09-25 09:17:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$06$WlemzmFke/8WR4CYUF8AfeJ3spy721g9wbglozzS1wZ/ZEZJLwF6W', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1506325250, 1, 'Admin', 'istrator', 'ADMIN', '1'),
(2, '172.21.6.196', 'minhsu', '$2y$08$phcuMU8NslJcMko/DYfjPOWR6yoYbqowHo56WZxkaHBeZYxENcKei', NULL, 'minhsu57@gmail.com', NULL, NULL, NULL, NULL, 1490858515, 1506216532, 1, 'lê', 'minh sự', 'pouchen việt nam', '0936777170'),
(3, '::1', 'hoangmap', '$2y$08$tzd1Fpozj8E.ONtfRYgcGexo5Pgs7ZvRqcaDokQy1y5MiRdc2SPd2', NULL, 'hoangmap@gmail.com', NULL, NULL, NULL, 'iCT7qF6F4VB1HAwnU2q5we', 1491460663, 1494227306, 1, 'Lê', 'Hoàng', 'chưa pik', '093947575');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(3, 1, 1),
(4, 2, 1),
(5, 2, 2),
(7, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE `website` (
  `id` int(11) NOT NULL,
  `website_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `footer_content_1` text NOT NULL,
  `footer_content_2` text,
  `facebook` varchar(255) NOT NULL,
  `google_plus` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `google_map` varchar(255) NOT NULL,
  `hotline` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ad_video` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `admin_email` varchar(200) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text,
  `favicon` text NOT NULL,
  `contact_email` varchar(200) NOT NULL,
  `modified_by` varchar(200) NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `website`
--

INSERT INTO `website` (`id`, `website_name`, `title`, `footer_content_1`, `footer_content_2`, `facebook`, `google_plus`, `phone`, `address`, `google_map`, `hotline`, `youtube`, `email`, `ad_video`, `status`, `admin_email`, `meta_keyword`, `meta_description`, `favicon`, `contact_email`, `modified_by`, `modified_date`) VALUES
(2, 'TAHACO.TECH', 'Nông nghiệp TAHACO', '<p><span style="font-size:20px"><strong>TH&Ocirc;NG TIN LI&Ecirc;N HỆ</strong></span></p>\r\n\r\n<p><strong>Địa chỉ :&nbsp;</strong>98 Th&ocirc;n 1, Đắk Buk So, Tuy Đức, Đak N&ocirc;ng</p>\r\n\r\n<p><strong>Điện thoại</strong> :&nbsp;097 141 91 81</p>\r\n\r\n<p><strong>Email :&nbsp;ntvu.bmp@gmail.com</strong></p>\r\n\r\n<p>&nbsp;</p>', '<p><span style="font-size:20px"><strong>TH&Ocirc;NG TIN</strong></span></p>\r\n\r\n<div class="menu-footer-menu-container">\r\n<ul>\r\n	<li><a href="http://tahaco.tech">N&Ocirc;NG NGHIỆP TAHACO</a></li>\r\n	<li><a href="http://tahaco.tech/san-pham">Sản phẩm</a></li>\r\n	<li><a href="http://tahaco.tech/lien-he">Li&ecirc;n hệ</a></li>\r\n	<li><a href="http://tahaco.tech/tin-tuc">Tin tức</a></li>\r\n</ul>\r\n</div>', 'https://www.facebook.com/pg/nongnghieptahaco', 'https://plus.google.com/105439840244004612792', '0971.41.91.81', '98 Thôn 1, Đắk Buk So, Tuy Đức, Đak Nông', '10.789931, 106.693402', '0971.41.91.81', 'https://www.youtube.com', 'ntvu.bmp@gmail.com', '<p><strong>VIDEO</strong></p>\r\n\r\n<p><iframe frameborder="0" scrolling="no" src="https://www.youtube.com/embed/CooZ16jSflQ"></iframe></p>\r\n\r\n<p><strong>KEYWORD</strong></p>\r\n\r\n<p><span style="font-size:16px"><a href="http://tahaco.tech"><span style="color:#c0392b">Hệ thống tưới tự động</span></a>, <a href="http://tahaco.tech"><span style="color:#27ae60">tưới nhỏ giọt</span></a>, <a href="http://tahaco.tech"><span style="color:#8e44ad">n&ocirc;ng nghiệp</span></a></span></p>\r\n', 1, 'ntvu.bmp@gmail.com', 'Hệ thống tưới tự động, tưới nhỏ giọt, nông nghiệp', 'Hệ thống tưới tự động, tưới nhỏ giọt, nông nghiệp', '', 'avenir.ro@gmail.com', '', '2017-09-25 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_routes`
--
ALTER TABLE `app_routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banned`
--
ALTER TABLE `banned`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `common_info`
--
ALTER TABLE `common_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factory`
--
ALTER TABLE `factory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factory_translation`
--
ALTER TABLE `factory_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_routes`
--
ALTER TABLE `app_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banned`
--
ALTER TABLE `banned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `common_info`
--
ALTER TABLE `common_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `factory`
--
ALTER TABLE `factory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `factory_translation`
--
ALTER TABLE `factory_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
