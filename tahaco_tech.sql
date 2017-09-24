-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 24, 2017 lúc 05:52 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tahaco.tech`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `app_routes`
--

CREATE TABLE `app_routes` (
  `id` int(11) NOT NULL,
  `slug` varchar(192) NOT NULL,
  `controller` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banned`
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
-- Đang đổ dữ liệu cho bảng `banned`
--

INSERT INTO `banned` (`id`, `ip`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(2, '100.10.25.40', '2015-05-19 16:37:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(3, '91.220.13.30', '2015-05-19 16:38:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(4, '172.21.13.249', '2017-03-15 09:33:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
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
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `content`, `content2`, `content3`, `content4`, `url`, `parent`, `level`, `meta_keyword`, `meta_description`, `modified_date`) VALUES
('drip-fittings', 'DRIP FITTINGS', '<p>Chưa c&oacute;</p>\r\n', '<p><img alt=\"\" src=\"/public/upload/images/product02.PNG\" style=\"height:206px; width:222px\" /></p>\r\n', NULL, NULL, NULL, NULL, NULL, 0, '', '', '2017-09-24 22:33:41'),
('drip-pipes', 'DRIP PIPES', '<h1><span style=\"color:#8e44ad\">DRIP PIPES</span></h1>\r\n', '<p><img alt=\"\" src=\"/public/upload/images/product01.PNG\" style=\"height:215px; width:232px\" /></p>\r\n', NULL, NULL, NULL, NULL, NULL, 0, '', '', '2017-09-24 22:34:01'),
('filter-system', 'FILTER SYSTEM', '<h1><span style=\"color:#2980b9\">FILTER SYSTEM</span></h1>\r\n', '<p><img alt=\"\" src=\"/public/upload/images/product05.PNG\" style=\"height:204px; width:219px\" /></p>\r\n', NULL, NULL, NULL, NULL, NULL, 0, '', '', '2017-09-24 22:44:02'),
('gioi-thieu', 'Giới thiệu', '<p><span style=\"color:#9b59b6\"><span style=\"font-size:22px\">Đ&acirc;y l&agrave; giới thiệu</span></span></p>\r\n', '', '', '', NULL, NULL, '', -1, NULL, NULL, '2017-09-04 03:01:04'),
('home', 'Home', '', NULL, NULL, NULL, NULL, NULL, NULL, -1, 'Thi thử ITELS, khóa học luyện nói tiếng anh, luyện nói nhóm 4-5 bạn, luyện nói nhóm 8 bạn, luyện thi ielts', 'Thi thử ITELS, khóa học luyện nói tiếng anh, luyện nói nhóm 4-5 bạn, luyện nói nhóm 8 bạn, luyện thi ielts', '2017-09-15 19:21:21'),
('lien-he', 'Liên hệ', '<p><span style=\"color:#2980b9\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,serif\"><span style=\"font-family:Calibri,serif\">Nếu bạn c&oacute; thắc mắc về chương tr&igrave;nh học xin li&ecirc;n hệ qua:</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#c0392b\"><strong>Ehouse Coffee</strong></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,serif\">Facebook: <a href=\"https://www.facebook.com/Ehouse.hcmc\" target=\"_blank\"><span style=\"color:#2980b9\">https://www.facebook.com/Ehouse.hcmc</span></a></span></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,serif\">Tel: <span style=\"color:#2980b9\"><strong>028 3939 0811</strong></span></span></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,serif\">Hotline: <span style=\"color:#2980b9\"><strong>0906 911 022</strong></span></span></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,serif\">Địa chỉ: <span style=\"color:#27ae60\"><strong>7 Thạch Thị Thanh, Phường T&acirc;n Định, Quận 1, HCM</strong></span></span></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,serif\">Giờ l&agrave;m việc: <span style=\"color:#f39c12\"><strong>Thứ 2 &ndash; Chủ nhật (9:00 &ndash; 21:00)</strong></span></span></span></span></p>\r\n\r\n<p><span style=\"color:#000000\">Hoặc gửi th&ocirc;ng tin cho EHouse để nhận được những hỗ trợ tốt nhất</span></p>\r\n', NULL, NULL, NULL, NULL, NULL, NULL, -1, 'ehouse coffee, luyện nói tiếng anh', 'ehouse coffee, luyện nói tiếng anh', '2017-09-15 19:21:14'),
('login', 'login', '', NULL, NULL, NULL, NULL, NULL, NULL, -1, 'ehouse coffee, luyện nói tiếng anh', 'ehouse coffee, luyện nói tiếng anh', '2017-09-15 19:21:02'),
('pe-fittings', 'PE FITTINGS', '', '<p><img alt=\"\" src=\"/public/upload/images/product04.PNG\" style=\"height:213px; width:227px\" /></p>\r\n', NULL, NULL, NULL, NULL, NULL, 0, '', '', '2017-09-24 22:43:27'),
('spray-hose', 'SPRAY HOSE', '<h1><span style=\"color:#8e44ad\">SPRAY HOSE</span></h1>\r\n', '<p><img alt=\"\" src=\"/public/upload/images/product06.PNG\" style=\"height:203px; width:214px\" /></p>\r\n', NULL, NULL, NULL, NULL, NULL, 0, '', '', '2017-09-24 22:44:46'),
('sprinkler-system', 'SPRINKLER SYSTEM', '<p>Chưa c&oacute;</p>\r\n', '<p><img alt=\"\" src=\"/public/upload/images/product03.PNG\" style=\"height:206px; width:222px\" /></p>\r\n', NULL, NULL, NULL, NULL, NULL, 0, '', '', '2017-09-24 22:33:27'),
('tin-tuc', 'Tin tức', '', NULL, NULL, NULL, NULL, NULL, NULL, -1, 'Thi thử ITELS, khóa học luyện nói tiếng anh, luyện nói nhóm 4-5 bạn, luyện nói nhóm 8 bạn, luyện thi ielts', 'Thi thử ITELS, khóa học luyện nói tiếng anh, luyện nói nhóm 4-5 bạn, luyện nói nhóm 8 bạn, luyện thi ielts', '2017-09-20 08:59:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `common_info`
--

CREATE TABLE `common_info` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(300) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `short_content` text CHARACTER SET utf8 NOT NULL,
  `image` text CHARACTER SET utf8 NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `deposits`
--

INSERT INTO `deposits` (`id`, `title`, `content`, `short_content`, `image`, `created_by`, `created_date`, `status`) VALUES
(2, 'CẦN SAN NHƯỢNG LẠI CĂN HỘ HOMYLAND 2, DIỆN TÍCH 106M2, TẦNG 12, GIÁ 2,5 TỶ', '<p>&ndash; Căn hộ nằm tại số 307 Nguyễn Duy Trinh quận 2. Tới quận 1 chỉ 10p theo đường đại lộ Mai Ch&iacute; Thọ qua Hầm Thủ Thi&ecirc;m<br />\r\n&ndash; Tiện &iacute;ch cao cấp: Hồ bơi, gym, spa, &hellip;. Trường học mẫu gi&aacute;o, cấp 1,2,3, &hellip; Nh&agrave; h&agrave;ng, si&ecirc;u thị, trung t&acirc;m mua sắm.<br />\r\n&ndash; Căn hộ thiết kế phong c&aacute;ch Singapore sang trọng, cao cấp.<br />\r\n&ndash;&nbsp;Diện t&iacute;ch 106 m2, tầng 12<br />\r\n&ndash; Gi&aacute; 2,5 tỷ c&oacute; thương lượng cho người thiện ch&iacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"/public/kcfinder/upload/images/hinh-anh-thuc-te-can-ho-homyland-2-quan-2-02.jpg\" style=\"float:left; height:599px; width:800px\" /></p>\r\n\r\n<p style=\"text-align:center\">H&igrave;nh ảnh thực tế căn hộ Homyland 2</p>\r\n', 'Căn hộ nằm tại số 307 Nguyễn Duy Trinh quận 2. Tới quận 1 chỉ 10p theo đường đại lộ Mai Chí Thọ qua Hầm Thủ Thiêm', '', '', '2017-04-11 11:38:30', 1),
(3, 'DO ĐI NƯỚC NGOÀI NÊN CẦN BÁN CĂN HỘ HOMYLAND 2 QUẬN 2, TẦNG 8, DIỆN TÍCH 77M2, GIÁ 2 TỶ', '<p><strong>Cần b&aacute;n lại căn hộ Homyland 2 quận 2, địa chỉ 307 Nguyễn Duy Trinh</strong></p>\r\n\r\n<p>&ndash; Diện t&iacute;ch 77m2, 2 ph&ograve;ng ngủ</p>\r\n\r\n<p>&ndash; Trang bị full nội thất cao cấp</p>\r\n\r\n<p>&ndash; Hồ bơi, si&ecirc;u thị Maximaak, Vincom tầng trệt</p>\r\n\r\n<p>&ndash; Dự &aacute;n gần bệnh viện, nh&agrave; trẻ, trường học, si&ecirc;u thị, chợ.</p>\r\n\r\n<p>&ndash; C&oacute; c&ocirc;ng vi&ecirc;n ven s&ocirc;ng rất tho&aacute;ng m&aacute;t</p>\r\n\r\n<p>&ndash; Gi&aacute; 2 tỷ</p>\r\n\r\n<p>&ndash; Li&ecirc;n hệ xem nh&agrave; : 0911 9999 62</p>\r\n\r\n<p><img alt=\"\" src=\"/public/kcfinder/upload/images/hinh-anh-thuc-te-can-ho-homyland-2-quan-2-20(1).jpg\" style=\"height:750px; width:750px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'DO ĐI NƯỚC NGOÀI NÊN CẦN BÁN CĂN HỘ HOMYLAND 2 QUẬN 2, TẦNG 8, DIỆN TÍCH 77M2, GIÁ 2 TỶ', '', '', '2017-04-11 11:38:19', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `factory`
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
-- Đang đổ dữ liệu cho bảng `factory`
--

INSERT INTO `factory` (`id`, `name`, `url`, `status`, `created_date`, `created_by`) VALUES
(2, 'img_5981.jpg', 'img_5981.jpg', 1, '0000-00-00 00:00:00', ''),
(3, 'img-5795.jpg', 'img_5975.jpg', 1, '0000-00-00 00:00:00', ''),
(4, 'img_45591.jpg', 'img_45591.jpg', 1, '2017-04-01 06:58:01', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `factory_translation`
--

CREATE TABLE `factory_translation` (
  `id` int(11) NOT NULL,
  `factory_id` int(11) NOT NULL,
  `language_slug` varchar(2) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `factory_translation`
--

INSERT INTO `factory_translation` (`id`, `factory_id`, `language_slug`, `name`) VALUES
(1, 1, 'vi', 'Nhà máy số 1'),
(2, 1, 'en', 'Factory No 1'),
(3, 2, 'vi', 'Nhà máy 2'),
(4, 2, 'en', 'Factory No 2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrators'),
(2, 'members', 'Members');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home`
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
-- Đang đổ dữ liệu cho bảng `home`
--

INSERT INTO `home` (`id`, `chu_dau_tu`, `vi_tri_du_an`, `tien_ich_du_an`, `phuong_thuc_thanh_toan`, `tong_quan_du_an`, `phan_khu_chuc_nang`, `slogan1`, `sub_slogan1`, `slogan2`, `slogan3`, `slogan4`, `phia_dong`, `phia_tay`, `phia_nam`, `phia_bac`, `sub_slogan2`, `image_slogan1`, `image_slogan2`, `image_slogan3`, `image_slogan4`, `item1_slogan1`, `item2_slogan1`, `item3_slogan1`, `item1_slogan3`, `item2_slogan3`, `item3_slogan3`) VALUES
(1, 'Công ty TNHH Siêu Thành làm Chủ đầu tư (Thành viên Tập Đoàn Vietpearl Group)', 'Dự án Hà Đô RiverSide tọa lạc tại 219 đường số 05 Phường xxx, Quận xxx', 'Hồ bơi, phòng tập gym, trung tâm sinh hoạt cộng đồng, trung tâm thương mại, ngân hàng, sân chơi thiếu nhi, khu vực trên của dự án nằm gần với siêu thị Aeon Mall.', 'Với mức giá chỉ từ 700tr/căn, căn hộ dành cho người dân có thu nhập thấp ngân hàng HỖ_TRỢ_VAY_70% tổng giá trị căn hộ với mức lãi suất thấp nhấp thị trường', '<ul>\r\n														<li>Diện tích 8.665m2gồm có 3 blocks nhà cao 20 tầng liền kề nhau.</li>\r\n														<li>1 hầm, trệt 4 tầng thương mại và 16 tầng căn hộ</li>\r\n														<li>Tổng diện tích sàn xây dựng là 50,704,9 m2.</li>\r\n														<li>Quy mô dân số: 1.130 người.</li>\r\n														<li>Tầng cao xây dựng: 20 tầng</li>\r\n														<li>04 tầng thương mại</li>\r\n														<li>16 tầng căn hộ ở với 496 căn hộ</li>\r\n														<li>Diện tích từ 52m2 – 71 m2</li>\r\n														<li>Mật độ xây dựng toàn khu: 32,8%.</li>\r\n														<li>Hệ số sử dụng đất: 5,25</li>\r\n														<li>Diện tích xây dựng: 2.324 m2</li>\r\n													</ul>', '<ul>\r\n													<li>Khu thương mại: 8.468 m2</li>\r\n													<li>Khu để xe: 666 m2</li>\r\n													<li>Khu căn hộ: 257 m2</li>\r\n													<li>Khu cây xanh: 506 m2</li>\r\n													<li>Giao thông: &nbsp;529 m2</li>\r\n												</ul>', 'Hà Đô RiverSide – ĐẲNG CẤP VƯỢT TRỘI TINH HOA HỘI TỤ', '<div class=\"lead\">\r\n<p style=\"text-align:center\"><span style=\"color:#000080\"><strong>TH&Ocirc;NG TIN &ldquo;<span style=\"color:#ff0000\">HOT</span>&rdquo; từ Dự &aacute;n <a href=\"http://kingswaytower.net\" style=\"color: #000080;\">H&agrave; Đ&ocirc; RiverSide</a></strong> </span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#0000ff\"><span style=\"color:#000000\">Số tiền đặt cọc:</span> <span style=\"color:#ff0000\"><strong><u>20 triệu</u></strong>&nbsp;</span> <span style=\"color:#000000\">chọn trước căn ph&ugrave; hợp nhất </span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#ff00ff\"><strong>Đ&atilde; c&oacute; &rdquo; BẢNG GI&Aacute; CH&Iacute;NH THỨC &rdquo; TỪNG CĂN</strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000080\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"color:#000000\">Ưu Ti&ecirc;n chọn ngay căn đẹp từ</span> <span style=\"color:#ff6600\"><em><strong>Chủ đầu tư H&agrave; Đ&ocirc; RiverSide</strong></em></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000080\"><em><u>Hotline:</u></em>&nbsp;<strong><span style=\"color:#ff0000; font-size:14pt\">0911.123 456</span> &ndash; <span style=\"color:#ff0000; font-size:14pt\">0938.123 456</span></strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"color:#008000\"><strong>GI&Aacute; TỐT CHỈ </strong></span><strong><span style=\"color:#008000\">15 -&gt;17 Tr (Đ&Atilde; VAT)</span><br />\r\n<span style=\"color:#008000\">ĐĂNG K&Yacute; THAM QUAN NH&Agrave; MẪU NGAY</span></strong></span></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://hadoriverside.org/\" style=\"color: #71b100\">H&agrave; Đ&ocirc; RiverSide</a> &ndash; Sở hữu vị tr&iacute; &rdquo; V&agrave;ng&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n', 'Vị trí ”Vàng” Căn Hộ Hà Đô Riverside', 'Mặt bằng ” tốt nhất” cho Căn hộ Hà Đô Riverside', 'Nhà Mẫu Căn hộ Hà Đô Riverside ', 'Giáp đường qui hoạch, kế cận khu dân cư hiện hữu P. Thủ dầu 1', 'Giáp đường qui hoạch, kế cận khu dân cư hiện hữu P. Bình Hưng Hòa.', 'Giáp đường qui hoạch, kế cận khu dân cư hiện hữu P. Bình Hưng Hòa.', 'Giáp đường qui hoạch, kế cận khu dân cư hiện hữu P. Bình Hưng Hòa.', '<p style=\"text-align:center\"><em><strong><a class=\"green-hado\" href=\"http://hadoriverside.org/\">&nbsp;Căn h&ocirc;̣ H&agrave; Đ&ocirc; Riverside </a></strong></em> tọa lạc tại S&ocirc;́ <span style=\"color:#ff0000; font-size:18pt\">234</span>&nbsp;đường s&ocirc;́ <span style=\"color:#ff0000; font-size:18pt\">06</span> Phường Bình Hưng Hòa, Q.Bình T&acirc;n. <a class=\"green-hado\" href=\"http://hadoriverside.org/vitri\">Vị trí </a>này được coi là vị trí <span style=\"color:#0000ff\">phong thủy vượng trạch</span> nh&acirc;́t nhì qu&acirc;̣n 8.</p>\r\n', '<p><img alt=\"dự án hà đô riverside\" src=\"/public/kcfinder/upload/images/can-ho-ha-do-riverside.jpg\" /></p>\r\n', '<p><img alt=\"du an ha do riverside\" class=\"img-thumbnail\" src=\"/public/kcfinder/upload/images/hinh-anh-thuc-te-can-ho-homyland-2-quan-2-02.jpg\" /></p>\r\n', '<p><img alt=\"can ho ha do riverside\" class=\"img-thumbnail\" src=\"/public/kcfinder/upload/images/hinh-anh-thuc-te-can-ho-homyland-2-quan-2-20(1).jpg\" /></p>\r\n', '<p><img alt=\"can ho ha do riverside\" class=\"img-thumbnail\" src=\"/public/kcfinder/upload/images/trai-nghiem-he-thong-nha-thong-minh-tai-can-ho-ha-do-riverside-355x440.jpg\" style=\"height:440px; width:355px\" /></p>\r\n', '<h3><a href=\"http://hadoriverside.org\"><span style=\"color:#2980b9\">Chủ đầu tư dự &aacute;n h&agrave; đ&ocirc; riverside</span></a></h3>\r\n\r\n<p>C&ocirc;ng ty TNHH Si&ecirc;u Th&agrave;nh l&agrave;m Chủ đầu tư (Th&agrave;nh vi&ecirc;n Tập Đo&agrave;n Vietpearl Group)</p>\r\n', '<h3><a href=\"http://hadoriverside.org/tin-tuc/3-phoi-canh-nha-mau-du-an-ha-do-riverside.html\"><span style=\"color:#2980b9\">Tổng quan&nbsp;dự &aacute;n h&agrave; đ&ocirc; riverside</span></a></h3>\r\n\r\n<div>\r\n<ul>\r\n	<li>Diện t&iacute;ch 8.665m2gồm c&oacute; 3 blocks nh&agrave; cao 20 tầng liền kề nhau.</li>\r\n	<li>1 hầm, trệt 4 tầng thương mại v&agrave; 16 tầng căn hộ</li>\r\n	<li>Tổng diện t&iacute;ch s&agrave;n x&acirc;y dựng l&agrave; 50,704,9 m2.</li>\r\n	<li>Quy m&ocirc; d&acirc;n số: 1.130 người.</li>\r\n	<li>Tầng cao x&acirc;y dựng: 20 tầng</li>\r\n	<li>04 tầng thương mại</li>\r\n	<li>16 tầng căn hộ ở với 496 căn hộ</li>\r\n	<li>Diện t&iacute;ch từ 52m2 &ndash; 71 m2</li>\r\n	<li>Mật độ x&acirc;y dựng to&agrave;n khu: 32,8%.</li>\r\n	<li>Hệ số sử dụng đất: 5,25</li>\r\n	<li>Diện t&iacute;ch x&acirc;y dựng: 2.324 m2</li>\r\n</ul>\r\n</div>\r\n', '<h3>Ph&acirc;n khu chức năng</h3>\r\n\r\n<ul>\r\n	<li>Khu thương mại: 8.468 m2</li>\r\n	<li>Khu để xe: 666 m2</li>\r\n	<li>Khu căn hộ: 257 m2</li>\r\n	<li>Khu c&acirc;y xanh: 506 m2</li>\r\n	<li>Giao th&ocirc;ng: &nbsp;529 m2</li>\r\n</ul>\r\n', '<h3>Chủ đầu tư</h3>\r\n\r\n<p>C&ocirc;ng ty TNHH Si&ecirc;u Th&agrave;nh l&agrave;m Chủ đầu tư (Th&agrave;nh vi&ecirc;n Tập Đo&agrave;n Vietpearl Group)</p>\r\n', '<ul>\r\n	<li>Diện t&iacute;ch 8.665m2gồm c&oacute; 3 blocks nh&agrave; cao 20 tầng liền kề nhau.</li>\r\n	<li>1 hầm, trệt 4 tầng thương mại v&agrave; 16 tầng căn hộ</li>\r\n	<li>Tổng diện t&iacute;ch s&agrave;n x&acirc;y dựng l&agrave; 50,704,9 m2.</li>\r\n	<li>Quy m&ocirc; d&acirc;n số: 1.130 người.</li>\r\n	<li>Tầng cao x&acirc;y dựng: 20 tầng</li>\r\n	<li>04 tầng thương mại</li>\r\n	<li>16 tầng căn hộ ở với 496 căn hộ</li>\r\n	<li>Diện t&iacute;ch từ 52m2 &ndash; 71 m2</li>\r\n	<li>Mật độ x&acirc;y dựng to&agrave;n khu: 32,8%.</li>\r\n	<li>Hệ số sử dụng đất: 5,25</li>\r\n	<li>Diện t&iacute;ch x&acirc;y dựng: 2.324 m2</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Khu thương mại: 8.468 m2</li>\r\n	<li>Khu để xe: 666 m2</li>\r\n	<li>Khu căn hộ: 257 m2</li>\r\n	<li>Khu c&acirc;y xanh: 506 m2</li>\r\n	<li>Giao th&ocirc;ng: &nbsp;529 m2</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
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
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`id`, `language_name`, `slug`, `language_directory`, `language_code`, `default`) VALUES
(8, 'English', 'en', 'english', 'en_US', 0),
(2, 'Vietnamese', 'vi', 'vietnamese', 'vi_VI', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `short_content` text NOT NULL,
  `content` text NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `language_slug` varchar(2) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `short_content`, `content`, `keyword`, `meta_description`, `image`, `language_slug`, `modified_date`, `status`) VALUES
(7, 'Tiến độ Son Tra Ocean View tại đà nẵng', 'Tiến độ Son Tra Ocean View tại đà nẵng', '<p>Tiến độ Son Tra Ocean View tại đ&agrave; nẵng</p>\r\n\r\n<p><img alt=\"\" src=\"/public/upload/images/topic2.jpg\" style=\"height:200px; width:200px\" /></p>\r\n', 'Tiến độ Son Tra Ocean View tại đà nẵng', 'Tiến độ Son Tra Ocean View tại đà nẵng', '<p><img alt=\"\" src=\"/public/upload/images/d2bb1e_f2e26a27e2fa4184be4c43117b689fa4.jpg\" style=\"height:544px; width:1343px\" /></p>\n', '', '2017-09-24 14:40:35', 1),
(13, 'Going off topic = No high score?', 'Trong IELTS Speaking, chắc hẳn nhiều thí sinh sẽ phải đối mặt với những bộ mặt “không cảm xúc” của các vị giám khảo.', '<p>Trong IELTS Speaking, chắc hẳn nhiều th&iacute; sinh sẽ phải đối mặt với những bộ mặt &ldquo;kh&ocirc;ng cảm x&uacute;c&rdquo; của c&aacute;c vị gi&aacute;m khảo. Nếu c&aacute;c gi&aacute;m khảo kh&ocirc;ng tỏ th&aacute;i độ g&igrave; với phần thi của c&aacute;c bạn, liệu điều đ&oacute; c&oacute; nghĩa l&agrave; bạn trả lời kh&ocirc;ng tốt hoặc sẽ bị điểm thấp hay kh&ocirc;ng?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" scrolling=\"no\" src=\"https://www.youtube.com/embed/7gqL53DvDz0\"></iframe></p>\r\n', '', '', '<p><img alt=\"\" src=\"/public/upload/images/logo.jpg\" style=\"height:280px; width:280px\" /></p>\r\n', '', '2017-09-24 14:40:16', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
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
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `type`, `content`, `short_content`, `seo`, `created_date`, `created_by`) VALUES
(1, 'VỊ TRÍ ” VÀNG” KẾT NỐI NHANH ĐẾN TRUNG TÂM THÀNH PHỐ HCM', 'vitri', '<p><cite><span style=\"color:#c0392b\"><span style=\"font-size:28px\"><img alt=\"\" src=\"/public/kcfinder/upload/images/hinh-anh-thuc-te-can-ho-homyland-2-quan-2-20(1).jpg\" style=\"height:500px; width:1160px\" />Vị trí căn h&ocirc;̣ H&agrave; Đ&ocirc; RiverSide Qu&acirc;̣n 10</span></span></cite></p>\r\n\r\n<p><img alt=\"căn hộ hà đô riverside\" src=\"/public/kcfinder/upload/images/can_ho_ha_do_riverside.jpg\" style=\"height:541px; width:1024px\" /></p>\r\n', '', '', '2017-04-12', ''),
(2, 'Tiện ích', 'tienich', '<p><img alt=\"\" src=\"/public/kcfinder/upload/images/hinh-anh-thuc-te-can-ho-homyland-2-quan-2-20.jpg\" style=\"height:440px; width:355px\" /></p>\r\n', '', '', '2017-04-07', ''),
(3, 'Mặt bằng', 'matbang', '<p><img alt=\"\" src=\"/public/kcfinder/upload/images/matbanghadoriverside.jpg\" style=\"height:1205px; width:1600px\" /></p>\r\n', '', '', '2017-04-12', ''),
(4, 'Căn hộ mẫu', 'canhomau', '<p><img alt=\"\" src=\"/public/kcfinder/upload/images/nhamau_11.png\" style=\"height:469px; width:900px\" /></p>\r\n', NULL, NULL, '2017-04-07', NULL),
(5, 'Thanh toán', 'thanhtoan', '<p>sadf</p>\r\n', NULL, NULL, '2017-04-04', NULL),
(6, 'Liên Hệ', 'lienhe', '<p>Mọi th&ocirc;ng tin chi tiết về dự &aacute;n&nbsp;Căn Hộ <span style=\"color:#c0392b\"><em><strong>H&agrave; Đ&ocirc; RiverSide</strong></em></span>&nbsp; Qu&yacute; Kh&aacute;ch H&agrave;ng vui l&ograve;ng li&ecirc;n hệ trực tiếp để nhận th&ocirc;ng tin ch&iacute;nh x&aacute;c nhất!</p>\r\n\r\n<p><strong>Hotline:</strong>&nbsp;<strong>0911.xxx xxxx</strong><br />\r\n<strong>Email:</strong>&nbsp;<a href=\"mailto:canhohomyland03@gmail.com\">acbd@gmail.com</a><br />\r\n<strong>Website:</strong>&nbsp;<a href=\"http://hadoriverside.org\"><em>www.hadoriverside.org</em></a></p>\r\n\r\n<p><img alt=\"\" src=\"/hadoriverside/public/kcfinder/upload/images/logo.png\" style=\"height:48px; width:210px\" /></p>\r\n\r\n<p>Địa chỉ dự &aacute;n: Số 219 Đường số 05, Phường.B&igrave;nh Hưng H&ograve;a, B&igrave;nh T&acirc;n</p>\r\n\r\n<p>Ph&ograve;ng giao dịch chủ đầu tư: 327 Đường số 05, Phường B&igrave;nh Hưng H&ograve;a, Q.B&igrave;nh T&acirc;n</p>\r\n\r\n<p>Trụ sở B&igrave;nh Thạnh: 54A X&ocirc; Viết Nghệ Tĩnh, P.19, Q.B&igrave;nh Thạnh</p>\r\n\r\n<p>C&ocirc;ng ty cổ phần đầu tư Khương Thịnh h&acirc;n hạnh l&agrave; đơn vị ph&acirc;n phối độc quyền căn hộ H&agrave; Đ&ocirc; Raiver Si =))</p>', NULL, NULL, '2017-04-06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
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
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `category_id`, `image_name`, `image`, `link`, `description`, `description2`, `modified_date`, `status`) VALUES
(1, '0', '/public/upload/images/tahaco-banner-trang-chu-4.jpg', '<p><img alt=\"\" src=\"/public/upload/images/tahaco-banner-trang-chu-4.jpg\" /></p>\r\n', '', 'GIẢI PHÁP CHO TƯỜI TIÊU HIỆU QUẢ HƠN', 'CÔNG NGHỆ TƯỚI NHỎ GIỌT', '2017-09-24 10:00:39', 1),
(19, '', '/public/upload/images/d2bb1e_f2e26a27e2fa4184be4c43117b689fa4.jpg', '<p><img alt=\"\" src=\"/public/upload/images/d2bb1e_f2e26a27e2fa4184be4c43117b689fa4.jpg\" /></p>\r\n', '', 'TƯỚI TỰ ĐỘNG NÂNG CAO NĂNG SUẤT', 'CÔNG NGHỆ TƯỚI NHỎ GIỌT', '2017-09-24 11:49:24', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$06$WlemzmFke/8WR4CYUF8AfeJ3spy721g9wbglozzS1wZ/ZEZJLwF6W', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1506174763, 1, 'Admin', 'istrator', 'ADMIN', '1'),
(2, '172.21.6.196', 'minhsu', '$2y$08$phcuMU8NslJcMko/DYfjPOWR6yoYbqowHo56WZxkaHBeZYxENcKei', NULL, 'minhsu57@gmail.com', NULL, NULL, NULL, NULL, 1490858515, 1506216532, 1, 'lê', 'minh sự', 'pouchen việt nam', '0936777170'),
(3, '::1', 'hoangmap', '$2y$08$tzd1Fpozj8E.ONtfRYgcGexo5Pgs7ZvRqcaDokQy1y5MiRdc2SPd2', NULL, 'hoangmap@gmail.com', NULL, NULL, NULL, 'iCT7qF6F4VB1HAwnU2q5we', 1491460663, 1494227306, 1, 'Lê', 'Hoàng', 'chưa pik', '093947575');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(3, 1, 1),
(4, 2, 1),
(5, 2, 2),
(7, 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `website`
--

CREATE TABLE `website` (
  `id` int(11) NOT NULL,
  `website_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `footer_content_1` text NOT NULL,
  `footer_content_2` text,
  `facebook` varchar(255) NOT NULL,
  `google_plus` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `google_map` varchar(255) NOT NULL,
  `hotline` varchar(255) NOT NULL,
  `gallery` varchar(255) NOT NULL,
  `sale` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `support` varchar(255) NOT NULL,
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
-- Đang đổ dữ liệu cho bảng `website`
--

INSERT INTO `website` (`id`, `website_name`, `title`, `page_title`, `footer_content_1`, `footer_content_2`, `facebook`, `google_plus`, `phone`, `address`, `google_map`, `hotline`, `gallery`, `sale`, `youtube`, `email`, `support`, `ad_video`, `status`, `admin_email`, `meta_keyword`, `meta_description`, `favicon`, `contact_email`, `modified_by`, `modified_date`) VALUES
(2, 'TAHACO.TECH', 'Dự Án Căn Hộ Hà Đô Riverside Nhận Giữ Chỗ View Đẹp', 'Dự Án Căn Hộ Hà Đô Riverside Nhận Giữ Chỗ View Đẹp', '<p><strong style=\"font-size: 20PX;\">THÔNG TIN LIÊN HỆ</strong></p>\n                    <p><strong>Sale Executive:</strong><?php echo $website->sale; ?></p>\n                    <p><strong>Show Gallery:</strong> <span class=\"dc\"><?php echo $website->gallery; ?></span></p>\n                    <p><strong>Office:</strong> <?php echo $website->address; ?></p>\n                    <p><strong>Hotline:</strong> <?php echo $website->hotline; ?></p>\n                    <p><strong>Email:</strong> <a href=\"mailto:<?php echo $website->admin_email; ?>\"><?php echo $website->admin_email; ?></a></p>\n                </div>\n                <div class=\"social_footer\">\n                    <a target=\"_blank\" href=\"<?php echo $website->facebook; ?>\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a>\n                    <a target=\"_blank\" href=\"<?php echo $website->youtube; ?>\"><i class=\"fa fa-youtube\" aria-hidden=\"true\"></i></a>\n                    <a target=\"_blank\" href=\"<?php echo $website->google; ?>\"><i class=\"fa fa-google-plus\" aria-hidden=\"true\"></i></a>\n                </div>', '<p class=\"widget_title\" style=\"font-size: 20PX;\"><b>THÔNG TIN</b></p><div class=\"menu-footer-menu-container\"><ul id=\"menu-footer-menu\" class=\"menu\"><li id=\"menu-item-223\" class=\"menu-item-first menu-item menu-item-type-post_type menu-item-object-page menu-item-223\"><a href=\"http://www.hadoriverside.org\">Căn hộ Hà Đô RiverSide</a></li>\r\n                    \r\n                    <li id=\"menu-item-224\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-224\"><a href=\"http://hadoriverside.org/vi-tri.html\">Vị trí</a></li>\r\n                    <li id=\"menu-item-224\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-224\"><a href=\"http://hadoriverside.org/tien-ich.html\">Tiện ích</a></li>\r\n                    <li id=\"menu-item-224\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-224\"><a href=\"http://hadoriverside.org/mat-bang.html\">Mặt bằng</a></li>\r\n                    <li id=\"menu-item-224\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-224\"><a href=\"http://hadoriverside.org/can-ho-mau.html\">Căn hộ mẫu</a></li>\r\n                    <li id=\"menu-item-225\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-225\"><a href=\"http://hadoriverside.org/thanh-toan.html\">Phương thức thanh toán</a></li>\r\n                    <li id=\"menu-item-228\" class=\"menu-item-last menu-item menu-item-type-post_type menu-item-object-page menu-item-228\"><a href=\"http://hadoriverside.org/lien-he.html\">Liên hệ</a></li>\r\n                    <li id=\"menu-item-228\" class=\"menu-item-last menu-item menu-item-type-post_type menu-item-object-page menu-item-228\"><a href=\"http://hadoriverside.org/tin-tuc\">Tin tức</a></li>\r\n                </ul></div>', 'https://www.facebook.com/pg/nongnghieptahaco', 'https://plus.google.com/105439840244004612792', '123123', '98 Thôn 1, Đắk Buk So, Tuy Đức, Đak Nông', '10.789931, 106.693402', '0971.41.91.81', '123', '123123', '123', NULL, 'Hỗ trợ 24/7. Mr John', '<p><strong>VIDEO</strong></p>  <p><iframe frameborder=\"0\" scrolling=\"no\" src=\"https://www.youtube.com/embed/ejXrGoHFGJQ\"></iframe></p>  <p><strong>Luyện Nh&oacute;m</strong></p>  <p><a href=\"/english/luyen-noi-nhom-4-5-ban-cung-100-gvnn\"><img alt=\"\" src=\"/public/upload/images/slider2.jpg\" style=\"width:300px\" /></a></p>', 1, 'avenir.ro@gmail.com', 'hà đô riverside, ha do riverside, căn hộ hà đô riverside, can ho ha do riverside, dự án hà đô riverside, du an ha do riverside, chung cư hà đô riverside, chung cu ha do riverside, mua can ho ha do riverside, mua căn hộ hà đô riverside', 'Dự án căn hộ Hà Đô Riverside nhận giữ chỗ suất nội bộ 100 căn view đẹp giá ưu đãi. LH:', '', 'avenir.ro@gmail.com', '', '2017-05-14 00:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `app_routes`
--
ALTER TABLE `app_routes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banned`
--
ALTER TABLE `banned`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `common_info`
--
ALTER TABLE `common_info`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `factory`
--
ALTER TABLE `factory`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `factory_translation`
--
ALTER TABLE `factory_translation`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Chỉ mục cho bảng `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `app_routes`
--
ALTER TABLE `app_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `banned`
--
ALTER TABLE `banned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `common_info`
--
ALTER TABLE `common_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `factory`
--
ALTER TABLE `factory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `factory_translation`
--
ALTER TABLE `factory_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
