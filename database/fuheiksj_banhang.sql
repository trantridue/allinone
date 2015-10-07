-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 07, 2015 at 11:47 PM
-- Server version: 10.0.21-MariaDB
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fuheiksj_banhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'MADEVN');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'VAY', NULL),
(2, 'GIAY', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `value` varchar(45) NOT NULL,
  `description` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE IF NOT EXISTS `configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `value` varchar(45) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`id`, `name`, `value`, `label`) VALUES
(1, 'import_number_row', '21', 'NBR ROW IMPORT'),
(2, 'export_number_row', '8', 'NBR ROW EXPORT'),
(3, 'default_row_product_return', '5', 'NBR ROW IMPORT RETURN'),
(4, 'default_password', '123456', 'DEFAULT PASSWORD'),
(5, 'is_sale_for_all', '1', 'SALE ON/OFF'),
(6, 'default_number_line_spend', '10', 'NBR ROW SPEND'),
(7, 'listExportDefault_nbr_day_limit', '0', 'NBR DAY EXPORT'),
(8, 'nbr_day_default_export_returned', '0', 'NBR DAY EXPORT RETURN'),
(9, 'default_nbr_days_load_export', '10', 'NBR DAY EXPORT DEFAULT'),
(10, 'bonus_ratio', '100', 'BONUS RATIO'),
(11, 'init_money', '500', 'AMOUNT INIT'),
(12, 'timeout', '21600', 'SYSTEM TIMEOUT'),
(13, 'limit_default_customer_after_search', '100', 'NBR ROW CUS AFTER'),
(14, 'limit_default_customer_before_search', '10', 'NBR ROW CUS BEFORE'),
(15, 'nbr_customer_by_group_csv', '250', 'NBR CUSTOMER BY GROUP'),
(16, 'nbr_news_default', '20', 'NBR NEWS DEFAULT'),
(17, 'max_width_upload_img', '800', 'max_width_upload_img'),
(18, 'max_height_upload_img', '600', 'max_height_upload_img'),
(19, 'upload_img_quality', '1', 'upload_img_quality'),
(20, 'max_img_size_upload', '2000000', 'max_img_size_upload'),
(21, 'default_nbr_days_load_import', '5', 'default_nbr_days_load_import'),
(22, 'sale_all_taux', '10', 'SALE TAUX'),
(23, 'start_time_backup', '8', 'START TIME_BACK_UP'),
(24, 'end_time_backup', '24', 'END TIME_BACK_UP');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `description` varchar(245) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `isboss` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1289 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `tel`, `description`, `date`, `created_date`, `isboss`) VALUES
(1288, 'Khach le', 'aaaaaaaaa', 'Anh khach co the doi', '2015-06-12 20:54:04', '2014-03-01 23:42:54', '0');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE IF NOT EXISTS `customer_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_tel` varchar(45) NOT NULL,
  `customer_name` varchar(45) DEFAULT NULL,
  `product_code` varchar(16) DEFAULT NULL,
  `color` varchar(45) NOT NULL,
  `size` varchar(45) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `date` datetime NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_reservation_histo`
--

CREATE TABLE IF NOT EXISTS `customer_reservation_histo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `amount` varchar(45) NOT NULL DEFAULT '0',
  `status` varchar(1) NOT NULL DEFAULT 'Y',
  `date` datetime NOT NULL,
  `complete_date` datetime DEFAULT NULL,
  `reserved_facture` varchar(45) DEFAULT NULL,
  `complete_facture` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_customer_reservation_histo_customer1_idx` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `export_facture`
--

CREATE TABLE IF NOT EXISTS `export_facture` (
  `code` varchar(45) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `isonline` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`code`),
  KEY `fk_export_facture_customer1_idx` (`customer_id`),
  KEY `fk_export_facture_shop1_idx` (`shop_id`),
  KEY `fk_export_facture_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `export_facture_product`
--

CREATE TABLE IF NOT EXISTS `export_facture_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(16) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `export_price` float NOT NULL DEFAULT '0',
  `export_facture_code` varchar(45) NOT NULL,
  `re_qty` int(11) NOT NULL DEFAULT '0',
  `re_date` datetime DEFAULT NULL,
  `re_description` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_export_facture_product_product1_idx` (`product_code`),
  KEY `fk_export_facture_product_export_facture1_idx` (`export_facture_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `export_facture_trace`
--

CREATE TABLE IF NOT EXISTS `export_facture_trace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `export_facture_code` varchar(45) NOT NULL,
  `total` float NOT NULL DEFAULT '0',
  `debt` float NOT NULL DEFAULT '0',
  `reserved` float NOT NULL DEFAULT '0',
  `order` float NOT NULL DEFAULT '0',
  `customer_give` float NOT NULL DEFAULT '0',
  `give_customer` float NOT NULL DEFAULT '0',
  `bonus_used` float NOT NULL DEFAULT '0',
  `return_amount` float NOT NULL DEFAULT '0',
  `shop_id` int(11) NOT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `customer_id` int(11) NOT NULL,
  `bonus_ratio` float NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `fk_export_facture_trace_export_facture1_idx` (`export_facture_code`),
  KEY `fk_export_facture_trace_shop1_idx` (`shop_id`),
  KEY `fk_export_facture_trace_customer1_idx` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fund`
--

CREATE TABLE IF NOT EXISTS `fund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `fund`
--

INSERT INTO `fund` (`id`, `name`, `description`) VALUES
(1, 'KÉT SẮT', 'KETSAT'),
(2, 'Anh Minh', NULL),
(8, 'OCEANBANK', 'OCEANBANK'),
(9, 'Châu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fund_change_histo`
--

CREATE TABLE IF NOT EXISTS `fund_change_histo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fund_id` int(11) NOT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `description` varchar(245) DEFAULT NULL,
  `ratio` float NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_fund_change_histo_fund1_idx` (`fund_id`),
  KEY `fk_fund_change_histo_user1_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `fund_change_histo`
--

INSERT INTO `fund_change_histo` (`id`, `fund_id`, `amount`, `date`, `description`, `ratio`, `user_id`) VALUES
(1, 2, 50000, '2015-09-27 13:48:22', 'gửi 50M', 1, 1),
(2, 2, -2160, '2015-10-01 00:29:00', 'See spend : Mua thanh ray, thanh đỡ kính (Anh Minh   Anh Duệ)', 1, 1),
(3, 2, -34, '2015-10-02 00:29:00', 'See spend : Mua đồ thắp hương', 1, 1),
(4, 2, -50, '2015-10-02 00:17:10', 'See spend : Mua thêm 2 thanh ray', 1, 2),
(5, 2, -60, '2015-10-01 02:21:35', 'See spend : Tiền ốc vít', 1, 1),
(6, 2, -4000, '2015-10-03 11:15:04', 'See spend : laptop dell', 1, 1),
(8, 2, -2000, '2015-10-04 13:46:21', 'See spend : Mua 100m led lắp cửa hàng', 1, 1),
(9, 2, -5000, '2015-10-03 13:46:54', 'Anh minh rút 5M', 1, 1),
(11, 2, -5000, '2015-10-03 13:51:29', 'Vay thanh toán hàng dương', 1, 1),
(12, 9, 5000, '2015-10-03 13:51:29', 'Vay thanh toán hàng dương', 1, 1),
(13, 2, -8000, '2015-10-04 13:51:51', 'Vay thanh toán tiền hàng chị hương', 1, 1),
(14, 9, 8000, '2015-10-04 13:51:51', 'Vay thanh toán tiền hàng chị hương', 1, 1),
(15, 2, 4400, '2015-10-04 15:22:41', 'Thêm vào 4400 để thanh toán vinh tuyết', 1, 1),
(16, 2, -28096, '2015-10-04 22:27:27', 'Trả nợ : Vinh Tuyết | Hóa đơn 28830.', 1, 1),
(17, 9, -734, '2015-10-04 22:27:27', 'Trả nợ : Vinh Tuyết | Hóa đơn 28830.', 1, 1),
(18, 2, 30000, '2015-10-05 15:56:40', 'Thêm 30M', 1, 1),
(19, 2, -480, '2015-10-05 15:57:00', 'See spend : Mua ghế', 1, 2),
(20, 2, -180, '2015-10-06 15:31:58', 'See spend : Sớ đi phủ tây hồ', 1, 2),
(21, 2, -500, '2015-10-06 15:31:58', 'See spend : Đưa bảo', 1, 2),
(22, 2, -220, '2015-10-06 15:31:58', 'See spend : Mua lễ đi phủ', 1, 2),
(23, 2, -30, '2015-10-06 15:31:58', 'See spend : Mua hoa', 1, 2),
(24, 2, -100, '2015-10-06 15:31:58', 'See spend : Tiền lẻ đi lễ', 1, 2),
(25, 2, 30000, '2015-10-07 15:37:45', 'Thêm', 1, 1),
(26, 2, -500, '2015-10-07 15:39:25', 'See spend : Đưa bảo', 1, 2),
(27, 2, -105, '2015-10-07 15:39:25', 'See spend : Mua máy tính, sổ bút', 1, 2),
(28, 2, -200, '2015-10-07 15:39:25', 'See spend : Tiền 2 nhân viên', 1, 2),
(29, 2, 0, '2015-10-07 15:39:25', 'See spend : ', 1, 1),
(30, 2, -25, '2015-10-07 15:41:41', 'See spend : Bình nước', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `import_facture`
--

CREATE TABLE IF NOT EXISTS `import_facture` (
  `code` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `provider_id` int(11) NOT NULL,
  `deadline` datetime DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `code_UNIQUE` (`code`),
  KEY `fk_import_facture_provider1_idx` (`provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `import_facture`
--

INSERT INTO `import_facture` (`code`, `date`, `description`, `provider_id`, `deadline`, `link`) VALUES
('20151007_001', '2015-10-07 16:03:20', 'Trả lại 3 đôi', 2, '2015-10-21 16:03:20', 'img/facture/20151007_001.png'),
('20151007_002', '2015-10-07 16:19:42', 'Nhập về nhà chị châu', 3, '2015-10-21 16:19:42', 'img/facture/20151007_002.png');

-- --------------------------------------------------------

--
-- Table structure for table `inout_type`
--

CREATE TABLE IF NOT EXISTS `inout_type` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inout_type`
--

INSERT INTO `inout_type` (`id`, `name`) VALUES
(1, 'Thêm tiền'),
(2, 'Rút tiền');

-- --------------------------------------------------------

--
-- Table structure for table `money_inout`
--

CREATE TABLE IF NOT EXISTS `money_inout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_money_inout_shop1_idx` (`shop_id`),
  KEY `fk_money_inout_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_news_shop1_idx` (`shop_id`),
  KEY `fk_news_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `code` varchar(16) NOT NULL,
  `name` varchar(245) NOT NULL,
  `category_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `sex_id` int(11) NOT NULL,
  `export_price` float NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `brand_id` int(11) NOT NULL,
  `sale` float NOT NULL DEFAULT '0',
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `code_UNIQUE` (`code`),
  KEY `fk_product_product_type1_idx` (`category_id`),
  KEY `fk_product_season1_idx` (`season_id`),
  KEY `fk_product_sex1_idx` (`sex_id`),
  KEY `fk_product_brand1_idx` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`code`, `name`, `category_id`, `season_id`, `sex_id`, `export_price`, `description`, `brand_id`, `sale`, `link`) VALUES
('0001', 'Giầy nữ cao cấp  16628-6-GNT', 2, 4, 1, 550, '', 1, 0, 'img/product/0001.png'),
('0002', 'Giầy nữ cao cấp  16201-3-GNT', 1, 4, 1, 500, '', 1, 0, 'img/product/0002.png'),
('0003', 'Giầy nữ cao cấp  16518-10-GNT', 1, 4, 1, 525, '', 1, 0, 'img/product/0003.png'),
('0004', 'Giầy nữ cao cấp  A5099-GN', 1, 4, 1, 650, '', 1, 0, 'img/product/0004.png'),
('0005', 'Giầy nữ cao cấp  102-152-GNT', 1, 4, 1, 525, '', 1, 0, 'img/product/0005.png'),
('0006', 'Giầy nữ cao cấp  161992-GNH', 1, 4, 1, 600, '', 1, 0, 'img/product/0006.png'),
('0007', 'Giầy nữ cao cấp  1511518-GNH', 1, 4, 1, 750, '', 1, 0, 'img/product/0007.png'),
('0008', 'Giầy nữ cao cấp  8553-GND', 1, 4, 1, 650, '', 1, 0, 'img/product/0008.png'),
('0009', 'Giầy nữ cao cấp  85-2-GLNC', 1, 4, 1, 330, '', 1, 0, 'img/product/0009.png'),
('0010', 'Giầy nữ VNXK HP 327-GNTT', 1, 4, 1, 325, '', 1, 0, 'img/product/0010.png'),
('0011', 'Giầy nữ VNXK 876-GNP', 1, 4, 1, 330, '', 1, 0, 'img/product/0011.png'),
('0012', 'Giầy nữ da miếng HA7116-GNAC', 1, 4, 1, 360, '', 1, 0, 'img/product/0012.png'),
('0013', 'Giầy nữ da miếng LA-18-GN', 1, 4, 1, 350, '', 1, 0, 'img/product/0013.png'),
('0014', 'Giầy nữ da miếng QT18-GNLA', 1, 4, 1, 350, '', 1, 0, 'img/product/0014.png'),
('0015', 'Giầy nữ da miếng QT19-GNLA', 1, 4, 1, 350, '', 1, 0, 'img/product/0015.png'),
('0016', 'Giầy nữ da miếng LA-19-GN', 1, 4, 1, 350, '', 1, 0, 'img/product/0016.png'),
('0017', 'Giầy nữ da miếng LA-22-GNLA', 1, 4, 1, 350, '', 1, 0, 'img/product/0017.png'),
('0018', 'Giầy nữ VNXK 2235-95', 2, 4, 1, 290, '', 1, 0, 'img/product/0018.png'),
('0019', 'Giầy nữ VNXK 140-908', 2, 4, 1, 295, '', 1, 0, 'img/product/0019.png'),
('0020', 'Giầy nữ VNXK 1593-GE', 2, 4, 1, 350, '', 1, 0, 'img/product/0020.png'),
('0022', 'Giầy nữ VNXK D002', 2, 4, 1, 350, '', 1, 0, 'img/product/0022.png'),
('0023', 'Giầy nữ VNXK D002_4', 2, 4, 1, 360, '', 1, 0, 'img/product/0023.png'),
('0024', 'Giầy nữ VNXK D002_1', 2, 4, 1, 350, '', 1, 0, 'img/product/0024.png'),
('0025', 'Giầy nữ VNXK 8174', 2, 4, 1, 350, '', 1, 0, 'img/product/0025.png'),
('0026', 'Giầy nữ VNXK V0025N-1', 2, 4, 1, 320, '', 1, 0, 'img/product/0026.png'),
('0027', 'Giầy nữ VNXK KH0025', 2, 4, 1, 295, '', 1, 0, 'img/product/0027.png'),
('0028', 'Giầy nữ VNXK Bal nhọn', 2, 4, 1, 300, '', 1, 0, 'img/product/0028.png'),
('0029', 'Giầy nữ VNXK HTP01', 2, 4, 1, 295, '', 1, 0, 'img/product/0029.png'),
('0030', 'Giầy nữ VNXK 0906N-1', 2, 4, 1, 290, '', 1, 0, 'img/product/0030.png'),
('0031', 'Giầy nữ VNXK 1068', 2, 4, 1, 360, '', 1, 0, 'img/product/0031.png'),
('0032', 'Giầy nữ VNXK 1069', 2, 4, 1, 360, '', 1, 0, 'img/product/0032.png'),
('0033', 'Giầy nữ VNXK 1502N-4', 2, 4, 1, 295, '', 1, 0, 'img/product/0033.png'),
('0034', 'Giầy nữ VNXK 2235-58', 2, 4, 1, 290, '', 1, 0, 'img/product/0034.png'),
('0035', 'Giầy nữ VNXK AT14', 2, 4, 1, 320, '', 1, 0, 'img/product/0035.png'),
('0036', 'Giầy nữ VNXK AT15', 2, 4, 1, 320, '', 1, 0, 'img/product/0036.png'),
('0037', 'Giầy nữ VNXK AT18', 2, 4, 1, 320, '', 1, 0, 'img/product/0037.png'),
('0038', 'Giầy nữ VNXK AT107', 2, 4, 1, 320, '', 1, 0, 'img/product/0038.png'),
('0039', 'Giầy nữ VNXK 190-04', 2, 4, 1, 290, '', 1, 0, 'img/product/0039.png');

-- --------------------------------------------------------

--
-- Table structure for table `product_deviation`
--

CREATE TABLE IF NOT EXISTS `product_deviation` (
  `product_code` varchar(16) NOT NULL,
  `quantity` float NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  KEY `fk_product_deviation_product1_idx` (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_import`
--

CREATE TABLE IF NOT EXISTS `product_import` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(16) NOT NULL,
  `import_facture_code` varchar(45) NOT NULL,
  `quantity` int(11) NOT NULL,
  `import_price` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_import_product1_idx` (`product_code`),
  KEY `fk_product_import_import_facture1_idx` (`import_facture_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `product_import`
--

INSERT INTO `product_import` (`id`, `product_code`, `import_facture_code`, `quantity`, `import_price`) VALUES
(1, '0001', '20151007_001', 8, 305),
(2, '0002', '20151007_001', 10, 291),
(3, '0003', '20151007_001', 3, 299),
(4, '0004', '20151007_001', 9, 374),
(5, '0005', '20151007_001', 5, 304),
(6, '0006', '20151007_001', 5, 343),
(7, '0007', '20151007_001', 5, 424),
(8, '0008', '20151007_001', 5, 365),
(9, '0009', '20151007_001', 10, 196),
(10, '0010', '20151007_001', 10, 185),
(11, '0011', '20151007_001', 10, 190),
(12, '0012', '20151007_001', 5, 215),
(13, '0013', '20151007_001', 5, 210),
(14, '0014', '20151007_001', 5, 210),
(15, '0015', '20151007_001', 5, 210),
(16, '0016', '20151007_001', 5, 210),
(17, '0017', '20151007_001', 5, 210),
(18, '0018', '20151007_002', 15, 160),
(19, '0019', '20151007_002', 15, 165),
(20, '0020', '20151007_002', 10, 205),
(21, '0039', '20151007_002', 20, 160),
(22, '0022', '20151007_002', 10, 200),
(23, '0023', '20151007_002', 15, 210),
(24, '0024', '20151007_002', 25, 205),
(25, '0025', '20151007_002', 15, 205),
(26, '0026', '20151007_002', 10, 170),
(27, '0027', '20151007_002', 15, 165),
(28, '0028', '20151007_002', 15, 170),
(29, '0029', '20151007_002', 10, 165),
(30, '0030', '20151007_002', 20, 160),
(31, '0031', '20151007_002', 20, 215),
(32, '0032', '20151007_002', 15, 225),
(33, '0033', '20151007_002', 25, 165),
(34, '0034', '20151007_002', 25, 160),
(35, '0035', '20151007_002', 15, 170),
(36, '0036', '20151007_002', 15, 170),
(37, '0037', '20151007_002', 10, 170),
(38, '0038', '20151007_002', 10, 170);

-- --------------------------------------------------------

--
-- Table structure for table `product_return`
--

CREATE TABLE IF NOT EXISTS `product_return` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(16) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  `provider_id` int(11) NOT NULL,
  `return_price` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_product_return_provider1_idx` (`provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE IF NOT EXISTS `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `ket` float DEFAULT '0',
  `loan` float DEFAULT '0',
  `fund` float DEFAULT '0',
  `store` float DEFAULT '0',
  `debt` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE IF NOT EXISTS `provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `tel` varchar(16) NOT NULL,
  `address` varchar(245) DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`id`, `name`, `tel`, `address`, `description`, `date`) VALUES
(1, 'Châu', '0966807709', 'Vạn Phúc', 'Vạn phúc', '2015-10-02 07:15:17'),
(2, 'Vinh Tuyết', '0913077448', 'Hàng Thùng', 'Hàng thùng', '2015-10-04 22:25:52'),
(3, 'Dương', '01666082922', 'Cầu Giấy', '', '2015-10-07 23:04:59');

-- --------------------------------------------------------

--
-- Table structure for table `provider_paid`
--

CREATE TABLE IF NOT EXISTS `provider_paid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_provider_paid_provider1_idx` (`provider_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `provider_paid`
--

INSERT INTO `provider_paid` (`id`, `provider_id`, `amount`, `date`, `description`) VALUES
(1, 2, 28830, '2015-10-04 22:27:27', 'Hóa đơn 28830. | 2:28096 | 9:734 | 2:0 | ');

-- --------------------------------------------------------

--
-- Table structure for table `provider_paid_fund_change_histo`
--

CREATE TABLE IF NOT EXISTS `provider_paid_fund_change_histo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fund_change_histo_id` int(11) NOT NULL,
  `provider_paid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_provider_paid_fund_change_fund_change_histo1_idx` (`fund_change_histo_id`),
  KEY `fk_provider_paid_fund_change_provider_paid1_idx` (`provider_paid_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `provider_paid_fund_change_histo`
--

INSERT INTO `provider_paid_fund_change_histo` (`id`, `fund_change_histo_id`, `provider_paid_id`) VALUES
(1, 16, 1),
(2, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(8) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Quản Trị'),
(2, 'editor', 'Nhập Liệu'),
(3, 'employee', 'Nhân Viên');

-- --------------------------------------------------------

--
-- Table structure for table `season`
--

CREATE TABLE IF NOT EXISTS `season` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` date NOT NULL,
  `end_time` date NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`id`, `start_time`, `end_time`, `name`) VALUES
(1, '2014-01-01', '2014-03-31', 'SPRING'),
(2, '2014-04-01', '2014-06-30', 'SUMMER'),
(3, '2014-07-01', '2014-09-30', 'AUTUMN'),
(4, '2014-10-01', '2014-12-31', 'WINTER');

-- --------------------------------------------------------

--
-- Table structure for table `sex`
--

CREATE TABLE IF NOT EXISTS `sex` (
  `id` int(11) NOT NULL,
  `name` varchar(6) NOT NULL DEFAULT 'woman',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sex`
--

INSERT INTO `sex` (`id`, `name`) VALUES
(1, 'WOMAN'),
(2, 'MAN');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE IF NOT EXISTS `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` varchar(256) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `name`, `address`, `date`) VALUES
(1, 'shop1', '19 Vạn phúc Hà Đông Hà Nội', '2015-06-12 22:38:34'),
(2, 'shop2', 'Số 3 Lê Văn Lương - Vạn Phúc', '2015-06-12 22:38:34');

-- --------------------------------------------------------

--
-- Table structure for table `spend`
--

CREATE TABLE IF NOT EXISTS `spend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spend_category_id` int(11) NOT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `description` varchar(245) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `spend_for_id` int(11) NOT NULL,
  `spend_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_spend_spend_category1_idx` (`spend_category_id`),
  KEY `fk_spend_user1_idx` (`user_id`),
  KEY `fk_spend_spend_for1_idx` (`spend_for_id`),
  KEY `fk_spend_spend_type1_idx` (`spend_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `spend`
--

INSERT INTO `spend` (`id`, `spend_category_id`, `amount`, `user_id`, `description`, `date`, `spend_for_id`, `spend_type_id`) VALUES
(1, 1, 2160, 1, 'Mua thanh ray, thanh đỡ kính (Anh Minh   Anh Duệ)', '2015-10-01 00:29:00', 2, 2),
(2, 1, 34, 1, 'Mua đồ thắp hương', '2015-10-02 00:29:00', 2, 1),
(3, 1, 50, 2, 'Mua thêm 2 thanh ray', '2015-10-02 00:17:10', 2, 1),
(4, 1, 60, 1, 'Tiền ốc vít', '2015-10-01 02:21:35', 2, 1),
(5, 1, 4000, 1, 'laptop dell', '2015-10-03 11:15:04', 2, 1),
(6, 1, 2000, 1, 'Mua 100m led lắp cửa hàng', '2015-10-04 13:46:21', 2, 1),
(7, 1, 480, 2, 'Mua ghế', '2015-10-05 15:57:00', 2, 1),
(8, 1, 180, 2, 'Sớ đi phủ tây hồ', '2015-10-06 15:31:58', 2, 1),
(9, 1, 500, 2, 'Đưa bảo', '2015-10-06 15:31:58', 2, 1),
(10, 1, 220, 2, 'Mua lễ đi phủ', '2015-10-06 15:31:58', 2, 1),
(11, 1, 30, 2, 'Mua hoa', '2015-10-06 15:31:58', 2, 1),
(12, 1, 100, 2, 'Tiền lẻ đi lễ', '2015-10-06 15:31:58', 2, 1),
(13, 1, 500, 2, 'Đưa bảo', '2015-10-07 15:39:25', 2, 1),
(14, 1, 105, 2, 'Mua máy tính, sổ bút', '2015-10-07 15:39:25', 2, 1),
(15, 1, 200, 2, 'Tiền 2 nhân viên', '2015-10-07 15:39:25', 2, 1),
(16, 1, 25, 1, 'Bình nước', '2015-10-07 15:41:41', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `spend_category`
--

CREATE TABLE IF NOT EXISTS `spend_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `spend_category`
--

INSERT INTO `spend_category` (`id`, `name`) VALUES
(1, 'Chi tiêu hàng ngày'),
(2, 'Giao thông'),
(3, 'Y tế'),
(4, 'Giáo dục'),
(5, 'Ngoại giao'),
(6, 'Viễn thông'),
(7, 'Khác'),
(8, 'Lấy quần áo');

-- --------------------------------------------------------

--
-- Table structure for table `spend_for`
--

CREATE TABLE IF NOT EXISTS `spend_for` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `spend_for`
--

INSERT INTO `spend_for` (`id`, `name`) VALUES
(1, 'Gia đình'),
(2, 'Cửa hàng');

-- --------------------------------------------------------

--
-- Table structure for table `spend_type`
--

CREATE TABLE IF NOT EXISTS `spend_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `spend_type`
--

INSERT INTO `spend_type` (`id`, `name`) VALUES
(1, 'Khấu hao ngay'),
(2, 'Khấu hao dần'),
(3, 'Không khấu hao');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone_number` varchar(16) DEFAULT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(32) NOT NULL,
  `confirmcode` varchar(32) DEFAULT 'y',
  `status` varchar(1) NOT NULL DEFAULT 'Y',
  `start_date` datetime NOT NULL DEFAULT '2014-01-01 08:00:00',
  `end_date` datetime DEFAULT '2020-12-31 22:00:00',
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_shop_idx` (`shop_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Employees Information' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `shop_id`, `name`, `email`, `phone_number`, `username`, `password`, `confirmcode`, `status`, `start_date`, `end_date`, `description`) VALUES
(1, 1, 'Anh Minh', 'trantridue@gmail.com', '0918888398', 'admin', '4eae18cf9e54a0f62b44176d074cbe2f', 'y', 'y', '2013-01-01 09:07:18', '2015-08-19 20:19:40', 'nothing'),
(2, 1, 'Chị Châu', 'zabuza.vn@gmail.com', '0966807709', 'chau ', 'e10adc3949ba59abbe56e057f20f883e', 'y', 'y', '2015-06-15 09:08:37', '2015-09-04 08:00:41', 'nothing'),
(3, 1, 'Bảo', 'baobao@gmail.com', '01649785255', 'bao', 'e10adc3949ba59abbe56e057f20f883e', 'y', 'y', '2013-06-01 20:47:12', '2015-09-21 20:34:22', 'nothing');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`user_id`),
  KEY `fk_user_role_role_idx` (`role_id`),
  KEY `fk_user_role_user1_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role_id`, `description`, `user_id`) VALUES
(1, 1, NULL, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_reservation_histo`
--
ALTER TABLE `customer_reservation_histo`
  ADD CONSTRAINT `fk_customer_reservation_histo_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `export_facture`
--
ALTER TABLE `export_facture`
  ADD CONSTRAINT `fk_export_facture_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_export_facture_shop1` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_export_facture_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `export_facture_product`
--
ALTER TABLE `export_facture_product`
  ADD CONSTRAINT `fk_export_facture_product_export_facture1` FOREIGN KEY (`export_facture_code`) REFERENCES `export_facture` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_export_facture_product_product1` FOREIGN KEY (`product_code`) REFERENCES `product` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `export_facture_trace`
--
ALTER TABLE `export_facture_trace`
  ADD CONSTRAINT `fk_export_facture_trace_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_export_facture_trace_export_facture1` FOREIGN KEY (`export_facture_code`) REFERENCES `export_facture` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_export_facture_trace_shop1` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `fund_change_histo`
--
ALTER TABLE `fund_change_histo`
  ADD CONSTRAINT `fk_fund_change_histo_fund1` FOREIGN KEY (`fund_id`) REFERENCES `fund` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fund_change_histo_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `import_facture`
--
ALTER TABLE `import_facture`
  ADD CONSTRAINT `fk_import_facture_provider1` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `money_inout`
--
ALTER TABLE `money_inout`
  ADD CONSTRAINT `fk_money_inout_shop1` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_money_inout_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `fk_news_shop1` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_news_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_brand1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_product_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_product_season1` FOREIGN KEY (`season_id`) REFERENCES `season` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_product_sex1` FOREIGN KEY (`sex_id`) REFERENCES `sex` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_deviation`
--
ALTER TABLE `product_deviation`
  ADD CONSTRAINT `fk_product_deviation_product1` FOREIGN KEY (`product_code`) REFERENCES `product` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_import`
--
ALTER TABLE `product_import`
  ADD CONSTRAINT `fk_product_import_import_facture1` FOREIGN KEY (`import_facture_code`) REFERENCES `import_facture` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_product_import_product1` FOREIGN KEY (`product_code`) REFERENCES `product` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_return`
--
ALTER TABLE `product_return`
  ADD CONSTRAINT `fk_product_return_provider1` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `provider_paid`
--
ALTER TABLE `provider_paid`
  ADD CONSTRAINT `fk_provider_paid_provider1` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `provider_paid_fund_change_histo`
--
ALTER TABLE `provider_paid_fund_change_histo`
  ADD CONSTRAINT `fk_provider_paid_fund_change_fund_change_histo1` FOREIGN KEY (`fund_change_histo_id`) REFERENCES `fund_change_histo` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_provider_paid_fund_change_provider_paid1` FOREIGN KEY (`provider_paid_id`) REFERENCES `provider_paid` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `spend`
--
ALTER TABLE `spend`
  ADD CONSTRAINT `fk_spend_spend_category1` FOREIGN KEY (`spend_category_id`) REFERENCES `spend_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_spend_spend_for1` FOREIGN KEY (`spend_for_id`) REFERENCES `spend_for` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_spend_spend_type1` FOREIGN KEY (`spend_type_id`) REFERENCES `spend_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_spend_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_shop` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `fk_user_role_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_role_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;