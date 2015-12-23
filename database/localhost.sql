-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dec 23, 2015 at 11:23 PM
-- Server version: 10.0.23-MariaDB
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aintmtdo_2nine`
--

-- --------------------------------------------------------

--
-- Table structure for table `2nine_address`
--

CREATE TABLE IF NOT EXISTS `2nine_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_affiliate`
--

CREATE TABLE IF NOT EXISTS `2nine_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_affiliate_activity`
--

CREATE TABLE IF NOT EXISTS `2nine_affiliate_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_affiliate_login`
--

CREATE TABLE IF NOT EXISTS `2nine_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_affiliate_transaction`
--

CREATE TABLE IF NOT EXISTS `2nine_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_api`
--

CREATE TABLE IF NOT EXISTS `2nine_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `2nine_api`
--

INSERT INTO `2nine_api` (`api_id`, `username`, `firstname`, `lastname`, `password`, `status`, `date_added`, `date_modified`) VALUES
(1, 'OecwoWyOzUKUnWHxY5wz79sJpAB9W8TEYVqklErRUodWaCliOsLElnwn1Qgc0k9Q', '', '', '5EQR6p7MN0KQllcMcX7MmJO9aYYxsFBV0pOznHlAd5NDJBqsD4GMAiDOWZnB6bbSHIjRsclpG1orFUSGBUnEwzPUpSQHiqOHweRkLp9NGqcOXfRWXmhy58zTWCPFixZzysXvAuundXnnDjnfGwybb9wKaqm54x6ZOyzzNs35O6M5GeWgMyc6U3G42LWnop11AxpvxhYGWYIEhScZpteTlpxgqjeOvZJLKn3kuPRJ1sbGU86Kfg3jPT2A2z9rPBzX', 1, '2015-12-10 17:37:38', '2015-12-10 17:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_attribute`
--

CREATE TABLE IF NOT EXISTS `2nine_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `2nine_attribute`
--

INSERT INTO `2nine_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_attribute_description`
--

CREATE TABLE IF NOT EXISTS `2nine_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_attribute_description`
--

INSERT INTO `2nine_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_attribute_group`
--

CREATE TABLE IF NOT EXISTS `2nine_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `2nine_attribute_group`
--

INSERT INTO `2nine_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_attribute_group_description`
--

CREATE TABLE IF NOT EXISTS `2nine_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_attribute_group_description`
--

INSERT INTO `2nine_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_banner`
--

CREATE TABLE IF NOT EXISTS `2nine_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `2nine_banner`
--

INSERT INTO `2nine_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'Plat Shoes', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_banner_image`
--

CREATE TABLE IF NOT EXISTS `2nine_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `2nine_banner_image`
--

INSERT INTO `2nine_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(106, 7, 'http://dantri.com', 'catalog/banner/Hannylova_Onlineshop.jpg', 0),
(103, 6, '', 'catalog/banner/flat-shoes-for-women-1.jpg', 0),
(104, 6, '', 'catalog/banner/flat-shoes-for-women-2.jpg', 0),
(94, 8, '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, '', 'catalog/demo/manufacturer/disney.png', 0),
(97, 8, '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, '', 'catalog/demo/manufacturer/nintendo.png', 0),
(107, 7, 'index.php?route=product/category&amp;path=33', 'catalog/banner/torurellstore.jpg', 0),
(105, 6, '', 'catalog/banner/flat-shoes-for-women-3.jpg', 0),
(108, 7, 'http://vnexpress.net', 'catalog/banner/flat-shoes-for-women-1.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_banner_image_description`
--

CREATE TABLE IF NOT EXISTS `2nine_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_banner_image_description`
--

INSERT INTO `2nine_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(93, 1, 8, 'Canon'),
(92, 1, 8, 'Burger King'),
(91, 1, 8, 'Coca Cola'),
(90, 1, 8, 'Disney'),
(89, 1, 8, 'Dell'),
(107, 2, 7, 'torurellstore'),
(88, 1, 8, 'Harley Davidson'),
(94, 1, 8, 'NFL'),
(95, 1, 8, 'RedBull'),
(96, 1, 8, 'Sony'),
(97, 1, 8, 'Starbucks'),
(98, 1, 8, 'Nintendo'),
(103, 1, 6, 'Plat Shoes 1'),
(93, 2, 8, 'Canon'),
(92, 2, 8, 'Burger King'),
(91, 2, 8, 'Coca Cola'),
(90, 2, 8, 'Disney'),
(89, 2, 8, 'Dell'),
(107, 1, 7, 'torurellstore'),
(88, 2, 8, 'Harley Davidson'),
(94, 2, 8, 'NFL'),
(95, 2, 8, 'RedBull'),
(96, 2, 8, 'Sony'),
(97, 2, 8, 'Starbucks'),
(98, 2, 8, 'Nintendo'),
(106, 2, 7, 'Hannylova Onlineshop'),
(106, 1, 7, 'Hannylova Onlineshop'),
(103, 2, 6, 'Plat Shoes 1'),
(104, 1, 6, 'Plat Shoes 2'),
(104, 2, 6, 'Plat Shoes 2'),
(105, 1, 6, 'Plat Shoes 3'),
(105, 2, 6, 'Plat Shoes 3'),
(108, 1, 7, 'abc'),
(108, 2, 7, 'ddd');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_category`
--

CREATE TABLE IF NOT EXISTS `2nine_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `2nine_category`
--

INSERT INTO `2nine_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(33, '', 0, 0, 1, 0, 1, '2009-02-03 14:17:55', '2015-12-12 17:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_category_description`
--

CREATE TABLE IF NOT EXISTS `2nine_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_category_description`
--

INSERT INTO `2nine_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(33, 2, 'Giầy nữ', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Giầy nữ', '', ''),
(33, 1, 'Women Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Women Shoes', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_category_filter`
--

CREATE TABLE IF NOT EXISTS `2nine_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_category_path`
--

CREATE TABLE IF NOT EXISTS `2nine_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_category_path`
--

INSERT INTO `2nine_category_path` (`category_id`, `path_id`, `level`) VALUES
(33, 33, 0);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_category_to_layout`
--

CREATE TABLE IF NOT EXISTS `2nine_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_category_to_layout`
--

INSERT INTO `2nine_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(33, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_category_to_store`
--

CREATE TABLE IF NOT EXISTS `2nine_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_category_to_store`
--

INSERT INTO `2nine_category_to_store` (`category_id`, `store_id`) VALUES
(33, 0);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_country`
--

CREATE TABLE IF NOT EXISTS `2nine_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=258 ;

--
-- Dumping data for table `2nine_country`
--

INSERT INTO `2nine_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_coupon`
--

CREATE TABLE IF NOT EXISTS `2nine_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `2nine_coupon`
--

INSERT INTO `2nine_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_coupon_category`
--

CREATE TABLE IF NOT EXISTS `2nine_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_coupon_history`
--

CREATE TABLE IF NOT EXISTS `2nine_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_coupon_product`
--

CREATE TABLE IF NOT EXISTS `2nine_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_currency`
--

CREATE TABLE IF NOT EXISTS `2nine_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `2nine_currency`
--

INSERT INTO `2nine_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.65930003, 0, '2015-12-10 16:50:15'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 0, '2015-12-11 21:32:16'),
(3, 'Euro', 'EUR', '', '€', '2', 0.91420001, 0, '2015-12-10 16:50:15'),
(4, 'VNĐ', 'VND', '', ' VNĐ', '', 1.00000000, 1, '2015-12-11 21:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_custom_field`
--

CREATE TABLE IF NOT EXISTS `2nine_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_custom_field_customer_group`
--

CREATE TABLE IF NOT EXISTS `2nine_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_custom_field_description`
--

CREATE TABLE IF NOT EXISTS `2nine_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_custom_field_value`
--

CREATE TABLE IF NOT EXISTS `2nine_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_custom_field_value_description`
--

CREATE TABLE IF NOT EXISTS `2nine_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_customer`
--

CREATE TABLE IF NOT EXISTS `2nine_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_customer_activity`
--

CREATE TABLE IF NOT EXISTS `2nine_customer_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_customer_ban_ip`
--

CREATE TABLE IF NOT EXISTS `2nine_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_customer_group`
--

CREATE TABLE IF NOT EXISTS `2nine_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `2nine_customer_group`
--

INSERT INTO `2nine_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_customer_group_description`
--

CREATE TABLE IF NOT EXISTS `2nine_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_customer_group_description`
--

INSERT INTO `2nine_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_customer_history`
--

CREATE TABLE IF NOT EXISTS `2nine_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_customer_ip`
--

CREATE TABLE IF NOT EXISTS `2nine_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_customer_login`
--

CREATE TABLE IF NOT EXISTS `2nine_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `2nine_customer_login`
--

INSERT INTO `2nine_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'admin', '27.2.221.234', 1, '2015-12-10 17:15:28', '2015-12-10 17:15:28');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_customer_online`
--

CREATE TABLE IF NOT EXISTS `2nine_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_customer_online`
--

INSERT INTO `2nine_customer_online` (`ip`, `customer_id`, `url`, `referer`, `date_added`) VALUES
('66.249.80.4', 0, 'http://2nine.vn/', '', '2015-12-23 15:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_customer_reward`
--

CREATE TABLE IF NOT EXISTS `2nine_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_customer_transaction`
--

CREATE TABLE IF NOT EXISTS `2nine_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_download`
--

CREATE TABLE IF NOT EXISTS `2nine_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_download_description`
--

CREATE TABLE IF NOT EXISTS `2nine_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_event`
--

CREATE TABLE IF NOT EXISTS `2nine_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_extension`
--

CREATE TABLE IF NOT EXISTS `2nine_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=429 ;

--
-- Dumping data for table `2nine_extension`
--

INSERT INTO `2nine_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(410, 'module', 'banner'),
(426, 'module', 'carousel'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(413, 'module', 'category'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(419, 'module', 'slideshow'),
(428, 'module', 'latest');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_filter`
--

CREATE TABLE IF NOT EXISTS `2nine_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_filter_description`
--

CREATE TABLE IF NOT EXISTS `2nine_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_filter_group`
--

CREATE TABLE IF NOT EXISTS `2nine_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_filter_group_description`
--

CREATE TABLE IF NOT EXISTS `2nine_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_geo_zone`
--

CREATE TABLE IF NOT EXISTS `2nine_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `2nine_geo_zone`
--

INSERT INTO `2nine_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_information`
--

CREATE TABLE IF NOT EXISTS `2nine_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `2nine_information`
--

INSERT INTO `2nine_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_information_description`
--

CREATE TABLE IF NOT EXISTS `2nine_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_information_description`
--

INSERT INTO `2nine_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', '', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '', '', ''),
(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', '', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_information_to_layout`
--

CREATE TABLE IF NOT EXISTS `2nine_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_information_to_store`
--

CREATE TABLE IF NOT EXISTS `2nine_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_information_to_store`
--

INSERT INTO `2nine_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_language`
--

CREATE TABLE IF NOT EXISTS `2nine_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `2nine_language`
--

INSERT INTO `2nine_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(2, 'Vietnamese', 'vi', 'vi_VN.UTF-8,vi_VN,vi-vn,vietnamese', 'vn.png', 'vietnamese', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_layout`
--

CREATE TABLE IF NOT EXISTS `2nine_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `2nine_layout`
--

INSERT INTO `2nine_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_layout_module`
--

CREATE TABLE IF NOT EXISTS `2nine_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `2nine_layout_module`
--

INSERT INTO `2nine_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'affiliate', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(83, 1, 'latest.31', 'content_top', 2),
(82, 1, 'slideshow.27', 'content_top', 1),
(92, 3, 'banner.32', 'column_left', 2),
(91, 3, 'category', 'column_left', 1),
(81, 1, 'carousel.29', 'content_top', 3),
(84, 1, 'featured.28', 'content_top', 4),
(100, 2, 'banner.30', 'column_right', 2),
(99, 2, 'category', 'column_right', 0);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_layout_route`
--

CREATE TABLE IF NOT EXISTS `2nine_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `2nine_layout_route`
--

INSERT INTO `2nine_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(60, 3, 0, 'product/category'),
(56, 1, 0, 'common/home'),
(63, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_length_class`
--

CREATE TABLE IF NOT EXISTS `2nine_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `2nine_length_class`
--

INSERT INTO `2nine_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_length_class_description`
--

CREATE TABLE IF NOT EXISTS `2nine_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `2nine_length_class_description`
--

INSERT INTO `2nine_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_location`
--

CREATE TABLE IF NOT EXISTS `2nine_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_manufacturer`
--

CREATE TABLE IF NOT EXISTS `2nine_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `2nine_manufacturer`
--

INSERT INTO `2nine_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'Zalong', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Geox', 'catalog/demo/palm_logo.jpg', 0),
(7, 'H&amp;M', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Made In Vietnam', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Zara', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Savato', 'catalog/demo/sony_logo.jpg', 0),
(11, 'Addidas', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_manufacturer_to_store`
--

CREATE TABLE IF NOT EXISTS `2nine_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_manufacturer_to_store`
--

INSERT INTO `2nine_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_marketing`
--

CREATE TABLE IF NOT EXISTS `2nine_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_modification`
--

CREATE TABLE IF NOT EXISTS `2nine_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_module`
--

CREATE TABLE IF NOT EXISTS `2nine_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `2nine_module`
--

INSERT INTO `2nine_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Banner - Category', 'banner', 'a:5:{s:4:"name";s:17:"Banner - Category";s:9:"banner_id";s:1:"6";s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:6:"status";s:1:"1";}'),
(29, 'Home Page', 'carousel', 'a:5:{s:4:"name";s:20:"Carousel - Home Page";s:9:"banner_id";s:1:"8";s:5:"width";s:3:"130";s:6:"height";s:3:"100";s:6:"status";s:1:"1";}'),
(28, 'Featured - Home Page', 'featured', 'a:6:{s:4:"name";s:20:"Featured - Home Page";s:7:"product";a:2:{i:0;s:2:"50";i:1;s:2:"51";}s:5:"limit";s:1:"4";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(27, 'Home Page', 'slideshow', 'a:5:{s:4:"name";s:21:"Slideshow - Home Page";s:9:"banner_id";s:1:"7";s:5:"width";s:4:"1140";s:6:"height";s:3:"380";s:6:"status";s:1:"1";}'),
(31, 'Latest Home Page', 'latest', 'a:5:{s:4:"name";s:16:"Latest Home Page";s:5:"limit";s:2:"20";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(32, 'banner_02', 'banner', 'a:5:{s:4:"name";s:9:"banner_02";s:9:"banner_id";s:1:"8";s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:6:"status";s:1:"1";}'),
(33, 'feature product', 'featured', 'a:6:{s:4:"name";s:15:"feature product";s:7:"product";a:2:{i:0;s:2:"52";i:1;s:2:"51";}s:5:"limit";s:1:"5";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_option`
--

CREATE TABLE IF NOT EXISTS `2nine_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `2nine_option`
--

INSERT INTO `2nine_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_option_description`
--

CREATE TABLE IF NOT EXISTS `2nine_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_option_description`
--

INSERT INTO `2nine_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_option_value`
--

CREATE TABLE IF NOT EXISTS `2nine_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `2nine_option_value`
--

INSERT INTO `2nine_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_option_value_description`
--

CREATE TABLE IF NOT EXISTS `2nine_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_option_value_description`
--

INSERT INTO `2nine_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_order`
--

CREATE TABLE IF NOT EXISTS `2nine_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_order_custom_field`
--

CREATE TABLE IF NOT EXISTS `2nine_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_order_history`
--

CREATE TABLE IF NOT EXISTS `2nine_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_order_option`
--

CREATE TABLE IF NOT EXISTS `2nine_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_order_product`
--

CREATE TABLE IF NOT EXISTS `2nine_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_order_recurring`
--

CREATE TABLE IF NOT EXISTS `2nine_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_order_recurring_transaction`
--

CREATE TABLE IF NOT EXISTS `2nine_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_order_status`
--

CREATE TABLE IF NOT EXISTS `2nine_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `2nine_order_status`
--

INSERT INTO `2nine_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_order_total`
--

CREATE TABLE IF NOT EXISTS `2nine_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_order_voucher`
--

CREATE TABLE IF NOT EXISTS `2nine_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_product`
--

CREATE TABLE IF NOT EXISTS `2nine_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `2nine_product`
--

INSERT INTO `2nine_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(50, '0001', '', '', '', '', '', '', '', 1, 6, 'catalog/2015/12/0001_01.jpg', 6, 1, '695000.0000', 0, 0, '2015-12-10', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 19, '2015-12-10 23:13:31', '2015-12-12 18:39:18'),
(51, '0002', '', '', '', '', '', '', '', 1, 6, 'catalog/2015/12/0002_01.jpg', 11, 1, '550000.0000', 0, 0, '2015-12-10', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 43, '2015-12-10 23:20:46', '2015-12-11 21:30:28'),
(52, '0003', '', '', '', '', '', '', '', 1, 6, 'catalog/2015/12/0003_1.jpg', 11, 1, '450000.0000', 0, 0, '2015-12-12', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 3, '2015-12-12 17:58:42', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_product_attribute`
--

CREATE TABLE IF NOT EXISTS `2nine_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_product_description`
--

CREATE TABLE IF NOT EXISTS `2nine_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_product_description`
--

INSERT INTO `2nine_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(51, 2, 'Giầy số 2', '&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; font-size: 0.94em; line-height: 1.2; font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; text-align: justify; color: rgb(78, 78, 78); text-indent: 20px;&quot;&gt;Mỹ phẩm Nhật Bản không chỉ nổi tiếng về các loại kem BB, mà còn nổi tiếng về các sản phẩm chống lão hóa da mặt. Sự phổ biến của các sản phẩm chăm sóc cơ thể, khuôn mặt và sản phẩm chăm sóc tóc mang thương hiệu Nhật Bản tăng lên hàng ngày. Chìa khóa thành công của mỹ phẩm Nhật Bản nằm trong sự phát triển khoa học tiên tiến nhất, truyền thống cổ xưa, các thành phần hữu cơ, và quan trọng nhất, hiệu quả của chúng!&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; font-size: 0.94em; line-height: 1.2; font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; text-align: justify; color: rgb(78, 78, 78); text-indent: 20px;&quot;&gt;Nhật Bản là quốc gia sống thọ nhất. Nữ giới ở đất nước này sống trung bình 85 năm. Khi chỉ nhìn vào diện mạo thì rất khó xác định tuổi của một phụ nữ Nhật. Bí mật được ẩn giấu trong các mỹ phẩm mà phụ nữ Nhật Bản sử dụng.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; font-size: 0.94em; line-height: 1.2; font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; text-align: justify; color: rgb(78, 78, 78); text-indent: 20px;&quot;&gt;Hãy xem các ảnh này:&lt;/p&gt;', '', 'Giầy số 2', '', ''),
(50, 2, 'Giầy số 1', '&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; font-size: 0.94em; line-height: 1.2; font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; text-align: justify; color: rgb(78, 78, 78); text-indent: 20px;&quot;&gt;Mỹ phẩm Nhật Bản không chỉ nổi tiếng về các loại kem BB, mà còn nổi tiếng về các sản phẩm chống lão hóa da mặt. Sự phổ biến của các sản phẩm chăm sóc cơ thể, khuôn mặt và sản phẩm chăm sóc tóc mang thương hiệu Nhật Bản tăng lên hàng ngày. Chìa khóa thành công của mỹ phẩm Nhật Bản nằm trong sự phát triển khoa học tiên tiến nhất, truyền thống cổ xưa, các thành phần hữu cơ, và quan trọng nhất, hiệu quả của chúng!&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; font-size: 0.94em; line-height: 1.2; font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; text-align: justify; color: rgb(78, 78, 78); text-indent: 20px;&quot;&gt;Nhật Bản là quốc gia sống thọ nhất. Nữ giới ở đất nước này sống trung bình 85 năm. Khi chỉ nhìn vào diện mạo thì rất khó xác định tuổi của một phụ nữ Nhật. Bí mật được ẩn giấu trong các mỹ phẩm mà phụ nữ Nhật Bản sử dụng.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; font-size: 0.94em; line-height: 1.2; font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; text-align: justify; color: rgb(78, 78, 78); text-indent: 20px;&quot;&gt;Hãy xem các ảnh này:&lt;/p&gt;', '', 'Giầy số 1', '', ''),
(51, 1, 'Giầy số 2', '&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; font-size: 0.94em; line-height: 1.2; font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; text-align: justify; color: rgb(78, 78, 78); text-indent: 20px;&quot;&gt;Mỹ phẩm Nhật Bản không chỉ nổi tiếng về các loại kem BB, mà còn nổi tiếng về các sản phẩm chống lão hóa da mặt. Sự phổ biến của các sản phẩm chăm sóc cơ thể, khuôn mặt và sản phẩm chăm sóc tóc mang thương hiệu Nhật Bản tăng lên hàng ngày. Chìa khóa thành công của mỹ phẩm Nhật Bản nằm trong sự phát triển khoa học tiên tiến nhất, truyền thống cổ xưa, các thành phần hữu cơ, và quan trọng nhất, hiệu quả của chúng!&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; font-size: 0.94em; line-height: 1.2; font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; text-align: justify; color: rgb(78, 78, 78); text-indent: 20px;&quot;&gt;Nhật Bản là quốc gia sống thọ nhất. Nữ giới ở đất nước này sống trung bình 85 năm. Khi chỉ nhìn vào diện mạo thì rất khó xác định tuổi của một phụ nữ Nhật. Bí mật được ẩn giấu trong các mỹ phẩm mà phụ nữ Nhật Bản sử dụng.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; font-size: 0.94em; line-height: 1.2; font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; text-align: justify; color: rgb(78, 78, 78); text-indent: 20px;&quot;&gt;Hãy xem các ảnh này:&lt;/p&gt;', '', 'Giầy số 2', '', ''),
(52, 1, 'Giầy số 3', '&lt;p&gt;Giầy số 3&lt;/p&gt;&lt;p&gt;Giầy số 3&lt;/p&gt;&lt;p&gt;Giầy số 3&lt;br&gt;&lt;/p&gt;', '', 'Giầy số 3', '', ''),
(52, 2, 'Giầy số 3', '&lt;p&gt;Giầy số 3&lt;/p&gt;&lt;p&gt;Giầy số 3&lt;br&gt;&lt;/p&gt;', '', 'Giầy số 3', '', ''),
(50, 1, 'numbwe1', '&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;ft.com/frontpage UK All times are London time&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;Financial Times&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;Search for...&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;Subscribe Sign in&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;Cutifani’s challenge&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;The Anglo American boss battling to fix a fallen giant&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;Women’s right to fight&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;Gillian Tett ponders gender equality in the armed forces&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;FT VIew Cameron’s craven dithering over Heathrow&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;Simon Kuper How to be a 21st-century dad&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;Women of 2015 Interview with writer Elena Ferrante&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;Home&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;► Video&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;Newsletters&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;Blogs&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;News feed&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;Alphaville&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;Emerging Markets&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;Portfolio&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;Special Reports&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;In depth&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;Today’s Newspaper&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;RSS&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;Tools&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;UK&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;World&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Companies&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Markets&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Global Economy&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Lex&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Comment&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Management&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Personal Finance&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Life &amp;amp; Arts&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;Highlights Long View: Fed rate rise Film: The Big Short Property: Priced out of London Obituary: Douglas Tompkins Books: The Other Paris&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;People watch a ''planisphere'' at the UN conference on climate change in Paris&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;©AFP&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;How to judge if Paris talks are a success&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;11:31pm WORLD&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.6em; padding: 0px; border: 0px none; font-stretch: inherit; text-align: justify; text-indent: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(78, 78, 78); font-family: ''Source Sans Pro'', ''Helvetica Neue'', Helvetica, Helvetica, Arial, sans-serif; font-size: 11.28px; line-height: 13.536px;&quot;&gt;China’s ‘Buffett’ caught in Beiji&lt;/span&gt;&lt;/p&gt;', '', 'Giầy số 1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_product_discount`
--

CREATE TABLE IF NOT EXISTS `2nine_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=441 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_product_filter`
--

CREATE TABLE IF NOT EXISTS `2nine_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_product_image`
--

CREATE TABLE IF NOT EXISTS `2nine_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2357 ;

--
-- Dumping data for table `2nine_product_image`
--

INSERT INTO `2nine_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2352, 51, 'catalog/2015/12/0001_2.jpg', 0),
(2353, 51, 'catalog/2015/12/0001_3.jpg', 0),
(2354, 51, 'catalog/2015/12/0001_4.jpg', 0),
(2355, 51, 'catalog/2015/12/0001_5.jpg', 0),
(2356, 52, 'catalog/2015/12/0003_3.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_product_option`
--

CREATE TABLE IF NOT EXISTS `2nine_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=227 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_product_option_value`
--

CREATE TABLE IF NOT EXISTS `2nine_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_product_recurring`
--

CREATE TABLE IF NOT EXISTS `2nine_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_product_related`
--

CREATE TABLE IF NOT EXISTS `2nine_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_product_related`
--

INSERT INTO `2nine_product_related` (`product_id`, `related_id`) VALUES
(50, 52),
(52, 50);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_product_reward`
--

CREATE TABLE IF NOT EXISTS `2nine_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=546 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_product_special`
--

CREATE TABLE IF NOT EXISTS `2nine_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=440 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_product_to_category`
--

CREATE TABLE IF NOT EXISTS `2nine_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_product_to_category`
--

INSERT INTO `2nine_product_to_category` (`product_id`, `category_id`) VALUES
(50, 33),
(51, 33),
(52, 33);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_product_to_download`
--

CREATE TABLE IF NOT EXISTS `2nine_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_product_to_layout`
--

CREATE TABLE IF NOT EXISTS `2nine_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_product_to_layout`
--

INSERT INTO `2nine_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(50, 0, 0),
(51, 0, 0),
(52, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_product_to_store`
--

CREATE TABLE IF NOT EXISTS `2nine_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_product_to_store`
--

INSERT INTO `2nine_product_to_store` (`product_id`, `store_id`) VALUES
(50, 0),
(51, 0),
(52, 0);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_recurring`
--

CREATE TABLE IF NOT EXISTS `2nine_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_recurring_description`
--

CREATE TABLE IF NOT EXISTS `2nine_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_return`
--

CREATE TABLE IF NOT EXISTS `2nine_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_return_action`
--

CREATE TABLE IF NOT EXISTS `2nine_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `2nine_return_action`
--

INSERT INTO `2nine_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_return_history`
--

CREATE TABLE IF NOT EXISTS `2nine_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_return_reason`
--

CREATE TABLE IF NOT EXISTS `2nine_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `2nine_return_reason`
--

INSERT INTO `2nine_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_return_status`
--

CREATE TABLE IF NOT EXISTS `2nine_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `2nine_return_status`
--

INSERT INTO `2nine_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_review`
--

CREATE TABLE IF NOT EXISTS `2nine_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `2nine_review`
--

INSERT INTO `2nine_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 50, 0, 'Due', 'abcfaspdkf [apkd[fap ksd[fka [dsf[aksd[fka[sdpkf[askpd[f pak[dsf ', 5, 1, '2015-12-12 18:05:28', '2015-12-12 18:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_setting`
--

CREATE TABLE IF NOT EXISTS `2nine_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1444 ;

--
-- Dumping data for table `2nine_setting`
--

INSERT INTO `2nine_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(146, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(1440, 0, 'config', 'config_google_analytics_status', '0', 0),
(1439, 0, 'config', 'config_google_analytics', '', 0),
(1438, 0, 'config', 'config_error_filename', 'error.log', 0),
(1437, 0, 'config', 'config_error_log', '1', 0),
(1431, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(1436, 0, 'config', 'config_error_display', '1', 0),
(1435, 0, 'config', 'config_compression', '0', 0),
(1434, 0, 'config', 'config_encryption', '57cbd4883ec076e8dafcffc79952843f', 0),
(1433, 0, 'config', 'config_password', '1', 0),
(1432, 0, 'config', 'config_maintenance', '0', 0),
(1426, 0, 'config', 'config_shared', '0', 0),
(1427, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1428, 0, 'config', 'config_seo_url', '0', 0),
(1429, 0, 'config', 'config_file_max_size', '600000', 0),
(1430, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(1425, 0, 'config', 'config_secure', '0', 0),
(1424, 0, 'config', 'config_mail_alert', '', 0),
(1423, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(1422, 0, 'config', 'config_mail_smtp_port', '25', 0),
(1421, 0, 'config', 'config_mail_smtp_password', '', 0),
(1420, 0, 'config', 'config_mail_smtp_username', '', 0),
(1419, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(1418, 0, 'config', 'config_mail_parameter', '', 0),
(1417, 0, 'config', 'config_mail_protocol', 'mail', 0),
(1416, 0, 'config', 'config_ftp_status', '0', 0),
(1415, 0, 'config', 'config_ftp_root', '', 0),
(1414, 0, 'config', 'config_ftp_password', '', 0),
(1413, 0, 'config', 'config_ftp_username', '', 0),
(1412, 0, 'config', 'config_ftp_port', '21', 0),
(1411, 0, 'config', 'config_ftp_hostname', 'localhost', 0),
(1410, 0, 'config', 'config_image_location_height', '50', 0),
(1409, 0, 'config', 'config_image_location_width', '268', 0),
(1408, 0, 'config', 'config_image_cart_height', '47', 0),
(1407, 0, 'config', 'config_image_cart_width', '47', 0),
(1406, 0, 'config', 'config_image_wishlist_height', '47', 0),
(1405, 0, 'config', 'config_image_wishlist_width', '47', 0),
(1404, 0, 'config', 'config_image_compare_height', '90', 0),
(1403, 0, 'config', 'config_image_compare_width', '90', 0),
(1402, 0, 'config', 'config_image_related_height', '80', 0),
(1401, 0, 'config', 'config_image_related_width', '80', 0),
(1400, 0, 'config', 'config_image_additional_height', '74', 0),
(1399, 0, 'config', 'config_image_additional_width', '74', 0),
(1398, 0, 'config', 'config_image_product_height', '228', 0),
(1397, 0, 'config', 'config_image_product_width', '228', 0),
(1396, 0, 'config', 'config_image_popup_height', '500', 0),
(1395, 0, 'config', 'config_image_popup_width', '500', 0),
(1391, 0, 'config', 'config_image_category_width', '80', 0),
(1392, 0, 'config', 'config_image_category_height', '80', 0),
(1394, 0, 'config', 'config_image_thumb_height', '228', 0),
(1393, 0, 'config', 'config_image_thumb_width', '228', 0),
(1390, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(1389, 0, 'config', 'config_logo', 'catalog/logo/logo3.jpg', 0),
(1388, 0, 'config', 'config_return_status_id', '2', 0),
(1387, 0, 'config', 'config_return_id', '0', 0),
(1385, 0, 'config', 'config_affiliate_id', '4', 0),
(1386, 0, 'config', 'config_affiliate_mail', '0', 0),
(1384, 0, 'config', 'config_affiliate_commission', '5', 0),
(1383, 0, 'config', 'config_affiliate_auto', '1', 0),
(1382, 0, 'config', 'config_affiliate_approval', '0', 0),
(1381, 0, 'config', 'config_stock_checkout', '1', 0),
(1380, 0, 'config', 'config_stock_warning', '0', 0),
(1379, 0, 'config', 'config_stock_display', '0', 0),
(1378, 0, 'config', 'config_order_mail', '0', 0),
(1377, 0, 'config', 'config_complete_status', 'a:1:{i:0;s:1:"5";}', 1),
(1376, 0, 'config', 'config_processing_status', 'a:1:{i:0;s:1:"2";}', 1),
(1375, 0, 'config', 'config_order_status_id', '1', 0),
(1374, 0, 'config', 'config_checkout_id', '5', 0),
(1372, 0, 'config', 'config_cart_weight', '1', 0),
(1373, 0, 'config', 'config_checkout_guest', '1', 0),
(1371, 0, 'config', 'config_api_id', '1', 0),
(1370, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(1369, 0, 'config', 'config_account_mail', '0', 0),
(1368, 0, 'config', 'config_account_id', '3', 0),
(1367, 0, 'config', 'config_login_attempts', '5', 0),
(1366, 0, 'config', 'config_customer_price', '0', 0),
(1364, 0, 'config', 'config_customer_group_id', '1', 0),
(1365, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(1363, 0, 'config', 'config_customer_online', '1', 0),
(1362, 0, 'config', 'config_tax_customer', '', 0),
(1361, 0, 'config', 'config_tax_default', '', 0),
(1360, 0, 'config', 'config_tax', '0', 0),
(1359, 0, 'config', 'config_voucher_max', '1000', 0),
(1358, 0, 'config', 'config_voucher_min', '1', 0),
(1357, 0, 'config', 'config_review_mail', '0', 0),
(1356, 0, 'config', 'config_review_guest', '1', 0),
(1355, 0, 'config', 'config_review_status', '1', 0),
(1354, 0, 'config', 'config_limit_admin', '20', 0),
(1353, 0, 'config', 'config_product_description_length', '100', 0),
(1352, 0, 'config', 'config_product_limit', '15', 0),
(1351, 0, 'config', 'config_product_count', '1', 0),
(1350, 0, 'config', 'config_weight_class_id', '1', 0),
(1349, 0, 'config', 'config_length_class_id', '1', 0),
(1348, 0, 'config', 'config_currency_auto', '0', 0),
(1347, 0, 'config', 'config_currency', 'VND', 0),
(1345, 0, 'config', 'config_language', 'vi', 0),
(1346, 0, 'config', 'config_admin_language', 'en', 0),
(1344, 0, 'config', 'config_zone_id', '3776', 0),
(1343, 0, 'config', 'config_country_id', '230', 0),
(1342, 0, 'config', 'config_layout_id', '4', 0),
(1341, 0, 'config', 'config_template', 'default', 0),
(1340, 0, 'config', 'config_meta_keyword', '', 0),
(1339, 0, 'config', 'config_meta_description', 'Shoes Store', 0),
(1337, 0, 'config', 'config_comment', '', 0),
(1338, 0, 'config', 'config_meta_title', 'Shoes Store', 0),
(1336, 0, 'config', 'config_open', '', 0),
(1335, 0, 'config', 'config_image', '', 0),
(1334, 0, 'config', 'config_fax', '', 0),
(1332, 0, 'config', 'config_email', 'zabuza.vn@gmail.com', 0),
(1330, 0, 'config', 'config_address', '209 Giáp Nhất - Thanh Xuân - Hà Nội (Gần Ngã Tư Sở)', 0),
(1333, 0, 'config', 'config_telephone', '09 83 40 35 18', 0),
(1331, 0, 'config', 'config_geocode', '', 0),
(1329, 0, 'config', 'config_owner', 'SHOES', 0),
(1328, 0, 'config', 'config_name', '2NINE SHOP', 0),
(1441, 0, 'config', 'config_google_captcha_public', '', 0),
(1442, 0, 'config', 'config_google_captcha_secret', '', 0),
(1443, 0, 'config', 'config_google_captcha_status', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_stock_status`
--

CREATE TABLE IF NOT EXISTS `2nine_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `2nine_stock_status`
--

INSERT INTO `2nine_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_store`
--

CREATE TABLE IF NOT EXISTS `2nine_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_tax_class`
--

CREATE TABLE IF NOT EXISTS `2nine_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `2nine_tax_class`
--

INSERT INTO `2nine_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_tax_rate`
--

CREATE TABLE IF NOT EXISTS `2nine_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `2nine_tax_rate`
--

INSERT INTO `2nine_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_tax_rate_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `2nine_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_tax_rate_to_customer_group`
--

INSERT INTO `2nine_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_tax_rule`
--

CREATE TABLE IF NOT EXISTS `2nine_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- Dumping data for table `2nine_tax_rule`
--

INSERT INTO `2nine_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_upload`
--

CREATE TABLE IF NOT EXISTS `2nine_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_url_alias`
--

CREATE TABLE IF NOT EXISTS `2nine_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=860 ;

--
-- Dumping data for table `2nine_url_alias`
--

INSERT INTO `2nine_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(846, 'manufacturer_id=8', 'Made In Vietnam'),
(772, 'information_id=4', 'about_us'),
(858, 'category_id=33', 'shoes'),
(852, 'manufacturer_id=11', 'addidas'),
(847, 'manufacturer_id=9', 'zara'),
(849, 'manufacturer_id=5', 'zalong'),
(848, 'manufacturer_id=7', 'hm'),
(851, 'manufacturer_id=6', 'geox'),
(850, 'manufacturer_id=10', 'savato'),
(841, 'information_id=6', 'delivery'),
(842, 'information_id=3', 'privacy'),
(843, 'information_id=5', 'terms'),
(859, 'product_id=52', '');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_user`
--

CREATE TABLE IF NOT EXISTS `2nine_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `2nine_user`
--

INSERT INTO `2nine_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'ac3e7f51613c76cb93f34c6ad1dc807c01bfc4ae', 'ad83bb34c', 'John', 'Doe', 'zabuza.vn@gmail.com', '', '', '66.249.82.135', 1, '2015-12-10 17:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_user_group`
--

CREATE TABLE IF NOT EXISTS `2nine_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `2nine_user_group`
--

INSERT INTO `2nine_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', 'a:2:{s:6:"access";a:183:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:18:"common/filemanager";i:13;s:11:"common/menu";i:14;s:14:"common/profile";i:15;s:12:"common/stats";i:16;s:13:"design/banner";i:17;s:13:"design/layout";i:18;s:14:"extension/feed";i:19;s:15:"extension/fraud";i:20;s:19:"extension/installer";i:21;s:22:"extension/modification";i:22;s:16:"extension/module";i:23;s:17:"extension/openbay";i:24;s:17:"extension/payment";i:25;s:18:"extension/shipping";i:26;s:15:"extension/total";i:27;s:16:"feed/google_base";i:28;s:19:"feed/google_sitemap";i:29;s:15:"feed/openbaypro";i:30;s:18:"fraud/fraudlabspro";i:31;s:13:"fraud/maxmind";i:32;s:20:"localisation/country";i:33;s:21:"localisation/currency";i:34;s:21:"localisation/geo_zone";i:35;s:21:"localisation/language";i:36;s:25:"localisation/length_class";i:37;s:21:"localisation/location";i:38;s:25:"localisation/order_status";i:39;s:26:"localisation/return_action";i:40;s:26:"localisation/return_reason";i:41;s:26:"localisation/return_status";i:42;s:25:"localisation/stock_status";i:43;s:22:"localisation/tax_class";i:44;s:21:"localisation/tax_rate";i:45;s:25:"localisation/weight_class";i:46;s:17:"localisation/zone";i:47;s:19:"marketing/affiliate";i:48;s:17:"marketing/contact";i:49;s:16:"marketing/coupon";i:50;s:19:"marketing/marketing";i:51;s:14:"module/account";i:52;s:16:"module/affiliate";i:53;s:20:"module/amazon_button";i:54;s:19:"module/amazon_login";i:55;s:17:"module/amazon_pay";i:56;s:13:"module/banner";i:57;s:17:"module/bestseller";i:58;s:15:"module/carousel";i:59;s:15:"module/category";i:60;s:19:"module/ebay_listing";i:61;s:15:"module/featured";i:62;s:13:"module/filter";i:63;s:22:"module/google_hangouts";i:64;s:11:"module/html";i:65;s:18:"module/information";i:66;s:13:"module/latest";i:67;s:16:"module/pp_button";i:68;s:15:"module/pp_login";i:69;s:16:"module/slideshow";i:70;s:14:"module/special";i:71;s:12:"module/store";i:72;s:14:"openbay/amazon";i:73;s:22:"openbay/amazon_listing";i:74;s:22:"openbay/amazon_product";i:75;s:16:"openbay/amazonus";i:76;s:24:"openbay/amazonus_listing";i:77;s:24:"openbay/amazonus_product";i:78;s:12:"openbay/ebay";i:79;s:20:"openbay/ebay_profile";i:80;s:21:"openbay/ebay_template";i:81;s:12:"openbay/etsy";i:82;s:20:"openbay/etsy_product";i:83;s:21:"openbay/etsy_shipping";i:84;s:17:"openbay/etsy_shop";i:85;s:23:"payment/amazon_checkout";i:86;s:24:"payment/amazon_login_pay";i:87;s:24:"payment/authorizenet_aim";i:88;s:24:"payment/authorizenet_sim";i:89;s:21:"payment/bank_transfer";i:90;s:22:"payment/bluepay_hosted";i:91;s:24:"payment/bluepay_redirect";i:92;s:14:"payment/cheque";i:93;s:11:"payment/cod";i:94;s:17:"payment/firstdata";i:95;s:24:"payment/firstdata_remote";i:96;s:21:"payment/free_checkout";i:97;s:14:"payment/g2apay";i:98;s:17:"payment/globalpay";i:99;s:24:"payment/globalpay_remote";i:100;s:22:"payment/klarna_account";i:101;s:22:"payment/klarna_invoice";i:102;s:14:"payment/liqpay";i:103;s:14:"payment/nochex";i:104;s:15:"payment/paymate";i:105;s:16:"payment/paypoint";i:106;s:13:"payment/payza";i:107;s:26:"payment/perpetual_payments";i:108;s:18:"payment/pp_express";i:109;s:18:"payment/pp_payflow";i:110;s:25:"payment/pp_payflow_iframe";i:111;s:14:"payment/pp_pro";i:112;s:21:"payment/pp_pro_iframe";i:113;s:19:"payment/pp_standard";i:114;s:14:"payment/realex";i:115;s:21:"payment/realex_remote";i:116;s:22:"payment/sagepay_direct";i:117;s:22:"payment/sagepay_server";i:118;s:18:"payment/sagepay_us";i:119;s:24:"payment/securetrading_pp";i:120;s:24:"payment/securetrading_ws";i:121;s:14:"payment/skrill";i:122;s:19:"payment/twocheckout";i:123;s:28:"payment/web_payment_software";i:124;s:16:"payment/worldpay";i:125;s:16:"report/affiliate";i:126;s:25:"report/affiliate_activity";i:127;s:22:"report/affiliate_login";i:128;s:24:"report/customer_activity";i:129;s:22:"report/customer_credit";i:130;s:21:"report/customer_login";i:131;s:22:"report/customer_online";i:132;s:21:"report/customer_order";i:133;s:22:"report/customer_reward";i:134;s:16:"report/marketing";i:135;s:24:"report/product_purchased";i:136;s:21:"report/product_viewed";i:137;s:18:"report/sale_coupon";i:138;s:17:"report/sale_order";i:139;s:18:"report/sale_return";i:140;s:20:"report/sale_shipping";i:141;s:15:"report/sale_tax";i:142;s:17:"sale/custom_field";i:143;s:13:"sale/customer";i:144;s:20:"sale/customer_ban_ip";i:145;s:19:"sale/customer_group";i:146;s:10:"sale/order";i:147;s:14:"sale/recurring";i:148;s:11:"sale/return";i:149;s:12:"sale/voucher";i:150;s:18:"sale/voucher_theme";i:151;s:15:"setting/setting";i:152;s:13:"setting/store";i:153;s:16:"shipping/auspost";i:154;s:17:"shipping/citylink";i:155;s:14:"shipping/fedex";i:156;s:13:"shipping/flat";i:157;s:13:"shipping/free";i:158;s:13:"shipping/item";i:159;s:23:"shipping/parcelforce_48";i:160;s:15:"shipping/pickup";i:161;s:19:"shipping/royal_mail";i:162;s:12:"shipping/ups";i:163;s:13:"shipping/usps";i:164;s:15:"shipping/weight";i:165;s:11:"tool/backup";i:166;s:14:"tool/error_log";i:167;s:11:"tool/upload";i:168;s:12:"total/coupon";i:169;s:12:"total/credit";i:170;s:14:"total/handling";i:171;s:16:"total/klarna_fee";i:172;s:19:"total/low_order_fee";i:173;s:12:"total/reward";i:174;s:14:"total/shipping";i:175;s:15:"total/sub_total";i:176;s:9:"total/tax";i:177;s:11:"total/total";i:178;s:13:"total/voucher";i:179;s:8:"user/api";i:180;s:9:"user/user";i:181;s:20:"user/user_permission";i:182;s:13:"module/latest";}s:6:"modify";a:183:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:18:"common/filemanager";i:13;s:11:"common/menu";i:14;s:14:"common/profile";i:15;s:12:"common/stats";i:16;s:13:"design/banner";i:17;s:13:"design/layout";i:18;s:14:"extension/feed";i:19;s:15:"extension/fraud";i:20;s:19:"extension/installer";i:21;s:22:"extension/modification";i:22;s:16:"extension/module";i:23;s:17:"extension/openbay";i:24;s:17:"extension/payment";i:25;s:18:"extension/shipping";i:26;s:15:"extension/total";i:27;s:16:"feed/google_base";i:28;s:19:"feed/google_sitemap";i:29;s:15:"feed/openbaypro";i:30;s:18:"fraud/fraudlabspro";i:31;s:13:"fraud/maxmind";i:32;s:20:"localisation/country";i:33;s:21:"localisation/currency";i:34;s:21:"localisation/geo_zone";i:35;s:21:"localisation/language";i:36;s:25:"localisation/length_class";i:37;s:21:"localisation/location";i:38;s:25:"localisation/order_status";i:39;s:26:"localisation/return_action";i:40;s:26:"localisation/return_reason";i:41;s:26:"localisation/return_status";i:42;s:25:"localisation/stock_status";i:43;s:22:"localisation/tax_class";i:44;s:21:"localisation/tax_rate";i:45;s:25:"localisation/weight_class";i:46;s:17:"localisation/zone";i:47;s:19:"marketing/affiliate";i:48;s:17:"marketing/contact";i:49;s:16:"marketing/coupon";i:50;s:19:"marketing/marketing";i:51;s:14:"module/account";i:52;s:16:"module/affiliate";i:53;s:20:"module/amazon_button";i:54;s:19:"module/amazon_login";i:55;s:17:"module/amazon_pay";i:56;s:13:"module/banner";i:57;s:17:"module/bestseller";i:58;s:15:"module/carousel";i:59;s:15:"module/category";i:60;s:19:"module/ebay_listing";i:61;s:15:"module/featured";i:62;s:13:"module/filter";i:63;s:22:"module/google_hangouts";i:64;s:11:"module/html";i:65;s:18:"module/information";i:66;s:13:"module/latest";i:67;s:16:"module/pp_button";i:68;s:15:"module/pp_login";i:69;s:16:"module/slideshow";i:70;s:14:"module/special";i:71;s:12:"module/store";i:72;s:14:"openbay/amazon";i:73;s:22:"openbay/amazon_listing";i:74;s:22:"openbay/amazon_product";i:75;s:16:"openbay/amazonus";i:76;s:24:"openbay/amazonus_listing";i:77;s:24:"openbay/amazonus_product";i:78;s:12:"openbay/ebay";i:79;s:20:"openbay/ebay_profile";i:80;s:21:"openbay/ebay_template";i:81;s:12:"openbay/etsy";i:82;s:20:"openbay/etsy_product";i:83;s:21:"openbay/etsy_shipping";i:84;s:17:"openbay/etsy_shop";i:85;s:23:"payment/amazon_checkout";i:86;s:24:"payment/amazon_login_pay";i:87;s:24:"payment/authorizenet_aim";i:88;s:24:"payment/authorizenet_sim";i:89;s:21:"payment/bank_transfer";i:90;s:22:"payment/bluepay_hosted";i:91;s:24:"payment/bluepay_redirect";i:92;s:14:"payment/cheque";i:93;s:11:"payment/cod";i:94;s:17:"payment/firstdata";i:95;s:24:"payment/firstdata_remote";i:96;s:21:"payment/free_checkout";i:97;s:14:"payment/g2apay";i:98;s:17:"payment/globalpay";i:99;s:24:"payment/globalpay_remote";i:100;s:22:"payment/klarna_account";i:101;s:22:"payment/klarna_invoice";i:102;s:14:"payment/liqpay";i:103;s:14:"payment/nochex";i:104;s:15:"payment/paymate";i:105;s:16:"payment/paypoint";i:106;s:13:"payment/payza";i:107;s:26:"payment/perpetual_payments";i:108;s:18:"payment/pp_express";i:109;s:18:"payment/pp_payflow";i:110;s:25:"payment/pp_payflow_iframe";i:111;s:14:"payment/pp_pro";i:112;s:21:"payment/pp_pro_iframe";i:113;s:19:"payment/pp_standard";i:114;s:14:"payment/realex";i:115;s:21:"payment/realex_remote";i:116;s:22:"payment/sagepay_direct";i:117;s:22:"payment/sagepay_server";i:118;s:18:"payment/sagepay_us";i:119;s:24:"payment/securetrading_pp";i:120;s:24:"payment/securetrading_ws";i:121;s:14:"payment/skrill";i:122;s:19:"payment/twocheckout";i:123;s:28:"payment/web_payment_software";i:124;s:16:"payment/worldpay";i:125;s:16:"report/affiliate";i:126;s:25:"report/affiliate_activity";i:127;s:22:"report/affiliate_login";i:128;s:24:"report/customer_activity";i:129;s:22:"report/customer_credit";i:130;s:21:"report/customer_login";i:131;s:22:"report/customer_online";i:132;s:21:"report/customer_order";i:133;s:22:"report/customer_reward";i:134;s:16:"report/marketing";i:135;s:24:"report/product_purchased";i:136;s:21:"report/product_viewed";i:137;s:18:"report/sale_coupon";i:138;s:17:"report/sale_order";i:139;s:18:"report/sale_return";i:140;s:20:"report/sale_shipping";i:141;s:15:"report/sale_tax";i:142;s:17:"sale/custom_field";i:143;s:13:"sale/customer";i:144;s:20:"sale/customer_ban_ip";i:145;s:19:"sale/customer_group";i:146;s:10:"sale/order";i:147;s:14:"sale/recurring";i:148;s:11:"sale/return";i:149;s:12:"sale/voucher";i:150;s:18:"sale/voucher_theme";i:151;s:15:"setting/setting";i:152;s:13:"setting/store";i:153;s:16:"shipping/auspost";i:154;s:17:"shipping/citylink";i:155;s:14:"shipping/fedex";i:156;s:13:"shipping/flat";i:157;s:13:"shipping/free";i:158;s:13:"shipping/item";i:159;s:23:"shipping/parcelforce_48";i:160;s:15:"shipping/pickup";i:161;s:19:"shipping/royal_mail";i:162;s:12:"shipping/ups";i:163;s:13:"shipping/usps";i:164;s:15:"shipping/weight";i:165;s:11:"tool/backup";i:166;s:14:"tool/error_log";i:167;s:11:"tool/upload";i:168;s:12:"total/coupon";i:169;s:12:"total/credit";i:170;s:14:"total/handling";i:171;s:16:"total/klarna_fee";i:172;s:19:"total/low_order_fee";i:173;s:12:"total/reward";i:174;s:14:"total/shipping";i:175;s:15:"total/sub_total";i:176;s:9:"total/tax";i:177;s:11:"total/total";i:178;s:13:"total/voucher";i:179;s:8:"user/api";i:180;s:9:"user/user";i:181;s:20:"user/user_permission";i:182;s:13:"module/latest";}}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_voucher`
--

CREATE TABLE IF NOT EXISTS `2nine_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_voucher_history`
--

CREATE TABLE IF NOT EXISTS `2nine_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2nine_voucher_theme`
--

CREATE TABLE IF NOT EXISTS `2nine_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `2nine_voucher_theme`
--

INSERT INTO `2nine_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_voucher_theme_description`
--

CREATE TABLE IF NOT EXISTS `2nine_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2nine_voucher_theme_description`
--

INSERT INTO `2nine_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_weight_class`
--

CREATE TABLE IF NOT EXISTS `2nine_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `2nine_weight_class`
--

INSERT INTO `2nine_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_weight_class_description`
--

CREATE TABLE IF NOT EXISTS `2nine_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `2nine_weight_class_description`
--

INSERT INTO `2nine_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `2nine_zone`
--

CREATE TABLE IF NOT EXISTS `2nine_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4231 ;

--
-- Dumping data for table `2nine_zone`
--

INSERT INTO `2nine_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M''Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu''a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark''unik''', 'GEG', 1),
(184, 11, 'Kotayk''', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik''', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots'' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1),
(202, 14, 'Ober&ouml;sterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Th&uuml;ringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Pondicherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1);
INSERT INTO `2nine_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2737, 176, 'Gomo-Altaysk', 'GO', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul''yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'G&auml;vleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'J&auml;mtland', 'Z', 1),
(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, '&Ouml;rebro', 'T', 1),
(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'S&ouml;dermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'V&auml;rmland', 'S', 1),
(3091, 203, 'V&auml;sterbotten', 'AC', 1),
(3092, 203, 'V&auml;sternorrland', 'Y', 1),
(3093, 203, 'V&auml;stmanland', 'U', 1),
(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graub&uuml;nden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Z&uuml;rich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1);
INSERT INTO `2nine_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas''ka Oblast''', '71', 1),
(3481, 220, 'Chernihivs''ka Oblast''', '74', 1),
(3482, 220, 'Chernivets''ka Oblast''', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs''ka Oblast''', '12', 1),
(3485, 220, 'Donets''ka Oblast''', '14', 1),
(3486, 220, 'Ivano-Frankivs''ka Oblast''', '26', 1),
(3487, 220, 'Khersons''ka Oblast''', '65', 1),
(3488, 220, 'Khmel''nyts''ka Oblast''', '68', 1),
(3489, 220, 'Kirovohrads''ka Oblast''', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs''ka Oblast''', '32', 1),
(3492, 220, 'Luhans''ka Oblast''', '09', 1),
(3493, 220, 'L''vivs''ka Oblast''', '46', 1),
(3494, 220, 'Mykolayivs''ka Oblast''', '48', 1),
(3495, 220, 'Odes''ka Oblast''', '51', 1),
(3496, 220, 'Poltavs''ka Oblast''', '53', 1),
(3497, 220, 'Rivnens''ka Oblast''', '56', 1),
(3498, 220, 'Sevastopol''', '40', 1),
(3499, 220, 'Sums''ka Oblast''', '59', 1),
(3500, 220, 'Ternopil''s''ka Oblast''', '61', 1),
(3501, 220, 'Vinnyts''ka Oblast''', '05', 1),
(3502, 220, 'Volyns''ka Oblast''', '07', 1),
(3503, 220, 'Zakarpats''ka Oblast''', '21', 1),
(3504, 220, 'Zaporiz''ka Oblast''', '23', 1),
(3505, 220, 'Zhytomyrs''ka oblast''', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs''ka Oblast''', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1);

-- --------------------------------------------------------

--
-- Table structure for table `2nine_zone_to_geo_zone`
--

CREATE TABLE IF NOT EXISTS `2nine_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=110 ;

--
-- Dumping data for table `2nine_zone_to_geo_zone`
--

INSERT INTO `2nine_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
--
-- Database: `aintmtdo_banhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'MADEVN'),
(2, 'ALDO');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'VAY', NULL),
(2, 'GIAY', NULL),
(3, 'BOT', NULL);

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
(1, 'import_number_row', '16', 'NBR ROW IMPORT'),
(2, 'export_number_row', '8', 'NBR ROW EXPORT'),
(3, 'default_row_product_return', '5', 'NBR ROW IMPORT RETURN'),
(4, 'default_password', '123456', 'DEFAULT PASSWORD'),
(5, 'is_sale_for_all', '1', 'SALE ON/OFF'),
(6, 'default_number_line_spend', '5', 'NBR ROW SPEND'),
(7, 'listExportDefault_nbr_day_limit', '0', 'NBR DAY EXPORT'),
(8, 'nbr_day_default_export_returned', '0', 'NBR DAY EXPORT RETURN'),
(9, 'default_nbr_days_load_export', '10', 'NBR DAY EXPORT DEFAULT'),
(10, 'bonus_ratio', '100', 'BONUS RATIO'),
(11, 'init_money', '0', 'AMOUNT INIT'),
(12, 'timeout', '21600', 'SYSTEM TIMEOUT'),
(13, 'limit_default_customer_after_search', '100', 'NBR ROW CUS AFTER'),
(14, 'limit_default_customer_before_search', '10', 'NBR ROW CUS BEFORE'),
(15, 'nbr_customer_by_group_csv', '250', 'NBR CUSTOMER BY GROUP'),
(16, 'nbr_news_default', '20', 'NBR NEWS DEFAULT'),
(17, 'max_width_upload_img', '800', 'max_width_upload_img'),
(18, 'max_height_upload_img', '600', 'max_height_upload_img'),
(19, 'upload_img_quality', '1', 'upload_img_quality'),
(20, 'max_img_size_upload', '2000000', 'max_img_size_upload'),
(21, 'default_nbr_days_load_import', '20', 'default_nbr_days_load_import'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1595 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `tel`, `description`, `date`, `created_date`, `isboss`) VALUES
(1288, 'Khach le', 'aaaaaaaaa', 'Anh khach co the doi', '2015-06-12 20:54:04', '2014-03-01 23:42:54', '0'),
(1289, 'Chị Nga bạn A.Minh', '0977538189', NULL, '2015-10-08 15:57:36', '2015-10-08 15:57:36', '0'),
(1290, 'Anh An Pha bạn A.Minh', '0976106322', '', '2015-12-23 21:02:01', '2015-10-08 15:59:01', '0'),
(1291, 'Chị Châu', '0966807709', '', '2015-12-09 16:46:16', '2015-10-08 16:00:33', '0'),
(1292, 'Vân Anh bạn Bảo', '01649582526', NULL, '2015-10-08 16:02:54', '2015-10-08 16:02:54', '0'),
(1293, 'Vân bạn Bảo', '0967896058', NULL, '2015-10-08 16:03:59', '2015-10-08 16:03:59', '0'),
(1294, 'Chị Huyền', '01659693713', NULL, '2015-10-09 15:40:47', '2015-10-09 15:40:47', '0'),
(1295, 'Thảo bạn Bảo', '0987256180', '', '2015-10-10 18:03:34', '2015-10-10 17:14:13', '0'),
(1296, 'Chị Dung', '0972471268', NULL, '2015-10-10 17:15:07', '2015-10-10 17:15:07', '0'),
(1297, 'Chị Liên', '01694595224', NULL, '2015-10-10 17:15:56', '2015-10-10 17:15:56', '0'),
(1298, 'Chị Thủy', '0919307218', NULL, '2015-10-10 17:16:41', '2015-10-10 17:16:41', '0'),
(1299, 'Hoàn bạn Bảo', '0982899831', NULL, '2015-10-10 19:37:52', '2015-10-10 19:37:52', '0'),
(1300, 'Thảo(hd) bạn Bảo', '01663288549', '', '2015-11-07 14:23:41', '2015-10-11 12:39:21', '0'),
(1301, 'Chị Thanh', '0904528224', NULL, '2015-10-11 14:01:55', '2015-10-11 14:01:55', '0'),
(1302, 'Chị Phan Thị Nhiên', '01636096098', NULL, '2015-10-11 14:35:47', '2015-10-11 14:35:47', '0'),
(1303, 'Chị Diệu bạn chị Thanh', '123456789', NULL, '2015-10-11 14:57:57', '2015-10-11 14:57:57', '0'),
(1304, 'Chị Hoa Chi Linh', '123', NULL, '2015-10-11 15:04:53', '2015-10-11 15:04:53', '0'),
(1305, 'Chị Nguyệt', '0947916133', NULL, '2015-10-11 15:37:59', '2015-10-11 15:37:59', '0'),
(1306, 'Bạn Nguyễn Duyên', '0985737280', 'lỖI HỞ KHE', '2015-10-30 20:04:04', '2015-10-11 16:45:42', '0'),
(1307, 'Bạn Vũ Thị Thu', '0984369560', NULL, '2015-10-11 17:04:13', '2015-10-11 17:04:13', '0'),
(1308, 'Chị Thúy', '0968908225', NULL, '2015-10-11 17:28:13', '2015-10-11 17:28:13', '0'),
(1309, 'Chị Nguyễn Lan Anh khách onl của Bảo ', '0979959366', '', '2015-11-23 21:19:10', '2015-10-11 17:46:07', '0'),
(1310, 'Chị Hương', '0969734415', NULL, '2015-10-11 18:00:01', '2015-10-11 18:00:01', '0'),
(1311, 'Chị Hạnh', '0964478295', NULL, '2015-10-11 18:42:31', '2015-10-11 18:42:31', '0'),
(1312, 'B Nguyễn Thị Hương Trang', '0906295666', NULL, '2015-10-11 19:19:43', '2015-10-11 19:19:43', '0'),
(1313, 'Chị Ngọc', '0982804672', '', '2015-10-12 18:05:44', '2015-10-12 12:55:33', '0'),
(1314, 'Chị Hà', '0975595127', '', '2015-11-03 19:19:30', '2015-10-12 12:56:14', '0'),
(1315, 'Chị Nguyên', '0972187992', NULL, '2015-10-12 19:46:22', '2015-10-12 19:46:22', '0'),
(1316, 'Chị Mai', '01674312022', NULL, '2015-10-12 19:50:26', '2015-10-12 19:50:26', '0'),
(1317, 'Chị Huyền', '0986230100', '', '2015-11-16 20:36:07', '2015-10-12 20:34:21', '0'),
(1318, 'Chị Ánh', '01648401573', NULL, '2015-10-12 21:21:02', '2015-10-12 21:21:02', '0'),
(1319, 'Chị Trang', '0987216186', NULL, '2015-10-12 21:21:57', '2015-10-12 21:21:57', '0'),
(1320, 'Chị Huyền', '0982390608', NULL, '2015-10-13 12:51:42', '2015-10-13 12:51:42', '0'),
(1321, 'Chị Vân', '0988686743', '', '2015-11-18 17:45:03', '2015-10-13 18:51:04', '0'),
(1322, 'Chị Hường', '0968807758', NULL, '2015-10-13 18:52:10', '2015-10-13 18:52:10', '0'),
(1323, 'Chị Trang', '0975390127', NULL, '2015-10-14 10:22:09', '2015-10-14 10:22:09', '0'),
(1324, 'Chị Hà', '0947665055', NULL, '2015-10-14 10:22:59', '2015-10-14 10:22:59', '0'),
(1325, 'Chị Huyền', '0984417418', NULL, '2015-10-14 10:23:34', '2015-10-14 10:23:34', '0'),
(1326, 'Chị Yến', '0949140084', NULL, '2015-10-14 18:34:33', '2015-10-14 18:34:33', '0'),
(1327, 'Chị Thơm', '01662622864', NULL, '2015-10-11 18:53:46', '2015-10-11 18:53:46', '0'),
(1328, 'Bảo', '01649785255', '', '2015-12-22 16:27:49', '2015-10-14 19:33:02', '1'),
(1329, 'Chị Sửu chủ nhà', '1234', NULL, '2015-10-14 22:53:28', '2015-10-14 22:53:28', '0'),
(1330, 'Chị Ly', '0973342784', '', '2015-11-28 21:49:04', '2015-10-15 16:15:37', '0'),
(1331, 'Chị Hồng', '0974433728', NULL, '2015-10-15 20:45:04', '2015-10-15 20:45:04', '0'),
(1332, 'Chị Phương', '0904480090', NULL, '2015-10-16 10:45:17', '2015-10-16 10:45:17', '0'),
(1333, 'Hà Huyền bạn Bảo', '01649784180', NULL, '2015-10-16 12:48:42', '2015-10-16 12:48:42', '0'),
(1334, 'Minh Thu Bạn Bảo', '1234567890', NULL, '2015-10-16 12:54:04', '2015-10-16 12:54:04', '0'),
(1335, 'Chị Hồng', '0968285173', '', '2015-10-16 18:13:13', '2015-10-16 19:45:49', '0'),
(1336, 'Chị Quỳnh', '0983119383', '', '2015-11-17 16:49:58', '2015-10-16 19:47:02', '0'),
(1337, 'Chị Ly', '0903435092', NULL, '2015-10-16 19:47:56', '2015-10-16 19:47:56', '0'),
(1338, 'Cháu Vân Anh anh Khải', '1', NULL, '2015-10-16 19:48:44', '2015-10-16 19:48:44', '0'),
(1339, 'Chị Hường', '0976583360', NULL, '2015-10-16 21:39:02', '2015-10-16 21:39:02', '0'),
(1340, 'Anh Biển bạn anh Minh', '12', NULL, '2015-10-17 23:06:56', '2015-10-17 23:06:56', '0'),
(1341, 'Anh Việt Anh', '0914846662', '', '2015-12-18 19:18:36', '2015-10-17 23:07:57', '0'),
(1342, 'Hai em bạn Anh Minh', '012', NULL, '2015-10-17 23:09:25', '2015-10-17 23:09:25', '0'),
(1343, 'Hai anh chị sắp cưới bạn Anh Mình', '0123', NULL, '2015-10-17 23:12:17', '2015-10-17 23:12:17', '0'),
(1344, 'Chị Hoa', '01696185586', NULL, '2015-10-17 23:13:00', '2015-10-17 23:13:00', '0'),
(1345, 'Chị Uyển Chi khách Online', '0968698975', NULL, '2015-10-17 23:14:27', '2015-10-17 23:14:27', '0'),
(1346, 'Chị Định công ty Anh Minh', '0977414216', NULL, '2015-10-17 23:15:10', '2015-10-17 23:15:10', '0'),
(1347, 'Chị Yến', '0987566213', NULL, '2015-10-18 11:55:36', '2015-10-18 11:55:36', '0'),
(1348, 'Em Lê bạn Bảo', '01649590120', '', '2015-10-18 18:20:41', '2015-10-18 16:49:58', '0'),
(1349, 'Em Bùi Thị Vân bạn Bảo', '01234', NULL, '2015-10-18 16:50:40', '2015-10-18 16:50:40', '0'),
(1350, 'Chị Hải', '0969308927', '', '2015-10-29 17:43:42', '2015-10-18 16:51:07', '0'),
(1351, 'Chị Hằng', '01869898868', NULL, '2015-10-18 20:16:04', '2015-10-18 20:16:04', '0'),
(1352, 'Chị Hương', '0974941269', NULL, '2015-10-19 13:31:56', '2015-10-19 13:31:56', '0'),
(1353, 'Em Hà', '0987307671', NULL, '2015-10-19 16:34:20', '2015-10-19 16:34:20', '0'),
(1354, 'Chị Hồng', '0984599932', '', '2015-12-14 14:04:07', '2015-10-19 16:48:16', '0'),
(1355, 'Chị Hoài Anh', '0985121225', '', '2015-12-18 15:53:56', '2015-10-19 16:01:47', '0'),
(1356, 'Chị Hoài Anh', '0985941269', NULL, '2015-10-19 16:29:44', '2015-10-19 16:29:44', '0'),
(1357, 'Chị Bách', '0973312388', NULL, '2015-10-20 17:42:19', '2015-10-20 17:42:19', '0'),
(1358, 'Chị Lan Anh', '0966383159', '', '2015-11-29 15:53:03', '2015-10-20 19:21:15', '0'),
(1359, 'Em Thảo Ngy Kiên bạn Bảo', '0983298236', NULL, '2015-10-20 20:45:22', '2015-10-20 20:45:22', '0'),
(1360, 'Vũ bạn Bảo', '0962862119', NULL, '2015-10-20 00:17:04', '2015-10-20 00:17:04', '0'),
(1361, 'Chị Nga', '0989310678', NULL, '2015-10-21 11:53:28', '2015-10-21 11:53:28', '0'),
(1362, 'Em Linh', '01654184210', NULL, '2015-10-21 14:59:05', '2015-10-21 14:59:05', '0'),
(1363, 'Chị Ngọc', '0979034836', '', '2015-10-21 18:25:37', '2015-10-21 20:22:58', '0'),
(1364, 'Bạn Trang ', '01642395171', '', '2015-10-21 18:26:17', '2015-10-21 20:24:51', '0'),
(1365, 'Chị Hằng', '01686348616', NULL, '2015-10-22 12:08:50', '2015-10-22 12:08:50', '0'),
(1366, 'Chị Hường', '0948353584', '', '2015-12-19 16:09:08', '2015-10-23 14:49:32', '0'),
(1367, 'Chị Oanh', '01233668665', '', '2015-11-04 13:19:08', '2015-10-23 21:03:23', '0'),
(1368, 'Chị Phương', '0912433678', '', '2015-10-23 18:42:24', '2015-10-23 21:04:19', '0'),
(1369, 'Dì Tùng', '0987077585', '', '2015-10-24 20:57:41', '2015-10-24 12:02:29', '0'),
(1370, 'Chị Minh', '0976556728', NULL, '2015-10-24 12:11:52', '2015-10-24 12:11:52', '0'),
(1371, 'Chị Thủy', '098463083', NULL, '2015-10-24 20:59:37', '2015-10-24 20:59:37', '0'),
(1372, 'Chị Duyên', '0982732821', '', '2015-10-24 18:44:18', '2015-10-24 21:00:47', '0'),
(1373, 'Chị Thủy', '0904578388', NULL, '2015-10-24 21:01:24', '2015-10-24 21:01:24', '0'),
(1374, 'Chị Nga', '0973454137', NULL, '2015-10-25 13:44:57', '2015-10-25 13:44:57', '0'),
(1375, 'Chị Nga', '0945616646', NULL, '2015-10-25 13:45:18', '2015-10-25 13:45:18', '0'),
(1376, 'Chị Hoàng Nga Khách onl của Bảo', '01668080331', '', '2015-10-22 18:26:53', '2015-10-25 13:46:22', '0'),
(1377, 'Chị Hà', '0944227498', '', '2015-10-31 20:08:02', '2015-10-25 17:06:21', '0'),
(1378, 'Bạn Liên', '0972016095', NULL, '2015-10-25 17:12:44', '2015-10-25 17:12:44', '0'),
(1379, 'Huệ Vy bạn Bảo', '0988430202', NULL, '2015-10-08 18:01:56', '2015-10-08 18:01:56', '0'),
(1380, 'Chị Huyền', '0914894934', NULL, '2015-10-12 18:06:51', '2015-10-12 18:06:51', '0'),
(1381, 'Cô Lợi', '0904263059', '', '2015-10-15 18:12:08', '2015-10-25 18:11:11', '0'),
(1382, 'Chị Hậu', '0948929988', NULL, '2015-10-16 18:14:07', '2015-10-16 18:14:07', '0'),
(1383, 'Chị Hạnh', '01696237989', NULL, '2015-10-16 18:15:13', '2015-10-16 18:15:13', '0'),
(1384, 'Anh Trung', '01687506684', NULL, '2015-10-17 18:18:20', '2015-10-17 18:18:20', '0'),
(1385, 'Chị Nhung', '0985266374', NULL, '2015-10-20 18:24:31', '2015-10-20 18:24:31', '0'),
(1386, 'Chị Ngọc', '0985625593', NULL, '2015-10-22 18:28:48', '2015-10-22 18:28:48', '0'),
(1387, 'Chị Nguyễn Lai fb Bảo', '01659630716', '', '2015-10-22 18:32:25', '2015-10-25 18:31:56', '0'),
(1388, 'Chị Dung', '01689468168', NULL, '2015-10-22 18:33:11', '2015-10-22 18:33:11', '0'),
(1389, 'Chị Hương', '0979454558', NULL, '2015-10-26 11:16:09', '2015-10-26 11:16:09', '0'),
(1390, 'Chị Xuyên', '0915176787', NULL, '2015-10-26 15:50:16', '2015-10-26 15:50:16', '0'),
(1391, 'Chị Trang', '0966860790', NULL, '2015-10-26 21:41:51', '2015-10-26 21:41:51', '0'),
(1392, 'Chị Việt Anh khách onl của Bảo', '01656300816', NULL, '2015-10-26 21:42:37', '2015-10-26 21:42:37', '0'),
(1393, 'Anh Hiện', '0975211896', '', '2015-10-28 11:41:31', '2015-10-27 10:46:23', '0'),
(1394, 'Em Trang Nội Vụ', '01694568566', NULL, '2015-10-27 13:11:22', '2015-10-27 13:11:22', '0'),
(1395, 'Chị khách đi ô tô', '0', NULL, '2015-10-27 15:39:39', '2015-10-27 15:39:39', '0'),
(1396, 'Học sinh chị Châu', '0986993876', NULL, '2015-10-27 18:19:00', '2015-10-27 18:19:00', '0'),
(1397, 'Chị Lê Hương Lan Khách onl của Bảo', '01675802935', '', '2015-12-13 11:08:47', '2015-10-27 20:37:13', '0'),
(1398, 'Chị Thúy', '01642856353', NULL, '2015-10-27 21:09:57', '2015-10-27 21:09:57', '0'),
(1399, 'Chị Thủy', '072', NULL, '2015-10-28 19:55:21', '2015-10-28 19:55:21', '0'),
(1400, 'Chị Hằng', '0949523179', NULL, '2015-10-29 12:38:25', '2015-10-29 12:38:25', '0'),
(1401, 'Chị Nguyễn Thị Thêu', '0979597186', NULL, '2015-10-29 15:03:41', '2015-10-29 15:03:41', '0'),
(1402, 'Bạn Yến', '0983280940', NULL, '2015-10-29 18:08:55', '2015-10-29 18:08:55', '0'),
(1403, 'Chị Nguyễn Hằng fb Hang Nguyen fb Bảo', '100', 'Tòa nhà 319 63 Lê Văn Lương', '2015-12-15 16:43:41', '2015-10-29 18:14:47', '0'),
(1404, 'Chị Thanh chị Thảo bạn Bảo', '0936442396', NULL, '2015-10-29 18:35:51', '2015-10-29 18:35:51', '0'),
(1405, 'Bạn Mai fb Má Núm bạn Bảo', '0986552840', '', '2015-11-24 10:52:42', '2015-10-29 18:37:40', '0'),
(1406, 'Anh Tiến', '0919742186', NULL, '2015-10-29 19:02:45', '2015-10-29 19:02:45', '0'),
(1407, 'Chị Nga fb Thanhnga Nguyen', '0947763585', NULL, '2015-10-30 10:50:50', '2015-10-30 10:50:50', '0'),
(1408, 'Cô Lê', '0904369717', '', '2015-12-09 20:56:24', '2015-10-30 20:43:45', '0'),
(1409, 'Chị Thoa', '0966580589', NULL, '2015-10-31 20:00:08', '2015-10-31 20:00:08', '0'),
(1410, 'Chị Đỗ Thuần Phương khách onl của Bảo', '0902263626', '169 Lê Thánh Tông, TP Hạ Long, tỉnh Quảng Ninh', '2015-12-22 16:35:06', '2015-11-01 11:20:41', '0'),
(1411, 'Em Nguyễn Thị Bích Thảo khách onl của Bảo', '01648613490', NULL, '2015-11-01 11:29:37', '2015-11-01 11:29:37', '0'),
(1412, 'Bạn Hồng Hạnh fb Hong Hanh Nguyen fb Bảo', '0987483934', NULL, '2015-11-01 14:10:12', '2015-11-01 14:10:12', '0'),
(1413, 'Chị Giang', '0917399982', NULL, '2015-11-03 19:20:13', '2015-11-03 19:20:13', '0'),
(1414, 'Chị Hằng', '0968302269', '', '2015-11-10 20:12:57', '2015-11-04 12:44:38', '0'),
(1415, 'Chị Đàm Hà fb Hà Đàm', '0979293222', NULL, '2015-11-04 21:52:28', '2015-11-04 21:52:28', '0'),
(1416, 'Chị Oanh', '0986169161', NULL, '2015-11-05 16:19:24', '2015-11-05 16:19:24', '0'),
(1417, 'Chị Thu', '0968757893', NULL, '2015-11-05 16:36:58', '2015-11-05 16:36:58', '0'),
(1418, 'Em Trần Thị Minh Thương', '01689929286', NULL, '2015-11-05 18:37:06', '2015-11-05 18:37:06', '0'),
(1419, 'Chị Dung fb Thiên Bình', '0963966966', NULL, '2015-11-05 20:02:01', '2015-11-05 20:02:01', '0'),
(1420, 'Chị Thùy', '0984315747', '', '2015-11-06 14:18:47', '2015-11-06 10:39:00', '0'),
(1421, 'Chị Tú bạn chị châu', '0', NULL, '2015-11-06 16:10:30', '2015-11-06 16:10:30', '0'),
(1422, 'Chị huyền', '0973101109', NULL, '2015-11-06 17:12:00', '2015-11-06 17:12:00', '0'),
(1423, 'Chị Hậu', '0904231084', NULL, '2015-11-06 18:36:09', '2015-11-06 18:36:09', '0'),
(1424, 'Quỳnh bạn Bảo ', '0983276228', NULL, '2015-11-06 19:05:08', '2015-11-06 19:05:08', '0'),
(1425, 'Em Linh Trịnh bạn Bảo', '01687587457', NULL, '2015-11-07 12:31:58', '2015-11-07 12:31:58', '0'),
(1426, 'Chị Nguyệt ', '0969452269', NULL, '2015-11-05 14:18:02', '2015-11-05 14:18:02', '0'),
(1427, 'Chị Hoàng Ánh Tuyết khách onl của Bảo', '0987355567', NULL, '2015-11-06 14:19:59', '2015-11-06 14:19:59', '0'),
(1428, 'Chị Đinh Thị Loan', '01659304753', NULL, '2015-11-07 14:31:42', '2015-11-07 14:31:42', '0'),
(1429, 'Quỳnh Maruko bạn Bảo', '0973535002', NULL, '2015-11-07 14:35:08', '2015-11-07 14:35:08', '0'),
(1430, 'Chị Ngọc', '01678868222', NULL, '2015-11-07 16:39:25', '2015-11-07 16:39:25', '0'),
(1431, 'Khách onl của Chị Châu', '0968553266', NULL, '2015-11-07 16:41:10', '2015-11-07 16:41:10', '0'),
(1432, 'Chị Hiền', '0987547078', NULL, '2015-11-07 16:58:40', '2015-11-07 16:58:40', '0'),
(1433, 'Chị Hạ', '0982577788', NULL, '2015-11-07 19:17:18', '2015-11-07 19:17:18', '0'),
(1434, 'Chị Thủy', '0976261125', '', '2015-12-17 15:50:55', '2015-11-09 18:35:04', '0'),
(1435, 'Chị Hường', '0983795467', NULL, '2015-11-09 18:46:33', '2015-11-09 18:46:33', '0'),
(1436, 'Chị Ngà ', '0972412828', NULL, '2015-11-09 19:25:59', '2015-11-09 19:25:59', '0'),
(1437, 'Chị Hoa', '0987798582', NULL, '2015-11-09 19:28:35', '2015-11-09 19:28:35', '0'),
(1438, 'Chị Hải', '0979507072', NULL, '2015-11-09 20:04:10', '2015-11-09 20:04:10', '0'),
(1439, 'Chị Hương', '0988750730', NULL, '2015-11-09 20:59:57', '2015-11-09 20:59:57', '0'),
(1440, 'Bạn Lương', '01693613662', NULL, '2015-11-09 21:58:39', '2015-11-09 21:58:39', '0'),
(1441, 'Chị Hương', '0973532904', NULL, '2015-11-10 14:06:09', '2015-11-10 14:06:09', '0'),
(1442, 'Chị Hằng', '01698629719', NULL, '2015-11-10 15:19:14', '2015-11-10 15:19:14', '0'),
(1443, 'Vợ chồng anh Quân Anh', '0', NULL, '2015-11-10 21:37:52', '2015-11-10 21:37:52', '0'),
(1444, 'Chị Nguyễn Thị Ngọc Thúy', '0983649289', NULL, '2015-11-11 18:00:32', '2015-11-11 18:00:32', '0'),
(1445, 'Chị Nhi', '01646851996', NULL, '2015-11-11 20:08:53', '2015-11-11 20:08:53', '0'),
(1446, 'Anh Long', '0969850833', NULL, '2015-11-12 14:47:51', '2015-11-12 14:47:51', '0'),
(1447, 'Chị Dung', '0973549035', NULL, '2015-11-12 16:19:28', '2015-11-12 16:19:28', '0'),
(1448, 'Chị Chuyên', '0983587941', '', '2015-12-07 15:58:34', '2015-11-12 16:24:43', '0'),
(1449, 'Em Nhung', '01634143200', '', '2015-11-30 20:24:47', '2015-11-12 19:51:02', '0'),
(1450, 'Chị Tuyên', '01693629827 ', NULL, '2015-11-12 20:29:54', '2015-11-12 20:29:54', '0'),
(1451, 'Huế bạn Bảo ', '0982649048', NULL, '2015-11-13 14:59:16', '2015-11-13 14:59:16', '0'),
(1452, 'Chị Hương', '0983287169', NULL, '2015-11-13 14:59:28', '2015-11-13 14:59:28', '0'),
(1453, 'Chị Hường', '0967775078', NULL, '2015-11-13 18:51:49', '2015-11-13 18:51:49', '0'),
(1454, 'Chị Phúc', '0986594922', '', '2015-11-14 20:30:01', '2015-11-13 21:19:26', '0'),
(1455, 'Chị Diệu', '0983754515', NULL, '2015-11-15 16:45:42', '2015-11-15 16:45:42', '0'),
(1456, 'Chị Nhung', '0936175558', NULL, '2015-11-16 18:14:54', '2015-11-16 18:14:54', '0'),
(1457, 'Chị Vân', '09699300090', NULL, '2015-11-16 19:42:33', '2015-11-16 19:42:33', '0'),
(1458, 'Chị Oanh', '01226346968', NULL, '2015-11-17 11:11:59', '2015-11-17 11:11:59', '0'),
(1459, 'Chị Mơ', '0964681031', NULL, '2015-11-17 14:19:56', '2015-11-17 14:19:56', '0'),
(1460, 'Chị Dung', '0979603315', NULL, '2015-11-17 14:21:16', '2015-11-17 14:21:16', '0'),
(1461, 'Chị Chinh', '01297550636', NULL, '2015-11-17 14:22:04', '2015-11-17 14:22:04', '0'),
(1462, 'Chị Yến', '01643200604', NULL, '2015-11-17 18:59:36', '2015-11-17 18:59:36', '0'),
(1463, 'Chị Dương', '0977389888', '', '2015-12-08 18:28:00', '2015-11-18 18:29:23', '0'),
(1464, 'Chị Nga', '0986467233', NULL, '2015-11-19 17:56:58', '2015-11-19 17:56:58', '0'),
(1465, 'Chị Ngọc', '01698103945', NULL, '2015-11-19 18:54:20', '2015-11-19 18:54:20', '0'),
(1466, 'Em Linh', '0975960157', NULL, '2015-11-19 20:37:38', '2015-11-19 20:37:38', '0'),
(1467, 'Chị Huyền', '0974268998', NULL, '2015-11-20 12:29:44', '2015-11-20 12:29:44', '0'),
(1468, 'Chị Đường', '0915365074', '', '2015-12-05 17:38:40', '2015-11-21 12:30:41', '0'),
(1469, 'Em Linh', '01673598553', NULL, '2015-11-21 18:53:19', '2015-11-21 18:53:19', '0'),
(1470, 'Em Phương', '01685444001', NULL, '2015-11-21 18:54:53', '2015-11-21 18:54:53', '0'),
(1471, 'Chị Lan', '0968072666', NULL, '2015-11-21 18:55:22', '2015-11-21 18:55:22', '0'),
(1472, 'Chị Oanh', '0989032164', NULL, '2015-11-21 18:56:36', '2015-11-21 18:56:36', '0'),
(1473, 'Bạn Hằng khách onl của Bảo', '0961861298', '', '2015-12-06 15:39:22', '2015-11-21 19:04:38', '0'),
(1474, 'Chị My', '0988330988', NULL, '2015-11-21 20:11:00', '2015-11-21 20:11:00', '0'),
(1475, 'Chị Minh', '0948656068', NULL, '2015-11-22 13:29:38', '2015-11-22 13:29:38', '0'),
(1476, 'Chị Khách ', '0975659696', NULL, '2015-11-22 20:46:05', '2015-11-22 20:46:05', '0'),
(1477, 'Chị Thoa', '0903400168', NULL, '2015-11-23 16:52:36', '2015-11-23 16:52:36', '0'),
(1478, 'Chị Thúy', '0936710011', NULL, '2015-11-23 16:53:04', '2015-11-23 16:53:04', '0'),
(1479, 'Chị Miền', '01633635411', NULL, '2015-11-23 21:12:08', '2015-11-23 21:12:08', '0'),
(1480, 'Linh Giang bạn Bảo ', '0979894143', 'Triệu Sơn - Thanh Hóa', '2015-11-24 10:56:51', '2015-11-24 10:55:11', '0'),
(1481, 'Chị Ngọc', '0904328831', '', '2015-12-02 20:25:28', '2015-11-24 17:09:51', '0'),
(1482, 'Chị Hương', '01692118287', NULL, '2015-11-24 17:45:05', '2015-11-24 17:45:05', '0'),
(1483, 'Chị Nga', '0987501991', NULL, '2015-11-25 15:12:27', '2015-11-25 15:12:27', '0'),
(1484, 'Chị  Nhung', '01667407072', NULL, '2015-11-25 15:29:54', '2015-11-25 15:29:54', '0'),
(1485, 'Chị Oanh', '01649725326', '', '2015-12-01 18:57:08', '2015-11-27 17:46:25', '0'),
(1486, 'Chị Thảo', '0977461356', NULL, '2015-11-27 18:10:23', '2015-11-27 18:10:23', '0'),
(1487, 'Chị Duyên', '0906218989', '', '2015-12-12 15:59:26', '2015-11-28 12:18:58', '0'),
(1488, 'Chị Thảo', '01659732868', NULL, '2015-11-28 17:41:59', '2015-11-28 17:41:59', '0'),
(1489, 'Chị Hoàng Thị Tường Vy ', '0935618149', NULL, '2015-11-28 18:29:17', '2015-11-28 18:29:17', '0'),
(1490, 'Chị Thường', '0918550656', NULL, '2015-11-28 19:00:12', '2015-11-28 19:00:12', '0'),
(1491, 'Cô Hằng ', '0914637366', NULL, '2015-11-28 19:52:21', '2015-11-28 19:52:21', '0'),
(1492, 'Chị Linh', '0972282329', NULL, '2015-11-29 12:07:14', '2015-11-29 12:07:14', '0'),
(1493, 'Chị Ngọc ', '0941068994', NULL, '2015-11-29 12:12:56', '2015-11-29 12:12:56', '0'),
(1494, 'Chị Hoài bạn Bảo ', '0976931466', NULL, '2015-11-29 15:55:19', '2015-11-29 15:55:19', '0'),
(1495, 'Dương bạn Bảo', '01669398197', NULL, '2015-11-29 18:56:55', '2015-11-29 18:56:55', '0'),
(1496, 'Chị Vân Anh', '0934414569', NULL, '2015-11-29 19:24:14', '2015-11-29 19:24:14', '0'),
(1497, 'Chị Dung', '0988858383', NULL, '2015-11-30 16:06:27', '2015-11-30 16:06:27', '0'),
(1498, 'Chị Thủy ', '0969754045', NULL, '2015-11-30 17:39:26', '2015-11-30 17:39:26', '0'),
(1499, 'Chị Hương Anh ', '0984725838', NULL, '2015-11-30 18:10:15', '2015-11-30 18:10:15', '0'),
(1500, 'Chị Huyền', '0912364385', NULL, '2015-11-30 18:13:26', '2015-11-30 18:13:26', '0'),
(1501, 'Chị Vân Anh', '0983808183', NULL, '2015-11-30 20:44:31', '2015-11-30 20:44:31', '0'),
(1502, 'Bạn Uyên ', '0944288062', NULL, '2015-12-02 14:02:26', '2015-12-02 14:02:26', '0'),
(1503, 'Chị Phạm Diệu Linh', '0989323449', NULL, '2015-12-02 15:34:43', '2015-12-02 15:34:43', '0'),
(1504, 'Chị Liên', '01655899786', '', '2015-12-07 20:30:02', '2015-12-02 20:18:08', '0'),
(1505, 'Chị Linh', '0965650888', NULL, '2015-12-02 20:38:41', '2015-12-02 20:38:41', '0'),
(1506, 'Chị Sửu chủ nhà và bạn Chị Sửu', '0943708573', '', '2015-12-07 15:21:47', '2015-12-03 17:46:17', '0'),
(1507, 'Chị Vân Anh khách onl của bảo', '0917517483', '', '2015-12-08 13:36:58', '2015-12-04 11:20:39', '0'),
(1508, 'Chị Hằng', '0974167353', NULL, '2015-12-04 11:50:55', '2015-12-04 11:50:55', '0'),
(1509, 'Chị Trang', '0948655878', NULL, '2015-12-04 18:14:45', '2015-12-04 18:14:45', '0'),
(1510, 'Chị Xuân', '0962523636', NULL, '2015-12-05 12:40:52', '2015-12-05 12:40:52', '0'),
(1511, 'Chị Nguyễn Yến Thuy khách onl của Bảo ', '0961004248', NULL, '2015-12-05 15:26:10', '2015-12-05 15:26:10', '0'),
(1512, 'Chị Thủy', '01664396626', NULL, '2015-12-05 16:58:47', '2015-12-05 16:58:47', '0'),
(1513, 'Chị Hiền', '0982978428', NULL, '2015-12-05 17:30:23', '2015-12-05 17:30:23', '0'),
(1514, 'Thùy Linh bạn Bảo', '01682794434', NULL, '2015-12-05 17:51:52', '2015-12-05 17:51:52', '0'),
(1515, 'Chị Thùy Trang', '0974593610', NULL, '2015-12-05 18:27:40', '2015-12-05 18:27:40', '0'),
(1516, 'Chị Yến', '0915229567', NULL, '2015-12-05 18:28:44', '2015-12-05 18:28:44', '0'),
(1517, 'Chị Nguyệt ', '0979157118', NULL, '2015-12-05 20:38:39', '2015-12-05 20:38:39', '0'),
(1518, 'Chị Quyên', '0987245539', NULL, '2015-12-06 13:57:22', '2015-12-06 13:57:22', '0'),
(1519, 'Chị Trang', '0904334334', NULL, '2015-12-06 14:55:15', '2015-12-06 14:55:15', '0'),
(1520, 'Chị Hoài ', '0977061293', NULL, '2015-12-06 17:25:40', '2015-12-06 17:25:40', '0'),
(1521, 'Chị Hòa', '01262488898', NULL, '2015-12-06 19:06:37', '2015-12-06 19:06:37', '0'),
(1522, 'Cô Thanh', '0946634230', NULL, '2015-12-06 19:35:13', '2015-12-06 19:35:13', '0'),
(1523, 'Chị Hường', '0989108282', NULL, '2015-12-06 20:46:48', '2015-12-06 20:46:48', '0'),
(1524, 'Chị Mai Thị Hòa', '01678866827', NULL, '2015-12-06 21:08:18', '2015-12-06 21:08:18', '0'),
(1525, 'Chị Loan', '0964446848', NULL, '2015-12-06 21:42:19', '2015-12-06 21:42:19', '0'),
(1526, 'Chị Thu', '0912314768', NULL, '2015-12-08 13:35:06', '2015-12-08 13:35:06', '0'),
(1527, 'Anh Lân', '0934411689', '', '2015-12-10 16:19:47', '2015-12-08 13:35:57', '0'),
(1528, 'Chị Lan', '0903480222', '', '2015-12-22 19:06:31', '2015-12-08 19:18:05', '0'),
(1529, 'Chị Tuyết ', '0984097970', NULL, '2015-12-09 17:21:31', '2015-12-09 17:21:31', '0'),
(1530, 'Chị Nghiêm Thị Thu Hà', '01694321485', NULL, '2015-12-10 11:55:41', '2015-12-10 11:55:41', '0'),
(1531, 'Chị Nguyễn Thu Hà', '01626383471', NULL, '2015-12-10 12:58:50', '2015-12-10 12:58:50', '0'),
(1532, 'Chị Lý', '0989510622', '', '2015-12-18 15:52:08', '2015-12-10 17:20:57', '0'),
(1533, 'Hồng Bạn Bảo', '01656148986', '', '2015-12-16 18:46:05', '2015-12-10 18:46:22', '0'),
(1534, 'Chị Liên', '0969849888', NULL, '2015-12-10 20:36:35', '2015-12-10 20:36:35', '0'),
(1535, 'Chị Duyên', '0919981688', NULL, '2015-12-10 21:17:06', '2015-12-10 21:17:06', '0'),
(1536, 'Bạn Đào Ánh Ngọc ', '0979224781', NULL, '2015-12-10 21:56:10', '2015-12-10 21:56:10', '0'),
(1537, 'Chị Phượng ', '0984854059', NULL, '2015-12-11 15:31:58', '2015-12-11 15:31:58', '0'),
(1538, 'Chị Ngoan', '0912538789', NULL, '2015-12-11 15:38:04', '2015-12-11 15:38:04', '0'),
(1539, 'Bạn Phùng Thị Lan', '01664498876', NULL, '2015-12-11 16:54:10', '2015-12-11 16:54:10', '0'),
(1540, 'Chị Huyền', '0919275589', '', '2015-12-14 15:40:37', '2015-12-11 21:29:01', '0'),
(1541, 'Chị Trâm', '0944201086', NULL, '2015-12-11 21:45:11', '2015-12-11 21:45:11', '0'),
(1542, 'Chị Duyên', '0961348630', NULL, '2015-12-12 16:00:27', '2015-12-12 16:00:27', '0'),
(1543, 'Em Nguyễn Thúy khách onl của Bảo', '0919694495', NULL, '2015-12-12 16:04:09', '2015-12-12 16:04:09', '0'),
(1544, 'Chị Đỗ Thị Thu Phương', '0966524533', NULL, '2015-12-12 16:13:41', '2015-12-12 16:13:41', '0'),
(1545, 'Chị Huyền', '0945408888', NULL, '2015-12-12 16:49:45', '2015-12-12 16:49:45', '0'),
(1546, 'Chị Nhung', '01656228764', NULL, '2015-12-12 17:36:50', '2015-12-12 17:36:50', '0'),
(1547, 'Chị Vân Anh', '0949900669', 'Số 2, ngách 2/49 Định Công Thượng', '2015-12-12 23:59:44', '2015-12-12 19:09:25', '0'),
(1548, 'Chị Liễu', '01674356468', '', '2015-12-12 15:25:51', '2015-12-12 21:43:37', '0'),
(1549, 'Chị Ánh', '0976990338', NULL, '2015-12-13 11:43:52', '2015-12-13 11:43:52', '0'),
(1550, 'Chị Nguyệt ', '0986085976', NULL, '2015-12-13 12:55:22', '2015-12-13 12:55:22', '0'),
(1551, 'Chị Hương', '0982616618', '', '2015-12-13 15:37:53', '2015-12-13 16:50:04', '0'),
(1552, 'Chị Vân ', '0983106741', NULL, '2015-12-13 17:46:26', '2015-12-13 17:46:26', '0'),
(1553, 'Cô Quỳnh', '0903294806', '', '2015-12-13 15:46:37', '2015-12-13 18:52:36', '0'),
(1554, 'Chị Hồng', '0936577626', NULL, '2015-12-14 14:04:38', '2015-12-14 14:04:38', '0'),
(1555, 'Chị Trang', '0967226538', NULL, '2015-12-14 17:31:13', '2015-12-14 17:31:13', '0'),
(1556, 'Chị Dung', '0966906166', NULL, '2015-12-14 17:33:43', '2015-12-14 17:33:43', '0'),
(1557, 'Bạn Hiền', '0975936825', '', '2015-12-18 17:44:10', '2015-12-14 18:53:07', '0'),
(1558, 'Chị Thắm', '0912715649', NULL, '2015-12-14 19:29:16', '2015-12-14 19:29:16', '0'),
(1559, 'Chị Thanh Tú', '01233885884', '', '2015-12-14 21:17:50', '2015-12-14 20:55:11', '0'),
(1560, 'Chị Ngân ', '0945247554', NULL, '2015-12-14 21:20:11', '2015-12-14 21:20:11', '0'),
(1561, 'Chị Như Quỳnh', '0903456847', '', '2015-12-15 21:57:59', '2015-12-15 21:53:28', '0'),
(1562, 'Em Thương NV ', '0975448597', '', '2015-12-23 15:41:33', '2015-12-15 23:29:11', '0'),
(1563, 'Chị Hòa', '01665906888', NULL, '2015-12-16 12:51:36', '2015-12-16 12:51:36', '0'),
(1564, 'Chị Ngọc', '0987089969', NULL, '2015-12-16 16:06:59', '2015-12-16 16:06:59', '0'),
(1565, 'Chị Hồng Nhung', '0976219515', '', '2015-12-16 15:48:08', '2015-12-16 18:49:25', '0'),
(1566, 'Anh Thịnh', '0983626304', NULL, '2015-12-17 13:07:53', '2015-12-17 13:07:53', '0'),
(1567, 'Chị Dịu', '0985200628', NULL, '2015-12-17 16:51:21', '2015-12-17 16:51:21', '0'),
(1568, 'Chị Anh ', '0914046692', NULL, '2015-12-17 18:24:00', '2015-12-17 18:24:00', '0'),
(1569, 'Chị Hoài', '0986489145', NULL, '2015-12-17 18:26:42', '2015-12-17 18:26:42', '0'),
(1570, 'Chị Hà', '0979905088', NULL, '2015-12-18 14:12:53', '2015-12-18 14:12:53', '0'),
(1571, 'Cô Thủy ngõ 72', '0945136688', NULL, '2015-12-18 14:13:33', '2015-12-18 14:13:33', '0'),
(1572, 'Chị Mai Anh khách onl của Bảo', '0963868222', NULL, '2015-12-18 14:15:11', '2015-12-18 14:15:11', '0'),
(1573, 'Chị Thu', '0906137899', NULL, '2015-12-18 21:12:03', '2015-12-18 21:12:03', '0'),
(1574, 'Chị Linh', '0978949123', '', '2015-12-19 15:56:01', '2015-12-19 15:06:28', '0'),
(1575, 'Chị Linh', '0985698695', NULL, '2015-12-20 20:43:35', '2015-12-20 20:43:35', '0'),
(1576, 'Chị Vân', '09868620550', NULL, '2015-12-20 20:44:30', '2015-12-20 20:44:30', '0'),
(1577, 'Chị Liên', '01656102657', NULL, '2015-12-20 20:48:28', '2015-12-20 20:48:28', '0'),
(1578, 'Chị Phương', '0965665068', NULL, '2015-12-22 14:42:11', '2015-12-22 14:42:11', '0'),
(1579, 'A Minh', '0918888398', '', '2015-12-12 15:28:24', '2015-12-22 15:09:37', '1'),
(1580, 'Chị Lê Chủ nhà ', '000000000000', NULL, '2015-12-16 15:48:54', '2015-12-16 15:48:54', '0'),
(1581, 'Chị Hương', '0966752366', NULL, '2015-12-17 15:49:50', '2015-12-17 15:49:50', '0'),
(1582, 'Cô Chung ', '0979521378', NULL, '2015-12-19 16:07:55', '2015-12-19 16:07:55', '0'),
(1583, 'Em Toàn nhà bên ', '0911517218', NULL, '2015-12-22 17:59:48', '2015-12-22 17:59:48', '0'),
(1584, 'Chị Minh ', '0986109085', NULL, '2015-12-22 19:16:42', '2015-12-22 19:16:42', '0'),
(1585, 'Chị Quyên', '0949900621', NULL, '2015-12-22 20:14:34', '2015-12-22 20:14:34', '0'),
(1586, 'Chị Huyền', '0915883255', NULL, '2015-12-23 11:49:32', '2015-12-23 11:49:32', '0'),
(1587, 'Chị Mai ', '0936910333', NULL, '2015-12-23 11:50:06', '2015-12-23 11:50:06', '0'),
(1588, 'Hòa bạn Bảo ', '0', NULL, '2015-12-23 13:36:29', '2015-12-23 13:36:29', '0'),
(1589, 'Chị Ngọc ', '0985980598', NULL, '2015-12-23 15:05:38', '2015-12-23 15:05:38', '0'),
(1590, 'Chị Lộc ', '0984749344', NULL, '2015-12-23 17:37:38', '2015-12-23 17:37:38', '0'),
(1591, 'Chị Thảo ', '0965220391', NULL, '2015-12-23 18:08:05', '2015-12-23 18:08:05', '0'),
(1592, 'Bạn Quách Thị Hoa ', '01659015205', NULL, '2015-12-23 19:00:52', '2015-12-23 19:00:52', '0'),
(1593, 'Chị Phương', '01689936815', NULL, '2015-12-23 20:43:45', '2015-12-23 20:43:45', '0'),
(1594, 'Em Hồng Quý ', '0982643139', NULL, '2015-12-23 21:34:36', '2015-12-23 21:34:36', '0');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `customer_tel`, `customer_name`, `product_code`, `color`, `size`, `quantity`, `date`, `description`, `status`) VALUES
(1, '0962024224', 'Chị Bích', '0011', 'DEN', '36', 1, '2015-10-14 19:01:01', 'F. NIVARA ', 'Y'),
(2, '0962024224', 'Chị Bích', '0011', 'DEN', '36', 1, '2015-10-14 19:02:51', 'F.NIVARA', 'Y'),
(3, '0973342784', 'Chị Ly', '0036', 'KEM VÀNG', '38', 1, '2015-10-15 16:17:48', 'đôi nơ 5p có màu kem vàng', 'N'),
(4, '0974941269', 'Chị Hương', '0030', 'ĐEN', '38', 1, '2015-10-19 12:29:00', 'đế vuông 3p nơ giống bảo', 'N'),
(5, '1', 'Chị Phương Phan fb Bảo', '0073', 'ĐEN', '37,38', 1, '2015-10-25 17:54:03', 'Chị Phương Phan fb Bảo hỏi đôi da lộn nơ 7p màu đen size 37 38', 'Y'),
(6, '0989032164', 'Chị Oanh', '0079', 'ĐEN ', '37,38', 1, '2015-11-07 20:17:22', 'Giày da lộn 9p', 'Y'),
(7, '01698629719', 'Chị Hằng', '0075', 'KEM', '36', 1, '2015-11-14 17:03:43', 'đôi nơ 5p màu kem size 36', 'N'),
(8, '0974405836', 'Chị Nhung', '0081', 'HỒNG NHẠT', '36', 1, '2015-11-18 17:48:10', 'Skylight gót đũa ', 'N'),
(9, '0986552840', 'Bạn Mai fb Má Núm bạn Bảo', '0073', 'XANH', '37', 1, '2015-11-23 17:57:14', 'Em Mai hỏi đôi da lộn đế bạc màu xanh nơ size 37', 'Y'),
(10, '0906181616', 'Chị Loan ', '0090', 'ĐEN ', '35', 1, '2015-12-01 18:54:09', 'Đế đúp màu đen da xi size 35', 'Y'),
(11, '0906181616', 'Chị Loan ', '0040', 'ĐEN', '35', 1, '2015-12-01 18:54:41', 'đế đúp màu đen da xi size 35', 'Y'),
(12, '0976202110', 'Chị Quyên', '0008', 'ĐEN', '38', 1, '2015-12-02 15:17:09', 'Bốt cổ nhỡ màu đen size 38', 'N'),
(13, '0985061933', 'Chị Nhung', '0074', 'ĐEN', '38', 1, '2015-12-05 19:42:44', 'giày da cừu mũi nhọn màu đen size 38', 'N'),
(14, '0977986124', 'Chị Thảo', '0031', 'ĐỎ', '37', 1, '2015-12-06 13:48:40', 'Moka da miếng màu đỏ ', 'N'),
(15, '0908080555', 'Chị Hạnh ', '0079', 'ĐEN', '36', 1, '2015-12-11 18:14:32', 'Giầy da lộn 9p Uni ', 'N'),
(16, '0944201086', 'Chị Trâm', '0090', 'KEM', '37', 1, '2015-12-11 21:44:53', 'Đế đúp louboutin 11p ', 'N'),
(17, '0983287169', 'Chị Hương', '0110', 'ĐEN', '38.39', 1, '2015-12-17 17:18:06', 'Bốt da lộn gót vuông 5,7,8p', 'N');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `customer_reservation_histo`
--

INSERT INTO `customer_reservation_histo` (`id`, `customer_id`, `description`, `amount`, `status`, `date`, `complete_date`, `reserved_facture`, `complete_facture`) VALUES
(1, 1463, 'Chị Dương đặt đôi bốt màu đỏ đun size 38 120k ', '120', 'Y', '2015-11-18 18:29:23', '2015-12-08 18:28:00', '20151118_003', '20151208_005');

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

--
-- Dumping data for table `export_facture`
--

INSERT INTO `export_facture` (`code`, `customer_id`, `shop_id`, `description`, `date`, `user_id`, `isonline`) VALUES
('20151008_001', 1289, 1, '', '2015-10-08 15:57:36', 3, 'N'),
('20151008_002', 1290, 1, '', '2015-10-08 15:59:01', 3, 'N'),
('20151008_003', 1291, 1, '', '2015-10-08 16:00:33', 3, 'N'),
('20151008_004', 1292, 1, '', '2015-10-08 16:02:54', 3, 'N'),
('20151008_005', 1293, 1, '', '2015-10-08 16:03:59', 3, 'N'),
('20151008_006', 1288, 1, '', '2015-10-08 16:05:32', 3, 'N'),
('20151008_007', 1288, 1, '', '2015-10-08 16:06:59', 3, 'N'),
('20151008_008', 1288, 1, 'Bạn Hường em Thành Văn bạn Bảo ', '2015-10-08 18:00:19', 1, 'N'),
('20151008_009', 1379, 1, '', '2015-10-08 18:01:56', 1, 'N'),
('20151009_001', 1294, 1, '', '2015-10-09 15:40:47', 3, 'N'),
('20151009_002', 1288, 1, '', '2015-10-09 18:02:34', 1, 'N'),
('20151010_001', 1295, 1, '', '2015-10-10 17:14:13', 3, 'N'),
('20151010_002', 1296, 1, '', '2015-10-10 17:15:07', 3, 'N'),
('20151010_003', 1297, 1, '', '2015-10-10 17:15:56', 3, 'N'),
('20151010_004', 1298, 1, '', '2015-10-10 17:16:41', 3, 'N'),
('20151010_005', 1299, 1, '\n\n', '2015-10-10 19:37:52', 3, 'N'),
('20151010_006', 1295, 1, '', '2015-10-10 18:03:34', 1, 'N'),
('20151011_001', 1300, 1, '', '2015-10-11 12:39:21', 3, 'N'),
('20151011_002', 1288, 1, '', '2015-10-11 12:41:12', 3, 'N'),
('20151011_003', 1288, 1, '', '2015-10-11 12:42:38', 3, 'N'),
('20151011_004', 1301, 1, '', '2015-10-11 14:01:55', 3, 'N'),
('20151011_005', 1302, 1, '', '2015-10-11 14:35:47', 3, 'N'),
('20151011_006', 1303, 1, '', '2015-10-11 14:57:57', 3, 'N'),
('20151011_007', 1304, 1, '', '2015-10-11 15:04:53', 3, 'N'),
('20151011_008', 1305, 1, '', '2015-10-11 15:37:59', 3, 'N'),
('20151011_009', 1306, 1, 'FB: Giá Biển', '2015-10-11 16:45:42', 3, 'N'),
('20151011_010', 1307, 1, '', '2015-10-11 17:04:13', 3, 'N'),
('20151011_011', 1308, 1, '', '2015-10-11 17:28:13', 3, 'N'),
('20151011_012', 1309, 1, '1704Ct7G Dương Nội', '2015-10-11 17:46:07', 3, 'N'),
('20151011_013', 1310, 1, '', '2015-10-11 18:00:01', 3, 'N'),
('20151011_014', 1311, 1, '', '2015-10-11 18:42:31', 3, 'N'),
('20151011_015', 1312, 1, '', '2015-10-11 19:19:43', 3, 'N'),
('20151011_016', 1288, 1, '', '2015-10-11 20:23:30', 3, 'N'),
('20151011_017', 1327, 1, 'Triệu sơn. phí 25k', '2015-10-11 18:53:46', 1, 'Y'),
('20151011_018', 1300, 1, '', '2015-10-11 18:04:33', 1, 'N'),
('20151012_001', 1313, 1, '', '2015-10-12 12:55:33', 3, 'N'),
('20151012_002', 1314, 1, '', '2015-10-12 12:56:14', 3, 'N'),
('20151012_003', 1315, 1, '', '2015-10-12 19:46:22', 3, 'N'),
('20151012_004', 1316, 1, '', '2015-10-12 19:50:26', 3, 'N'),
('20151012_005', 1317, 1, '', '2015-10-12 20:34:21', 3, 'N'),
('20151012_006', 1318, 1, '', '2015-10-12 21:21:02', 3, 'N'),
('20151012_007', 1319, 1, '', '2015-10-12 21:21:57', 3, 'N'),
('20151012_008', 1313, 1, '', '2015-10-12 18:05:44', 1, 'N'),
('20151012_009', 1380, 1, '', '2015-10-12 18:06:51', 1, 'N'),
('20151012_010', 1288, 1, '', '2015-10-12 18:07:17', 1, 'N'),
('20151013_001', 1320, 1, '', '2015-10-13 12:51:42', 3, 'N'),
('20151013_002', 1321, 1, '', '2015-10-13 18:51:04', 3, 'N'),
('20151013_003', 1322, 1, '', '2015-10-13 18:52:10', 3, 'N'),
('20151014_001', 1323, 1, '', '2015-10-14 10:22:09', 3, 'N'),
('20151014_002', 1324, 1, '', '2015-10-14 10:22:59', 3, 'N'),
('20151014_003', 1325, 1, '', '2015-10-14 10:23:34', 3, 'N'),
('20151014_004', 1326, 1, '', '2015-10-14 18:34:33', 1, 'N'),
('20151014_005', 1329, 1, '', '2015-10-14 22:53:28', 1, 'N'),
('20151014_006', 1288, 1, '', '2015-10-14 18:08:59', 1, 'N'),
('20151015_001', 1330, 1, 'Fb Ly Nguyễn (Bạn Bảo)', '2015-10-15 16:15:37', 3, 'N'),
('20151015_002', 1331, 1, '', '2015-10-15 20:45:04', 3, 'N'),
('20151015_003', 1288, 1, '', '2015-10-15 18:10:01', 1, 'N'),
('20151015_004', 1381, 1, '', '2015-10-15 18:12:08', 1, 'N'),
('20151016_001', 1288, 1, '', '2015-10-16 09:33:03', 3, 'N'),
('20151016_002', 1332, 1, '', '2015-10-16 10:45:17', 3, 'N'),
('20151016_003', 1333, 1, 'Hà Thị Thanh Huyền, Thọ Phú, Triệu Sơn, phí ship 12.5k', '2015-10-16 12:48:42', 1, 'Y'),
('20151016_004', 1334, 1, 'Lê Minh Thu, Minh Dân, Triệu Sơn, phí ship 12.5k', '2015-10-16 12:54:04', 1, 'Y'),
('20151016_005', 1335, 1, '', '2015-10-16 19:45:49', 3, 'N'),
('20151016_006', 1288, 1, 'Chị khách đi ô tô', '2015-10-16 19:46:16', 3, 'N'),
('20151016_007', 1336, 1, '', '2015-10-16 19:47:02', 3, 'N'),
('20151016_008', 1337, 1, '', '2015-10-16 19:47:56', 3, 'N'),
('20151016_009', 1338, 1, '', '2015-10-16 19:48:44', 3, 'N'),
('20151016_010', 1339, 1, '', '2015-10-16 21:39:02', 3, 'N'),
('20151016_011', 1335, 1, '', '2015-10-16 18:13:13', 1, 'N'),
('20151016_012', 1382, 1, '', '2015-10-16 18:14:07', 1, 'N'),
('20151016_013', 1383, 1, '', '2015-10-16 18:15:13', 1, 'N'),
('20151017_001', 1288, 1, '', '2015-10-17 23:05:14', 3, 'N'),
('20151017_002', 1288, 1, '', '2015-10-17 23:05:50', 3, 'N'),
('20151017_003', 1340, 1, '', '2015-10-17 23:06:56', 3, 'N'),
('20151017_004', 1288, 1, '', '2015-10-17 23:07:22', 3, 'N'),
('20151017_005', 1341, 1, '', '2015-10-17 23:07:57', 3, 'N'),
('20151017_006', 1288, 1, '', '2015-10-17 23:08:10', 3, 'N'),
('20151017_007', 1342, 1, '', '2015-10-17 23:09:25', 3, 'N'),
('20151017_008', 1343, 1, '', '2015-10-17 23:12:17', 3, 'N'),
('20151017_009', 1344, 1, '', '2015-10-17 23:13:00', 3, 'N'),
('20151017_010', 1345, 1, '', '2015-10-17 23:14:27', 3, 'N'),
('20151017_011', 1346, 1, '', '2015-10-17 23:15:10', 3, 'N'),
('20151017_012', 1288, 1, '', '2015-10-17 18:15:52', 1, 'N'),
('20151017_013', 1288, 1, '', '2015-10-17 18:16:29', 1, 'N'),
('20151017_014', 1288, 1, '', '2015-10-17 18:17:22', 1, 'N'),
('20151017_015', 1384, 1, '', '2015-10-17 18:18:20', 1, 'N'),
('20151018_001', 1288, 1, '', '2015-10-18 11:54:06', 3, 'N'),
('20151018_002', 1347, 1, '', '2015-10-18 11:55:36', 3, 'N'),
('20151018_003', 1348, 1, '', '2015-10-18 16:49:58', 3, 'N'),
('20151018_004', 1349, 1, '', '2015-10-18 16:50:40', 3, 'N'),
('20151018_005', 1350, 1, '', '2015-10-18 16:51:07', 3, 'N'),
('20151018_006', 1351, 1, '', '2015-10-18 20:16:04', 3, 'N'),
('20151018_007', 1348, 1, '', '2015-10-18 18:20:41', 1, 'N'),
('20151019_001', 1352, 1, '', '2015-10-19 13:31:56', 3, 'N'),
('20151019_002', 1353, 1, 'Hỏi 35 đen 11p', '2015-10-19 16:34:20', 3, 'N'),
('20151019_003', 1354, 1, '', '2015-10-19 16:48:16', 3, 'N'),
('20151019_004', 1356, 1, '', '2015-10-19 16:29:44', 1, 'N'),
('20151019_005', 1288, 1, '', '2015-10-19 18:23:01', 1, 'N'),
('20151019_006', 1288, 1, '', '2015-10-19 18:23:26', 1, 'N'),
('20151020_001', 1357, 1, '', '2015-10-20 17:42:19', 3, 'N'),
('20151020_002', 1358, 1, '', '2015-10-20 19:21:15', 3, 'N'),
('20151020_003', 1359, 1, '', '2015-10-20 20:45:22', 3, 'N'),
('20151020_004', 1360, 1, 'Đôi da miếng xuồng cho mẹ Vũ (phí ship 25k)', '2015-10-20 00:17:04', 1, 'Y'),
('20151020_005', 1288, 1, '', '2015-10-20 18:23:54', 1, 'N'),
('20151020_006', 1385, 1, '', '2015-10-20 18:24:31', 1, 'N'),
('20151021_001', 1361, 1, '', '2015-10-21 11:53:28', 3, 'N'),
('20151021_002', 1362, 1, '', '2015-10-21 14:59:05', 3, 'N'),
('20151021_003', 1363, 1, '', '2015-10-21 20:22:58', 3, 'N'),
('20151021_004', 1358, 1, '', '2015-10-21 20:23:26', 3, 'N'),
('20151021_005', 1358, 1, '', '2015-10-21 20:23:54', 3, 'N'),
('20151021_006', 1364, 1, '', '2015-10-21 20:24:51', 3, 'N'),
('20151021_007', 1288, 1, '', '2015-10-21 18:25:17', 1, 'N'),
('20151021_008', 1363, 1, '', '2015-10-21 18:25:37', 1, 'N'),
('20151021_009', 1364, 1, '', '2015-10-21 18:26:17', 1, 'N'),
('20151022_001', 1365, 1, '', '2015-10-22 12:08:50', 3, 'N'),
('20151022_002', 1363, 1, '', '2015-10-22 22:14:18', 3, 'N'),
('20151022_003', 1363, 1, '', '2015-10-22 22:33:46', 3, 'N'),
('20151022_004', 1376, 1, '', '2015-10-22 18:26:53', 1, 'N'),
('20151022_005', 1386, 1, '', '2015-10-22 18:28:48', 1, 'N'),
('20151022_006', 1288, 1, '', '2015-10-22 18:29:24', 1, 'N'),
('20151022_007', 1387, 1, '', '2015-10-22 18:32:25', 1, 'N'),
('20151022_008', 1388, 1, '', '2015-10-22 18:33:11', 1, 'N'),
('20151023_001', 1366, 1, '', '2015-10-23 14:49:32', 3, 'N'),
('20151023_002', 1288, 1, '', '2015-10-23 15:07:08', 3, 'N'),
('20151023_003', 1367, 1, '', '2015-10-23 21:03:23', 3, 'N'),
('20151023_004', 1368, 1, '', '2015-10-23 21:04:19', 3, 'N'),
('20151023_005', 1288, 1, '', '2015-10-23 18:34:49', 1, 'N'),
('20151023_006', 1367, 1, '', '2015-10-23 18:35:36', 1, 'N'),
('20151023_007', 1368, 1, '', '2015-10-23 18:42:24', 1, 'N'),
('20151024_001', 1288, 1, '', '2015-10-24 11:53:21', 1, 'N'),
('20151024_003', 1370, 1, '', '2015-10-24 12:11:52', 1, 'N'),
('20151024_004', 1369, 1, '', '2015-10-24 12:26:03', 1, 'N'),
('20151024_005', 1288, 1, '', '2015-10-24 19:40:28', 3, 'N'),
('20151024_006', 1288, 1, '', '2015-10-24 19:41:34', 3, 'N'),
('20151024_007', 1369, 1, '', '2015-10-24 20:57:41', 1, 'N'),
('20151024_008', 1348, 1, '', '2015-10-24 20:58:21', 1, 'N'),
('20151024_009', 1348, 1, '', '2015-10-24 20:58:56', 1, 'N'),
('20151024_010', 1371, 1, '', '2015-10-24 20:59:37', 1, 'N'),
('20151024_011', 1288, 1, '', '2015-10-24 21:00:07', 1, 'N'),
('20151024_012', 1372, 1, '', '2015-10-24 21:00:47', 1, 'N'),
('20151024_013', 1373, 1, '', '2015-10-24 21:01:24', 1, 'N'),
('20151024_014', 1288, 1, '', '2015-10-24 18:43:35', 1, 'N'),
('20151024_015', 1372, 1, '', '2015-10-24 18:44:18', 1, 'N'),
('20151025_001', 1374, 1, '', '2015-10-25 13:44:57', 3, 'N'),
('20151025_002', 1375, 1, '', '2015-10-25 13:45:18', 3, 'N'),
('20151025_003', 1376, 1, '', '2015-10-25 13:46:22', 3, 'N'),
('20151025_004', 1377, 1, '', '2015-10-25 17:06:21', 3, 'N'),
('20151025_005', 1378, 1, '', '2015-10-25 17:12:44', 3, 'N'),
('20151026_001', 1389, 1, '', '2015-10-26 11:16:09', 3, 'N'),
('20151026_002', 1390, 1, '', '2015-10-26 15:50:16', 1, 'N'),
('20151026_003', 1288, 1, '', '2015-10-26 17:07:29', 1, 'N'),
('20151026_004', 1288, 1, '', '2015-10-26 17:31:29', 1, 'N'),
('20151026_005', 1391, 1, '', '2015-10-26 21:41:51', 3, 'N'),
('20151026_006', 1392, 1, '', '2015-10-26 21:42:37', 3, 'N'),
('20151027_001', 1393, 1, '', '2015-10-27 10:46:23', 1, 'N'),
('20151027_002', 1394, 1, 'kieutrangulis@gmail.com', '2015-10-27 13:11:22', 3, 'N'),
('20151027_003', 1395, 1, 'Chị khách đi oto qua', '2015-10-27 15:39:39', 1, 'N'),
('20151027_004', 1396, 1, '98 Hoàng Quốc Việt', '2015-10-27 18:19:00', 1, 'N'),
('20151027_005', 1397, 1, 'FB Hương Lan Lê', '2015-10-27 20:37:13', 1, 'N'),
('20151027_006', 1398, 1, 'FB Thúy Phạm của Bảo', '2015-10-27 21:09:57', 1, 'N'),
('20151028_001', 1288, 1, '', '2015-10-28 10:59:51', 1, 'N'),
('20151028_002', 1399, 1, '', '2015-10-28 19:55:21', 1, 'N'),
('20151028_003', 1288, 1, '', '2015-10-28 09:43:53', 1, 'N'),
('20151028_004', 1393, 1, '', '2015-10-28 11:41:31', 1, 'N'),
('20151029_001', 1400, 1, '', '2015-10-29 12:38:25', 1, 'N'),
('20151029_002', 1401, 1, '', '2015-10-29 15:03:41', 1, 'N'),
('20151029_003', 1350, 1, '', '2015-10-29 17:43:42', 1, 'N'),
('20151029_004', 1402, 1, '', '2015-10-29 18:08:55', 1, 'N'),
('20151029_005', 1403, 1, 'Fb Hang Nguyen fb Bảo', '2015-10-29 18:14:47', 1, 'N'),
('20151029_006', 1404, 1, '', '2015-10-29 18:35:51', 1, 'N'),
('20151029_007', 1405, 1, '611 Vũ Tông Phan', '2015-10-29 18:37:40', 1, 'N'),
('20151029_008', 1406, 1, '', '2015-10-29 19:02:45', 1, 'N'),
('20151030_001', 1407, 1, '', '2015-10-30 10:50:50', 1, 'N'),
('20151030_002', 1288, 1, '', '2015-10-30 12:46:21', 1, 'N'),
('20151030_003', 1306, 1, 'lỖI HỞ KHE', '2015-10-30 20:04:04', 1, 'N'),
('20151030_004', 1408, 1, '', '2015-10-30 20:43:45', 1, 'N'),
('20151031_001', 1409, 1, '', '2015-10-31 20:00:08', 1, 'N'),
('20151031_002', 1288, 1, '', '2015-10-31 20:00:32', 1, 'N'),
('20151031_003', 1288, 1, '', '2015-10-31 20:00:46', 1, 'N'),
('20151031_004', 1377, 1, '', '2015-10-31 20:08:02', 1, 'N'),
('20151101_001', 1288, 1, '', '2015-11-01 10:40:52', 1, 'N'),
('20151101_002', 1410, 1, '169 Lê Thánh Tông tp Hạ Long tỉnh Quảng Ninh, phí ship 32k', '2015-11-01 11:20:41', 1, 'Y'),
('20151101_003', 1410, 1, 'Phí ship hàng lần 2 là 43k/2 đôi', '2015-11-01 11:24:40', 1, 'Y'),
('20151101_004', 1411, 1, 'ĐC: Phòng Công An xã Xuân Quang 3 huyện Đồng Xuân, tỉnh Phú Yên, phí ship 45000', '2015-11-01 11:29:37', 1, 'Y'),
('20151101_005', 1412, 1, '', '2015-11-01 14:10:12', 1, 'N'),
('20151102_001', 1288, 1, 'Chị chủ nhà', '2015-11-02 13:39:45', 1, 'N'),
('20151102_002', 1288, 1, '', '2015-11-02 16:30:50', 1, 'N'),
('20151102_003', 1288, 1, '', '2015-11-02 19:08:59', 1, 'N'),
('20151102_004', 1288, 1, '', '2015-11-02 19:52:48', 1, 'N'),
('20151102_005', 1288, 1, '', '2015-11-02 20:38:18', 1, 'N'),
('20151103_001', 1358, 1, '', '2015-11-03 19:18:39', 1, 'N'),
('20151103_002', 1288, 1, '', '2015-11-03 19:18:53', 1, 'N'),
('20151103_003', 1314, 1, '', '2015-11-03 19:19:30', 1, 'N'),
('20151103_004', 1288, 1, '', '2015-11-03 19:19:45', 1, 'N'),
('20151103_005', 1413, 1, '', '2015-11-03 19:20:13', 1, 'N'),
('20151103_006', 1288, 1, '', '2015-11-03 14:16:31', 1, 'N'),
('20151104_001', 1414, 1, '', '2015-11-04 12:44:38', 1, 'N'),
('20151104_002', 1367, 1, '', '2015-11-04 13:19:08', 1, 'N'),
('20151104_003', 1288, 1, '', '2015-11-04 21:31:50', 1, 'N'),
('20151104_004', 1288, 1, '', '2015-11-04 21:31:58', 1, 'N'),
('20151104_005', 1415, 1, '', '2015-11-04 21:52:28', 1, 'N'),
('20151105_001', 1416, 1, '', '2015-11-05 16:19:24', 1, 'N'),
('20151105_002', 1417, 1, '', '2015-11-05 16:36:58', 1, 'N'),
('20151105_003', 1422, 1, '', '2015-11-05 17:30:47', 1, 'N'),
('20151105_004', 1288, 1, '', '2015-11-05 18:33:32', 1, 'N'),
('20151105_005', 1418, 1, 'Cty vsip Bắc ninh, số 1 hữu nghị kcn Vsip bắc ninh, phù chẩn , từ sơn, bắc ninh - Phí ship 35k ', '2015-11-05 18:37:06', 1, 'Y'),
('20151105_006', 1410, 1, 'Phí ship hàng lần 3 là 53k', '2015-11-05 18:44:01', 1, 'Y'),
('20151105_007', 1288, 1, '', '2015-11-05 19:53:18', 1, 'N'),
('20151105_008', 1288, 1, 'Chị hàng xóm', '2015-11-05 19:56:03', 1, 'N'),
('20151105_009', 1419, 1, ' T18 Times city ', '2015-11-05 20:02:01', 1, 'N'),
('20151105_010', 1426, 1, '', '2015-11-05 14:18:02', 1, 'N'),
('20151106_001', 1420, 1, '', '2015-11-06 10:39:00', 1, 'N'),
('20151106_002', 1421, 1, '', '2015-11-06 16:10:30', 1, 'N'),
('20151106_003', 1422, 1, '', '2015-11-06 17:12:00', 1, 'N'),
('20151106_004', 1423, 1, '', '2015-11-06 18:36:09', 1, 'N'),
('20151106_005', 1424, 1, '', '2015-11-06 19:05:08', 1, 'N'),
('20151106_006', 1288, 1, '', '2015-11-06 21:18:24', 1, 'N'),
('20151106_007', 1420, 1, '', '2015-11-06 14:18:47', 1, 'N'),
('20151106_008', 1427, 1, '', '2015-11-06 14:19:59', 1, 'N'),
('20151107_001', 1425, 1, '', '2015-11-07 12:31:58', 1, 'N'),
('20151107_002', 1288, 1, '', '2015-11-07 13:31:48', 1, 'N'),
('20151107_003', 1428, 1, 'Thôn An Cư 1, xã Đức Xương, huyện Gia Lộc, tỉnh Hải Dương. Phí ship 43k', '2015-11-07 14:31:42', 1, 'Y'),
('20151107_004', 1429, 1, 'Đặng Đức Giang, thôn Sỏi, Quảng Thanh, Thủy Nguyên, Hải Phòng. Phí ship 18k', '2015-11-07 14:35:08', 1, 'Y'),
('20151107_005', 1410, 1, 'Phí ship hàng lần 4 là 18k', '2015-11-07 14:37:53', 1, 'Y'),
('20151107_006', 1430, 1, '', '2015-11-07 16:39:25', 1, 'N'),
('20151107_007', 1431, 1, '', '2015-11-07 16:41:10', 1, 'N'),
('20151107_008', 1288, 1, '', '2015-11-07 16:55:21', 1, 'N'),
('20151107_009', 1432, 1, '', '2015-11-07 16:58:40', 1, 'N'),
('20151107_010', 1433, 1, '', '2015-11-07 19:17:18', 1, 'N'),
('20151108_001', 1288, 1, '', '2015-11-08 17:38:26', 1, 'N'),
('20151108_002', 1288, 1, '', '2015-11-08 19:41:53', 1, 'N'),
('20151108_003', 1439, 1, '', '2015-11-08 17:16:45', 1, 'N'),
('20151109_001', 1288, 1, '', '2015-11-09 17:12:33', 1, 'N'),
('20151109_002', 1288, 1, '', '2015-11-09 17:12:48', 1, 'N'),
('20151109_003', 1288, 1, '', '2015-11-09 17:13:02', 1, 'N'),
('20151109_004', 1434, 1, '', '2015-11-09 18:35:04', 1, 'N'),
('20151109_005', 1435, 1, '', '2015-11-09 18:46:33', 1, 'N'),
('20151109_006', 1436, 1, '86 Quan Nhân', '2015-11-09 19:25:59', 1, 'N'),
('20151109_007', 1437, 1, '', '2015-11-09 19:28:35', 1, 'N'),
('20151109_008', 1438, 1, '', '2015-11-09 20:04:10', 1, 'N'),
('20151109_009', 1439, 1, '', '2015-11-09 20:59:57', 1, 'N'),
('20151109_010', 1440, 1, 'Lỗi keo dán đế', '2015-11-09 21:58:39', 1, 'N'),
('20151110_001', 1441, 1, '', '2015-11-10 14:06:09', 1, 'N'),
('20151110_002', 1442, 1, '', '2015-11-10 15:19:14', 1, 'N'),
('20151110_003', 1288, 1, '', '2015-11-10 16:35:11', 1, 'N'),
('20151110_004', 1288, 1, '', '2015-11-10 17:26:04', 1, 'N'),
('20151110_005', 1288, 1, '', '2015-11-10 17:35:34', 1, 'N'),
('20151110_006', 1414, 1, '', '2015-11-10 20:12:57', 1, 'N'),
('20151110_007', 1443, 1, '', '2015-11-10 21:37:52', 1, 'N'),
('20151111_001', 1444, 1, '', '2015-11-11 18:00:32', 1, 'N'),
('20151111_002', 1445, 1, '', '2015-11-11 20:08:53', 1, 'N'),
('20151112_001', 1446, 1, '', '2015-11-12 14:47:51', 1, 'N'),
('20151112_002', 1447, 1, '', '2015-11-12 16:19:28', 1, 'N'),
('20151112_003', 1448, 1, '', '2015-11-12 16:24:43', 1, 'N'),
('20151112_004', 1449, 1, '', '2015-11-12 19:51:02', 1, 'N'),
('20151112_005', 1450, 1, '', '2015-11-12 20:29:54', 1, 'N'),
('20151113_001', 1451, 1, '', '2015-11-13 14:59:16', 1, 'N'),
('20151113_002', 1452, 1, '', '2015-11-13 14:59:28', 1, 'N'),
('20151113_003', 1453, 1, '', '2015-11-13 18:51:49', 1, 'N'),
('20151113_004', 1288, 1, '', '2015-11-13 19:58:47', 1, 'N'),
('20151113_005', 1454, 1, '', '2015-11-13 21:19:26', 1, 'N'),
('20151114_001', 1288, 1, '', '2015-11-14 14:56:18', 1, 'N'),
('20151114_002', 1288, 1, '', '2015-11-14 17:01:15', 1, 'N'),
('20151114_003', 1454, 1, '', '2015-11-14 20:30:01', 1, 'N'),
('20151115_001', 1288, 1, '', '2015-11-15 15:58:12', 1, 'N'),
('20151115_002', 1288, 1, '', '2015-11-15 16:23:55', 1, 'N'),
('20151115_003', 1455, 1, '', '2015-11-15 16:45:42', 1, 'N'),
('20151115_004', 1288, 1, '', '2015-11-15 21:08:33', 1, 'N'),
('20151116_001', 1288, 1, '', '2015-11-16 12:21:17', 1, 'N'),
('20151116_002', 1456, 1, '', '2015-11-16 18:14:54', 1, 'N'),
('20151116_003', 1457, 1, '', '2015-11-16 19:42:33', 1, 'N'),
('20151116_004', 1317, 1, '', '2015-11-16 20:36:07', 1, 'N'),
('20151117_001', 1458, 1, '', '2015-11-17 11:11:59', 1, 'N'),
('20151117_002', 1459, 1, '', '2015-11-17 14:19:56', 3, 'N'),
('20151117_003', 1460, 1, '', '2015-11-17 14:21:16', 3, 'N'),
('20151117_004', 1461, 1, '', '2015-11-17 14:22:04', 3, 'N'),
('20151117_005', 1288, 1, '', '2015-11-17 15:57:24', 1, 'N'),
('20151117_006', 1336, 1, '', '2015-11-17 16:49:58', 1, 'N'),
('20151117_007', 1462, 1, '', '2015-11-17 18:59:36', 1, 'N'),
('20151117_008', 1397, 1, '', '2015-11-17 20:45:06', 1, 'N'),
('20151118_001', 1288, 1, '', '2015-11-18 17:14:26', 1, 'N'),
('20151118_002', 1321, 1, '', '2015-11-18 17:45:03', 1, 'N'),
('20151118_003', 1463, 1, 'Chị Dương đặt đôi bốt màu đỏ đun size 38 120k ', '2015-11-18 18:29:23', 1, 'N'),
('20151118_004', 1397, 1, '', '2015-11-18 19:56:02', 1, 'N'),
('20151119_001', 1464, 1, '', '2015-11-19 17:56:58', 1, 'N'),
('20151119_002', 1465, 1, '', '2015-11-19 18:54:20', 1, 'N'),
('20151119_003', 1466, 1, '', '2015-11-19 20:37:38', 1, 'N'),
('20151119_004', 1288, 1, '', '2015-11-19 21:00:45', 1, 'N'),
('20151121_001', 1467, 1, '', '2015-11-20 12:29:44', 1, 'N'),
('20151121_002', 1468, 1, '', '2015-11-21 12:30:41', 1, 'N'),
('20151121_003', 1469, 1, '', '2015-11-21 18:53:19', 1, 'N'),
('20151121_004', 1470, 1, '', '2015-11-21 18:54:53', 1, 'N'),
('20151121_005', 1471, 1, '', '2015-11-21 18:55:22', 1, 'N'),
('20151121_006', 1472, 1, 'Đặt giữ hàng hôm đang sale 20%', '2015-11-21 18:56:36', 1, 'N'),
('20151121_007', 1309, 1, '', '2015-11-21 19:03:13', 1, 'N'),
('20151121_008', 1473, 1, '', '2015-11-21 19:04:38', 1, 'N'),
('20151121_009', 1474, 1, '', '2015-11-21 20:11:00', 1, 'N'),
('20151122_001', 1475, 1, '', '2015-11-22 13:29:38', 1, 'N'),
('20151122_002', 1288, 1, '', '2015-11-22 18:20:07', 1, 'N'),
('20151122_003', 1476, 1, '', '2015-11-22 20:46:05', 1, 'N'),
('20151123_001', 1309, 1, '', '2015-11-23 13:42:53', 1, 'N'),
('20151123_002', 1477, 1, '', '2015-11-23 16:52:36', 1, 'N'),
('20151123_003', 1478, 1, '', '2015-11-23 16:53:04', 1, 'N'),
('20151123_004', 1288, 1, '', '2015-11-23 17:26:04', 1, 'N'),
('20151123_005', 1479, 1, '', '2015-11-23 21:12:08', 1, 'N'),
('20151123_006', 1309, 1, '', '2015-11-23 21:19:10', 1, 'N'),
('20151124_001', 1405, 1, '', '2015-11-24 10:52:42', 1, 'N'),
('20151124_002', 1480, 1, 'Triệu Sơn - Thanh Hóa', '2015-11-24 10:56:51', 1, 'Y'),
('20151124_003', 1481, 1, '', '2015-11-24 17:09:51', 1, 'N'),
('20151124_004', 1482, 1, '', '2015-11-24 17:45:05', 1, 'N'),
('20151125_001', 1410, 1, '169 Lê Thánh Tông, tp Hạ Long, tỉnh Quảng Ninh', '2015-11-25 14:40:43', 1, 'Y'),
('20151125_002', 1483, 1, '', '2015-11-25 15:12:27', 1, 'N'),
('20151125_003', 1484, 1, '', '2015-11-25 15:29:54', 1, 'N'),
('20151127_001', 1288, 1, '', '2015-11-26 17:08:33', 1, 'N'),
('20151127_002', 1288, 1, '', '2015-11-27 17:40:35', 1, 'N'),
('20151127_003', 1485, 1, '', '2015-11-27 17:46:25', 1, 'N'),
('20151127_004', 1486, 1, '', '2015-11-27 18:10:23', 1, 'N'),
('20151127_005', 1288, 1, '', '2015-11-27 18:40:01', 1, 'N'),
('20151128_001', 1487, 1, '', '2015-11-28 12:18:58', 1, 'N'),
('20151128_002', 1288, 1, '', '2015-11-28 12:19:22', 1, 'N'),
('20151128_003', 1288, 1, '', '2015-11-28 15:59:38', 1, 'N'),
('20151128_004', 1288, 1, '', '2015-11-28 16:29:05', 1, 'N'),
('20151128_005', 1288, 1, '', '2015-11-28 16:34:30', 1, 'N'),
('20151128_006', 1488, 1, '', '2015-11-28 17:41:59', 1, 'N'),
('20151128_007', 1489, 1, '189 Đinh Tiên Hoàng, phường Tự An, TP Buôn Ma Thuột, tỉnh Đăk Lăk', '2015-11-28 18:29:17', 1, 'Y'),
('20151128_008', 1490, 1, '', '2015-11-28 19:00:12', 1, 'N'),
('20151128_009', 1491, 1, '', '2015-11-28 19:52:21', 1, 'N'),
('20151128_010', 1330, 1, '', '2015-11-28 21:49:04', 1, 'N'),
('20151129_001', 1288, 1, '', '2015-11-29 10:33:07', 1, 'N'),
('20151129_002', 1492, 1, '', '2015-11-29 12:07:14', 1, 'N'),
('20151129_003', 1493, 1, '', '2015-11-29 12:12:56', 1, 'N'),
('20151129_004', 1288, 1, '', '2015-11-29 15:28:36', 1, 'N'),
('20151129_005', 1358, 1, '', '2015-11-29 15:53:03', 1, 'N'),
('20151129_006', 1494, 1, '', '2015-11-29 15:55:19', 1, 'N'),
('20151129_007', 1495, 1, '', '2015-11-29 18:56:55', 1, 'N'),
('20151129_008', 1496, 1, '', '2015-11-29 19:24:14', 1, 'N'),
('20151130_001', 1288, 1, '', '2015-11-30 15:53:29', 1, 'N'),
('20151130_002', 1288, 1, '', '2015-11-30 15:53:58', 1, 'N'),
('20151130_003', 1497, 1, '', '2015-11-30 16:06:27', 1, 'N'),
('20151130_004', 1498, 1, '', '2015-11-30 17:39:26', 1, 'N'),
('20151130_005', 1499, 1, '', '2015-11-30 18:10:15', 1, 'N'),
('20151130_006', 1500, 1, '', '2015-11-30 18:13:26', 1, 'N'),
('20151130_007', 1449, 1, '', '2015-11-30 20:24:47', 1, 'N'),
('20151130_008', 1501, 1, '', '2015-11-30 20:44:31', 1, 'N'),
('20151201_001', 1485, 1, '', '2015-12-01 18:57:08', 1, 'N'),
('20151202_001', 1502, 1, '', '2015-12-02 14:02:26', 1, 'N'),
('20151202_002', 1468, 1, '', '2015-12-02 14:52:29', 1, 'N'),
('20151202_003', 1503, 1, '', '2015-12-02 15:34:43', 1, 'N'),
('20151202_004', 1504, 1, '', '2015-12-02 20:18:08', 1, 'N'),
('20151202_005', 1481, 1, '', '2015-12-02 20:25:28', 1, 'N'),
('20151202_006', 1505, 1, '', '2015-12-02 20:38:41', 1, 'N'),
('20151203_001', 1506, 1, '', '2015-12-03 17:46:17', 1, 'N'),
('20151204_001', 1507, 1, '', '2015-12-04 11:20:39', 1, 'N'),
('20151204_002', 1508, 1, '', '2015-12-04 11:50:55', 1, 'N'),
('20151204_003', 1288, 1, '', '2015-12-04 12:20:19', 1, 'N'),
('20151204_004', 1509, 1, '', '2015-12-04 18:14:45', 1, 'N'),
('20151205_001', 1288, 1, '', '2015-12-05 10:56:54', 1, 'N'),
('20151205_002', 1510, 1, '', '2015-12-05 12:40:52', 1, 'N'),
('20151205_003', 1511, 1, '', '2015-12-05 15:26:10', 1, 'N'),
('20151205_004', 1288, 1, '', '2015-12-05 16:48:42', 1, 'N'),
('20151205_005', 1512, 1, '', '2015-12-05 16:58:47', 1, 'N'),
('20151205_006', 1513, 1, '', '2015-12-05 17:30:23', 1, 'N'),
('20151205_007', 1468, 1, '', '2015-12-05 17:38:40', 1, 'N'),
('20151205_008', 1514, 1, '23 Phan Bội Châu, Ba Đình, TP Thanh Hóa', '2015-12-05 17:51:52', 1, 'Y'),
('20151205_009', 1515, 1, '', '2015-12-05 18:27:40', 1, 'N'),
('20151205_010', 1516, 1, '', '2015-12-05 18:28:44', 1, 'N'),
('20151205_011', 1517, 1, '', '2015-12-05 20:38:39', 1, 'N'),
('20151206_001', 1518, 1, '', '2015-12-06 13:57:22', 1, 'N'),
('20151206_002', 1288, 1, '', '2015-12-06 14:38:29', 1, 'N'),
('20151206_003', 1519, 1, '', '2015-12-06 14:55:15', 1, 'N'),
('20151206_004', 1473, 1, '', '2015-12-06 15:39:22', 1, 'N'),
('20151206_005', 1288, 1, '', '2015-12-06 16:12:45', 1, 'N'),
('20151206_006', 1520, 1, '', '2015-12-06 17:25:40', 1, 'N'),
('20151206_007', 1521, 1, '', '2015-12-06 19:06:37', 1, 'N'),
('20151206_008', 1522, 1, '', '2015-12-06 19:35:13', 1, 'N'),
('20151206_009', 1523, 1, '', '2015-12-06 20:46:48', 1, 'N'),
('20151206_010', 1524, 1, '', '2015-12-06 21:08:18', 1, 'N'),
('20151206_011', 1525, 1, '', '2015-12-06 21:42:19', 1, 'N'),
('20151207_001', 1506, 1, '', '2015-12-07 15:21:47', 1, 'N'),
('20151207_002', 1448, 1, '', '2015-12-07 15:58:34', 1, 'N'),
('20151207_003', 1288, 1, '', '2015-12-07 18:49:39', 1, 'N'),
('20151207_004', 1504, 1, '', '2015-12-07 20:30:02', 1, 'N'),
('20151208_001', 1288, 1, '', '2015-12-08 13:34:11', 1, 'N'),
('20151208_002', 1526, 1, '', '2015-12-08 13:35:06', 1, 'N'),
('20151208_003', 1527, 1, '', '2015-12-08 13:35:57', 1, 'N'),
('20151208_004', 1507, 1, '', '2015-12-08 13:36:58', 1, 'N'),
('20151208_005', 1463, 1, '', '2015-12-08 18:28:00', 1, 'N'),
('20151208_006', 1528, 1, '', '2015-12-08 19:18:05', 1, 'N'),
('20151208_007', 1288, 1, '', '2015-12-08 21:45:34', 1, 'N'),
('20151209_001', 1291, 1, '', '2015-12-09 16:46:16', 1, 'N'),
('20151209_002', 1529, 1, '', '2015-12-09 17:21:31', 1, 'N'),
('20151209_003', 1288, 1, '', '2015-12-09 17:46:23', 1, 'N'),
('20151209_004', 1288, 1, '', '2015-12-09 18:15:23', 1, 'N'),
('20151209_005', 1288, 1, '', '2015-12-09 20:18:23', 1, 'N'),
('20151209_006', 1408, 1, '', '2015-12-09 20:56:24', 1, 'N'),
('20151210_001', 1530, 1, '', '2015-12-10 11:55:41', 1, 'N'),
('20151210_002', 1531, 1, '', '2015-12-10 12:58:50', 1, 'N'),
('20151210_003', 1527, 1, '', '2015-12-10 16:19:47', 1, 'N'),
('20151210_004', 1532, 1, '', '2015-12-10 17:20:57', 1, 'N'),
('20151210_005', 1533, 1, '', '2015-12-10 18:46:22', 1, 'N'),
('20151210_006', 1534, 1, '', '2015-12-10 20:36:35', 1, 'N'),
('20151210_007', 1535, 1, '', '2015-12-10 21:17:06', 1, 'N'),
('20151210_008', 1536, 1, '', '2015-12-10 21:56:10', 1, 'N'),
('20151211_001', 1537, 1, '', '2015-12-11 15:31:58', 1, 'N'),
('20151211_002', 1538, 1, '', '2015-12-11 15:38:04', 1, 'N'),
('20151211_003', 1539, 1, '', '2015-12-11 16:54:10', 1, 'N'),
('20151211_004', 1288, 1, '', '2015-12-11 17:44:35', 1, 'N'),
('20151211_005', 1540, 1, '', '2015-12-11 21:29:01', 1, 'N'),
('20151211_006', 1541, 1, '', '2015-12-11 21:45:11', 1, 'N'),
('20151212_001', 1487, 1, '', '2015-12-12 15:59:26', 1, 'N'),
('20151212_002', 1542, 1, '', '2015-12-12 16:00:27', 1, 'N'),
('20151212_003', 1543, 1, 'Thị trấn Dân Lực Triệu Sơn', '2015-12-12 16:04:09', 1, 'Y'),
('20151212_004', 1544, 1, '', '2015-12-12 16:13:41', 1, 'N'),
('20151212_005', 1545, 1, '', '2015-12-12 16:49:45', 1, 'N'),
('20151212_006', 1546, 1, '', '2015-12-12 17:36:50', 1, 'N'),
('20151212_008', 1288, 1, '', '2015-12-12 20:57:46', 1, 'N'),
('20151212_009', 1548, 1, '', '2015-12-12 21:43:37', 1, 'N'),
('20151212_010', 1547, 1, 'Số 2, ngách 2/49 Định Công Thượng', '2015-12-12 23:59:44', 1, 'Y'),
('20151212_011', 1548, 1, '', '2015-12-12 15:25:51', 1, 'N'),
('20151212_012', 1579, 1, '', '2015-12-12 15:28:24', 1, 'N'),
('20151212_013', 1562, 1, '', '2015-12-12 15:31:32', 1, 'N'),
('20151213_001', 1397, 1, '', '2015-12-13 11:08:47', 1, 'N'),
('20151213_002', 1549, 1, '', '2015-12-13 11:43:52', 1, 'N'),
('20151213_003', 1550, 1, '', '2015-12-13 12:55:22', 1, 'N'),
('20151213_004', 1551, 1, '', '2015-12-13 16:50:04', 3, 'N'),
('20151213_005', 1552, 1, '', '2015-12-13 17:46:26', 1, 'N'),
('20151213_006', 1553, 1, '', '2015-12-13 18:52:36', 1, 'N'),
('20151213_007', 1562, 1, '', '2015-12-13 15:35:22', 1, 'N'),
('20151213_008', 1551, 1, '', '2015-12-13 15:37:53', 1, 'N'),
('20151213_009', 1553, 1, '', '2015-12-13 15:46:37', 1, 'N'),
('20151213_010', 1562, 1, '', '2015-12-13 16:14:40', 1, 'N'),
('20151214_001', 1354, 1, '', '2015-12-14 14:04:07', 1, 'N'),
('20151214_002', 1554, 1, '', '2015-12-14 14:04:38', 1, 'N'),
('20151214_003', 1555, 1, '', '2015-12-14 17:31:13', 1, 'N'),
('20151214_004', 1556, 1, '', '2015-12-14 17:33:43', 1, 'N'),
('20151214_005', 1557, 1, '', '2015-12-14 18:53:07', 1, 'N'),
('20151214_006', 1558, 1, '', '2015-12-14 19:29:16', 1, 'N'),
('20151214_007', 1559, 1, '', '2015-12-14 20:55:11', 1, 'N'),
('20151214_008', 1559, 1, '', '2015-12-14 21:17:50', 1, 'N'),
('20151214_009', 1560, 1, '', '2015-12-14 21:20:11', 1, 'N'),
('20151214_010', 1548, 1, '', '2015-12-14 21:42:49', 1, 'N'),
('20151214_011', 1540, 1, '', '2015-12-14 15:40:37', 1, 'N'),
('20151214_012', 1288, 1, '', '2015-12-14 15:46:07', 1, 'N'),
('20151215_002', 1288, 1, '', '2015-12-15 17:06:24', 1, 'N'),
('20151215_003', 1288, 1, '', '2015-12-15 21:02:03', 1, 'N'),
('20151215_004', 1288, 1, '', '2015-12-15 21:47:30', 1, 'N'),
('20151215_006', 1341, 1, '', '2015-12-15 21:56:05', 1, 'N'),
('20151215_007', 1561, 1, '', '2015-12-15 21:57:59', 1, 'N'),
('20151215_008', 1403, 1, 'Tòa nhà 319 63 Lê Văn Lương', '2015-12-15 23:22:10', 1, 'Y'),
('20151215_009', 1288, 1, '', '2015-12-15 15:45:14', 1, 'N'),
('20151215_010', 1403, 1, 'Tòa nhà 319 63 Lê Văn Lương', '2015-12-15 16:43:41', 1, 'Y'),
('20151216_001', 1563, 1, '', '2015-12-16 12:51:36', 1, 'N'),
('20151216_002', 1562, 1, '', '2015-12-16 12:51:58', 1, 'N'),
('20151216_003', 1564, 1, '', '2015-12-16 16:06:59', 1, 'N'),
('20151216_004', 1533, 1, '', '2015-12-16 18:46:05', 3, 'N'),
('20151216_005', 1565, 1, '', '2015-12-16 18:49:25', 3, 'N'),
('20151216_006', 1366, 1, '', '2015-12-16 15:47:31', 1, 'N'),
('20151216_007', 1565, 1, '', '2015-12-16 15:48:08', 1, 'N'),
('20151216_008', 1580, 1, '', '2015-12-16 15:48:54', 1, 'N'),
('20151217_001', 1288, 1, '', '2015-12-17 13:06:42', 1, 'N'),
('20151217_002', 1566, 1, '', '2015-12-17 13:07:53', 1, 'N'),
('20151217_003', 1567, 1, '', '2015-12-17 16:51:21', 1, 'N'),
('20151217_004', 1568, 1, '', '2015-12-17 18:24:00', 1, 'N'),
('20151217_005', 1569, 1, '', '2015-12-17 18:26:42', 1, 'N'),
('20151217_006', 1434, 1, '', '2015-12-17 19:10:45', 1, 'N'),
('20151217_007', 1581, 1, '', '2015-12-17 15:49:50', 1, 'N'),
('20151217_008', 1434, 1, '', '2015-12-17 15:50:55', 1, 'N'),
('20151218_001', 1570, 1, '', '2015-12-18 14:12:53', 1, 'N'),
('20151218_002', 1571, 1, '', '2015-12-18 14:13:33', 1, 'N'),
('20151218_003', 1572, 1, '', '2015-12-18 14:15:11', 1, 'N'),
('20151218_004', 1288, 1, '', '2015-12-18 14:15:23', 1, 'N'),
('20151218_005', 1557, 1, '', '2015-12-18 17:44:10', 1, 'N'),
('20151218_006', 1341, 1, '', '2015-12-18 19:18:36', 1, 'N'),
('20151218_007', 1573, 1, 'Lỗi dán đế', '2015-12-18 21:12:03', 1, 'N'),
('20151218_008', 1288, 1, 'Bạn Anh Minh', '2015-12-18 21:37:54', 1, 'N'),
('20151218_009', 1532, 1, '', '2015-12-18 15:52:08', 1, 'N'),
('20151218_010', 1355, 1, '', '2015-12-18 15:53:56', 1, 'N'),
('20151219_001', 1288, 1, '', '2015-12-19 12:55:26', 1, 'N'),
('20151219_002', 1562, 1, '', '2015-12-19 13:40:13', 1, 'N'),
('20151219_003', 1574, 1, '', '2015-12-19 15:06:28', 1, 'N'),
('20151219_004', 1562, 1, '', '2015-12-19 15:54:48', 1, 'N'),
('20151219_005', 1574, 1, '', '2015-12-19 15:56:01', 1, 'N'),
('20151219_006', 1582, 1, '', '2015-12-19 16:07:55', 1, 'N'),
('20151219_007', 1366, 1, '', '2015-12-19 16:09:08', 1, 'N'),
('20151220_001', 1575, 1, '', '2015-12-20 20:43:35', 3, 'N'),
('20151220_002', 1576, 1, '', '2015-12-20 20:44:30', 3, 'N'),
('20151220_003', 1288, 1, '', '2015-12-20 20:47:32', 3, 'N'),
('20151220_004', 1577, 1, '', '2015-12-20 20:48:28', 3, 'N'),
('20151222_001', 1578, 1, '', '2015-12-22 14:42:11', 1, 'N'),
('20151222_002', 1366, 1, '', '2015-12-22 16:00:35', 1, 'N'),
('20151222_003', 1403, 1, '', '2015-12-22 16:11:03', 1, 'N'),
('20151222_004', 1328, 1, '', '2015-12-22 16:27:49', 1, 'N'),
('20151222_005', 1410, 1, '169 Lê Thánh Tông, TP Hạ Long, tỉnh Quảng Ninh', '2015-12-22 16:35:06', 1, 'Y'),
('20151222_006', 1583, 1, '', '2015-12-22 17:59:48', 1, 'N'),
('20151222_007', 1528, 1, '', '2015-12-22 19:06:31', 1, 'N'),
('20151222_008', 1584, 1, '', '2015-12-22 19:16:42', 1, 'N'),
('20151222_009', 1585, 1, 'Áo lỗi rút bông', '2015-12-22 20:14:34', 1, 'N'),
('20151223_001', 1586, 1, '', '2015-12-23 11:49:32', 1, 'N'),
('20151223_002', 1587, 1, '', '2015-12-23 11:50:06', 1, 'N'),
('20151223_003', 1588, 1, 'Xóm 6 Minh Dân Triệu Sơn Thanh Hóa', '2015-12-23 13:36:29', 1, 'Y'),
('20151223_005', 1589, 1, '', '2015-12-23 15:05:38', 1, 'N'),
('20151223_006', 1562, 1, '', '2015-12-23 15:41:33', 1, 'N'),
('20151223_007', 1590, 1, '', '2015-12-23 17:37:38', 1, 'N'),
('20151223_008', 1591, 1, '', '2015-12-23 18:08:05', 1, 'N'),
('20151223_009', 1592, 1, 'KTX Sam Sung, KCN Yên Bình, Phổ Yên, Thái Nguyên ', '2015-12-23 19:00:52', 1, 'N'),
('20151223_010', 1593, 1, '', '2015-12-23 20:43:45', 1, 'N'),
('20151223_011', 1290, 1, '', '2015-12-23 21:02:01', 1, 'N'),
('20151223_012', 1594, 1, '85c Trần Quang Diệu ', '2015-12-23 21:34:36', 1, 'N');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=611 ;

--
-- Dumping data for table `export_facture_product`
--

INSERT INTO `export_facture_product` (`id`, `product_code`, `quantity`, `export_price`, `export_facture_code`, `re_qty`, `re_date`, `re_description`) VALUES
(1, '0015', 1, 340, '20151008_001', 0, NULL, NULL),
(2, '0023', 1, 360, '20151008_001', 0, NULL, NULL),
(3, '0024', 1, 350, '20151008_002', 0, NULL, NULL),
(4, '0007', 1, 750, '20151008_003', 0, NULL, NULL),
(5, '0032', 1, 289, '20151008_004', 0, NULL, NULL),
(6, '0033', 1, 236, '20151008_004', 0, NULL, NULL),
(7, '0023', 1, 290, '20151008_005', 0, NULL, NULL),
(8, '0026', 1, 255, '20151008_006', 0, NULL, NULL),
(9, '0002', 1, 400, '20151008_007', 0, NULL, NULL),
(10, '0036', 1, 250, '20151009_001', 0, NULL, NULL),
(11, '0030', 1, 230, '20151010_001', 0, NULL, NULL),
(12, '0025', 1, 280, '20151010_001', 0, NULL, NULL),
(13, '0037', 1, 250, '20151010_002', 0, NULL, NULL),
(14, '0036', 1, 250, '20151010_002', 0, NULL, NULL),
(15, '0008', 1, 500, '20151010_002', 0, NULL, NULL),
(16, '0014', 1, 280, '20151010_003', 0, NULL, NULL),
(17, '0032', 1, 290, '20151010_003', 0, NULL, NULL),
(18, '0031', 1, 290, '20151010_004', 0, NULL, NULL),
(19, '0038', 1, 250, '20151010_005', 0, NULL, NULL),
(20, '0023', 1, 280, '20151010_005', 0, NULL, NULL),
(21, '0011', 1, 260, '20151011_001', 1, '2015-11-07 14:23:41', ''),
(22, '0024', 1, 280, '20151011_002', 0, NULL, NULL),
(23, '0013', 1, 270, '20151011_003', 1, '2015-12-11 17:44:35', ''),
(24, '0039', 1, 220, '20151011_004', 0, NULL, NULL),
(25, '0018', 1, 230, '20151011_005', 0, NULL, NULL),
(26, '0031', 1, 270, '20151011_006', 0, NULL, NULL),
(27, '0007', 1, 600, '20151011_006', 0, NULL, NULL),
(28, '0011', 1, 265, '20151011_007', 0, NULL, NULL),
(29, '0020', 1, 270, '20151011_008', 0, NULL, NULL),
(30, '0036', 1, 250, '20151011_009', 0, NULL, NULL),
(31, '0025', 1, 270, '20151011_010', 0, NULL, NULL),
(32, '0018', 1, 230, '20151011_011', 0, NULL, NULL),
(33, '0017', 1, 280, '20151011_012', 0, NULL, NULL),
(34, '0030', 1, 230, '20151011_013', 0, NULL, NULL),
(35, '0039', 1, 230, '20151011_014', 0, NULL, NULL),
(36, '0011', 1, 265, '20151011_015', 0, NULL, NULL),
(37, '0038', 1, 255, '20151011_016', 0, NULL, NULL),
(38, '0038', 1, 255, '20151012_001', 0, NULL, NULL),
(39, '0027', 1, 235, '20151012_002', 0, NULL, NULL),
(40, '0019', 1, 235, '20151012_002', 0, NULL, NULL),
(41, '0023', 1, 290, '20151012_003', 0, NULL, NULL),
(42, '0039', 1, 230, '20151012_004', 0, NULL, NULL),
(43, '0033', 1, 235, '20151012_005', 0, NULL, NULL),
(44, '0011', 1, 265, '20151012_006', 0, NULL, NULL),
(45, '0035', 1, 256, '20151012_007', 0, NULL, NULL),
(46, '0025', 1, 280, '20151013_001', 0, NULL, NULL),
(47, '0034', 1, 230, '20151013_002', 0, NULL, NULL),
(48, '0037', 1, 260, '20151013_002', 0, NULL, NULL),
(49, '0039', 1, 232, '20151013_003', 0, NULL, NULL),
(50, '0012', 1, 290, '20151014_001', 0, NULL, NULL),
(51, '0026', 1, 250, '20151014_002', 0, NULL, NULL),
(52, '0013', 1, 280, '20151014_002', 0, NULL, NULL),
(53, '0032', 1, 290, '20151014_002', 0, NULL, NULL),
(54, '0032', 1, 290, '20151014_003', 0, NULL, NULL),
(55, '0011', 1, 264, '20151014_004', 0, NULL, NULL),
(56, '0017', 1, 280, '20151014_004', 0, NULL, NULL),
(57, '0024', 1, 310, '20151011_017', 0, NULL, NULL),
(58, '0037', 1, 250, '20151014_005', 0, NULL, NULL),
(59, '0025', 1, 280, '20151015_001', 0, NULL, NULL),
(60, '0010', 1, 260, '20151015_002', 0, NULL, NULL),
(61, '0035', 1, 250, '20151016_001', 0, NULL, NULL),
(62, '0011', 1, 265, '20151016_002', 0, NULL, NULL),
(63, '0015', 1, 300, '20151016_003', 0, NULL, NULL),
(64, '0039', 1, 260, '20151016_004', 0, NULL, NULL),
(65, '0012', 1, 288, '20151016_005', 0, NULL, NULL),
(66, '0019', 1, 235, '20151016_006', 0, NULL, NULL),
(67, '0032', 1, 287, '20151016_007', 0, NULL, NULL),
(68, '0028', 1, 240, '20151016_008', 0, NULL, NULL),
(69, '0009', 1, 350, '20151016_009', 0, NULL, NULL),
(70, '0034', 1, 230, '20151016_010', 0, NULL, NULL),
(71, '0030', 1, 230, '20151016_010', 0, NULL, NULL),
(72, '0038', 1, 255, '20151017_001', 0, NULL, NULL),
(73, '0027', 1, 235, '20151017_002', 0, NULL, NULL),
(74, '0013', 1, 300, '20151017_003', 0, NULL, NULL),
(75, '0036', 1, 256, '20151017_004', 0, NULL, NULL),
(76, '0004', 1, 520, '20151017_005', 0, NULL, NULL),
(77, '0036', 1, 255, '20151017_006', 0, NULL, NULL),
(78, '0013', 1, 270, '20151017_007', 0, NULL, NULL),
(79, '0001', 1, 400, '20151017_007', 0, NULL, NULL),
(80, '0007', 1, 560, '20151017_008', 0, NULL, NULL),
(81, '0025', 1, 270, '20151017_008', 0, NULL, NULL),
(82, '0016', 1, 280, '20151017_009', 0, NULL, NULL),
(83, '0030', 1, 260, '20151017_010', 0, NULL, NULL),
(84, '0027', 1, 230, '20151017_011', 0, NULL, NULL),
(85, '0008', 1, 500, '20151018_001', 0, NULL, NULL),
(86, '0024', 1, 280, '20151018_002', 0, NULL, NULL),
(87, '0039', 1, 230, '20151018_002', 0, NULL, NULL),
(88, '0035', 1, 240, '20151018_003', 0, NULL, NULL),
(89, '0001', 1, 410, '20151018_003', 0, NULL, NULL),
(90, '0024', 1, 260, '20151018_004', 0, NULL, NULL),
(91, '0006', 1, 480, '20151018_005', 0, NULL, NULL),
(92, '0027', 1, 235, '20151018_006', 0, NULL, NULL),
(94, '0029', 1, 235, '20151019_001', 0, NULL, NULL),
(95, '0020', 1, 280, '20151019_002', 0, NULL, NULL),
(96, '0036', 1, 256, '20151019_003', 0, NULL, NULL),
(98, '0026', 1, 250, '20151019_004', 0, NULL, NULL),
(99, '0037', 1, 255, '20151020_001', 0, NULL, NULL),
(100, '0035', 1, 255, '20151020_002', 0, NULL, NULL),
(101, '0036', 1, 250, '20151020_003', 0, NULL, NULL),
(102, '0024', 1, 270, '20151020_003', 0, NULL, NULL),
(103, '0017', 1, 300, '20151020_004', 0, NULL, NULL),
(104, '0039', 1, 230, '20151021_001', 0, NULL, NULL),
(105, '0028', 1, 240, '20151021_002', 0, NULL, NULL),
(106, '0010', 1, 260, '20151021_003', 0, NULL, NULL),
(107, '0035', 1, 255, '20151021_004', 0, NULL, NULL),
(108, '0026', 1, 255, '20151021_005', 0, NULL, NULL),
(109, '0025', 1, 280, '20151021_006', 0, NULL, NULL),
(110, '0030', 1, 230, '20151022_001', 0, NULL, NULL),
(111, '0010', 1, 260, '20151022_002', 0, NULL, NULL),
(112, '0037', 1, 255, '20151022_003', 0, NULL, NULL),
(113, '0011', 1, 265, '20151023_001', 1, '2015-12-22 16:00:35', ''),
(114, '0031', 1, 288, '20151023_002', 0, NULL, NULL),
(115, '0033', 1, 235, '20151023_003', 1, '2015-11-04 13:19:08', ''),
(116, '0029', 1, 236, '20151023_004', 0, NULL, NULL),
(117, '0013', 1, 280, '20151024_001', 0, NULL, NULL),
(119, '0043', 1, 260, '20151024_003', 0, NULL, NULL),
(120, '0019', 1, 200, '20151024_004', 0, NULL, NULL),
(121, '0018', 1, 230, '20151024_005', 0, NULL, NULL),
(122, '0035', 1, 255, '20151024_006', 0, NULL, NULL),
(123, '0032', 1, 250, '20151024_007', 0, NULL, NULL),
(124, '0010', 1, 260, '20151024_008', 0, NULL, NULL),
(125, '0035', 1, 255, '20151024_009', 0, NULL, NULL),
(126, '0030', 1, 232, '20151024_010', 0, NULL, NULL),
(127, '0046', 1, 240, '20151024_011', 0, NULL, NULL),
(128, '0028', 1, 240, '20151024_012', 0, NULL, NULL),
(129, '0037', 1, 255, '20151024_013', 0, NULL, NULL),
(130, '0034', 1, 220, '20151025_001', 0, NULL, NULL),
(131, '0006', 1, 480, '20151025_001', 0, NULL, NULL),
(132, '0049', 1, 240, '20151025_002', 0, NULL, NULL),
(133, '0030', 1, 230, '20151025_003', 0, NULL, NULL),
(134, '0073', 1, 255, '20151025_004', 0, NULL, NULL),
(135, '0061', 1, 290, '20151025_005', 0, NULL, NULL),
(136, '0056', 1, 290, '20151008_008', 0, NULL, NULL),
(137, '0059', 1, 250, '20151008_009', 0, NULL, NULL),
(138, '0040', 1, 270, '20151009_002', 0, NULL, NULL),
(139, '0064', 1, 240, '20151010_006', 0, NULL, NULL),
(140, '0040', 1, 270, '20151011_018', 0, NULL, NULL),
(141, '0058', 1, 230, '20151012_008', 0, NULL, NULL),
(142, '0059', 1, 248, '20151012_009', 0, NULL, NULL),
(143, '0058', 1, 232, '20151012_009', 0, NULL, NULL),
(144, '0057', 1, 288, '20151012_010', 0, NULL, NULL),
(145, '0069', 1, 255, '20151014_006', 0, NULL, NULL),
(146, '0058', 1, 230, '20151015_003', 0, NULL, NULL),
(148, '0063', 1, 275, '20151015_004', 0, NULL, NULL),
(149, '0057', 1, 287, '20151016_011', 0, NULL, NULL),
(150, '0069', 1, 255, '20151016_012', 0, NULL, NULL),
(151, '0060', 1, 230, '20151016_013', 0, NULL, NULL),
(152, '0069', 1, 256, '20151017_012', 0, NULL, NULL),
(153, '0069', 1, 256, '20151017_013', 0, NULL, NULL),
(154, '0056', 1, 270, '20151017_014', 0, NULL, NULL),
(155, '0067', 1, 280, '20151017_015', 0, NULL, NULL),
(156, '0069', 1, 240, '20151018_007', 0, NULL, NULL),
(157, '0067', 1, 280, '20151019_005', 0, NULL, NULL),
(158, '0056', 2, 285, '20151019_005', 0, NULL, NULL),
(159, '0070', 1, 236, '20151019_006', 0, NULL, NULL),
(160, '0041', 1, 315, '20151020_005', 0, NULL, NULL),
(161, '0068', 1, 280, '20151020_006', 0, NULL, NULL),
(162, '0046', 1, 240, '20151021_007', 0, NULL, NULL),
(163, '0046', 1, 240, '20151021_008', 0, NULL, NULL),
(164, '0059', 1, 250, '20151021_009', 0, NULL, NULL),
(165, '0046', 1, 240, '20151022_004', 0, NULL, NULL),
(167, '0072', 1, 255, '20151022_005', 0, NULL, NULL),
(168, '0043', 1, 260, '20151022_006', 0, NULL, NULL),
(170, '0046', 1, 240, '20151022_007', 0, NULL, NULL),
(171, '0042', 1, 280, '20151022_008', 0, NULL, NULL),
(172, '0050', 1, 255, '20151023_005', 0, NULL, NULL),
(173, '0073', 1, 255, '20151023_006', 0, NULL, NULL),
(174, '0070', 1, 236, '20151023_007', 0, NULL, NULL),
(175, '0073', 1, 256, '20151024_014', 0, NULL, NULL),
(176, '0073', 1, 255, '20151024_015', 0, NULL, NULL),
(177, '0041', 1, 315, '20151026_001', 0, NULL, NULL),
(178, '0028', 1, 240, '20151026_002', 0, NULL, NULL),
(179, '0031', 1, 288, '20151026_003', 0, NULL, NULL),
(180, '0053', 1, 280, '20151026_004', 0, NULL, NULL),
(181, '0040', 1, 270, '20151026_005', 0, NULL, NULL),
(182, '0018', 1, 230, '20151026_006', 0, NULL, NULL),
(183, '0032', 1, 290, '20151027_001', 1, '2015-10-28 11:41:31', ''),
(184, '0036', 1, 250, '20151027_002', 0, NULL, NULL),
(185, '0019', 1, 235, '20151027_003', 0, NULL, NULL),
(186, '0058', 1, 290, '20151027_004', 0, NULL, NULL),
(187, '0076', 1, 230, '20151027_005', 0, NULL, NULL),
(188, '0032', 1, 290, '20151027_006', 0, NULL, NULL),
(189, '0066', 1, 500, '20151028_001', 0, NULL, NULL),
(190, '0004', 1, 520, '20151028_002', 0, NULL, NULL),
(191, '0028', 1, 240, '20151028_003', 0, NULL, NULL),
(192, '0019', 1, 235, '20151029_001', 0, NULL, NULL),
(193, '0055', 1, 290, '20151029_002', 0, NULL, NULL),
(194, '0049', 1, 240, '20151029_003', 0, NULL, NULL),
(195, '0050', 1, 255, '20151029_004', 0, NULL, NULL),
(196, '0046', 1, 270, '20151029_005', 0, NULL, NULL),
(197, '0028', 1, 230, '20151029_006', 0, NULL, NULL),
(198, '0039', 1, 230, '20151029_007', 0, NULL, NULL),
(199, '0023', 1, 290, '20151029_008', 0, NULL, NULL),
(200, '0030', 1, 230, '20151030_001', 0, NULL, NULL),
(201, '0009', 1, 265, '20151030_001', 0, NULL, NULL),
(202, '0009', 1, 260, '20151030_002', 0, NULL, NULL),
(203, '0020', 1, 270, '20151030_003', 0, NULL, NULL),
(204, '0074', 1, 290, '20151030_004', 0, NULL, NULL),
(205, '0024', 1, 280, '20151031_001', 0, NULL, NULL),
(206, '0058', 1, 232, '20151031_002', 0, NULL, NULL),
(207, '0072', 1, 250, '20151031_003', 0, NULL, NULL),
(208, '0040', 1, 272, '20151031_004', 0, NULL, NULL),
(209, '0071', 1, 240, '20151101_001', 0, NULL, NULL),
(210, '0049', 1, 270, '20151101_002', 0, NULL, NULL),
(211, '0050', 1, 288, '20151101_003', 1, '2015-11-05 18:44:01', 'Phí ship hàng lần 3 là 53k'),
(212, '0069', 1, 287, '20151101_003', 0, NULL, NULL),
(213, '0052', 1, 300, '20151101_004', 0, NULL, NULL),
(214, '0028', 1, 240, '20151101_005', 0, NULL, NULL),
(215, '0009', 1, 240, '20151102_001', 0, NULL, NULL),
(216, '0072', 1, 250, '20151102_002', 0, NULL, NULL),
(217, '0043', 1, 265, '20151102_003', 0, NULL, NULL),
(218, '0076', 1, 235, '20151102_004', 0, NULL, NULL),
(219, '0031', 1, 288, '20151102_005', 0, NULL, NULL),
(220, '0046', 1, 240, '20151103_001', 0, NULL, NULL),
(221, '0048', 1, 280, '20151103_001', 0, NULL, NULL),
(222, '0076', 1, 235, '20151103_002', 0, NULL, NULL),
(223, '0051', 1, 236, '20151103_003', 0, NULL, NULL),
(224, '0025', 1, 280, '20151103_004', 0, NULL, NULL),
(225, '0024', 1, 280, '20151103_005', 0, NULL, NULL),
(226, '0072', 1, 250, '20151104_001', 0, NULL, NULL),
(227, '0076', 1, 235, '20151104_002', 0, NULL, NULL),
(228, '0056', 1, 280, '20151104_003', 0, NULL, NULL),
(229, '0046', 1, 240, '20151104_004', 0, NULL, NULL),
(230, '0004', 1, 520, '20151104_005', 0, NULL, NULL),
(231, '0046', 1, 240, '20151104_005', 0, NULL, NULL),
(232, '0070', 1, 220, '20151105_001', 0, NULL, NULL),
(233, '0030', 1, 230, '20151105_002', 0, NULL, NULL),
(234, '0077', 1, 355, '20151105_002', 0, NULL, NULL),
(235, '0009', 1, 265, '20151105_003', 1, '2015-11-06 17:12:00', ''),
(236, '0023', 1, 290, '20151105_004', 0, NULL, NULL),
(237, '0018', 1, 260, '20151105_005', 0, NULL, NULL),
(238, '0035', 1, 280, '20151105_006', 1, '2015-11-25 14:40:43', '169 Lê Thánh Tông, tp Hạ Long, tỉnh Quảng Ninh'),
(239, '0049', 1, 270, '20151105_006', 0, NULL, NULL),
(240, '0009', 1, 265, '20151105_007', 0, NULL, NULL),
(241, '0072', 1, 250, '20151105_008', 0, NULL, NULL),
(242, '0046', 1, 270, '20151105_009', 0, NULL, NULL),
(243, '0053', 1, 280, '20151106_001', 0, NULL, NULL),
(244, '0054', 1, 265, '20151106_001', 0, NULL, NULL),
(245, '0058', 1, 210, '20151106_002', 0, NULL, NULL),
(246, '0043', 1, 260, '20151106_002', 0, NULL, NULL),
(247, '0004', 1, 520, '20151106_003', 0, NULL, NULL),
(248, '0073', 1, 255, '20151106_004', 0, NULL, NULL),
(249, '0075', 1, 210, '20151106_005', 0, NULL, NULL),
(250, '0032', 1, 280, '20151106_006', 0, NULL, NULL),
(251, '0032', 1, 270, '20151107_001', 0, NULL, NULL),
(252, '0035', 1, 240, '20151107_002', 0, NULL, NULL),
(253, '0079', 1, 280, '20151103_006', 0, NULL, NULL),
(254, '0081', 1, 268, '20151105_010', 0, NULL, NULL),
(255, '0080', 1, 255, '20151106_007', 0, NULL, NULL),
(256, '0079', 2, 280, '20151106_008', 0, NULL, NULL),
(258, '0081', 1, 300, '20151107_003', 0, NULL, NULL),
(259, '0056', 1, 300, '20151107_004', 0, NULL, NULL),
(260, '0081', 1, 280, '20151107_004', 0, NULL, NULL),
(261, '0081', 2, 300, '20151107_005', 1, '2015-11-25 14:40:43', '169 Lê Thánh Tông, tp Hạ Long, tỉnh Quảng Ninh'),
(262, '0081', 1, 270, '20151107_006', 0, NULL, NULL),
(263, '0073', 1, 320, '20151107_007', 0, NULL, NULL),
(264, '0058', 1, 230, '20151107_008', 1, '2015-11-08 17:38:26', ''),
(265, '0076', 2, 230, '20151107_009', 0, NULL, NULL),
(266, '0027', 1, 235, '20151107_010', 0, NULL, NULL),
(267, '0030', 1, 225, '20151108_001', 0, NULL, NULL),
(269, '0033', 2, 235, '20151108_002', 0, NULL, NULL),
(270, '0081', 1, 302, '20151109_001', 0, NULL, NULL),
(271, '0083', 1, 198, '20151109_001', 0, NULL, NULL),
(272, '0081', 1, 300, '20151109_002', 0, NULL, NULL),
(273, '0023', 1, 320, '20151109_003', 0, NULL, NULL),
(274, '0069', 1, 255, '20151108_003', 1, '2015-11-09 20:59:57', ''),
(275, '0033', 1, 260, '20151109_004', 0, NULL, NULL),
(276, '0065', 1, 260, '20151109_005', 0, NULL, NULL),
(277, '0020', 1, 305, '20151109_006', 0, NULL, NULL),
(278, '0031', 1, 315, '20151109_006', 0, NULL, NULL),
(279, '0050', 1, 280, '20151109_007', 0, NULL, NULL),
(280, '0076', 1, 260, '20151109_007', 0, NULL, NULL),
(281, '0016', 1, 280, '20151109_008', 0, NULL, NULL),
(282, '0069', 1, 250, '20151109_008', 0, NULL, NULL),
(283, '0039', 1, 230, '20151109_008', 0, NULL, NULL),
(284, '0002', 1, 400, '20151109_009', 0, NULL, NULL),
(285, '0051', 1, 210, '20151109_010', 0, NULL, NULL),
(286, '0045', 1, 280, '20151110_001', 0, NULL, NULL),
(287, '0075', 1, 260, '20151110_002', 0, NULL, NULL),
(288, '0032', 1, 306, '20151110_003', 0, NULL, NULL),
(289, '0083', 2, 187, '20151110_003', 0, NULL, NULL),
(290, '0054', 1, 290, '20151110_004', 0, NULL, NULL),
(291, '0058', 1, 260, '20151110_005', 0, NULL, NULL),
(292, '0040', 1, 270, '20151110_006', 0, NULL, NULL),
(293, '0018', 1, 210, '20151110_007', 0, NULL, NULL),
(294, '0031', 1, 290, '20151028_004', 0, NULL, NULL),
(295, '0073', 1, 280, '20151111_001', 0, NULL, NULL),
(296, '0072', 1, 280, '20151111_002', 0, NULL, NULL),
(297, '0036', 1, 288, '20151112_001', 0, NULL, NULL),
(298, '0067', 1, 300, '20151112_002', 0, NULL, NULL),
(299, '0006', 1, 480, '20151112_003', 0, NULL, NULL),
(300, '0018', 1, 250, '20151112_004', 0, NULL, NULL),
(301, '0053', 1, 300, '20151112_004', 0, NULL, NULL),
(302, '0079', 1, 300, '20151112_004', 0, NULL, NULL),
(303, '0076', 1, 265, '20151112_005', 0, NULL, NULL),
(304, '0081', 1, 270, '20151113_001', 0, NULL, NULL),
(305, '0074', 1, 320, '20151113_002', 0, NULL, NULL),
(306, '0081', 1, 300, '20151113_003', 0, NULL, NULL),
(307, '0076', 1, 260, '20151113_004', 0, NULL, NULL),
(308, '0017', 1, 315, '20151113_005', 1, '2015-11-14 20:30:01', ''),
(309, '0065', 1, 265, '20151114_001', 1, '2015-11-15 16:23:55', ''),
(310, '0074', 1, 320, '20151114_002', 0, NULL, NULL),
(311, '0082', 1, 315, '20151114_003', 0, NULL, NULL),
(312, '0049', 2, 260, '20151115_001', 0, NULL, NULL),
(313, '0018', 1, 265, '20151115_002', 0, NULL, NULL),
(314, '0054', 1, 297, '20151115_003', 0, NULL, NULL),
(315, '0024', 1, 315, '20151115_004', 0, NULL, NULL),
(316, '0020', 1, 300, '20151116_001', 0, NULL, NULL),
(317, '0008', 1, 560, '20151116_001', 0, NULL, NULL),
(318, '0079', 1, 300, '20151116_002', 0, NULL, NULL),
(319, '0009', 1, 300, '20151116_002', 0, NULL, NULL),
(320, '0071', 1, 250, '20151116_002', 0, NULL, NULL),
(321, '0019', 1, 265, '20151116_003', 0, NULL, NULL),
(322, '0079', 1, 300, '20151116_004', 0, NULL, NULL),
(323, '0046', 1, 270, '20151117_001', 0, NULL, NULL),
(324, '0081', 1, 290, '20151117_002', 0, NULL, NULL),
(325, '0009', 1, 280, '20151117_003', 0, NULL, NULL),
(326, '0073', 1, 272, '20151117_003', 0, NULL, NULL),
(327, '0073', 1, 273, '20151117_004', 0, NULL, NULL),
(328, '0055', 1, 300, '20151117_005', 0, NULL, NULL),
(329, '0086', 1, 290, '20151117_006', 0, NULL, NULL),
(330, '0073', 1, 280, '20151117_007', 0, NULL, NULL),
(331, '0019', 1, 240, '20151117_008', 1, '2015-11-18 19:56:02', ''),
(332, '0085', 1, 270, '20151118_001', 0, NULL, NULL),
(333, '0056', 1, 310, '20151118_002', 0, NULL, NULL),
(334, '0028', 1, 280, '20151118_003', 0, NULL, NULL),
(335, '0001', 1, 465, '20151119_001', 0, NULL, NULL),
(336, '0059', 1, 280, '20151119_002', 0, NULL, NULL),
(337, '0085', 1, 280, '20151119_003', 0, NULL, NULL),
(338, '0057', 1, 325, '20151119_004', 0, NULL, NULL),
(339, '0090', 1, 305, '20151121_001', 0, NULL, NULL),
(340, '0085', 1, 280, '20151121_002', 0, NULL, NULL),
(341, '0023', 1, 310, '20151121_003', 0, NULL, NULL),
(342, '0083', 1, 200, '20151121_003', 0, NULL, NULL),
(343, '0088', 1, 300, '20151121_004', 0, NULL, NULL),
(344, '0013', 1, 315, '20151121_005', 0, NULL, NULL),
(345, '0079', 1, 280, '20151121_006', 0, NULL, NULL),
(346, '0017', 1, 310, '20151121_007', 0, NULL, NULL),
(347, '0089', 1, 300, '20151121_008', 0, NULL, NULL),
(348, '0066', 1, 560, '20151121_009', 0, NULL, NULL),
(349, '0068', 1, 300, '20151122_001', 0, NULL, NULL),
(350, '0018', 1, 250, '20151122_002', 0, NULL, NULL),
(351, '0035', 1, 280, '20151122_003', 0, NULL, NULL),
(352, '0089', 1, 290, '20151123_001', 0, NULL, NULL),
(353, '0024', 1, 310, '20151123_002', 0, NULL, NULL),
(354, '0086', 1, 300, '20151123_003', 0, NULL, NULL),
(355, '0096', 1, 315, '20151123_004', 0, NULL, NULL),
(356, '0097', 1, 265, '20151123_005', 0, NULL, NULL),
(357, '0100', 1, 265, '20151123_006', 0, NULL, NULL),
(358, '0073', 1, 280, '20151124_001', 0, NULL, NULL),
(360, '0051', 1, 265, '20151124_002', 0, NULL, NULL),
(361, '0091', 1, 300, '20151124_003', 0, NULL, NULL),
(362, '0054', 1, 300, '20151124_003', 0, NULL, NULL),
(363, '0092', 1, 190, '20151124_004', 0, NULL, NULL),
(364, '0089', 1, 300, '20151125_001', 0, NULL, NULL),
(365, '0085', 2, 280, '20151125_001', 0, NULL, NULL),
(366, '0051', 1, 265, '20151125_002', 0, NULL, NULL),
(367, '0093', 1, 290, '20151125_003', 0, NULL, NULL),
(368, '0088', 1, 300, '20151127_001', 0, NULL, NULL),
(369, '0073', 1, 275, '20151127_002', 0, NULL, NULL),
(370, '0085', 1, 275, '20151127_002', 0, NULL, NULL),
(371, '0087', 1, 270, '20151127_003', 0, NULL, NULL),
(372, '0018', 1, 260, '20151127_004', 0, NULL, NULL),
(373, '0081', 1, 290, '20151127_005', 0, NULL, NULL),
(374, '0031', 1, 320, '20151128_001', 0, NULL, NULL),
(375, '0049', 1, 270, '20151128_002', 0, NULL, NULL),
(376, '0085', 1, 280, '20151128_003', 0, NULL, NULL),
(377, '0096', 1, 315, '20151128_004', 0, NULL, NULL),
(378, '0018', 1, 250, '20151128_005', 0, NULL, NULL),
(379, '0009', 1, 280, '20151128_005', 0, NULL, NULL),
(380, '0100', 1, 255, '20151128_006', 0, NULL, NULL),
(381, '0093', 1, 290, '20151128_006', 0, NULL, NULL),
(382, '0077', 1, 400, '20151128_007', 0, NULL, NULL),
(383, '0075', 1, 250, '20151128_008', 0, NULL, NULL),
(384, '0092', 1, 200, '20151128_008', 0, NULL, NULL),
(385, '0104', 1, 280, '20151128_009', 0, NULL, NULL),
(386, '0077', 1, 380, '20151128_010', 0, NULL, NULL),
(387, '0079', 1, 300, '20151128_010', 0, NULL, NULL),
(388, '0012', 1, 320, '20151129_001', 0, NULL, NULL),
(389, '0093', 1, 300, '20151129_002', 0, NULL, NULL),
(390, '0073', 1, 280, '20151129_003', 0, NULL, NULL),
(391, '0105', 1, 285, '20151129_004', 0, NULL, NULL),
(392, '0091', 1, 285, '20151129_004', 0, NULL, NULL),
(393, '0076', 1, 260, '20151129_005', 0, NULL, NULL),
(394, '0003', 1, 420, '20151129_006', 0, NULL, NULL),
(395, '0097', 1, 250, '20151129_007', 0, NULL, NULL),
(396, '0091', 1, 270, '20151129_007', 0, NULL, NULL),
(397, '0083', 1, 180, '20151129_008', 0, NULL, NULL),
(398, '0080', 1, 300, '20151130_001', 0, NULL, NULL),
(399, '0085', 1, 275, '20151130_002', 0, NULL, NULL),
(400, '0066', 1, 550, '20151130_003', 0, NULL, NULL),
(401, '0080', 1, 270, '20151130_004', 0, NULL, NULL),
(402, '0053', 1, 293, '20151130_005', 0, NULL, NULL),
(403, '0099', 1, 262, '20151130_005', 0, NULL, NULL),
(404, '0091', 1, 270, '20151130_006', 0, NULL, NULL),
(405, '0083', 1, 180, '20151130_006', 0, NULL, NULL),
(406, '0091', 1, 270, '20151130_007', 0, NULL, NULL),
(407, '0094', 1, 500, '20151130_008', 0, NULL, NULL),
(408, '0091', 1, 290, '20151201_001', 0, NULL, NULL),
(409, '0083', 1, 190, '20151202_001', 0, NULL, NULL),
(410, '0023', 1, 300, '20151202_002', 0, NULL, NULL),
(411, '0068', 1, 300, '20151202_002', 0, NULL, NULL),
(412, '0071', 1, 250, '20151202_003', 0, NULL, NULL),
(413, '0084', 1, 250, '20151202_003', 0, NULL, NULL),
(414, '0105', 1, 300, '20151202_004', 0, NULL, NULL),
(415, '0091', 1, 300, '20151202_005', 0, NULL, NULL),
(416, '0079', 1, 300, '20151202_006', 0, NULL, NULL),
(417, '0091', 1, 300, '20151202_006', 0, NULL, NULL),
(418, '0104', 1, 250, '20151203_001', 0, NULL, NULL),
(419, '0032', 1, 290, '20151203_001', 0, NULL, NULL),
(420, '0105', 1, 280, '20151204_001', 1, '2015-12-08 13:36:58', ''),
(421, '0056', 1, 320, '20151204_002', 0, NULL, NULL),
(422, '0079', 1, 300, '20151204_003', 0, NULL, NULL),
(423, '0084', 1, 250, '20151204_004', 0, NULL, NULL),
(424, '0093', 1, 300, '20151205_001', 0, NULL, NULL),
(425, '0073', 1, 280, '20151205_002', 0, NULL, NULL),
(426, '0091', 1, 285, '20151205_003', 0, NULL, NULL),
(427, '0010', 1, 275, '20151205_004', 1, '2015-12-07 18:49:39', ''),
(428, '0094', 1, 490, '20151205_004', 0, NULL, NULL),
(429, '0084', 1, 250, '20151205_005', 0, NULL, NULL),
(430, '0080', 1, 280, '20151205_006', 0, NULL, NULL),
(431, '0092', 1, 190, '20151205_007', 0, NULL, NULL),
(432, '0093', 1, 290, '20151205_008', 0, NULL, NULL),
(433, '0081', 1, 290, '20151205_009', 0, NULL, NULL),
(434, '0088', 1, 290, '20151205_010', 0, NULL, NULL),
(435, '0099', 1, 270, '20151205_011', 0, NULL, NULL),
(436, '0075', 1, 250, '20151206_001', 0, NULL, NULL),
(437, '0032', 1, 300, '20151206_002', 0, NULL, NULL),
(438, '0031', 1, 300, '20151206_002', 0, NULL, NULL),
(439, '0074', 1, 320, '20151206_003', 0, NULL, NULL),
(440, '0054', 1, 280, '20151206_004', 0, NULL, NULL),
(441, '0086', 1, 300, '20151206_005', 0, NULL, NULL),
(442, '0088', 1, 290, '20151206_006', 0, NULL, NULL),
(443, '0088', 1, 280, '20151206_007', 0, NULL, NULL),
(444, '0057', 1, 300, '20151206_008', 0, NULL, NULL),
(445, '0104', 1, 270, '20151206_009', 0, NULL, NULL),
(446, '0093', 1, 300, '20151206_010', 0, NULL, NULL),
(447, '0076', 1, 260, '20151206_011', 0, NULL, NULL),
(448, '0088', 1, 260, '20151207_001', 0, NULL, NULL),
(449, '0035', 1, 280, '20151207_002', 0, NULL, NULL),
(450, '0086', 1, 275, '20151207_003', 0, NULL, NULL),
(451, '0105', 1, 280, '20151207_004', 0, NULL, NULL),
(452, '0084', 1, 240, '20151208_001', 0, NULL, NULL),
(453, '0077', 1, 380, '20151208_002', 0, NULL, NULL),
(454, '0084', 1, 240, '20151208_002', 0, NULL, NULL),
(455, '0085', 1, 250, '20151208_003', 0, NULL, NULL),
(456, '0007', 1, 600, '20151208_003', 1, '2015-12-10 16:19:47', ''),
(457, '0030', 1, 250, '20151208_004', 0, NULL, NULL),
(458, '0009', 1, 270, '20151208_005', 0, NULL, NULL),
(459, '0096', 1, 300, '20151208_006', 0, NULL, NULL),
(460, '0031', 1, 280, '20151208_007', 0, NULL, NULL),
(461, '0108', 1, 340, '20151209_001', 0, NULL, NULL),
(462, '0018', 1, 240, '20151209_002', 0, NULL, NULL),
(463, '0074', 1, 290, '20151209_003', 0, NULL, NULL),
(464, '0066', 1, 500, '20151209_004', 0, NULL, NULL),
(465, '0043', 1, 280, '20151209_005', 0, NULL, NULL),
(466, '0070', 1, 230, '20151209_005', 0, NULL, NULL),
(467, '0012', 1, 290, '20151209_006', 0, NULL, NULL),
(468, '0093', 1, 290, '20151210_001', 0, NULL, NULL),
(469, '0074', 1, 300, '20151210_001', 0, NULL, NULL),
(470, '0028', 1, 260, '20151210_002', 0, NULL, NULL),
(471, '0090', 1, 290, '20151210_002', 0, NULL, NULL),
(472, '0104', 1, 250, '20151210_003', 0, NULL, NULL),
(473, '0015', 1, 310, '20151210_004', 0, NULL, NULL),
(474, '0087', 1, 250, '20151210_005', 0, NULL, NULL),
(475, '0010', 1, 270, '20151210_006', 0, NULL, NULL),
(476, '0052', 1, 280, '20151210_007', 0, NULL, NULL),
(477, '0109', 1, 410, '20151210_007', 0, NULL, NULL),
(478, '0099', 1, 250, '20151210_007', 0, NULL, NULL),
(479, '0031', 1, 320, '20151210_008', 0, NULL, NULL),
(480, '0068', 1, 290, '20151211_001', 0, NULL, NULL),
(481, '0085', 1, 260, '20151211_001', 0, NULL, NULL),
(482, '0095', 1, 300, '20151211_001', 0, NULL, NULL),
(483, '0105', 1, 280, '20151211_002', 0, NULL, NULL),
(484, '0090', 1, 290, '20151211_003', 0, NULL, NULL),
(485, '0017', 1, 270, '20151211_004', 0, NULL, NULL),
(486, '0091', 2, 285, '20151211_005', 0, NULL, NULL),
(487, '0090', 1, 290, '20151211_006', 0, NULL, NULL),
(488, '0085', 1, 280, '20151212_001', 0, NULL, NULL),
(489, '0079', 1, 300, '20151212_002', 0, NULL, NULL),
(490, '0076', 1, 260, '20151212_003', 0, NULL, NULL),
(491, '0106', 1, 260, '20151212_003', 0, NULL, NULL),
(492, '0106', 1, 250, '20151212_004', 0, NULL, NULL),
(493, '0099', 1, 280, '20151212_005', 0, NULL, NULL),
(494, '0106', 1, 260, '20151212_006', 0, NULL, NULL),
(496, '0081', 1, 300, '20151212_008', 0, NULL, NULL),
(497, '0048', 1, 320, '20151212_009', 1, '2015-12-14 21:42:49', ''),
(498, '0006', 1, 510, '20151212_010', 0, NULL, NULL),
(499, '0081', 1, 270, '20151213_001', 0, NULL, NULL),
(500, '0073', 1, 280, '20151213_002', 0, NULL, NULL),
(501, '0019', 1, 265, '20151213_003', 0, NULL, NULL),
(502, '0004', 1, 550, '20151213_004', 0, NULL, NULL),
(503, '0046', 1, 260, '20151213_005', 0, NULL, NULL),
(504, '0083', 1, 190, '20151213_006', 0, NULL, NULL),
(505, '0055', 1, 310, '20151214_001', 0, NULL, NULL),
(506, '0085', 1, 270, '20151214_002', 0, NULL, NULL),
(507, '0076', 1, 260, '20151214_003', 0, NULL, NULL),
(508, '0014', 1, 300, '20151214_004', 0, NULL, NULL),
(509, '0029', 1, 260, '20151214_005', 1, '2015-12-18 17:44:10', ''),
(510, '0088', 1, 300, '20151214_006', 0, NULL, NULL),
(511, '0109', 1, 400, '20151214_007', 1, '2015-12-14 21:17:50', ''),
(512, '0008', 1, 600, '20151214_008', 0, NULL, NULL),
(513, '0074', 2, 300, '20151214_009', 0, NULL, NULL),
(515, '0001', 1, 460, '20151215_002', 0, NULL, NULL),
(516, '0050', 1, 260, '20151215_002', 0, NULL, NULL),
(517, '0033', 1, 250, '20151215_003', 0, NULL, NULL),
(518, '0068', 1, 290, '20151215_004', 0, NULL, NULL),
(519, '0101', 1, 260, '20151215_004', 0, NULL, NULL),
(521, '0109', 1, 420, '20151215_006', 0, NULL, NULL),
(522, '0074', 1, 300, '20151215_007', 0, NULL, NULL),
(523, '0083', 1, 180, '20151215_007', 0, NULL, NULL),
(524, '0110', 1, 420, '20151215_008', 0, NULL, NULL),
(526, '0105', 1, 290, '20151216_001', 0, NULL, NULL),
(527, '0096', 1, 260, '20151216_002', 0, NULL, NULL),
(528, '0005', 1, 470, '20151216_003', 0, NULL, NULL),
(529, '0097', 1, 220, '20151216_004', 0, NULL, NULL),
(530, '0039', 1, 245, '20151216_005', 0, NULL, NULL),
(531, '0085', 1, 280, '20151217_001', 0, NULL, NULL),
(532, '0010', 1, 290, '20151217_002', 0, NULL, NULL),
(533, '0086', 1, 280, '20151217_003', 0, NULL, NULL),
(534, '0028', 1, 270, '20151217_004', 0, NULL, NULL),
(535, '0081', 1, 290, '20151217_005', 0, NULL, NULL),
(536, '0077', 1, 400, '20151217_006', 0, NULL, NULL),
(537, '0012', 1, 305, '20151218_001', 0, NULL, NULL),
(538, '0030', 1, 245, '20151218_001', 0, NULL, NULL),
(539, '0095', 1, 350, '20151218_002', 0, NULL, NULL),
(540, '0016', 1, 300, '20151218_003', 0, NULL, NULL),
(541, '0085', 1, 280, '20151218_004', 0, NULL, NULL),
(542, '0033', 1, 260, '20151218_005', 0, NULL, NULL),
(543, '0090', 1, 300, '20151218_006', 0, NULL, NULL),
(544, '0110', 1, 400, '20151218_007', 0, NULL, NULL),
(545, '0004', 1, 500, '20151218_008', 0, NULL, NULL),
(546, '0108', 1, 420, '20151219_001', 0, NULL, NULL),
(547, '0019', 1, 200, '20151219_002', 0, NULL, NULL),
(548, '0094', 1, 460, '20151219_003', 0, NULL, NULL),
(549, '0091', 1, 300, '20151220_001', 0, NULL, NULL),
(550, '0074', 1, 320, '20151220_002', 0, NULL, NULL),
(551, '0040', 1, 150, '20151220_003', 0, NULL, NULL),
(552, '0110', 1, 440, '20151220_004', 0, NULL, NULL),
(553, '0105', 1, 270, '20151222_001', 0, NULL, NULL),
(554, '0122', 1, 350, '20151212_011', 0, NULL, NULL),
(556, '0122', 1, 356, '20151212_012', 0, NULL, NULL),
(558, '0122', 1, 220, '20151212_013', 0, NULL, NULL),
(559, '0122', 1, 220, '20151213_007', 0, NULL, NULL),
(560, '0122', 2, 350, '20151213_008', 0, NULL, NULL),
(562, '0122', 1, 350, '20151214_011', 0, NULL, NULL),
(565, '0124', 1, 130, '20151215_009', 0, NULL, NULL),
(567, '0123', 1, 200, '20151214_012', 0, NULL, NULL),
(568, '0121', 1, 330, '20151213_009', 0, NULL, NULL),
(569, '0122', 1, 350, '20151216_006', 1, '2015-12-19 16:09:08', ''),
(570, '0114', 1, 505, '20151216_007', 0, NULL, NULL),
(571, '0112', 1, 400, '20151216_008', 0, NULL, NULL),
(572, '0122', 1, 350, '20151217_007', 0, NULL, NULL),
(573, '0122', 1, 350, '20151217_008', 0, NULL, NULL),
(574, '0114', 1, 530, '20151218_009', 0, NULL, NULL),
(575, '0117', 1, 450, '20151218_010', 0, NULL, NULL),
(576, '0112', 1, 400, '20151219_004', 0, NULL, NULL),
(577, '0116', 1, 520, '20151219_005', 0, NULL, NULL),
(578, '0122', 1, 310, '20151219_005', 0, NULL, NULL),
(579, '0108', 1, 395, '20151222_002', 0, NULL, NULL),
(580, '0119', 1, 495, '20151219_006', 0, NULL, NULL),
(581, '0036', 1, 290, '20151219_007', 0, NULL, NULL),
(582, '0122', 1, 350, '20151222_003', 0, NULL, NULL),
(583, '0096', 1, 260, '20151213_010', 0, NULL, NULL),
(585, '0081', 1, 335, '20151222_004', 0, NULL, NULL),
(586, '0108', 1, 410, '20151222_005', 0, NULL, NULL),
(587, '0101', 1, 225, '20151222_005', 0, NULL, NULL),
(588, '0122', 1, 315, '20151222_005', 0, NULL, NULL),
(589, '0122', 1, 350, '20151215_010', 0, NULL, NULL),
(590, '0116', 1, 500, '20151222_006', 0, NULL, NULL),
(591, '0019', 1, 230, '20151222_007', 0, NULL, NULL),
(592, '0035', 1, 255, '20151222_008', 0, NULL, NULL),
(593, '0042', 1, 280, '20151222_009', 0, NULL, NULL),
(594, '0112', 1, 370, '20151222_009', 0, NULL, NULL),
(595, '0093', 1, 270, '20151223_001', 0, NULL, NULL),
(596, '0074', 1, 290, '20151223_002', 0, NULL, NULL),
(597, '0115', 1, 420, '20151223_003', 0, NULL, NULL),
(598, '0091', 1, 280, '20151223_003', 0, NULL, NULL),
(600, '0077', 1, 340, '20151223_005', 0, NULL, NULL),
(602, '0114', 1, 450, '20151223_006', 0, NULL, NULL),
(603, '0024', 2, 260, '20151223_006', 0, NULL, NULL),
(604, '0019', 1, 230, '20151223_007', 0, NULL, NULL),
(605, '0085', 1, 250, '20151223_008', 0, NULL, NULL),
(606, '0081', 1, 290, '20151223_009', 0, NULL, NULL),
(607, '0087', 2, 250, '20151223_010', 0, NULL, NULL),
(608, '0069', 1, 250, '20151223_010', 0, NULL, NULL),
(609, '0077', 1, 300, '20151223_011', 0, NULL, NULL),
(610, '0081', 1, 270, '20151223_012', 0, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=531 ;

--
-- Dumping data for table `export_facture_trace`
--

INSERT INTO `export_facture_trace` (`id`, `export_facture_code`, `total`, `debt`, `reserved`, `order`, `customer_give`, `give_customer`, `bonus_used`, `return_amount`, `shop_id`, `amount`, `customer_id`, `bonus_ratio`) VALUES
(1, '20151008_001', 700, 0, 0, 0, 700, 0, 0, 0, 1, 700, 1289, 100),
(2, '20151008_002', 350, 0, 0, 0, 400, 50, 0, 0, 1, 350, 1290, 100),
(3, '20151008_003', 750, 0, 0, 0, 750, 0, 0, 0, 1, 750, 1291, 100),
(4, '20151008_004', 525, 0, 0, 0, 600, 75, 0, 0, 1, 525, 1292, 100),
(5, '20151008_005', 290, 0, 0, 0, 300, 10, 0, 0, 1, 290, 1293, 100),
(6, '20151008_006', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1288, 100),
(7, '20151008_007', 400, 0, 0, 0, 500, 100, 0, 0, 1, 400, 1288, 100),
(8, '20151009_001', 250, 0, 0, 0, 250, 0, 0, 0, 1, 250, 1294, 100),
(9, '20151010_001', 510, 0, 0, 0, 510, 0, 0, 0, 1, 510, 1295, 100),
(10, '20151010_002', 1000, 0, 0, 0, 1000, 0, 0, 0, 1, 1000, 1296, 100),
(11, '20151010_003', 570, 0, 0, 0, 570, 0, 0, 0, 1, 570, 1297, 100),
(12, '20151010_004', 290, 0, 0, 0, 290, 0, 0, 0, 1, 290, 1298, 100),
(13, '20151010_005', 530, 0, 0, 0, 530, 0, 0, 0, 1, 530, 1299, 100),
(14, '20151011_001', 260, 0, 0, 0, 260, 0, 0, 0, 1, 260, 1300, 100),
(15, '20151011_002', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1288, 100),
(16, '20151011_003', 270, 0, 0, 0, 270, 0, 0, 0, 1, 270, 1288, 100),
(17, '20151011_004', 220, 0, 0, 0, 220, 0, 0, 0, 1, 220, 1301, 100),
(18, '20151011_005', 230, 0, 0, 0, 230, 0, 0, 0, 1, 230, 1302, 100),
(19, '20151011_006', 870, 0, 0, 0, 870, 0, 0, 0, 1, 870, 1303, 100),
(20, '20151011_007', 265, 0, 0, 0, 315, 50, 0, 0, 1, 265, 1304, 100),
(21, '20151011_008', 270, 0, 0, 0, 520, 250, 0, 0, 1, 270, 1305, 100),
(22, '20151011_009', 250, 0, 0, 0, 500, 250, 0, 0, 1, 250, 1306, 100),
(23, '20151011_010', 270, 0, 0, 0, 520, 250, 0, 0, 1, 270, 1307, 100),
(24, '20151011_011', 230, 0, 0, 0, 230, 0, 0, 0, 1, 230, 1308, 100),
(25, '20151011_012', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1309, 100),
(26, '20151011_013', 230, 0, 0, 0, 300, 70, 0, 0, 1, 230, 1310, 100),
(27, '20151011_014', 230, 0, 0, 0, 250, 20, 0, 0, 1, 230, 1311, 100),
(28, '20151011_015', 265, 0, 0, 0, 265, 0, 0, 0, 1, 265, 1312, 100),
(29, '20151011_016', 255, 0, 0, 0, 405, 150, 0, 0, 1, 255, 1288, 100),
(30, '20151012_001', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1313, 100),
(31, '20151012_002', 470, 0, 0, 0, 470, 0, 0, 0, 1, 470, 1314, 100),
(32, '20151012_003', 290, 0, 0, 0, 300, 10, 0, 0, 1, 290, 1315, 100),
(33, '20151012_004', 230, 0, 0, 0, 230, 0, 0, 0, 1, 230, 1316, 100),
(34, '20151012_005', 235, 0, 0, 0, 235, 0, 0, 0, 1, 235, 1317, 100),
(35, '20151012_006', 265, 0, 0, 0, 500, 235, 0, 0, 1, 265, 1318, 100),
(36, '20151012_007', 256, 0, 0, 0, 256, 0, 0, 0, 1, 256, 1319, 100),
(37, '20151013_001', 280, 0, 0, 0, 300, 20, 0, 0, 1, 280, 1320, 100),
(38, '20151013_002', 490, 0, 0, 0, 490, 0, 0, 0, 1, 490, 1321, 100),
(39, '20151013_003', 232, 0, 0, 0, 232, 0, 0, 0, 1, 232, 1322, 100),
(40, '20151014_001', 290, 0, 0, 0, 300, 10, 0, 0, 1, 290, 1323, 100),
(41, '20151014_002', 820, 0, 0, 0, 820, 0, 0, 0, 1, 820, 1324, 100),
(42, '20151014_003', 290, 0, 0, 0, 500, 210, 0, 0, 1, 290, 1325, 100),
(43, '20151014_004', 544, 0, 0, 0, 600, 56, 0, 0, 1, 544, 1326, 100),
(44, '20151011_017', 310, 0, 0, 0, 310, 0, 0, 0, 1, 310, 1327, 100),
(45, '20151014_005', 250, 0, 0, 0, 250, 0, 0, 0, 1, 250, 1329, 100),
(46, '20151015_001', 280, 0, 0, 0, 500, 220, 0, 0, 1, 280, 1330, 100),
(47, '20151015_002', 260, 0, 0, 0, 300, 40, 0, 0, 1, 260, 1331, 100),
(48, '20151016_001', 250, 0, 0, 0, 250, 0, 0, 0, 1, 250, 1288, 100),
(49, '20151016_002', 265, 0, 0, 0, 505, 240, 0, 0, 1, 265, 1332, 100),
(50, '20151016_003', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1333, 100),
(51, '20151016_004', 260, 0, 0, 0, 260, 0, 0, 0, 1, 260, 1334, 100),
(52, '20151016_005', 288, 0, 0, 0, 288, 0, 0, 0, 1, 288, 1335, 100),
(53, '20151016_006', 235, 0, 0, 0, 235, 0, 0, 0, 1, 235, 1288, 100),
(54, '20151016_007', 287, 0, 0, 0, 287, 0, 0, 0, 1, 287, 1336, 100),
(55, '20151016_008', 240, 0, 0, 0, 240, 0, 0, 0, 1, 240, 1337, 100),
(56, '20151016_009', 350, 0, 0, 0, 350, 0, 0, 0, 1, 350, 1338, 100),
(57, '20151016_010', 460, 0, 0, 0, 500, 40, 0, 0, 1, 460, 1339, 100),
(58, '20151017_001', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1288, 100),
(59, '20151017_002', 235, 0, 0, 0, 235, 0, 0, 0, 1, 235, 1288, 100),
(60, '20151017_003', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1340, 100),
(61, '20151017_004', 256, 0, 0, 0, 256, 0, 0, 0, 1, 256, 1288, 100),
(62, '20151017_005', 520, 0, 0, 0, 550, 30, 0, 0, 1, 520, 1341, 100),
(63, '20151017_006', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1288, 100),
(64, '20151017_007', 670, 0, 0, 0, 670, 0, 0, 0, 1, 670, 1342, 100),
(65, '20151017_008', 830, 0, 0, 0, 830, 0, 0, 0, 1, 830, 1343, 100),
(66, '20151017_009', 280, 0, 0, 0, 380, 100, 0, 0, 1, 280, 1344, 100),
(67, '20151017_010', 260, 0, 0, 0, 260, 0, 0, 0, 1, 260, 1345, 100),
(68, '20151017_011', 230, 0, 0, 0, 230, 0, 0, 0, 1, 230, 1346, 100),
(69, '20151018_001', 500, 0, 0, 0, 500, 0, 0, 0, 1, 500, 1288, 100),
(70, '20151018_002', 510, 0, 0, 0, 510, 0, 0, 0, 1, 510, 1347, 100),
(71, '20151018_003', 650, 0, 0, 0, 650, 0, 0, 0, 1, 650, 1348, 100),
(72, '20151018_004', 260, 0, 0, 0, 260, 0, 0, 0, 1, 260, 1349, 100),
(73, '20151018_005', 480, 0, 0, 0, 480, 0, 0, 0, 1, 480, 1350, 100),
(74, '20151018_006', 235, 0, 0, 0, 235, 0, 0, 0, 1, 235, 1351, 100),
(76, '20151019_001', 235, 0, 0, 0, 235, 0, 0, 0, 1, 235, 1352, 100),
(77, '20151019_002', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1353, 100),
(78, '20151019_003', 256, 0, 0, 0, 256, 0, 0, 0, 1, 256, 1354, 100),
(80, '20151019_004', 250, 0, 0, 0, 250, 0, 0, 0, 1, 250, 1356, 100),
(81, '20151020_001', 255, 0, 0, 0, 400, 145, 0, 0, 1, 255, 1357, 100),
(82, '20151020_002', 255, 0, 0, 0, 300, 45, 0, 0, 1, 255, 1358, 100),
(83, '20151020_003', 520, 0, 0, 0, 520, 0, 0, 0, 1, 520, 1359, 100),
(84, '20151020_004', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1360, 100),
(85, '20151021_001', 230, 0, 0, 0, 230, 0, 0, 0, 1, 230, 1361, 100),
(86, '20151021_002', 240, 0, 0, 0, 240, 0, 0, 0, 1, 240, 1362, 100),
(87, '20151021_003', 260, 0, 0, 0, 260, 0, 0, 0, 1, 260, 1363, 100),
(88, '20151021_004', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1358, 100),
(89, '20151021_005', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1358, 100),
(90, '20151021_006', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1364, 100),
(91, '20151022_001', 230, 0, 0, 0, 230, 0, 0, 0, 1, 230, 1365, 100),
(92, '20151022_002', 260, 0, 0, 0, 260, 0, 0, 0, 1, 260, 1363, 100),
(93, '20151022_003', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1363, 100),
(94, '20151023_001', 265, 0, 0, 0, 265, 0, 0, 0, 1, 265, 1366, 100),
(95, '20151023_002', 288, 0, 0, 0, 300, 12, 0, 0, 1, 288, 1288, 100),
(96, '20151023_003', 235, 0, 0, 0, 235, 0, 0, 0, 1, 235, 1367, 100),
(97, '20151023_004', 236, 0, 0, 0, 236, 0, 0, 0, 1, 236, 1368, 100),
(98, '20151024_001', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1288, 100),
(100, '20151024_003', 260, 0, 0, 0, 260, 0, 0, 0, 1, 260, 1370, 100),
(101, '20151024_004', 200, 0, 0, 0, 200, 0, 0, 0, 1, 200, 1369, 100),
(102, '20151024_005', 230, 0, 0, 0, 230, 0, 0, 0, 1, 230, 1288, 100),
(103, '20151024_006', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1288, 100),
(104, '20151024_007', 250, 0, 0, 0, 250, 0, 0, 0, 1, 250, 1369, 100),
(105, '20151024_008', 260, 0, 0, 0, 260, 0, 0, 0, 1, 260, 1348, 100),
(106, '20151024_009', 255, 0, 0, 0, 0, -255, 0, 0, 1, 0, 1348, 100),
(107, '20151024_010', 232, 0, 0, 0, 232, 0, 0, 0, 1, 232, 1371, 100),
(108, '20151024_011', 240, 0, 0, 0, 240, 0, 0, 0, 1, 240, 1288, 100),
(109, '20151024_012', 240, 0, 0, 0, 240, 0, 0, 0, 1, 240, 1372, 100),
(110, '20151024_013', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1373, 100),
(111, '20151025_001', 700, 0, 0, 0, 700, 0, 0, 0, 1, 700, 1374, 100),
(112, '20151025_002', 240, 0, 0, 0, 240, 0, 0, 0, 1, 240, 1375, 100),
(113, '20151025_003', 230, 0, 0, 0, 230, 0, 0, 0, 1, 230, 1376, 100),
(114, '20151025_004', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1377, 100),
(115, '20151025_005', 290, 0, 0, 0, 300, 10, 0, 0, 1, 290, 1378, 100),
(116, '20151008_008', 290, 0, 0, 0, 290, 0, 0, 0, 1, 290, 1288, 100),
(117, '20151008_009', 250, 0, 0, 0, 250, 0, 0, 0, 1, 250, 1379, 100),
(118, '20151009_002', 270, 0, 0, 0, 270, 0, 0, 0, 1, 270, 1288, 100),
(119, '20151010_006', 240, 0, 0, 0, 240, 0, 0, 0, 1, 240, 1295, 100),
(120, '20151011_018', 270, 0, 0, 0, 270, 0, 0, 0, 1, 270, 1300, 100),
(121, '20151012_008', 230, 0, 0, 0, 230, 0, 0, 0, 1, 230, 1313, 100),
(122, '20151012_009', 480, 0, 0, 0, 480, 0, 0, 0, 1, 480, 1380, 100),
(123, '20151012_010', 288, 0, 0, 0, 288, 0, 0, 0, 1, 288, 1288, 100),
(124, '20151014_006', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1288, 100),
(125, '20151015_003', 230, 0, 0, 0, 230, 0, 0, 0, 1, 230, 1288, 100),
(127, '20151015_004', 275, 0, 0, 0, 275, 0, 0, 0, 1, 275, 1381, 100),
(128, '20151016_011', 287, 0, 0, 0, 287, 0, 0, 0, 1, 287, 1335, 100),
(129, '20151016_012', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1382, 100),
(130, '20151016_013', 230, 0, 0, 0, 230, 0, 0, 0, 1, 230, 1383, 100),
(131, '20151017_012', 256, 0, 0, 0, 256, 0, 0, 0, 1, 256, 1288, 100),
(132, '20151017_013', 256, 0, 0, 0, 256, 0, 0, 0, 1, 256, 1288, 100),
(133, '20151017_014', 270, 0, 0, 0, 270, 0, 0, 0, 1, 270, 1288, 100),
(134, '20151017_015', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1384, 100),
(135, '20151018_007', 240, 255, 0, 0, 240, -255, 0, 0, 1, 240, 1348, 100),
(136, '20151019_005', 850, 0, 0, 0, 850, 0, 0, 0, 1, 850, 1288, 100),
(137, '20151019_006', 236, 0, 0, 0, 236, 0, 0, 0, 1, 236, 1288, 100),
(138, '20151020_005', 315, 0, 0, 0, 315, 0, 0, 0, 1, 315, 1288, 100),
(139, '20151020_006', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1385, 100),
(140, '20151021_007', 240, 0, 0, 0, 240, 0, 0, 0, 1, 240, 1288, 100),
(141, '20151021_008', 240, 0, 0, 0, 240, 0, 0, 0, 1, 240, 1363, 100),
(142, '20151021_009', 250, 0, 0, 0, 250, 0, 0, 0, 1, 250, 1364, 100),
(143, '20151022_004', 240, 0, 0, 0, 240, 0, 0, 0, 1, 240, 1376, 100),
(145, '20151022_005', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1386, 100),
(146, '20151022_006', 260, 0, 0, 0, 260, 0, 0, 0, 1, 260, 1288, 100),
(148, '20151022_007', 240, 0, 0, 0, 240, 0, 0, 0, 1, 240, 1387, 100),
(149, '20151022_008', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1388, 100),
(150, '20151023_005', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1288, 100),
(151, '20151023_006', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1367, 100),
(152, '20151023_007', 236, 0, 0, 0, 236, 0, 0, 0, 1, 236, 1368, 100),
(153, '20151024_014', 256, 0, 0, 0, 256, 0, 0, 0, 1, 256, 1288, 100),
(154, '20151024_015', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1372, 100),
(155, '20151026_001', 315, 0, 0, 0, 315, 0, 0, 0, 1, 315, 1389, 100),
(156, '20151026_002', 240, 0, 0, 0, 240, 0, 0, 0, 1, 240, 1390, 100),
(157, '20151026_003', 288, 0, 0, 0, 288, 0, 0, 0, 1, 288, 1288, 100),
(158, '20151026_004', 280, 0, 0, 0, 500, 220, 0, 0, 1, 280, 1288, 100),
(159, '20151026_005', 270, 0, 0, 0, 270, 0, 0, 0, 1, 270, 1391, 100),
(160, '20151026_006', 230, 0, 0, 0, 200, -30, 0, 0, 1, 200, 1392, 100),
(161, '20151027_001', 290, 0, 0, 0, 500, 210, 0, 0, 1, 290, 1393, 100),
(162, '20151027_002', 250, 0, 0, 0, 250, 0, 0, 0, 1, 250, 1394, 100),
(163, '20151027_003', 235, 0, 0, 0, 535, 300, 0, 0, 1, 235, 1395, 100),
(164, '20151027_004', 290, 0, 0, 0, 290, 0, 0, 0, 1, 290, 1396, 100),
(165, '20151027_005', 230, 0, 0, 0, 230, 0, 0, 0, 1, 230, 1397, 100),
(166, '20151027_006', 290, 0, 0, 0, 500, 210, 0, 0, 1, 290, 1398, 100),
(167, '20151028_001', 500, 0, 0, 0, 500, 0, 0, 0, 1, 500, 1288, 100),
(168, '20151028_002', 520, 0, 0, 0, 600, 80, 0, 0, 1, 520, 1399, 100),
(169, '20151028_003', 240, 0, 0, 0, 500, 260, 0, 0, 1, 240, 1288, 100),
(170, '20151029_001', 235, 0, 0, 0, 250, 15, 0, 0, 1, 235, 1400, 100),
(171, '20151029_002', 290, 0, 0, 0, 510, 220, 0, 0, 1, 290, 1401, 100),
(172, '20151029_003', 240, 0, 0, 0, 300, 60, 0, 0, 1, 240, 1350, 100),
(173, '20151029_004', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1402, 100),
(174, '20151029_005', 270, 0, 0, 0, 270, 0, 0, 0, 1, 270, 1403, 100),
(175, '20151029_006', 230, 0, 0, 0, 500, 270, 0, 0, 1, 230, 1404, 100),
(176, '20151029_007', 230, 0, 0, 0, 230, 0, 0, 0, 1, 230, 1405, 100),
(177, '20151029_008', 290, 0, 0, 0, 290, 0, 0, 0, 1, 290, 1406, 100),
(178, '20151030_001', 495, 0, 0, 0, 600, 105, 0, 0, 1, 495, 1407, 100),
(179, '20151030_002', 260, 0, 0, 0, 560, 300, 0, 0, 1, 260, 1288, 100),
(180, '20151030_003', 270, 0, 0, 0, 500, 230, 0, 0, 1, 270, 1306, 100),
(181, '20151030_004', 290, 0, 0, 0, 300, 10, 0, 0, 1, 290, 1408, 100),
(182, '20151031_001', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1409, 100),
(183, '20151031_002', 232, 0, 0, 0, 232, 0, 0, 0, 1, 232, 1288, 100),
(184, '20151031_003', 250, 0, 0, 0, 250, 0, 0, 0, 1, 250, 1288, 100),
(185, '20151031_004', 272, 0, 0, 0, 272, 0, 0, 0, 1, 272, 1377, 100),
(186, '20151101_001', 240, 0, 0, 0, 250, 10, 0, 0, 1, 240, 1288, 100),
(187, '20151101_002', 270, 0, 0, 0, 270, 0, 0, 0, 1, 270, 1410, 100),
(188, '20151101_003', 575, 0, 0, 0, 575, 0, 0, 0, 1, 575, 1410, 100),
(189, '20151101_004', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1411, 100),
(190, '20151101_005', 240, 0, 0, 0, 500, 260, 0, 0, 1, 240, 1412, 100),
(191, '20151102_001', 240, 0, 0, 0, 240, 0, 0, 0, 1, 240, 1288, 100),
(192, '20151102_002', 250, 0, 0, 0, 250, 0, 0, 0, 1, 250, 1288, 100),
(193, '20151102_003', 265, 0, 0, 0, 265, 0, 0, 0, 1, 265, 1288, 100),
(194, '20151102_004', 235, 0, 0, 0, 250, 15, 0, 0, 1, 235, 1288, 100),
(195, '20151102_005', 288, 0, 0, 0, 590, 302, 0, 0, 1, 288, 1288, 100),
(196, '20151103_001', 520, 0, 0, 0, 520, 0, 0, 0, 1, 520, 1358, 100),
(197, '20151103_002', 235, 0, 0, 0, 235, 0, 0, 0, 1, 235, 1288, 100),
(198, '20151103_003', 236, 0, 0, 0, 236, 0, 0, 0, 1, 236, 1314, 100),
(199, '20151103_004', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1288, 100),
(200, '20151103_005', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1413, 100),
(201, '20151104_001', 250, 0, 0, 0, 400, 150, 0, 0, 1, 250, 1414, 100),
(202, '20151104_002', 235, 0, 0, 0, 0, 0, 0, 235, 1, 0, 1367, 100),
(203, '20151104_003', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1288, 100),
(204, '20151104_004', 240, 0, 0, 0, 240, 0, 0, 0, 1, 240, 1288, 100),
(205, '20151104_005', 760, 0, 0, 0, 760, 0, 0, 0, 1, 760, 1415, 100),
(206, '20151105_001', 220, 0, 0, 0, 400, 180, 0, 0, 1, 220, 1416, 100),
(207, '20151105_002', 585, 0, 0, 0, 600, 15, 0, 0, 1, 585, 1417, 100),
(208, '20151105_003', 265, 0, 0, 0, 265, 0, 0, 0, 1, 265, 1422, 100),
(209, '20151105_004', 290, 0, 0, 0, 300, 10, 0, 0, 1, 290, 1288, 100),
(210, '20151105_005', 260, 0, 0, 0, 260, 0, 0, 0, 1, 260, 1418, 100),
(211, '20151105_006', 550, 0, 0, 0, 262, 0, 0, 288, 1, 262, 1410, 100),
(212, '20151105_007', 265, 0, 0, 0, 305, 40, 0, 0, 1, 265, 1288, 100),
(213, '20151105_008', 250, 0, 0, 0, 250, 0, 0, 0, 1, 250, 1288, 100),
(214, '20151105_009', 270, 0, 0, 0, 270, 0, 0, 0, 1, 270, 1419, 100),
(215, '20151106_001', 545, 0, 0, 0, 545, 0, 0, 0, 1, 545, 1420, 100),
(216, '20151106_002', 470, 0, 0, 0, 500, 30, 0, 0, 1, 470, 1421, 100),
(217, '20151106_003', 520, 0, 0, 0, 255, 0, 0, 265, 1, 255, 1422, 100),
(218, '20151106_004', 255, 0, 0, 0, 500, 245, 0, 0, 1, 255, 1423, 100),
(219, '20151106_005', 210, 0, 0, 0, 250, 40, 0, 0, 1, 210, 1424, 100),
(220, '20151106_006', 280, 0, 0, 0, 300, 20, 0, 0, 1, 280, 1288, 100),
(221, '20151107_001', 270, 0, 0, 0, 300, 30, 0, 0, 1, 270, 1425, 100),
(222, '20151107_002', 240, 0, 0, 0, 500, 260, 0, 0, 1, 240, 1288, 100),
(223, '20151103_006', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1288, 100),
(224, '20151105_010', 268, 0, 0, 0, 268, 0, 0, 0, 1, 268, 1426, 100),
(225, '20151106_007', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1420, 100),
(226, '20151106_008', 560, 0, 0, 0, 560, 0, 0, 0, 1, 560, 1427, 100),
(228, '20151107_003', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1428, 100),
(229, '20151107_004', 580, 0, 0, 0, 580, 0, 0, 0, 1, 580, 1429, 100),
(230, '20151107_005', 600, 0, 0, 0, 600, 0, 0, 0, 1, 600, 1410, 100),
(231, '20151107_006', 270, 0, 0, 0, 270, 0, 0, 0, 1, 270, 1430, 100),
(232, '20151107_007', 320, 0, 0, 0, 320, 0, 0, 0, 1, 320, 1431, 100),
(233, '20151107_008', 230, 0, 0, 0, 250, 20, 0, 0, 1, 230, 1288, 100),
(234, '20151107_009', 460, 0, 0, 0, 460, 0, 0, 0, 1, 460, 1432, 100),
(235, '20151107_010', 235, 0, 0, 0, 250, 15, 0, 0, 1, 235, 1433, 100),
(236, '20151108_001', 225, 0, 0, 0, 1, 6, 0, 230, 1, -5, 1288, 100),
(238, '20151108_002', 470, 0, 0, 0, 470, 0, 0, 0, 1, 470, 1288, 100),
(239, '20151109_001', 500, 0, 0, 0, 500, 0, 0, 0, 1, 500, 1288, 100),
(240, '20151109_002', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1288, 100),
(241, '20151109_003', 320, 0, 0, 0, 320, 0, 0, 0, 1, 320, 1288, 100),
(242, '20151108_003', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1439, 100),
(243, '20151109_004', 260, 0, 0, 0, 500, 240, 0, 0, 1, 260, 1434, 100),
(244, '20151109_005', 260, 0, 0, 0, 300, 40, 0, 0, 1, 260, 1435, 100),
(245, '20151109_006', 620, 0, 0, 0, 620, 0, 0, 0, 1, 620, 1436, 100),
(246, '20151109_007', 540, 0, 0, 0, 540, 0, 0, 0, 1, 540, 1437, 100),
(247, '20151109_008', 760, 0, 0, 0, 770, 10, 0, 0, 1, 760, 1438, 100),
(248, '20151109_009', 400, 0, 0, 0, 145, 0, 0, 255, 1, 145, 1439, 100),
(249, '20151109_010', 210, 0, 0, 0, 250, 40, 0, 0, 1, 210, 1440, 100),
(250, '20151110_001', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1441, 100),
(251, '20151110_002', 260, 0, 0, 0, 260, 0, 0, 0, 1, 260, 1442, 100),
(252, '20151110_003', 680, 0, 0, 0, 730, 50, 0, 0, 1, 680, 1288, 100),
(253, '20151110_004', 290, 0, 0, 0, 290, 0, 0, 0, 1, 290, 1288, 100),
(254, '20151110_005', 260, 0, 0, 0, 510, 250, 0, 0, 1, 260, 1288, 100),
(255, '20151110_006', 270, 0, 0, 0, 500, 230, 0, 0, 1, 270, 1414, 100),
(256, '20151110_007', 210, 0, 0, 0, 210, 0, 0, 0, 1, 210, 1443, 100),
(257, '20151028_004', 290, 0, 0, 0, 0, 0, 0, 290, 1, 0, 1393, 100),
(258, '20151111_001', 280, 0, 0, 0, 500, 220, 0, 0, 1, 280, 1444, 100),
(259, '20151111_002', 280, 0, 0, 0, 300, 20, 0, 0, 1, 280, 1445, 100),
(260, '20151112_001', 288, 0, 0, 0, 300, 12, 0, 0, 1, 288, 1446, 100),
(261, '20151112_002', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1447, 100),
(262, '20151112_003', 480, 0, 0, 0, 500, 20, 0, 0, 1, 480, 1448, 100),
(263, '20151112_004', 850, 0, 0, 0, 850, 0, 0, 0, 1, 850, 1449, 100),
(264, '20151112_005', 265, 0, 0, 0, 265, 0, 0, 0, 1, 265, 1450, 100),
(265, '20151113_001', 270, 0, 0, 0, 500, 230, 0, 0, 1, 270, 1451, 100),
(266, '20151113_002', 320, 0, 0, 0, 520, 200, 0, 0, 1, 320, 1452, 100),
(267, '20151113_003', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1453, 100),
(268, '20151113_004', 260, 0, 0, 0, 400, 140, 0, 0, 1, 260, 1288, 100),
(269, '20151113_005', 315, 0, 0, 0, 320, 5, 0, 0, 1, 315, 1454, 100),
(270, '20151114_001', 265, 0, 0, 0, 300, 35, 0, 0, 1, 265, 1288, 100),
(271, '20151114_002', 320, 0, 0, 0, 320, 0, 0, 0, 1, 320, 1288, 100),
(272, '20151114_003', 315, 0, 0, 0, 0, 0, 0, 315, 1, 0, 1454, 100),
(273, '20151115_001', 520, 0, 0, 0, 520, 0, 0, 0, 1, 520, 1288, 100),
(274, '20151115_002', 265, 0, 0, 0, 0, 0, 0, 265, 1, 0, 1288, 100),
(275, '20151115_003', 297, 0, 0, 0, 297, 0, 0, 0, 1, 297, 1455, 100),
(276, '20151115_004', 315, 0, 0, 0, 500, 185, 0, 0, 1, 315, 1288, 100),
(277, '20151116_001', 860, 0, 0, 0, 860, 0, 0, 0, 1, 860, 1288, 100),
(278, '20151116_002', 850, 0, 0, 0, 850, 0, 0, 0, 1, 850, 1456, 100),
(279, '20151116_003', 265, 0, 0, 0, 500, 235, 0, 0, 1, 265, 1457, 100),
(280, '20151116_004', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1317, 100),
(281, '20151117_001', 270, 0, 0, 0, 400, 130, 0, 0, 1, 270, 1458, 100),
(282, '20151117_002', 290, 0, 0, 0, 400, 110, 0, 0, 1, 290, 1459, 100),
(283, '20151117_003', 552, 0, 0, 0, 552, 0, 0, 0, 1, 552, 1460, 100),
(284, '20151117_004', 273, 0, 0, 0, 273, 0, 0, 0, 1, 273, 1461, 100),
(285, '20151117_005', 300, 0, 0, 0, 500, 200, 0, 0, 1, 300, 1288, 100),
(286, '20151117_006', 290, 0, 0, 0, 300, 10, 0, 0, 1, 290, 1336, 100),
(287, '20151117_007', 280, 0, 0, 0, 500, 220, 0, 0, 1, 280, 1462, 100),
(288, '20151117_008', 240, 0, 0, 0, 300, 60, 0, 0, 1, 240, 1397, 100),
(289, '20151118_001', 270, 0, 0, 0, 300, 30, 0, 0, 1, 270, 1288, 100),
(290, '20151118_002', 310, 0, 0, 0, 350, 40, 0, 0, 1, 310, 1321, 100),
(291, '20151118_003', 280, 0, 0, 120, 500, 100, 0, 0, 1, 280, 1463, 100),
(292, '20151118_004', 0, 0, 0, 0, 1, 241, 0, 240, 1, -240, 1397, 100),
(293, '20151119_001', 465, 0, 0, 0, 515, 50, 0, 0, 1, 465, 1464, 100),
(294, '20151119_002', 280, 0, 0, 0, 300, 20, 0, 0, 1, 280, 1465, 100),
(295, '20151119_003', 280, 0, 0, 0, 400, 120, 0, 0, 1, 280, 1466, 100),
(296, '20151119_004', 325, 0, 0, 0, 350, 25, 0, 0, 1, 325, 1288, 100),
(297, '20151121_001', 305, 0, 0, 0, 305, 0, 0, 0, 1, 305, 1467, 100),
(298, '20151121_002', 280, 0, 0, 0, 500, 220, 0, 0, 1, 280, 1468, 100),
(299, '20151121_003', 510, 0, 0, 0, 510, 0, 0, 0, 1, 510, 1469, 100),
(300, '20151121_004', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1470, 100),
(301, '20151121_005', 315, 0, 0, 0, 315, 0, 0, 0, 1, 315, 1471, 100),
(302, '20151121_006', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1472, 100),
(303, '20151121_007', 310, 0, 0, 0, 310, 0, 0, 0, 1, 310, 1309, 100),
(304, '20151121_008', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1473, 100),
(305, '20151121_009', 560, 0, 0, 0, 600, 40, 0, 0, 1, 560, 1474, 100),
(306, '20151122_001', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1475, 100),
(307, '20151122_002', 250, 0, 0, 0, 250, 0, 0, 0, 1, 250, 1288, 100),
(308, '20151122_003', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1476, 100),
(309, '20151123_001', 290, 0, 0, 0, 290, 0, 0, 0, 1, 290, 1309, 100),
(310, '20151123_002', 310, 0, 0, 0, 310, 0, 0, 0, 1, 310, 1477, 100),
(311, '20151123_003', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1478, 100),
(312, '20151123_004', 315, 0, 0, 0, 315, 0, 0, 0, 1, 315, 1288, 100),
(313, '20151123_005', 265, 0, 0, 0, 500, 235, 0, 0, 1, 265, 1479, 100),
(314, '20151123_006', 265, 0, 0, 0, 265, 0, 0, 0, 1, 265, 1309, 100),
(315, '20151124_001', 280, 0, 0, 0, 300, 20, 0, 0, 1, 280, 1405, 100),
(317, '20151124_002', 265, 0, 0, 0, 265, 0, 0, 0, 1, 265, 1480, 100),
(318, '20151124_003', 600, 0, 0, 0, 600, 0, 0, 0, 1, 600, 1481, 100),
(319, '20151124_004', 190, 0, 0, 0, 200, 10, 0, 0, 1, 190, 1482, 100),
(320, '20151125_001', 860, 0, 0, 0, 280, 0, 0, 580, 1, 280, 1410, 100),
(321, '20151125_002', 265, 0, 0, 0, 300, 35, 0, 0, 1, 265, 1483, 100),
(322, '20151125_003', 290, 0, 0, 0, 300, 10, 0, 0, 1, 290, 1484, 100),
(323, '20151127_001', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1288, 100),
(324, '20151127_002', 550, 0, 0, 0, 550, 0, 0, 0, 1, 550, 1288, 100),
(325, '20151127_003', 270, 0, 0, 0, 270, 0, 0, 0, 1, 270, 1485, 100),
(326, '20151127_004', 260, 0, 0, 0, 260, 0, 0, 0, 1, 260, 1486, 100),
(327, '20151127_005', 290, 0, 0, 0, 300, 10, 0, 0, 1, 290, 1288, 100),
(328, '20151128_001', 320, 0, 0, 0, 500, 180, 0, 0, 1, 320, 1487, 100),
(329, '20151128_002', 270, 0, 0, 0, 300, 30, 0, 0, 1, 270, 1288, 100),
(330, '20151128_003', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1288, 100),
(331, '20151128_004', 315, 0, 0, 0, 520, 205, 0, 0, 1, 315, 1288, 100),
(332, '20151128_005', 530, 0, 0, 0, 530, 0, 0, 0, 1, 530, 1288, 100),
(333, '20151128_006', 545, 0, 0, 0, 600, 55, 0, 0, 1, 545, 1488, 100),
(334, '20151128_007', 400, 0, 0, 0, 400, 0, 0, 0, 1, 400, 1489, 100),
(335, '20151128_008', 450, 0, 0, 0, 550, 100, 0, 0, 1, 450, 1490, 100),
(336, '20151128_009', 280, 0, 0, 0, 500, 220, 0, 0, 1, 280, 1491, 100),
(337, '20151128_010', 680, 0, 0, 0, 900, 220, 0, 0, 1, 680, 1330, 100),
(338, '20151129_001', 320, 0, 0, 0, 320, 0, 0, 0, 1, 320, 1288, 100),
(339, '20151129_002', 300, 0, 0, 0, 500, 200, 0, 0, 1, 300, 1492, 100),
(340, '20151129_003', 280, 0, 0, 0, 300, 20, 0, 0, 1, 280, 1493, 100),
(341, '20151129_004', 570, 0, 0, 0, 570, 0, 0, 0, 1, 570, 1288, 100),
(342, '20151129_005', 260, 0, 0, 0, 260, 0, 0, 0, 1, 260, 1358, 100),
(343, '20151129_006', 420, 0, 0, 0, 500, 80, 0, 0, 1, 420, 1494, 100),
(344, '20151129_007', 520, 0, 0, 0, 520, 0, 0, 0, 1, 520, 1495, 100),
(345, '20151129_008', 180, 0, 0, 0, 180, 0, 0, 0, 1, 180, 1496, 100),
(346, '20151130_001', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1288, 100),
(347, '20151130_002', 275, 0, 0, 0, 275, 0, 0, 0, 1, 275, 1288, 100),
(348, '20151130_003', 550, 0, 0, 0, 550, 0, 0, 0, 1, 550, 1497, 100),
(349, '20151130_004', 270, 0, 0, 0, 270, 0, 0, 0, 1, 270, 1498, 100),
(350, '20151130_005', 555, 0, 0, 0, 605, 50, 0, 0, 1, 555, 1499, 100),
(351, '20151130_006', 450, 0, 0, 0, 450, 0, 0, 0, 1, 450, 1500, 100),
(352, '20151130_007', 270, 0, 0, 0, 270, 0, 0, 0, 1, 270, 1449, 100),
(353, '20151130_008', 500, 0, 0, 0, 500, 0, 0, 0, 1, 500, 1501, 100),
(354, '20151201_001', 290, 0, 0, 0, 290, 0, 0, 0, 1, 290, 1485, 100),
(355, '20151202_001', 190, 0, 0, 0, 500, 310, 0, 0, 1, 190, 1502, 100),
(356, '20151202_002', 600, 0, 0, 0, 1000, 400, 0, 0, 1, 600, 1468, 100),
(357, '20151202_003', 500, 0, 0, 0, 500, 0, 0, 0, 1, 500, 1503, 100),
(358, '20151202_004', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1504, 100),
(359, '20151202_005', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1481, 100),
(360, '20151202_006', 600, 0, 0, 0, 600, 0, 0, 0, 1, 600, 1505, 100),
(361, '20151203_001', 540, 0, 0, 0, 540, 0, 0, 0, 1, 540, 1506, 100),
(362, '20151204_001', 280, 0, 0, 0, 300, 20, 0, 0, 1, 280, 1507, 100),
(363, '20151204_002', 320, 0, 0, 0, 520, 200, 0, 0, 1, 320, 1508, 100),
(364, '20151204_003', 300, 0, 0, 0, 500, 200, 0, 0, 1, 300, 1288, 100),
(365, '20151204_004', 250, 0, 0, 0, 300, 50, 0, 0, 1, 250, 1509, 100),
(366, '20151205_001', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1288, 100),
(367, '20151205_002', 280, 0, 0, 0, 500, 220, 0, 0, 1, 280, 1510, 100),
(368, '20151205_003', 285, 0, 0, 0, 305, 20, 0, 0, 1, 285, 1511, 100),
(369, '20151205_004', 765, 0, 0, 0, 800, 35, 0, 0, 1, 765, 1288, 100),
(370, '20151205_005', 250, 0, 0, 0, 500, 250, 0, 0, 1, 250, 1512, 100),
(371, '20151205_006', 280, 0, 0, 0, 300, 20, 0, 0, 1, 280, 1513, 100),
(372, '20151205_007', 190, 0, 0, 0, 200, 10, 0, 0, 1, 190, 1468, 100),
(373, '20151205_008', 290, 0, 0, 0, 290, 0, 0, 0, 1, 290, 1514, 100),
(374, '20151205_009', 290, 0, 0, 0, 300, 10, 0, 0, 1, 290, 1515, 100),
(375, '20151205_010', 290, 0, 0, 0, 300, 10, 0, 0, 1, 290, 1516, 100),
(376, '20151205_011', 270, 0, 0, 0, 500, 230, 0, 0, 1, 270, 1517, 100),
(377, '20151206_001', 250, 0, 0, 0, 250, 0, 0, 0, 1, 250, 1518, 100),
(378, '20151206_002', 600, 0, 0, 0, 600, 0, 0, 0, 1, 600, 1288, 100),
(379, '20151206_003', 320, 0, 0, 0, 500, 180, 0, 0, 1, 320, 1519, 100),
(380, '20151206_004', 280, 0, 0, 0, 300, 20, 0, 0, 1, 280, 1473, 100),
(381, '20151206_005', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1288, 100),
(382, '20151206_006', 290, 0, 0, 0, 300, 10, 0, 0, 1, 290, 1520, 100),
(383, '20151206_007', 280, 0, 0, 0, 500, 220, 0, 0, 1, 280, 1521, 100),
(384, '20151206_008', 300, 0, 0, 0, 500, 200, 0, 0, 1, 300, 1522, 100),
(385, '20151206_009', 270, 0, 0, 0, 300, 30, 0, 0, 1, 270, 1523, 100),
(386, '20151206_010', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1524, 100),
(387, '20151206_011', 260, 0, 0, 0, 300, 40, 0, 0, 1, 260, 1525, 100),
(388, '20151207_001', 260, 0, 0, 0, 260, 0, 0, 0, 1, 260, 1506, 100),
(389, '20151207_002', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1448, 100),
(390, '20151207_003', 275, 0, 0, 0, 0, 0, 0, 275, 1, 0, 1288, 100),
(391, '20151207_004', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1504, 100),
(392, '20151208_001', 240, 0, 0, 0, 240, 0, 0, 0, 1, 240, 1288, 100),
(393, '20151208_002', 620, 0, 0, 0, 620, 0, 0, 0, 1, 620, 1526, 100),
(394, '20151208_003', 850, 0, 0, 0, 850, 0, 0, 0, 1, 850, 1527, 100),
(395, '20151208_004', 250, 0, 0, 0, 1, 31, 0, 280, 1, -30, 1507, 100),
(396, '20151208_005', 270, 0, 120, 0, 200, 50, 0, 0, 1, 270, 1463, 100),
(397, '20151208_006', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1528, 100),
(398, '20151208_007', 280, 0, 0, 0, 500, 220, 0, 0, 1, 280, 1288, 100),
(399, '20151209_001', 340, 0, 0, 0, 500, 160, 0, 0, 1, 340, 1291, 100),
(400, '20151209_002', 240, 0, 0, 0, 250, 10, 0, 0, 1, 240, 1529, 100),
(401, '20151209_003', 290, 0, 0, 0, 300, 10, 0, 0, 1, 290, 1288, 100),
(402, '20151209_004', 500, 0, 0, 0, 500, 0, 0, 0, 1, 500, 1288, 100),
(403, '20151209_005', 510, 0, 0, 0, 510, 0, 0, 0, 1, 510, 1288, 100),
(404, '20151209_006', 290, 0, 0, 0, 300, 10, 0, 0, 1, 290, 1408, 100),
(405, '20151210_001', 590, 0, 0, 0, 590, 0, 0, 0, 1, 590, 1530, 100),
(406, '20151210_002', 550, 0, 0, 0, 550, 0, 0, 0, 1, 550, 1531, 100),
(407, '20151210_003', 250, 0, 0, 0, 1, 351, 0, 600, 1, -350, 1527, 100),
(408, '20151210_004', 310, 0, 0, 0, 310, 0, 0, 0, 1, 310, 1532, 100),
(409, '20151210_005', 250, 0, 0, 0, 250, 0, 0, 0, 1, 250, 1533, 100),
(410, '20151210_006', 270, 0, 0, 0, 400, 130, 0, 0, 1, 270, 1534, 100),
(411, '20151210_007', 940, 0, 0, 0, 1100, 160, 0, 0, 1, 940, 1535, 100),
(412, '20151210_008', 320, 0, 0, 0, 500, 180, 0, 0, 1, 320, 1536, 100),
(413, '20151211_001', 850, 0, 0, 0, 850, 0, 0, 0, 1, 850, 1537, 100),
(414, '20151211_002', 280, 0, 0, 0, 500, 220, 0, 0, 1, 280, 1538, 100),
(415, '20151211_003', 290, 0, 0, 0, 400, 110, 0, 0, 1, 290, 1539, 100),
(416, '20151211_004', 270, 0, 0, 0, 0, 0, 0, 270, 1, 0, 1288, 100),
(417, '20151211_005', 570, 0, 0, 0, 600, 30, 0, 0, 1, 570, 1540, 100),
(418, '20151211_006', 290, 0, 0, 0, 500, 210, 0, 0, 1, 290, 1541, 100),
(419, '20151212_001', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1487, 100),
(420, '20151212_002', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1542, 100),
(421, '20151212_003', 520, 0, 0, 0, 520, 0, 0, 0, 1, 520, 1543, 100),
(422, '20151212_004', 250, 0, 0, 0, 250, 0, 0, 0, 1, 250, 1544, 100),
(423, '20151212_005', 280, 0, 0, 0, 300, 20, 0, 0, 1, 280, 1545, 100),
(424, '20151212_006', 260, 0, 0, 0, 300, 40, 0, 0, 1, 260, 1546, 100),
(426, '20151212_008', 300, 0, 0, 0, 500, 200, 0, 0, 1, 300, 1288, 100),
(427, '20151212_009', 320, 0, 0, 0, 320, 0, 0, 0, 1, 320, 1548, 100),
(428, '20151212_010', 510, 0, 0, 0, 510, 0, 0, 0, 1, 510, 1547, 100),
(429, '20151213_001', 270, 0, 0, 0, 270, 0, 0, 0, 1, 270, 1397, 100),
(430, '20151213_002', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1549, 100),
(431, '20151213_003', 265, 0, 0, 0, 500, 235, 0, 0, 1, 265, 1550, 100),
(432, '20151213_004', 550, 0, 0, 0, 550, 0, 0, 0, 1, 550, 1551, 100),
(433, '20151213_005', 260, 0, 0, 0, 500, 240, 0, 0, 1, 260, 1552, 100),
(434, '20151213_006', 190, 0, 0, 0, 200, 10, 0, 0, 1, 190, 1553, 100),
(435, '20151214_001', 310, 0, 0, 0, 310, 0, 0, 0, 1, 310, 1354, 100),
(436, '20151214_002', 270, 0, 0, 0, 270, 0, 0, 0, 1, 270, 1554, 100),
(437, '20151214_003', 260, 0, 0, 0, 260, 0, 0, 0, 1, 260, 1555, 100),
(438, '20151214_004', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1556, 100),
(439, '20151214_005', 260, 0, 0, 0, 260, 0, 0, 0, 1, 260, 1557, 100),
(440, '20151214_006', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1558, 100),
(441, '20151214_007', 400, 0, 0, 0, 400, 0, 0, 0, 1, 400, 1559, 100),
(442, '20151214_008', 600, 0, 0, 0, 200, 0, 0, 400, 1, 200, 1559, 100),
(443, '20151214_009', 600, 0, 0, 0, 600, 0, 0, 0, 1, 600, 1560, 100),
(444, '20151214_010', 0, 0, 0, 0, 0, 320, 0, 320, 1, -320, 1548, 100),
(446, '20151215_002', 720, 0, 0, 0, 720, 0, 0, 0, 1, 720, 1288, 100),
(447, '20151215_003', 250, 0, 0, 0, 500, 250, 0, 0, 1, 250, 1288, 100),
(448, '20151215_004', 550, 0, 0, 0, 550, 0, 0, 0, 1, 550, 1288, 100),
(450, '20151215_006', 420, 0, 0, 0, 420, 0, 0, 0, 1, 420, 1341, 100),
(451, '20151215_007', 480, 0, 0, 0, 480, 0, 0, 0, 1, 480, 1561, 100),
(452, '20151215_008', 420, 0, 0, 0, 420, 0, 0, 0, 1, 420, 1403, 100),
(454, '20151216_001', 290, 0, 0, 0, 400, 110, 0, 0, 1, 290, 1563, 100),
(455, '20151216_002', 260, 0, 0, 0, 260, 0, 0, 0, 1, 260, 1562, 100),
(456, '20151216_003', 470, 0, 0, 0, 500, 30, 0, 0, 1, 470, 1564, 100),
(457, '20151216_004', 220, 0, 0, 0, 220, 0, 0, 0, 1, 220, 1533, 100),
(458, '20151216_005', 245, 0, 0, 0, 245, 0, 0, 0, 1, 245, 1565, 100),
(459, '20151217_001', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1288, 100),
(460, '20151217_002', 290, 0, 0, 0, 290, 0, 0, 0, 1, 290, 1566, 100),
(461, '20151217_003', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1567, 100),
(462, '20151217_004', 270, 0, 0, 0, 500, 230, 0, 0, 1, 270, 1568, 100),
(463, '20151217_005', 290, 0, 0, 0, 290, 0, 0, 0, 1, 290, 1569, 100),
(464, '20151217_006', 400, 0, 0, 0, 400, 0, 0, 0, 1, 400, 1434, 100),
(465, '20151218_001', 550, 0, 0, 0, 550, 0, 0, 0, 1, 550, 1570, 100),
(466, '20151218_002', 350, 0, 0, 0, 350, 0, 0, 0, 1, 350, 1571, 100),
(467, '20151218_003', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1572, 100),
(468, '20151218_004', 280, 0, 0, 0, 280, 0, 0, 0, 1, 280, 1288, 100),
(469, '20151218_005', 260, 0, 0, 0, 0, 0, 0, 260, 1, 0, 1557, 100),
(470, '20151218_006', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1341, 100),
(471, '20151218_007', 400, 0, 0, 0, 500, 100, 0, 0, 1, 400, 1573, 100),
(472, '20151218_008', 500, 0, 0, 0, 500, 0, 0, 0, 1, 500, 1288, 100),
(473, '20151219_001', 420, 0, 0, 0, 500, 80, 0, 0, 1, 420, 1288, 100),
(474, '20151219_002', 200, 0, 0, 0, 200, 0, 0, 0, 1, 200, 1562, 100),
(475, '20151219_003', 460, 0, 0, 0, 460, 0, 0, 0, 1, 460, 1574, 100),
(476, '20151220_001', 300, 0, 0, 0, 300, 0, 0, 0, 1, 300, 1575, 100),
(477, '20151220_002', 320, 0, 0, 0, 320, 0, 0, 0, 1, 320, 1576, 100),
(478, '20151220_003', 150, 0, 0, 0, 150, 0, 0, 0, 1, 150, 1288, 100),
(479, '20151220_004', 440, 0, 0, 0, 440, 0, 0, 0, 1, 440, 1577, 100),
(480, '20151222_001', 270, 0, 0, 0, 520, 250, 0, 0, 1, 270, 1578, 100),
(481, '20151212_011', 350, 0, 0, 0, 350, 0, 0, 0, 1, 350, 1548, 100),
(483, '20151212_012', 356, 0, 0, 0, 356, 0, 0, 0, 1, 356, 1579, 100),
(485, '20151212_013', 220, 0, 0, 0, 220, 0, 0, 0, 1, 220, 1562, 100),
(486, '20151213_007', 220, 0, 0, 0, 220, 0, 0, 0, 1, 220, 1562, 100),
(487, '20151213_008', 700, 0, 0, 0, 700, 0, 0, 0, 1, 700, 1551, 100),
(489, '20151214_011', 350, 0, 0, 0, 350, 0, 0, 0, 1, 350, 1540, 100),
(492, '20151215_009', 130, 0, 0, 0, 130, 0, 0, 0, 1, 130, 1288, 100),
(494, '20151214_012', 200, 0, 0, 0, 200, 0, 0, 0, 1, 200, 1288, 100),
(495, '20151213_009', 330, 0, 0, 0, 330, 0, 0, 0, 1, 330, 1553, 100),
(496, '20151216_006', 350, 0, 0, 0, 350, 0, 0, 0, 1, 350, 1366, 100),
(497, '20151216_007', 505, 0, 0, 0, 505, 0, 0, 0, 1, 505, 1565, 100),
(498, '20151216_008', 400, 0, 0, 0, 400, 0, 0, 0, 1, 400, 1580, 100),
(499, '20151217_007', 350, 0, 0, 0, 350, 0, 0, 0, 1, 350, 1581, 100),
(500, '20151217_008', 350, 0, 0, 0, 350, 0, 0, 0, 1, 350, 1434, 100),
(501, '20151218_009', 530, 0, 0, 0, 530, 0, 0, 0, 1, 530, 1532, 100),
(502, '20151218_010', 450, 0, 0, 0, 450, 0, 0, 0, 1, 450, 1355, 100),
(503, '20151219_004', 400, 0, 0, 0, 400, 0, 0, 0, 1, 400, 1562, 100),
(504, '20151219_005', 830, 0, 0, 0, 830, 0, 0, 0, 1, 830, 1574, 100),
(505, '20151222_002', 395, 0, 0, 0, 130, 0, 0, 265, 1, 130, 1366, 100),
(506, '20151219_006', 495, 0, 0, 0, 450, -45, 0, 0, 1, 450, 1582, 100),
(507, '20151219_007', 290, 0, 0, 0, 1, 61, 0, 350, 1, -60, 1366, 100),
(508, '20151222_003', 350, 0, 0, 0, 350, 0, 0, 0, 1, 350, 1403, 100),
(509, '20151213_010', 260, 0, 0, 0, 260, 0, 0, 0, 1, 260, 1562, 100),
(511, '20151222_004', 335, 0, 0, 0, 335, 0, 0, 0, 1, 335, 1328, 100),
(512, '20151222_005', 950, 0, 0, 0, 950, 0, 0, 0, 1, 950, 1410, 100),
(513, '20151215_010', 350, 0, 0, 0, 350, 0, 0, 0, 1, 350, 1403, 100),
(514, '20151222_006', 500, 0, 0, 0, 0, -500, 0, 0, 1, 0, 1583, 100),
(515, '20151222_007', 230, 0, 0, 0, 230, 0, 0, 0, 1, 230, 1528, 100),
(516, '20151222_008', 255, 0, 0, 0, 255, 0, 0, 0, 1, 255, 1584, 100),
(517, '20151222_009', 650, 0, 0, 0, 650, 0, 0, 0, 1, 650, 1585, 100),
(518, '20151223_001', 270, 0, 0, 0, 270, 0, 0, 0, 1, 270, 1586, 100),
(519, '20151223_002', 290, 0, 0, 0, 290, 0, 0, 0, 1, 290, 1587, 100),
(520, '20151223_003', 700, 0, 0, 0, 700, 0, 0, 0, 1, 700, 1588, 100),
(522, '20151223_005', 340, 0, 0, 0, 340, 0, 0, 0, 1, 340, 1589, 100),
(524, '20151223_006', 970, 0, 0, 0, 0, -970, 0, 0, 1, 0, 1562, 100),
(525, '20151223_007', 230, 0, 0, 0, 250, 20, 0, 0, 1, 230, 1590, 100),
(526, '20151223_008', 250, 0, 0, 0, 250, 0, 0, 0, 1, 250, 1591, 100),
(527, '20151223_009', 290, 0, 0, 0, 290, 0, 0, 0, 1, 290, 1592, 100),
(528, '20151223_010', 750, 0, 0, 0, 750, 0, 0, 0, 1, 750, 1593, 100),
(529, '20151223_011', 300, 0, 0, 0, 500, 200, 0, 0, 1, 300, 1290, 100),
(530, '20151223_012', 270, 0, 0, 0, 500, 230, 0, 0, 1, 270, 1594, 100);

-- --------------------------------------------------------

--
-- Table structure for table `fund`
--

CREATE TABLE IF NOT EXISTS `fund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `fund`
--

INSERT INTO `fund` (`id`, `name`, `description`) VALUES
(1, 'KÉT SẮT', 'KETSAT'),
(2, 'Anh Minh', NULL),
(8, 'OCEANBANK', 'OCEANBANK'),
(9, 'Châu', NULL),
(10, 'BẢO', NULL),
(12, 'MẸ', NULL),
(13, 'BALANCE', NULL),
(14, 'Tiêu Vặt', NULL),
(15, 'VIETINBANK BAO', NULL),
(16, 'COD bưu điện ', NULL),
(17, 'KÉT SẮT', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=379 ;

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
(30, 2, -25, '2015-10-07 15:41:41', 'See spend : Bình nước', 1, 1),
(31, 2, -350, '2015-10-08 02:52:32', 'See spend : Đi chợ sáng mua gà. ... khai trương', 1, 1),
(32, 2, -550, '2015-10-08 15:54:47', 'See spend : Châu đi mua lễ thắp hương (hoa quả, bánh, hương vàng túi đựng tiền)', 1, 2),
(33, 2, -200, '2015-10-08 15:54:47', 'See spend : Đưa bảo trả lại cho khách hôm khai trương', 1, 2),
(34, 2, -60, '2015-10-08 15:54:47', 'See spend : Tiền lẻ thắp hương', 1, 2),
(35, 2, -600, '2015-10-08 15:54:47', 'See spend : Tiền phong bao lì xì', 1, 2),
(36, 2, -35000, '2015-10-08 22:56:05', 'Trả nợ : Dương | ', 1, 1),
(37, 9, -8000, '2015-10-08 16:02:30', 'Anh minh nợ Châu. Ứng tạm thanh toán tiền hàng. Châu sẽ nợ lại Anh Minh 4266k', 1, 1),
(43, 2, -1300, '2015-10-09 16:17:14', 'See spend : Chi mua đồ điện: Quạt trần, 3 bóng đôi, các phụ kiện điện', 1, 1),
(44, 2, -5000, '2015-10-09 16:17:14', 'See spend : Ứng trước 5m tiền gương kính', 1, 1),
(45, 1, 3400, '2015-10-08 17:20:37', 'Rút bớt tiền bán hàng', 1, 3),
(46, 1, 560, '2015-10-09 17:21:06', 'Rút bớt tiền bán hàng', 1, 3),
(47, 2, -120, '2015-10-10 21:57:06', 'See spend : Mua chuột cho bảo', 1, 4),
(48, 2, -160, '2015-10-10 21:57:06', 'See spend : Mua 2 súng bắn giá cho bảo', 1, 4),
(49, 1, 3100, '2015-10-10 23:44:20', 'Tiền bán hàng trong ngày', 1, 3),
(51, 1, 4940, '2015-10-11 22:28:15', 'Tiền bán hàng trong ngày', 1, 3),
(52, 2, -220, '2015-10-11 23:56:04', 'See spend : Mua access point lắp wifi', 1, 4),
(54, 1, 3000, '2015-10-12 23:06:16', 'Tièn bán hàng trong ngày', 1, 3),
(55, 2, -10000, '2015-10-12 23:55:04', 'Trả nợ : Dương | Rút 10M từ tiền gửi anh Minh còn lại trả dương 10M', 1, 1),
(56, 9, -4266, '2015-10-13 23:38:25', 'Trả hết nợ anh minh lấy tiền trả camera cho anh minh', 1, 1),
(57, 2, 4266, '2015-10-13 23:38:25', 'Trả hết nợ anh minh lấy tiền trả camera cho anh minh', 1, 1),
(58, 2, -157, '2015-10-13 23:43:41', 'See spend : Lot thuong truoc 5x3.5, lot thuong sau 20x3.5, silicon 10x 7.0', 1, 1),
(59, 1, -700, '2015-10-13 18:50:01', 'See spend : Mua thảm', 1, 3),
(60, 1, 900, '2015-10-13 18:51:39', 'tiền hàng', 1, 3),
(61, 12, 310, '2015-10-11 18:53:46', 'Hóa đơn số 20151011_017 |  Chị Thơm | online | 12  | Triệu sơn. phí 25k', 1, 1),
(62, 2, -5445, '2015-10-14 22:18:24', 'See spend : Lắp camera', 1, 4),
(63, 1, 2500, '2015-10-14 22:54:24', 'Tiền bán hàng trong ngày', 1, 3),
(64, 1, 1000, '2015-10-15 21:30:01', 'Tiền bán hàng trong ngày', 1, 3),
(65, 12, 300, '2015-10-16 12:48:42', 'Hóa đơn số 20151016_003 |  Hà Huyền bạn Bảo | online | 12  | Hà Thị Thanh Huyền, Thọ Phú, Triệu Sơn, phí ship 12.5k', 1, 1),
(66, 12, 260, '2015-10-16 12:54:04', 'Hóa đơn số 20151016_004 |  Minh Thu Bạn Bảo | online | 12  | Lê Minh Thu, Minh Dân, Triệu Sơn, phí ship 12.5k', 1, 1),
(67, 1, 3100, '2015-10-16 22:59:27', 'Tiền bán hàng trong ngày', 1, 3),
(68, 1, -1650, '2015-10-17 23:21:13', 'See spend : mua bàn quầy', 1, 3),
(69, 1, 5150, '2015-10-17 23:22:56', 'Tiền bán hàng trong ngày', 1, 3),
(70, 1, -20000, '2015-10-18 22:24:39', 'Chuyển cho anh Duệ đi lấy hàng', 1, 1),
(71, 2, 20000, '2015-10-18 22:24:39', 'Chuyển cho anh Duệ đi lấy hàng', 1, 1),
(72, 2, -1890, '2015-10-18 22:25:34', 'See spend : In túi bóng và mua giấy cuộn', 1, 1),
(73, 2, -14350, '2015-10-18 22:55:40', 'Châu Vay Anh Minh để thanh toán hàng giầy, lương nhân viên. học phí cún', 1, 1),
(74, 9, 14350, '2015-10-18 22:55:40', 'Châu Vay Anh Minh để thanh toán hàng giầy, lương nhân viên. học phí cún', 1, 1),
(75, 1, 2700, '2015-10-18 22:57:03', 'Tiền bán hàng trong ngày', 1, 3),
(76, 9, 25000, '2015-10-20 22:48:36', 'Anh Minh Chuyển khoản cho Duệ', 1, 1),
(78, 1, 3900, '2015-10-20 00:13:12', 'tien ban hang ngay 19 va 20 thang 10', 1, 3),
(79, 12, 300, '2015-10-20 00:17:04', 'Hóa đơn số 20151020_004 |  Vũ bạn Bảo | online | 12  | Đôi da miếng xuồng cho mẹ Vũ (phí ship 25k)', 1, 1),
(80, 1, 2100, '2015-10-21 22:57:08', 'tien ban hang trong ngay', 1, 3),
(81, 1, 2000, '2015-10-22 22:36:03', 'tien ban hang trong ngay', 1, 3),
(83, 1, 1800, '2015-10-23 21:07:28', 'Tiền bán hàng trong ngày\n', 1, 3),
(84, 9, -2850, '2015-10-24 09:48:19', 'trả tiền nhà metronic hộ anh minh', 1, 1),
(85, 2, 2850, '2015-10-24 09:48:19', 'trả tiền nhà metronic hộ anh minh', 1, 1),
(86, 2, -2850, '2015-10-24 09:52:54', 'Trả nợ : METRONIC VIET NAM | Lấy tiền nhà Châu trả', 1, 4),
(87, 9, -4573, '2015-10-24 10:59:23', 'Trả nợ : Vinh Tuyết | 1 hóa đơn vinh tuyết chia 2 bên. Chị Châu thanh toán hết', 1, 1),
(88, 2, -6524, '2015-10-24 12:10:22', 'Chuyển hết phần tiền Duệ cầm sang Quỹ Châu để trả tiền hàng cho anh Minh', 1, 1),
(89, 9, 6524, '2015-10-24 12:10:22', 'Chuyển hết phần tiền Duệ cầm sang Quỹ Châu để trả tiền hàng cho anh Minh', 1, 1),
(90, 9, -27294, '2015-10-24 12:17:23', 'Trả nợ : Chị Châu | Hàng Chau thanh toán Hộ Anh Minh', 1, 1),
(91, 1, 3200, '2015-10-24 22:49:58', 'Tiền bán hàng trong ngày', 1, 3),
(93, 1, -8500, '2015-10-25 14:39:17', 'Trả nợ : Tuyến | đã thanh toán hết', 1, 1),
(94, 13, -25, '2015-10-25 14:39:17', 'Trả nợ : Tuyến | đã thanh toán hết', 1, 1),
(95, 1, 1700, '2015-10-25 20:57:39', 'Tiền bán hàng trong ngày', 1, 1),
(96, 9, 2310, '2015-10-26 00:42:37', 'Trả nợ : Chị Châu | Trả lại 14 đôi 2483 cho Chị Châu', 1, 1),
(97, 9, -13467, '2015-10-26 00:50:31', 'Trả nợ : Dương | Tiền chị châu đã dùng hết chuyển sang trả Dương', 1, 1),
(98, 1, 1600, '2015-10-26 15:43:29', 'Tiền bán hàng trong ngày', 1, 1),
(99, 1, 1500, '2015-10-27 10:23:18', 'Tiền bán hàng trong ngày', 1, 3),
(100, 1, -10000, '2015-10-27 10:24:57', 'Chuyển tiền để Chị Châu thanh toán tiền nhà', 1, 1),
(101, 9, 10000, '2015-10-27 10:24:57', 'Chuyển tiền để Chị Châu thanh toán tiền nhà', 1, 1),
(102, 1, 1300, '2015-10-29 10:35:54', 'Tiền bán hàng trong ngày', 1, 3),
(103, 1, 2000, '2015-10-29 11:59:53', 'Tiền bán hàng trong ngày', 1, 3),
(104, 9, -2342, '2015-10-31 09:09:04', 'Tiền bảo nợ chị Châu.', 1, 4),
(105, 9, -540, '2015-10-31 09:06:14', 'See spend : tiền quảng cáo facebook (HSBC của A Duệ)', 1, 4),
(106, 9, -3250, '2015-10-31 23:19:44', 'Trả nợ : METRONIC VIET NAM | Chị Châu trả hết hóa đơn tổng.', 1, 1),
(107, 1, -9000, '2015-10-31 23:20:33', 'Bảo mang qua đưa anh Duệ', 1, 1),
(108, 9, 9000, '2015-10-31 23:20:33', 'Bảo mang qua đưa anh Duệ', 1, 1),
(110, 1, 1300, '2015-10-30 10:53:00', 'tiền bán hàng trong ngày', 1, 3),
(111, 1, 1000, '2015-10-31 10:53:34', 'tiền bán hàng trong ngày', 1, 3),
(112, 10, 270, '2015-11-01 11:20:41', 'Hóa đơn số 20151101_002 |  Chị Đỗ Thuần Phương khách onl của Bảo | online | 10  | 169 Lê Thánh Tông tp Hạ Long tỉnh Quảng Ninh, phí ship 32k', 1, 1),
(113, 10, 575, '2015-11-01 11:24:40', 'Hóa đơn số 20151101_003 |  Chị Đỗ Thuần Phương khách onl của Bảo | online | 10  | Phí ship hàng lần 2 là 43k/2 đôi', 1, 1),
(114, 9, 300, '2015-11-01 11:29:37', 'Hóa đơn số 20151101_004 |  Em Nguyễn Thị Bích Thảo khách onl của Bảo | online | 9  | ĐC: Phòng Công An xã Xuân Quang 3 huyện Đồng Xuân, tỉnh Phú Yên, phí ship 45000', 1, 1),
(115, 1, 1500, '2015-11-03 22:26:35', 'Tiền bán hàng ngày 1/11 và 2/11', 1, 3),
(116, 9, -200, '2015-11-03 22:34:39', 'See spend : tăng like   comment  share fb', 1, 3),
(117, 9, -5000, '2015-11-03 23:07:47', 'Bảo qua lấy 5M', 1, 1),
(118, 1, 5000, '2015-11-03 23:07:47', 'Bảo qua lấy 5M', 1, 1),
(119, 9, -165, '2015-11-03 23:28:06', 'See spend : Quảng cáo facebook (thẻ HSBC anh Duệ)', 1, 4),
(120, 1, -2000, '2015-11-04 20:04:31', 'Đưa tiền cho anh Minh', 1, 1),
(121, 2, 2000, '2015-11-04 20:04:31', 'Đưa tiền cho anh Minh', 1, 1),
(122, 1, 2000, '2015-11-03 23:02:34', 'Tiền bán hàng trong ngày', 1, 3),
(123, 1, 1500, '2015-11-04 23:04:42', 'Tiền bán hàng trong ngày', 1, 3),
(124, 9, 1915, '2015-11-05 00:29:08', 'Trả nợ : Chị Châu | trả 0061, 0062 cho chị châu', 1, 1),
(125, 10, 260, '2015-11-05 18:37:06', 'Hóa đơn số 20151105_005 |  Em Trần Thị Minh Thương | online | 10  | Cty vsip Bắc ninh, số 1 hữu nghị kcn Vsip bắc ninh, phù chẩn , từ sơn, bắc ninh - Phí ship 35k ', 1, 1),
(126, 10, 262, '2015-11-05 18:44:01', 'Hóa đơn số 20151105_006 |  Chị Đỗ Thuần Phương khách onl của Bảo | online | 10  | Phí ship hàng lần 3 là 53k', 1, 1),
(127, 10, -1300, '2015-11-05 21:13:33', 'Rút bớt tiền trong thẻ ngân hàng', 1, 1),
(128, 1, 1300, '2015-11-05 21:13:33', 'Rút bớt tiền trong thẻ ngân hàng', 1, 1),
(130, 1, 2300, '2015-11-05 11:19:06', 'Tiền bán hàng trong ngày', 1, 3),
(131, 1, 2500, '2015-11-06 13:33:18', 'tiền bán hàng trong ngày', 1, 3),
(132, 1, -2000, '2015-11-07 13:33:43', 'Anh Minh lấy tiền', 1, 1),
(133, 2, 2000, '2015-11-07 13:33:43', 'Anh Minh lấy tiền', 1, 1),
(138, 1, -430, '2015-11-05 13:42:41', 'See spend : thanh toán tiền điện, nước, nét tháng 10.2015', 1, 3),
(139, 1, -5345, '2015-11-07 14:13:50', 'Trả nợ : Tuyến | Thanh toán ngày 5.11, thanh toán luôn 635k cho hóa đơn cảu Chị Châu', 1, 1),
(140, 1, -685, '2015-11-07 14:15:13', 'Thanh toán hộ chị Châu hóa đơn ngày 5.11 của Anh Tuyến', 1, 1),
(141, 9, 685, '2015-11-07 14:15:13', 'Thanh toán hộ chị Châu hóa đơn ngày 5.11 của Anh Tuyến', 1, 1),
(142, 9, 300, '2015-11-07 14:31:42', 'Hóa đơn số 20151107_003 |  Chị Đinh Thị Loan | online | 9  | Thôn An Cư 1, xã Đức Xương, huyện Gia Lộc, tỉnh Hải Dương. Phí ship 43k', 1, 1),
(143, 10, 580, '2015-11-07 14:35:08', 'Hóa đơn số 20151107_004 |  Quỳnh Maruko bạn Bảo | online | 10  | Đặng Đức Giang, thôn Sỏi, Quảng Thanh, Thủy Nguyên, Hải Phòng. Phí ship 18k', 1, 1),
(144, 10, 600, '2015-11-07 14:37:53', 'Hóa đơn số 20151107_005 |  Chị Đỗ Thuần Phương khách onl của Bảo | online | 10  | Phí ship hàng lần 4 là 18k', 1, 1),
(147, 9, -288, '2015-11-07 20:31:21', 'Nhận tiền đôi giầy của chị châu: mã 2560', 1, 1),
(148, 15, 288, '2015-11-07 20:31:21', 'Nhận tiền đôi giầy của chị châu: mã 2560', 1, 1),
(149, 10, -1247, '2015-11-07 20:34:31', 'Chuyển quỹ', 1, 1),
(150, 15, 1247, '2015-11-07 20:34:31', 'Chuyển quỹ', 1, 1),
(151, 1, 2000, '2015-11-07 21:15:49', 'tiền bán hàng trong ngày', 1, 3),
(152, 1, -540, '2015-11-08 10:26:28', 'chuyển quỹ', 1, 1),
(153, 14, 540, '2015-11-08 10:26:28', 'chuyển quỹ', 1, 1),
(154, 14, -20, '2015-11-08 10:27:10', 'See spend : mua bánh gạo thắp hương', 1, 3),
(155, 14, -100, '2015-11-08 10:27:36', 'See spend : nạp thẻ', 1, 3),
(156, 9, -2815, '2015-11-08 22:39:27', 'Trả nợ : Vinh Tuyết | Thanh toán hóa đơn hộ bảo', 1, 1),
(157, 1, 1000, '2015-11-08 10:50:43', 'tiền bán hàng trong ngày ', 1, 3),
(158, 1, 3800, '2015-11-09 10:51:19', 'tiền bán hàng trong ngày', 1, 3),
(159, 14, 115, '2015-11-09 10:52:05', 'tiền bán hàng trong ngày lẻ', 1, 3),
(160, 14, -12, '2015-11-10 10:54:04', 'See spend : mua táo', 1, 3),
(161, 9, -495, '2015-11-10 22:12:00', 'See spend : Tiền bảo lấy hàng bên chị châu còn nợ. anh Duệ chốt trả hết nợ này để quản lý khi bảo có lấy hàng bên chị châu ship online và nhận tiền bên bảo', 1, 3),
(162, 9, -6050, '2015-11-10 22:21:11', 'See spend : Thanh toán tiền biển quảng cáo cho hưởng', 1, 1),
(164, 1, 2200, '2015-11-10 10:39:55', 'Tiền bán hàng trong ngày ', 1, 3),
(165, 1, -14000, '2015-11-11 10:40:35', 'Bảo đưa chị Châu để thanh toán tiền hàng cho anh Dương lấy thêm hàng mới ', 1, 1),
(166, 9, 14000, '2015-11-11 10:40:35', 'Bảo đưa chị Châu để thanh toán tiền hàng cho anh Dương lấy thêm hàng mới ', 1, 1),
(167, 14, -34, '2015-11-11 12:13:57', 'See spend : Phí chip chuyển hoàn hàng của Chị Đỗ Thuần Phương', 1, 3),
(168, 14, -20, '2015-11-11 12:14:38', 'See spend : Mua hoa ly thắp hương', 1, 3),
(169, 9, -10000, '2015-11-11 22:43:07', 'See spend : Chị châu thanh toán tiền Kính gương 10M', 1, 2),
(170, 9, 950, '2015-11-11 22:43:55', 'Trả nợ : Vinh Tuyết | 0044 chuyển sang nhà chị châu 5 đôi', 1, 1),
(171, 9, 950, '2015-11-11 22:44:28', 'Trả nợ : METRONIC VIET NAM | 0040 chuyển lên chị châu 5 đôi', 1, 1),
(172, 9, 230, '2015-11-11 22:44:51', 'Trả nợ : Chị Châu | Hàng trả lại chị châu', 1, 1),
(173, 9, -7185, '2015-11-11 22:55:15', 'Trả nợ : Dương | Phần tiền còn lại của bảo bên chị châu là 7185 coi như chuyển sang thanh toán cho Dương. bảo và chị châu hết nợ', 1, 1),
(176, 1, 500, '2015-11-11 10:34:46', 'tiền bán hàng trong ngày', 1, 3),
(177, 14, 100, '2015-11-11 10:35:09', 'tiền bán hàng trong ngày 11.11', 1, 3),
(178, 14, -57, '2015-11-12 10:38:15', 'See spend : Mua đồ thắp hương mùng 1', 1, 3),
(179, 14, -100, '2015-11-12 23:11:03', 'See spend : mua giấy xi măng gói hàng', 1, 3),
(180, 1, 2000, '2015-11-12 23:11:33', 'tiền bán hàng trong ngày', 1, 3),
(181, 14, 200, '2015-11-12 23:12:40', 'tiền bán hàng trong ngày 12.11', 1, 3),
(182, 1, 1500, '2015-11-13 23:54:48', 'tiền bán hàng trong ngày', 1, 3),
(183, 1, 500, '2015-11-14 23:03:50', 'tiền bán hàng trong ngày ', 1, 3),
(184, 14, -23, '2015-11-14 23:04:42', 'See spend : Mua bánh gạp thắp hương', 1, 3),
(185, 12, -1000, '2015-11-14 23:07:46', 'mẹ gửi tiền bán hàng ra', 1, 1),
(186, 1, 1000, '2015-11-14 23:07:46', 'mẹ gửi tiền bán hàng ra', 1, 1),
(187, 12, -170, '2015-11-14 23:08:38', 'tiền lẻ từ quỹ mẹ', 1, 1),
(188, 14, 170, '2015-11-14 23:08:38', 'tiền lẻ từ quỹ mẹ', 1, 1),
(189, 9, -5300, '2015-11-15 20:46:43', 'Trả nợ : Chiến đại mỗ | ', 1, 1),
(190, 1, 1000, '2015-11-15 00:04:02', 'tiền bán hàng trong ngày', 1, 3),
(191, 14, 100, '2015-11-15 00:04:26', 'tiền bán hàng trong ngày ', 1, 3),
(192, 14, -20, '2015-11-16 20:48:07', 'See spend : Mua chuối', 1, 3),
(194, 1, -530, '2015-11-16 20:51:32', 'See spend : Chốt chí chạy ads fanpage đến 19h ngày 14.11', 1, 3),
(195, 1, -460, '2015-11-16 20:52:54', 'See spend : Thanh toán 50% chi phí tăng 10 nghìn like fanpage', 1, 3),
(196, 1, -10, '2015-11-16 20:53:40', 'chuyển tiền lẻ sang', 1, 1),
(197, 14, 10, '2015-11-16 20:53:40', 'chuyển tiền lẻ sang', 1, 1),
(198, 1, 2500, '2015-11-16 11:15:11', 'tiền bán hàng trong ngày', 1, 3),
(199, 14, -30, '2015-11-17 11:18:53', 'See spend : mua hoa ly thắp hương', 1, 3),
(200, 1, 2300, '2015-11-17 10:50:41', 'tiền bán hàng trong ngày', 1, 3),
(201, 14, -20, '2015-11-18 10:51:19', 'See spend : Mua chuối thắp hương', 1, 3),
(202, 1, 700, '2015-11-18 20:55:26', 'tiền bán hàng trong ngày', 1, 3),
(203, 1, 1500, '2015-11-19 21:49:54', 'Tiền bán hàng trong ngày', 1, 3),
(204, 9, -2700, '2015-11-19 22:33:41', 'Trả nợ : Chiến đại mỗ | Chị Châu thanh toán hộ', 1, 1),
(205, 1, -3000, '2015-11-20 12:59:55', 'Anh Minh lấy tiền về quê', 1, 1),
(206, 2, 3000, '2015-11-20 12:59:55', 'Anh Minh lấy tiền về quê', 1, 1),
(207, 14, -20, '2015-11-21 12:27:33', 'See spend : Mua hoa ly thắp hương', 1, 3),
(208, 1, -5000, '2015-11-21 12:27:50', 'bảo vay ', 1, 1),
(209, 10, 5000, '2015-11-21 12:27:50', 'bảo vay ', 1, 1),
(210, 1, 3000, '2015-11-21 22:04:25', 'tiền bán hàng trong 2 ngày 20.11 và 21.11', 1, 3),
(211, 1, 1000, '2015-11-22 23:24:55', 'tiền bán hàng trong ngày', 1, 3),
(212, 14, -25, '2015-11-23 23:25:50', 'See spend : mua bánh thắp hương', 1, 3),
(213, 9, -220, '2015-11-23 15:42:31', 'See spend : Chị Châu thanh toán tiền cáp anh Minh', 1, 2),
(214, 9, -8335, '2015-11-23 17:28:33', 'Trả nợ : Vinh Tuyết | ', 1, 1),
(215, 13, -15, '2015-11-23 17:28:33', 'Trả nợ : Vinh Tuyết | ', 1, 1),
(216, 13, 15, '2015-11-23 17:54:23', 'Trả nợ : Vinh Tuyết | ', 1, 1),
(217, 9, -2145, '2015-11-23 21:20:17', 'Trả nợ : Vinh Tuyết | ', 1, 1),
(218, 9, -600, '2015-11-23 21:22:12', 'Trả nợ : Dương | ', 1, 1),
(219, 1, -8000, '2015-11-23 21:23:35', 'Trả nợ : Dương | Bảo chuyển cho chị Châu để thanh toán nợ cho Anh Dương sáng 23.11', 1, 1),
(220, 1, 1500, '2015-11-23 23:36:30', 'tiền bán hàng trong ngày', 1, 3),
(221, 14, 100, '2015-11-23 23:37:05', 'tiền dư bán hàng trong ngày 23.11', 1, 3),
(222, 14, -25, '2015-11-24 10:55:43', 'See spend : Phí ship hàng cho Linh Giang bạn Bảo', 1, 3),
(223, 12, 265, '2015-11-24 10:56:51', 'Hóa đơn số 20151124_002 |  Linh Giang bạn Bảo  | online | 12  | Triệu Sơn - Thanh Hóa', 1, 1),
(224, 1, 1000, '2015-11-24 22:09:57', 'tiền bán hàng trong ngày', 1, 3),
(225, 14, 100, '2015-11-24 22:10:23', 'tiền bán hàng dư trong ngày 24.11', 1, 3),
(226, 15, 280, '2015-11-25 14:40:43', 'Hóa đơn số 20151125_001 |  Chị Đỗ Thuần Phương khách onl của Bảo | online | 15  | 169 Lê Thánh Tông, tp Hạ Long, tỉnh Quảng Ninh', 1, 1),
(227, 14, -50, '2015-11-25 14:41:25', 'See spend : phí ship hàng chyển hoàn đôi giầy lỗi của chị Đỗ Thuần Phương', 1, 3),
(228, 1, 500, '2015-11-25 21:07:55', 'tiền bán hàng trong ngày', 1, 3),
(229, 14, -100, '2015-11-26 10:48:00', 'See spend : mua xôi giò, bánh gạo, hoa,, tiền vàng, thuốc lá thắp hương rằm', 1, 3),
(230, 1, -6000, '2015-11-26 10:48:44', 'Chuyển tiền cho Chị Châu nộp tiền nhà', 1, 1),
(231, 9, 6000, '2015-11-26 10:48:44', 'Chuyển tiền cho Chị Châu nộp tiền nhà', 1, 1),
(232, 1, 1500, '2015-11-27 22:53:47', 'tiền bán hàng trong 2 ngày 26 và 27.11', 1, 3),
(233, 14, 200, '2015-11-27 22:54:36', 'tiền bán hàng trong ngày 26 và 27.11 dư ra', 1, 3),
(234, 14, -95, '2015-11-28 18:25:22', 'See spend : Mua bánh đồng tiền, chè, trầu cau, nến bay ban thờ ', 1, 3),
(236, 16, 400, '2015-11-28 18:29:17', 'Hóa đơn số 20151128_007 |  Chị Hoàng Thị Tường Vy  | online | 16  | 189 Đinh Tiên Hoàng, phường Tự An, TP Buôn Ma Thuột, tỉnh Đăk Lăk', 1, 1),
(237, 14, -33, '2015-11-28 18:30:18', 'ứng trước tiền ship cod, đợi bưu điện thu hộ hoàn ship ', 1, 1),
(238, 16, 33, '2015-11-28 18:30:18', 'ứng trước tiền ship cod, đợi bưu điện thu hộ hoàn ship ', 1, 1),
(239, 1, -450, '2015-11-28 18:31:12', 'See spend : Thanh toán nốt tiền chạy 10k like fanpage', 1, 3),
(240, 9, 4065, '2015-11-28 19:28:05', 'Trả nợ : Dương | ', 1, 1),
(243, 9, 2080, '2015-11-28 22:15:36', 'Trả nợ : Chị Châu | Lấy lại phần hàng bảo chuyển cho chị châu', 1, 1),
(244, 1, 3500, '2015-11-28 23:27:11', 'tiền bán hàng trong ngày', 1, 3),
(245, 14, -20, '2015-11-29 15:58:21', 'See spend : Phí ship hàng cho c Hoài bạn Bảo ', 1, 3),
(246, 14, -30, '2015-11-29 20:15:55', 'See spend : Anh Minh rút ', 1, 3),
(247, 1, -2000, '2015-11-29 20:16:17', 'Anh Minh rút', 1, 1),
(248, 2, 2000, '2015-11-29 20:16:17', 'Anh Minh rút', 1, 1),
(249, 1, -50, '2015-11-29 20:16:43', 'Chuyển tiền dư sang ', 1, 1),
(250, 14, 50, '2015-11-29 20:16:43', 'Chuyển tiền dư sang ', 1, 1),
(251, 1, 3000, '2015-11-29 22:04:59', 'tiền bán hàng trong ngày', 1, 3),
(252, 14, -35, '2015-11-30 15:58:35', 'See spend : Mua bánh thăp hương ', 1, 3),
(253, 1, -4475, '2015-11-30 16:37:06', 'Trả nợ : METRONIC VIET NAM | Vay Chị Châu 12 triệu thanh toán tiền, Anh Khánh nhận hộ', 1, 1),
(254, 9, -12000, '2015-11-30 16:37:06', 'Trả nợ : METRONIC VIET NAM | Vay Chị Châu 12 triệu thanh toán tiền, Anh Khánh nhận hộ', 1, 1),
(255, 13, 15, '2015-11-30 16:37:06', 'Trả nợ : METRONIC VIET NAM | Vay Chị Châu 12 triệu thanh toán tiền, Anh Khánh nhận hộ', 1, 1),
(256, 1, -25, '2015-11-30 16:39:42', 'Chuyển tiền lẻ sang', 1, 1),
(257, 14, 25, '2015-11-30 16:39:42', 'Chuyển tiền lẻ sang', 1, 1),
(258, 1, -1000, '2015-11-30 19:28:30', 'Anh Minh rút tiền', 1, 1),
(259, 2, 1000, '2015-11-30 19:28:30', 'Anh Minh rút tiền', 1, 1),
(260, 1, 3000, '2015-11-30 22:05:49', 'tiền bán hàng trong ngày ', 1, 3),
(262, 14, -20, '2015-12-01 12:56:04', 'See spend : Mua hoa, chè thắp hương ', 1, 3),
(263, 1, 500, '2015-12-01 12:52:21', 'tiền bán hàng trong ngày', 1, 3),
(264, 14, -275, '2015-12-02 12:53:14', 'See spend : Mua sách cho ch ', 1, 3),
(265, 14, -25, '2015-12-02 12:53:32', 'See spend : Mua bánh thắp hương ', 1, 3),
(266, 1, 2500, '2015-12-02 22:53:18', 'tiền bán hàng trong ngày', 1, 3),
(269, 1, 500, '2015-12-03 22:45:41', 'tiền bán hàng trong ngày', 1, 3),
(270, 1, -2000, '2015-12-04 22:33:34', 'Anh Minh rút tiền', 1, 1),
(271, 2, 2000, '2015-12-04 22:33:34', 'Anh Minh rút tiền', 1, 1),
(272, 1, 1000, '2015-12-04 22:50:26', 'tiền bán hàng trong ngày', 1, 3),
(273, 14, 200, '2015-12-04 22:50:49', 'tiền bán hàng trong ngày dư', 1, 3),
(274, 14, -25, '2015-12-03 22:52:25', 'See spend : Mua đủ đủ và bánh thắp hương', 1, 3),
(275, 14, -15, '2015-12-04 22:52:51', 'See spend : mua bánh thắp hương', 1, 3),
(276, 14, -15, '2015-12-05 10:57:18', 'See spend : Mua bánh chưng thắp hương', 1, 3),
(277, 15, 290, '2015-12-05 17:51:52', 'Hóa đơn số 20151205_008 |  Thùy Linh bạn Bảo | online | 15  | 23 Phan Bội Châu, Ba Đình, TP Thanh Hóa', 1, 1),
(278, 14, -20, '2015-12-05 17:52:22', 'See spend : phí chuyển hàng cho Thùy Linh bạn Bảo', 1, 3),
(279, 1, -1765, '2015-12-05 22:19:19', 'See spend : Đóng tiền điện , nước, net tháng 11.2015. Tháng trước chị chủ nhà xem nhầm công tơ nên ít, tháng này nộp bù', 1, 3),
(280, 1, 3265, '2015-12-05 00:32:03', 'tiền bán hàng tronng ngày', 1, 3),
(281, 1, -2000, '2015-12-03 22:36:22', 'Anh Minh rút tiền', 1, 1),
(282, 2, 2000, '2015-12-03 22:36:22', 'Anh Minh rút tiền', 1, 1),
(283, 1, 3500, '2015-12-06 22:39:35', 'tiền bán hàng trong ngày', 1, 3),
(284, 14, -45, '2015-12-07 14:26:35', 'See spend : Mua bánh thắp hương và đồ lặt vặt', 1, 3),
(285, 1, -7700, '2015-12-07 14:31:54', 'See spend : Mua tủ lạnh và máy giặt ', 1, 1),
(286, 12, -265, '2015-12-07 14:32:19', 'mẹ đưa tiền bán giày', 1, 1),
(287, 1, 265, '2015-12-07 14:32:19', 'mẹ đưa tiền bán giày', 1, 1),
(288, 1, -65, '2015-12-07 14:33:17', 'Chuyển tiền lẻ sang', 1, 1),
(289, 14, 65, '2015-12-07 14:33:17', 'Chuyển tiền lẻ sang', 1, 1),
(290, 1, 500, '2015-12-07 13:33:06', 'tiền bán hàng trong ngày', 1, 3),
(291, 14, -40, '2015-12-08 13:43:29', 'See spend : mua hoa, xoài thắp hương', 1, 3),
(292, 9, -5280, '2015-12-08 22:24:33', 'Trả nợ : Chiến đại mỗ | Chị Châu thanh toán hộ', 1, 1),
(293, 9, -3000, '2015-12-07 22:27:41', 'See spend : Mua tủ lạnh và máy giặt (rút từ chị Châu)', 1, 1),
(294, 1, 2500, '2015-12-08 23:15:15', 'tiền bán hàng trong ngày', 1, 3),
(295, 1, -1000, '2015-12-09 13:43:42', 'Anh Minh rút tiền', 1, 1),
(296, 2, 1000, '2015-12-09 13:43:42', 'Anh Minh rút tiền', 1, 1),
(297, 14, -240, '2015-12-09 23:59:54', 'See spend : Mua đồ trang trí noel ', 1, 3),
(298, 14, -15, '2015-12-09 00:06:22', 'See spend : mua bánh chưng thắp hương', 1, 3),
(299, 1, 2000, '2015-12-09 00:06:59', 'tiền bán hàng trong ngày', 1, 3),
(300, 14, 300, '2015-12-09 00:07:23', 'tiền bán hàng trong ngày dư', 1, 3),
(301, 1, 2500, '2015-12-10 00:30:10', 'tiền bh trong ngày', 1, 3),
(302, 14, 200, '2015-12-10 00:30:55', 'tiền bh trong ngày dư', 1, 3),
(303, 14, -35, '2015-12-10 00:33:40', 'See spend : mua đồ thắp hương', 1, 3),
(304, 9, -1193, '2015-12-11 22:21:54', 'See spend : Thuê host và domain 2nine.vn', 1, 4),
(305, 1, 2500, '2015-12-11 15:48:13', 'Tiền bán hàng trong ngày', 1, 3),
(306, 14, -15, '2015-12-12 15:51:45', 'See spend : mua bánh thắp hương', 1, 3),
(307, 15, 520, '2015-12-12 16:04:09', 'Hóa đơn số 20151212_003 |  Em Nguyễn Thúy khách onl của Bảo | online | 15  | Thị trấn Dân Lực Triệu Sơn', 1, 1),
(308, 9, -210, '2015-12-12 19:13:32', 'Trả nợ : Vinh Tuyết | ', 1, 1),
(309, 2, 510, '2015-12-12 23:59:44', 'Hóa đơn số 20151212_010 |  Chị Vân Anh | online | 2  | Số 2, ngách 2/49 Định Công Thượng', 1, 1),
(310, 1, 2300, '2015-12-12 00:12:41', 'Tiền bán hàng trong ngày', 1, 3),
(311, 1, -2000, '2015-12-13 13:08:11', 'Anh Minh rút ', 1, 1),
(312, 2, 2000, '2015-12-13 13:08:11', 'Anh Minh rút ', 1, 1),
(313, 1, 2700, '2015-12-13 23:21:24', 'tiền bán hàng trong ngày', 1, 3),
(314, 14, -65, '2015-12-13 23:22:36', 'See spend : Mua bánh thắp hương và giấy vệ sinh', 1, 1),
(315, 9, -450, '2015-12-13 23:27:39', 'See spend : Chị Châu thanh toán tiền quảng cáo face. chốt đến ngày 11.12.2015', 1, 1),
(316, 2, -500, '2015-12-14 21:00:12', 'Anh Pha trả tiền hôm trước ship giầy ', 1, 1),
(317, 1, 500, '2015-12-14 21:00:12', 'Anh Pha trả tiền hôm trước ship giầy ', 1, 1),
(318, 2, -10, '2015-12-14 21:00:37', 'Anh Pha trả tiền hôm trước ship giầy ', 1, 1),
(319, 14, 10, '2015-12-14 21:00:37', 'Anh Pha trả tiền hôm trước ship giầy ', 1, 1),
(320, 1, -300, '2015-12-14 22:53:22', 'See spend : Ứng trước lương cho Thương', 1, 3),
(321, 14, -70, '2015-12-14 22:55:35', 'See spend : Mua hoa ly và bánh thắp hương', 1, 1),
(322, 1, 3200, '2015-12-14 23:00:52', 'tiền bán hàng trong ngày', 1, 1),
(323, 14, -50, '2015-12-15 23:14:40', 'See spend : Mua đồ thắp hương', 1, 3),
(324, 1, -3300, '2015-12-15 23:20:10', 'See spend : Thanh toán lương cho Em Thương NV _ Chốt 14.12', 1, 3),
(325, 15, 420, '2015-12-15 23:22:10', 'Hóa đơn số 20151215_008 |  Chị Nguyễn Hằng fb Hang Nguyen fb Bảo | online | 15  | Tòa nhà 319 63 Lê Văn Lương', 1, 1),
(326, 1, 2500, '2015-12-15 23:26:51', 'Tiền bán hàng trong ngày', 1, 3),
(327, 14, 100, '2015-12-15 23:27:07', 'tiền bán hàng trong ngày dư', 1, 3),
(328, 14, -20, '2015-12-16 00:34:14', 'See spend : Mua bánh thắp hương', 1, 3),
(333, 1, -2000, '2015-12-16 00:35:13', 'Anh Minh rút', 1, 1),
(334, 2, 2000, '2015-12-16 00:35:13', 'Anh Minh rút', 1, 1),
(335, 1, -10000, '2015-12-17 00:35:58', 'Trả chị Châu ', 1, 1),
(336, 9, 10000, '2015-12-17 00:35:58', 'Trả chị Châu ', 1, 1),
(337, 14, -50, '2015-12-16 00:41:26', 'See spend : Nạp thẻ', 1, 3),
(338, 1, 2500, '2015-12-16 13:13:16', 'tiền bán hàng trong ngày', 1, 3),
(339, 1, 200, '2015-12-16 13:13:50', 'tiền bán hàng trong ngày dư', 1, 3),
(340, 14, -485, '2015-12-17 14:49:16', 'See spend : Mua giá và móc quần áo', 1, 3),
(341, 1, -800, '2015-12-17 14:51:36', 'Chuyển sang', 1, 1),
(342, 14, 800, '2015-12-17 14:51:36', 'Chuyển sang', 1, 1),
(343, 14, -60, '2015-12-17 14:07:17', 'See spend : mua bánh thắp hương và đồ lặt vặt', 1, 3),
(344, 14, -85, '2015-12-18 14:07:35', 'See spend : Mua 20 móc áo ', 1, 3),
(345, 1, 2500, '2015-12-17 14:11:05', 'tiền bán hàng trong ngày', 1, 3),
(346, 1, -2000, '2015-12-19 12:51:39', 'Anh Minh rút', 1, 1),
(347, 2, 2000, '2015-12-19 12:51:39', 'Anh Minh rút', 1, 1),
(348, 1, 3500, '2015-12-18 12:52:05', 'tiền bán hàng trong ngày', 1, 3),
(349, 14, 200, '2015-12-18 12:52:26', 'tiền bán hàng trong ngày dư', 1, 3),
(350, 14, -400, '2015-12-19 12:54:09', 'See spend : Mua giá quần áo', 1, 3),
(351, 14, -50, '2015-12-19 12:54:31', 'See spend : Mua đồ thắp hương', 1, 3),
(352, 14, -20, '2015-12-19 12:55:04', 'See spend : Mua bán thắp hương', 1, 3),
(354, 14, 200, '2015-12-20 21:05:05', 'tiền bán hàng dư trong ngày', 1, 3),
(355, 14, -20, '2015-12-20 21:15:36', 'See spend : mua bánh thắp hương', 1, 3),
(356, 9, -10000, '2015-12-21 11:54:24', 'See spend : Mua 2 laptop cho anh minh', 1, 4),
(357, 1, 2500, '2015-12-19 16:55:45', 'Tiền bán hàng trong ngày', 1, 3),
(358, 1, -10000, '2015-12-21 16:56:15', 'Anh Minh rút', 1, 1),
(359, 2, 10000, '2015-12-21 16:56:15', 'Anh Minh rút', 1, 1),
(360, 1, 1000, '2015-12-20 16:56:53', 'Tiền bán hàng trong ngày', 1, 3),
(361, 14, 200, '2015-12-20 16:57:32', 'Tiền bán hàng trong ngày dư ', 1, 3),
(362, 14, -264, '2015-12-21 17:01:10', 'See spend : Mua đồ dùng cho của hàng và gia đình ', 1, 3),
(364, 14, -20, '2015-12-22 16:12:00', 'See spend : Phí chuyển hàng cho chị Hằng ', 1, 3),
(365, 14, -35, '2015-12-22 16:12:16', 'See spend : Mua bánh thắp hương', 1, 3),
(366, 15, -20, '2015-12-15 16:13:51', 'See spend : Phí chuyển tiền của chị Hằng ', 1, 3),
(367, 15, 950, '2015-12-22 16:35:06', 'Hóa đơn số 20151222_005 |  Chị Đỗ Thuần Phương khách onl của Bảo | online | 15  | 169 Lê Thánh Tông, TP Hạ Long, tỉnh Quảng Ninh', 1, 1),
(368, 14, -28, '2015-12-22 16:35:40', 'See spend : Phí chuyển hàng cho Chị Đỗ Thuần Phương khách onl của Bảo ', 1, 3),
(369, 15, 350, '2015-12-15 16:43:41', 'Hóa đơn số 20151215_010 |  Chị Nguyễn Hằng fb Hang Nguyen fb Bảo | online | 15  | Tòa nhà 319 63 Lê Văn Lương', 1, 1),
(370, 1, -2000, '2015-12-22 16:46:13', 'Bảo rút ', 1, 1),
(371, 10, 2000, '2015-12-22 16:46:13', 'Bảo rút ', 1, 1),
(372, 9, -26550, '2015-12-23 11:39:30', 'Trả nợ : Chị Châu | Bảo nhạp hàng lấy từ zamy. Hien. Chị thanh bên chị châu', 1, 1),
(373, 1, 2000, '2015-12-22 11:43:20', 'Tiền bán hàng trong ngày ', 1, 3),
(374, 14, -15, '2015-12-23 11:51:08', 'See spend : Mua bánh thắp hương', 1, 3),
(375, 12, 700, '2015-12-23 13:36:29', 'Hóa đơn số 20151223_003 |  Hòa bạn Bảo  | online | 12  | Xóm 6 Minh Dân Triệu Sơn Thanh Hóa', 1, 1),
(376, 1, -1300, '2015-12-23 21:49:48', 'Anh Minh rút cho tiền vay ', 1, 1),
(377, 2, 1300, '2015-12-23 21:49:48', 'Anh Minh rút cho tiền vay ', 1, 1),
(378, 9, -590, '2015-12-23 23:18:07', 'Trả nợ : Chị Châu | ', 1, 1);

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
('20151007_001', '2015-10-07 19:45:07', 'Trả lại 3 đôi', 2, '2015-10-21 19:45:07', 'img/facture/20151007_001.png'),
('20151007_002', '2015-10-07 16:19:42', 'Nhập về nhà chị châu', 3, '2015-10-21 16:19:42', 'img/facture/20151007_002.png'),
('20151024_001', '2015-10-24 09:47:27', 'Chị Châu lấy', 4, '2015-11-07 09:47:27', 'img/facture/20151024_001.png'),
('20151024_002', '2015-10-24 10:08:16', 'Mang ngày 17.10', 3, '2015-11-07 10:08:16', 'img/facture/20151024_002.png'),
('20151024_003', '2015-10-24 10:15:12', 'Chia 1 phần hóa đơn chị châu lấy từ vinh tuyết', 2, '2015-11-07 10:15:12', 'img/facture/20151024_003.png'),
('20151024_004', '2015-10-24 10:35:39', 'Nhập trực tiếp', 3, '2015-11-07 10:35:39', 'img/facture/20151024_004.png'),
('20151024_005', '2015-10-24 10:42:55', 'lon xon', 3, '2015-11-07 10:42:55', 'img/facture/20151024_005.png'),
('20151024_006', '2015-10-24 11:33:14', 'Bảo nhận riêng', 5, '2015-11-07 11:33:14', 'img/facture/20151024_006.png'),
('20151024_007', '2015-10-24 12:07:49', 'Hàng Chuyển từ shop chị Châu', 6, '2015-11-07 12:07:49', 'img/facture/20151024_007.png'),
('20151024_008', '2015-10-24 20:22:46', 'Dương mang từ 22.10 nhưng 24 mới chụp hóa đơn.', 3, '2015-11-07 20:22:46', 'img/facture/20151024_008.png'),
('20151024_009', '2015-10-24 20:27:49', 'Dương mang chiều 24.10: có cả hàng chị châu. Nhưng Hóa đơn từ giờ đã chốt riêng', 3, '2015-11-07 20:27:49', 'img/facture/20151024_009.png'),
('20151026_001', '2015-10-26 20:27:44', 'Chia cùng chị châu 1 hóa đơn 10825:7575:3250', 4, '2015-11-09 20:27:44', 'img/facture/20151026_001.png'),
('20151031_001', '2015-10-31 12:23:01', 'Chị Châu lấy hộ, mang sang và trông hàng hộ.', 3, '2015-11-14 12:23:01', 'img/facture/20151031_001.png'),
('20151101_001', '2015-11-01 23:28:52', 'Chi hoa don voi chi chau. Chị Châu đã nhập máy nhưng lại chuyển lại cho bảo.', 3, '2015-11-15 23:28:52', 'img/facture/20151101_001.png'),
('20151107_001', '2015-11-07 14:06:04', 'Anh Tuyến giao hàng ngày 3.11, giao thêm ngày 5.11, thanh toán hóa đơn và trả hàng lỗi ngày 5.11', 5, '2015-11-03 14:06:04', 'img/facture/20151107_001.png'),
('20151108_001', '2015-11-08 19:04:52', 'Bổ sung size 37, 38', 3, '2015-11-22 19:04:52', 'img/facture/20151108_001.png'),
('20151109_001', '2015-11-09 17:10:55', 'Chị Châu lấy hàng ngày 8.11', 2, '2015-11-23 17:10:55', 'img/facture/20151109_001.png'),
('20151115_001', '2015-11-15 20:18:28', 'bảo nhận hàng, mẫu nào không ưng trả lại, chưa thanh toán', 3, '2015-11-29 20:18:28', 'img/facture/20151115_001.png'),
('20151115_002', '2015-11-15 20:41:03', 'Chị Châu lấy hộ, chưa thanh toán', 3, '2015-11-29 20:41:03', 'img/facture/20151115_002.png'),
('20151115_003', '2015-11-15 20:46:05', 'Chị Châu nhập hộ, thanh toán hộ', 7, '2015-11-29 20:46:05', 'img/facture/20151115_003.png'),
('20151119_001', '2015-11-19 14:42:12', 'lấy 1 đôi của chị Châu', 3, '2015-12-03 14:42:12', 'img/facture/20151119_001.png'),
('20151119_002', '2015-11-19 14:46:36', 'Chị Châu nhập 6 dây 5 màu, Bảo lấy 3 màu', 7, '2015-12-03 14:46:36', 'img/facture/20151119_002.png'),
('20151120_001', '2015-11-20 12:53:43', 'Anh Dương mang hàng trực tiếp sang cho Bảo', 3, '2015-12-04 12:53:43', 'img/facture/20151120_001.png'),
('20151123_001', '2015-11-23 17:49:12', 'Chị Châu nhập hàng ngày 22.11 và thanh toán luôn', 2, '2015-12-07 17:49:12', 'img/facture/20151123_001.png'),
('20151123_002', '2015-11-23 20:50:03', 'Bảo nhận hàng, chưa thanh toán', 4, '2015-12-07 20:50:03', 'img/facture/20151123_002.png'),
('20151123_003', '2015-11-23 21:17:44', 'Chị Châu chuyển hàng từ dưới shop chị Châu lên', 2, '2015-12-07 21:17:44', 'img/facture/20151123_003.png'),
('20151123_004', '2015-11-23 21:18:47', 'Chị Châu chuyển hàng từ dưới nhà Chị Châu lên', 3, '2015-12-07 21:18:47', 'img/facture/20151123_004.png'),
('20151128_001', '2015-11-28 19:49:21', 'Bảo nhận hàng, chưa thanh toán tiền', 4, '2015-12-12 19:49:21', 'img/facture/20151128_001.png'),
('20151128_002', '2015-11-28 19:51:08', 'Chị Châu nhập hàng', 7, '2015-12-12 19:51:08', 'img/facture/20151128_002.png'),
('20151130_001', '2015-11-30 21:46:21', 'Lấy 1 đôi dưới anh Duệ (2662)', 3, '2015-12-14 21:46:21', 'img/facture/20151130_001.png'),
('20151204_001', '2015-12-04 11:21:55', 'Lấy dưới nhà chị Châu 1 đôi cho khách đặt', 3, '2015-12-18 11:21:55', 'img/facture/20151204_001.png'),
('20151204_002', '2015-12-04 20:41:16', 'lấy bên chị châu 1 đôi', 7, '2015-12-18 20:41:16', 'img/facture/20151204_002.png'),
('20151208_001', '2015-12-08 16:17:15', 'Chị CHâu nhập hàng', 3, '2015-12-22 16:17:15', 'img/facture/20151208_001.png'),
('20151208_002', '2015-12-08 16:41:19', 'Chưa thanh toán', 7, '2015-12-22 16:41:19', 'img/facture/20151208_002.png'),
('20151210_001', '2015-12-10 18:19:33', 'Chị Châu nhập hàng hộ Bảo', 3, '2015-12-24 18:19:33', 'img/facture/20151210_001.png'),
('20151212_001', '2015-12-12 19:13:19', 'Lấy nhà chị Châu', 2, '2015-12-26 19:13:19', 'img/facture/20151212_001.png'),
('20151214_001', '2015-12-14 18:21:33', 'Chị Châu lấy 1 đôi hôm trước hôm nay trả lại', 3, '2015-12-28 18:21:33', 'img/facture/20151214_001.png'),
('20151214_002', '2015-12-14 22:38:44', 'Lấy hàng từ nhà chị Châu', 4, '2015-12-28 22:38:44', 'img/facture/20151214_002.png'),
('20151219_001', '2015-12-19 12:42:07', 'hàng lỗi đã đưa chị Châu trả nhưng k trả đc nên lấy lại', 5, '2016-01-02 12:42:07', 'img/facture/20151219_001.png'),
('20151222_001', '2015-12-22 15:05:14', 'Lấy hàng dưới Chị Châu', 6, '2016-01-05 15:05:14', 'img/facture/20151222_001.png'),
('20151223_001', '2015-12-23 23:17:44', 'lấy 2 cái 2 mã 0114, 0115', 6, '2016-01-06 23:17:44', 'img/facture/20151223_001.png');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- Dumping data for table `money_inout`
--

INSERT INTO `money_inout` (`id`, `shop_id`, `user_id`, `date`, `amount`, `description`) VALUES
(1, 1, 3, '2015-10-08 16:10:32', -70, 'lì xì cho khách'),
(2, 1, 3, '2015-10-09 15:39:00', 540, 'Để lại tiền lẻ'),
(3, 1, 3, '2015-10-10 17:17:20', 500, 'Để lại tiền lẻ'),
(4, 1, 3, '2015-10-11 12:47:09', 540, 'Để lại tiền lẻ'),
(5, 1, 3, '2015-10-12 11:29:25', 520, 'để tiền lẻ '),
(6, 1, 3, '2015-10-13 12:50:09', 519, 'để tiền lẻ'),
(7, 1, 3, '2015-10-13 12:53:18', -71, 'mua hoa quả bánh tiền vàng thắp hương mung 1'),
(8, 1, 3, '2015-10-14 11:28:24', 550, 'để tiền lẻ'),
(9, 1, 1, '2015-10-11 18:53:46', -310, 'Hóa đơn số 20151011_017 |  Chị Thơm | online | MẸ | Triệu sơn. phí 25k'),
(10, 1, 3, '2015-10-15 14:32:12', 499, 'để tiền lẻ'),
(11, 1, 3, '2015-10-16 09:36:49', 524, 'để tiền lẻ'),
(12, 1, 1, '2015-10-16 12:48:42', -300, 'Hóa đơn số 20151016_003 |  Hà Huyền bạn Bảo | online | MẸ | Hà Thị Thanh Huyền, Thọ Phú, Triệu Sơn, phí ship 12.5k'),
(13, 1, 1, '2015-10-16 12:54:04', -260, 'Hóa đơn số 20151016_004 |  Minh Thu Bạn Bảo | online | MẸ | Lê Minh Thu, Minh Dân, Triệu Sơn, phí ship 12.5k'),
(14, 1, 3, '2015-10-16 12:59:13', -25, 'phí ship hàng cho Huyển và Thu'),
(15, 1, 3, '2015-10-17 23:15:47', 546, 'để tiền lẻ'),
(16, 1, 3, '2015-10-17 23:16:04', -20, 'mua hoa thắp hương'),
(18, 1, 3, '2015-10-18 11:56:20', 530, 'tiền lẻ'),
(19, 1, 3, '2015-10-19 13:21:11', 705, 'tiền lẻ'),
(20, 1, 3, '2015-10-19 16:19:56', -50, 'mua bánh thắp hương, tỏi để shop, nước'),
(21, 1, 1, '2015-10-20 00:17:04', -300, 'Hóa đơn số 20151020_004 |  Vũ bạn Bảo | online | MẸ | Đôi da miếng xuồng cho mẹ Vũ (phí ship 25k)'),
(22, 1, 3, '2015-10-20 00:17:43', -25, 'phi ship hàng cho Vũ'),
(23, 1, 3, '2015-10-21 09:04:12', 462, 'tien le'),
(24, 1, 3, '2015-10-21 14:59:53', -60, 'Rút tiền mua chổi lau nhà'),
(25, 1, 3, '2015-10-22 10:12:46', 552, 'tien le'),
(26, 1, 3, '2015-10-22 10:13:23', -20, 'mua hoa va banh thap huong'),
(28, 1, 3, '2015-10-23 13:57:39', 552, 'tiền lẻ'),
(29, 1, 3, '2015-10-24 21:09:31', 522, 'tiền lẻ'),
(30, 1, 3, '2015-10-25 13:46:45', 535, 'tiền lẻ'),
(31, 1, 3, '2015-10-26 11:58:16', 550, 'tiền lẻ'),
(32, 1, 3, '2015-10-26 11:58:33', -25, 'mua hoa và quả thắp hương'),
(33, 1, 3, '2015-10-27 15:44:00', 518, 'tiền lẻ'),
(34, 1, 3, '2015-10-27 15:44:30', -42, 'Mua đồ thắp hương rằm'),
(35, 1, 3, '2015-10-28 10:25:26', 561, 'tiền lẻ'),
(36, 1, 3, '2015-10-29 10:37:16', 520, 'tiền lẻ'),
(37, 1, 3, '2015-10-29 10:39:30', -17, 'Mua hoa ly '),
(38, 1, 3, '2015-10-30 10:57:48', -16, 'Mua táo thắp hương'),
(39, 1, 3, '2015-10-30 10:58:09', 543, 'tiền lẻ'),
(40, 1, 3, '2015-10-31 20:12:59', 542, 'tiền lẻ'),
(41, 1, 3, '2015-11-01 10:59:43', -12, 'mua táo'),
(42, 1, 3, '2015-11-01 11:00:09', 576, 'tiền lẻ'),
(43, 1, 1, '2015-11-01 11:20:41', -270, 'Hóa đơn số 20151101_002 |  Chị Đỗ Thuần Phương khách onl của Bảo | online | BẢO | 169 Lê Thánh Tông tp Hạ Long tỉnh Quảng Ninh, phí ship 32k'),
(44, 1, 3, '2015-11-01 11:22:02', -32, 'phí ship hàng cho chị Đỗ Thuần Phương lần 1'),
(45, 1, 1, '2015-11-01 11:24:40', -575, 'Hóa đơn số 20151101_003 |  Chị Đỗ Thuần Phương khách onl của Bảo | online | BẢO | Phí ship hàng lần 2 là 43k/2 đôi'),
(46, 1, 3, '2015-11-01 11:25:57', -43, 'Phi ship hàng cho chị Đỗ Thuần Phương lần 2/ 2 đôi'),
(47, 1, 1, '2015-11-01 11:29:37', -300, 'Hóa đơn số 20151101_004 |  Em Nguyễn Thị Bích Thảo khách onl của Bảo | online | Châu | ĐC: Phòng Công An xã Xuân Quang 3 huyện Đồng Xuân, tỉnh Phú Yên, phí ship 45000'),
(48, 1, 3, '2015-11-01 11:30:11', -45, 'Phí ship hàng cho em Nguyễn Thị Bích Thảo'),
(49, 1, 3, '2015-11-02 15:05:14', -39, 'đổi nước và mua bánh gạo thắp hương'),
(50, 1, 3, '2015-11-02 15:15:21', 924, 'tiền từ hôm qua không rút để lại luôn'),
(51, 1, 3, '2015-11-03 19:20:40', 663, 'tiền lẻ'),
(52, 1, 3, '2015-11-04 12:52:28', 494, 'tiền lẻ'),
(53, 1, 3, '2015-11-05 16:37:53', 524, 'tiền lẻ'),
(54, 1, 1, '2015-11-05 18:37:06', -260, 'Hóa đơn số 20151105_005 |  Em Trần Thị Minh Thương | online | BẢO | Cty vsip Bắc ninh, số 1 hữu nghị kcn Vsip bắc ninh, phù chẩn , từ sơn, bắc ninh - Phí ship 35k '),
(55, 1, 3, '2015-11-05 18:39:01', -35, 'phí ship hàng đi bắc ninh cho em Trần Thị Minh Thương'),
(56, 1, 3, '2015-11-05 18:39:37', -35, 'Mua hoa và táo'),
(57, 1, 1, '2015-11-05 18:44:01', -262, 'Hóa đơn số 20151105_006 |  Chị Đỗ Thuần Phương khách onl của Bảo | online | BẢO | Phí ship hàng lần 3 là 53k'),
(58, 1, 3, '2015-11-05 18:45:35', -53, 'phí ship hàng lần 3 cho chị Đỗ Thuần Phương'),
(59, 1, 3, '2015-11-06 11:20:03', 514, 'tiên lẻ'),
(60, 1, 3, '2015-11-06 20:32:36', -20, 'mua giấy gói hàng'),
(61, 1, 3, '2015-11-07 13:32:34', 824, 'tiền lẻ'),
(62, 1, 1, '2015-11-07 14:31:42', -300, 'Hóa đơn số 20151107_003 |  Chị Đinh Thị Loan | online | Châu | Thôn An Cư 1, xã Đức Xương, huyện Gia Lộc, tỉnh Hải Dương. Phí ship 43k'),
(63, 1, 1, '2015-11-07 14:35:08', -580, 'Hóa đơn số 20151107_004 |  Quỳnh Maruko bạn Bảo | online | BẢO | Đặng Đức Giang, thôn Sỏi, Quảng Thanh, Thủy Nguyên, Hải Phòng. Phí ship 18k'),
(64, 1, 1, '2015-11-07 14:37:53', -600, 'Hóa đơn số 20151107_005 |  Chị Đỗ Thuần Phương khách onl của Bảo | online | BẢO | Phí ship hàng lần 4 là 18k'),
(65, 1, 3, '2015-11-07 14:38:39', -79, 'phí ship hàng cho chị Đỗ Thuần Phương, Quỳnh Maruko và chị Đinh Thị Loan'),
(66, 1, 3, '2015-11-08 10:33:29', 770, 'tiền lẻ'),
(67, 1, 3, '2015-11-09 17:18:41', 490, 'tiền lẻ'),
(68, 1, 3, '2015-11-10 10:52:58', 490, 'tiền lẻ'),
(69, 1, 3, '2015-11-11 11:55:08', 540, 'tiền lẻ'),
(70, 1, 3, '2015-11-12 17:08:23', 500, 'tiền lẻ'),
(71, 1, 3, '2015-11-13 15:01:40', 483, 'tiền lẻ'),
(72, 1, 3, '2015-11-14 14:56:46', 448, 'tien le'),
(73, 1, 3, '2015-11-15 11:40:50', 533, 'tiền lẻ'),
(74, 1, 3, '2015-11-16 00:04:47', 565, 'tiền lẻ'),
(75, 1, 2, '2015-11-17 11:19:18', 340, 'thêm tiền lẻ'),
(76, 1, 3, '2015-11-18 10:51:41', 535, 'tiền lẻ'),
(77, 1, 3, '2015-11-19 20:55:55', 575, 'tiền lẻ'),
(78, 1, 3, '2015-11-20 21:50:19', 425, 'tiền lẻ'),
(79, 1, 3, '2015-11-21 12:31:56', 730, 'tiền từ hôm qua chuyển sang'),
(80, 1, 3, '2015-11-22 22:13:25', 585, 'tiền lẻ'),
(81, 1, 3, '2015-11-23 23:25:18', 415, 'tiền lẻ'),
(82, 1, 3, '2015-11-24 23:37:28', 560, 'tiền lẻ'),
(83, 1, 1, '2015-11-24 10:56:51', -265, 'Hóa đơn số 20151124_002 |  Linh Giang bạn Bảo  | online | MẸ | Triệu Sơn - Thanh Hóa'),
(84, 1, 3, '2015-11-25 22:11:01', 530, 'tiền lẻ'),
(85, 1, 1, '2015-11-25 14:40:43', -280, 'Hóa đơn số 20151125_001 |  Chị Đỗ Thuần Phương khách onl của Bảo | online | VIETINBANK BAO | 169 Lê Thánh Tông, tp Hạ Long, tỉnh Quảng Ninh'),
(86, 1, 3, '2015-11-26 21:08:29', 585, 'tiền lẻ'),
(87, 1, 3, '2015-11-27 18:12:09', 885, 'tiền lẻ hôm qua để lại luôn'),
(89, 1, 3, '2015-11-28 22:57:17', 555, 'tiền lẻ'),
(90, 1, 1, '2015-11-28 18:29:17', -400, 'Hóa đơn số 20151128_007 |  Chị Hoàng Thị Tường Vy  | online | COD bưu điện  | 189 Đinh Tiên Hoàng, phường Tự An, TP Buôn Ma Thuột, tỉnh Đăk Lăk'),
(92, 1, 3, '2015-11-29 23:27:59', 725, 'tiền lẻ'),
(93, 1, 3, '2015-11-30 22:05:29', 575, 'tiền lẻ'),
(94, 1, 3, '2015-12-01 22:18:06', 745, 'tiền lẻ'),
(95, 1, 3, '2015-12-02 12:52:55', 535, 'tiền lẻ'),
(96, 1, 3, '2015-12-03 22:54:18', 525, 'tiền lẻ'),
(97, 1, 3, '2015-12-04 22:46:11', 565, 'tiền lẻ'),
(98, 1, 3, '2015-12-05 22:51:06', 515, 'tiền lẻ'),
(99, 1, 1, '2015-12-05 17:51:52', -290, 'Hóa đơn số 20151205_008 |  Thùy Linh bạn Bảo | online | VIETINBANK BAO | 23 Phan Bội Châu, Ba Đình, TP Thanh Hóa'),
(100, 1, 3, '2015-12-06 00:32:49', 450, 'tiền lẻ'),
(101, 1, 3, '2015-12-07 22:51:06', 400, 'tiền lẻ'),
(102, 1, 3, '2015-12-08 13:33:53', 720, 'tiền lẻ'),
(103, 1, 3, '2015-12-09 23:15:38', 630, 'tiền lẻ'),
(104, 1, 3, '2015-12-10 11:02:38', 500, 'thêm tiền'),
(105, 1, 3, '2015-12-11 00:31:52', 680, 'tiền lẻ'),
(106, 1, 3, '2015-12-12 15:51:13', 460, 'tiền lẻ'),
(107, 1, 1, '2015-12-12 16:04:09', -520, 'Hóa đơn số 20151212_003 |  Em Nguyễn Thúy khách onl của Bảo | online | VIETINBANK BAO | Thị trấn Dân Lực Triệu Sơn'),
(108, 1, 1, '2015-12-12 23:59:44', -510, 'Hóa đơn số 20151212_010 |  Chị Vân Anh | online | Anh Minh | Số 2, ngách 2/49 Định Công Thượng'),
(109, 1, 3, '2015-12-13 00:14:09', 500, 'tiền lẻ'),
(110, 1, 3, '2015-12-14 23:21:56', 645, 'tiền lẻ'),
(111, 1, 3, '2015-12-15 23:01:20', 575, 'tiền lẻ'),
(113, 1, 1, '2015-12-15 23:22:10', -420, 'Hóa đơn số 20151215_008 |  Chị Nguyễn Hằng fb Hang Nguyen fb Bảo | online | VIETINBANK BAO | Tòa nhà 319 63 Lê Văn Lương'),
(114, 1, 3, '2015-12-16 23:27:50', 545, 'tiền lẻ'),
(115, 1, 3, '2015-12-17 13:15:41', 585, 'tiền lẻ'),
(116, 1, 3, '2015-12-18 14:11:22', 595, 'tiền lẻ'),
(117, 1, 3, '2015-12-19 12:52:46', 555, 'tiền lẻ'),
(118, 1, 3, '2015-12-20 21:05:51', 555, 'tiền lẻ'),
(119, 1, 3, '2015-12-22 13:43:07', 555, 'tiền lẻ'),
(121, 1, 1, '2015-12-12 15:28:24', -356, 'Hóa đơn số 20151212_012 A Minh lấy ( )'),
(124, 1, 1, '2015-12-22 16:27:49', -335, 'Hóa đơn số 20151222_004 Bảo lấy ( )'),
(125, 1, 1, '2015-12-22 16:35:06', -950, 'Hóa đơn số 20151222_005 |  Chị Đỗ Thuần Phương khách onl của Bảo | online | VIETINBANK BAO | 169 Lê Thánh Tông, TP Hạ Long, tỉnh Quảng Ninh'),
(126, 1, 1, '2015-12-15 16:43:41', -350, 'Hóa đơn số 20151215_010 |  Chị Nguyễn Hằng fb Hang Nguyen fb Bảo | online | VIETINBANK BAO | Tòa nhà 319 63 Lê Văn Lương'),
(127, 1, 3, '2015-12-23 11:48:12', 440, 'tiền lẻ'),
(128, 1, 1, '2015-12-23 13:36:29', -700, 'Hóa đơn số 20151223_003 |  Hòa bạn Bảo  | online | MẸ | Xóm 6 Minh Dân Triệu Sơn Thanh Hóa');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `description`, `date`, `shop_id`, `user_id`) VALUES
(5, 'Còn một đôi mã 0040 Thảo(hd) mua chưa nhập do chưa có mã trong hệ thống', '2015-10-11 12:43:50', 1, 3),
(6, 'Còn một đôi mã 0040 Thảo(hd) mua chưa nhập do chưa có mã trong hệ thống', '2015-10-11 12:43:51', 1, 3),
(7, 'Còn một đôi mã 0040 Thảo(hd) mua chưa nhập do chưa có mã trong hệ thống', '2015-10-11 12:43:53', 1, 3),
(8, 'Ngày 20/10, 1 đôi mã 2519(290 sale còn 230) chưa nhập C Ngọc(đuôi 672)', '2015-10-12 12:57:10', 1, 3),
(9, 'Ngày 12/10: Chị Huyền(0914894934): 2522+2519: 480k\n', '2015-10-12 21:23:55', 1, 3),
(10, 'Ngày 12/10: 2410:288k(3 chị em sv)', '2015-10-12 21:24:33', 1, 3),
(11, 'Ngày 15/10: bán mã 2519: 290k->230k', '2015-10-15 14:32:44', 1, 3),
(12, 'Ngày 15/10: bán mã 2519: 290k->230k', '2015-10-15 14:32:48', 1, 3);

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
('0002', 'Giầy nữ cao cấp  16201-3-GNT', 1, 4, 1, 500, 'Cao cấp ()', 1, 0, 'img/product/0002.png'),
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
('0039', 'Giầy nữ VNXK 190-04', 2, 4, 1, 290, '', 1, 0, 'img/product/0039.png'),
('0040', 'Giầy nữ VNXK cao 9p đế kép louboutin', 1, 4, 1, 340, '', 1, 0, 'img/product/0040.png'),
('0041', 'Giầy nữ đế xuồng da miếng 7p P_27', 2, 4, 1, 395, '', 1, 0, 'img/product/0041.png'),
('0042', 'Giầy nữ da miếng đế xuồng 3p LA 22', 2, 4, 1, 350, '', 1, 0, 'img/product/0042.png'),
('0043', 'Giầy nữ F.NIR đen nơ loại số 2', 2, 4, 1, 330, '', 1, 0, 'img/product/0043.png'),
('0044', 'Giầy nữ đế vuông 3p mũi tròn nơ', 2, 4, 1, 340, '', 1, 0, 'img/product/0044.png'),
('0045', 'Giầy nữ đế trụ 5p trơn', 2, 4, 1, 320, '', 1, 0, 'img/product/0045.png'),
('0046', 'Giầy gót nhọn 5p ZARA BASIC AD08', 2, 4, 1, 300, '', 1, 0, 'img/product/0046.png'),
('0047', 'Giầy da miếng moka trơn 1068', 2, 4, 1, 360, '', 1, 0, 'img/product/0047.png'),
('0048', 'Giầy da miếng bánh mỳ mũi nhọn 2106', 2, 4, 1, 360, '', 1, 0, 'img/product/0048.png'),
('0049', 'Giầy gót nhọn 5p nơ kép 2235', 1, 4, 1, 300, '', 1, 0, 'img/product/0049.png'),
('0050', 'Giầy da bóng gót nhọn kim loại 7p 911N01', 1, 4, 1, 320, '', 1, 0, 'img/product/0050.png'),
('0051', 'Giầy da mờ gót vuông 3p nơ tết lụa', 1, 4, 1, 295, '', 1, 0, 'img/product/0051.png'),
('0052', 'Giầy VNXK merris 5p nơ bóng', 1, 4, 1, 330, '', 1, 0, 'img/product/0052.png'),
('0053', 'Giầy cao đế kép 5p ZARA', 1, 4, 1, 350, '', 1, 0, 'img/product/0053.png'),
('0054', 'Giầy VNXK Merris múi 5p trơn', 1, 4, 1, 330, '', 1, 0, 'img/product/0054.png'),
('0055', 'Giầy cao gót 5p da miếng', 1, 4, 1, 360, '', 1, 0, 'img/product/0055.png'),
('0056', 'Giầy lười da miếng may viền SAVATO 1068 (2376)', 1, 4, 1, 360, '', 1, 0, 'img/product/0056.png'),
('0057', 'Giầy da miếng gót vuông 3p (2410)', 1, 4, 1, 360, '', 1, 0, 'img/product/0057.png'),
('0058', 'Giầy gót vuông 3p nơ xích zalong (2519)', 1, 4, 1, 290, '', 1, 0, 'img/product/0058.png'),
('0059', 'Giầy bệt versac chống xước (2522)', 1, 4, 1, 310, '', 1, 0, 'img/product/0059.png'),
('0060', 'Giầy da xi gót nhọn nơ thắt nút 5p (2483)', 1, 4, 1, 295, '', 1, 0, 'img/product/0060.png'),
('0061', 'Giầy da bóng gót 11p đế kép zalong HP299(2374)', 1, 4, 1, 360, '', 1, 0, 'img/product/0061.png'),
('0062', 'Giầy cao đế kép louboutin(2381)', 1, 4, 1, 360, '', 1, 0, 'img/product/0062.png'),
('0063', 'Giầy VNXK COCO DIVA đế xuồng(2213)', 1, 4, 1, 345, '', 1, 0, 'img/product/0063.png'),
('0064', 'Giầy da lộn họa tiết lá (2467)', 1, 4, 1, 300, '', 1, 0, 'img/product/0064.png'),
('0065', 'Giầy gót nhọn 5p nơ to đính đá da mờ(2525)', 1, 4, 1, 295, '', 1, 0, 'img/product/0065.png'),
('0066', 'Giầy cao cấp K156383 GN (2534)', 1, 4, 1, 630, '', 1, 0, 'img/product/0066.png'),
('0067', 'Giầy cao cấp 051-2-GNLC(2537)', 1, 4, 1, 350, '', 1, 0, 'img/product/0067.png'),
('0068', 'Giầy cao cấp 06 - 02 GNLC(2535)', 1, 4, 1, 350, '', 1, 0, 'img/product/0068.png'),
('0069', 'Giầy nữ gót nhọn 3p KP1020 GNPX (2529)', 1, 4, 1, 320, '', 1, 0, 'img/product/0069.png'),
('0070', 'Giầy da bóng gót vuông 2p có nơ zalong (2366)', 1, 4, 1, 295, '', 1, 0, 'img/product/0070.png'),
('0071', 'Giầy da lộn họa tiết xoắn (2468)', 1, 4, 1, 300, '', 1, 0, 'img/product/0071.png'),
('0072', 'Giầy da lộn gót vuông 4p SOLE', 2, 4, 1, 320, '', 1, 0, 'img/product/0072.png'),
('0073', 'Giầy da lộn gót kim loại 7p nơ C&K', 2, 4, 1, 320, '', 1, 0, 'img/product/0073.png'),
('0074', 'Giầy da thật mũi tròn trơn 1p', 2, 4, 1, 360, '', 1, 0, 'img/product/0074.png'),
('0075', 'Giầy cao gót ALDO nơ 7p da mờ CG12', 2, 4, 1, 290, '', 2, 0, 'img/product/0075.png'),
('0076', 'Giầy cao gót ALDO gót vuông 5p nơ CQ29', 2, 4, 1, 295, '', 1, 0, 'img/product/0076.png'),
('0077', 'Bốt ngắn 3F da mờ', 3, 4, 1, 445, '', 1, 0, 'img/product/0077.png'),
('0078', 'Bốt ngắn tán đinh', 1, 4, 1, 450, '', 1, 0, 'img/product/0078.png'),
('0079', 'Giày da lộn 9p Uni', 1, 4, 1, 350, '', 1, 20, 'img/product/0079.png'),
('0080', 'Giầy da xi 3p Uni', 1, 4, 1, 320, '', 1, 20, 'img/product/0080.png'),
('0081', 'Giầy 6p gót đũa Skylight', 1, 4, 1, 335, '', 1, 20, 'img/product/0081.png'),
('0082', 'Giày da miếng xuồng 3p nơ YSL', 1, 4, 1, 350, '', 1, 0, 'img/product/0082.png'),
('0083', 'Giày bệt đột vân Alaca', 1, 4, 1, 220, '', 1, 0, 'img/product/0083.png'),
('0084', 'Giày gót vuông 3p lưỡi gà', 1, 4, 1, 290, '', 1, 0, 'img/product/0084.png'),
('0085', 'Giày gót vuông 4p da lộn', 1, 4, 1, 315, '', 1, 0, 'img/product/0085.png'),
('0086', 'Giày Skylight 9p', 1, 4, 1, 335, '', 1, 0, 'img/product/0086.png'),
('0087', 'Giày da bóng gót 2p Morris', 1, 4, 1, 320, '', 1, 0, 'img/product/0087.png'),
('0088', 'Giày gót vuông 3p nơ Ferragamour', 1, 4, 1, 330, '', 1, 0, 'img/product/0088.png'),
('0089', 'Giày đế xuồng da thật', 1, 4, 1, 330, '', 1, 0, 'img/product/0089.png'),
('0090', 'Giày đế đúp gót son 9p', 1, 4, 1, 340, '', 1, 0, 'img/product/0090.png'),
('0091', 'Giày bệt da thật', 1, 4, 1, 335, '', 1, 0, 'img/product/0091.png'),
('0092', 'Giày bệt đột vân Alaca nơ loại 2', 1, 4, 1, 220, '', 1, 0, 'img/product/0092.png'),
('0093', 'Giày Rednex 6p gót đũa', 1, 4, 1, 335, '', 1, 0, 'img/product/0093.png'),
('0094', 'Giày Quảng Châu cao cấp lót xanh', 1, 4, 1, 575, '', 1, 0, 'img/product/0094.png'),
('0095', 'Giày da miếng đế xuồng 7p trơn P24', 1, 4, 1, 395, '', 1, 0, 'img/product/0095.png'),
('0096', 'Giày da miếng đế xuồng 5p nơ giáo LA28', 1, 4, 1, 350, '', 1, 0, 'img/product/0096.png'),
('0097', 'Giày cao gót 5p Kaleea da mờ CG29', 1, 4, 1, 295, '', 1, 0, 'img/product/0097.png'),
('0098', 'Giày cao gót Dior 9p CG59', 1, 4, 1, 315, '', 1, 0, 'img/product/0098.png'),
('0099', 'Giày cao gót Louboutin 9p chỉ khâu CG60', 1, 4, 1, 315, '', 1, 0, 'img/product/0099.png'),
('0100', 'Giày cao gót 5p Vagabond nơ chữ nhất', 1, 4, 1, 295, '', 1, 0, 'img/product/0100.png'),
('0101', 'Giầy Kaleea 7p khoét cạnh', 1, 4, 1, 295, '', 1, 0, 'img/product/0101.png'),
('0102', 'Giầy 7p nơ Chanel', 1, 4, 1, 295, '', 1, 0, 'img/product/0102.png'),
('0103', 'Giầy Kaleea 7p mặt người', 1, 4, 1, 315, '', 1, 0, 'img/product/0103.png'),
('0104', 'Giày Kaleea 7p da bóng gót vuông', 1, 4, 1, 315, '', 1, 0, 'img/product/0104.png'),
('0105', 'Giày Skylight 3p', 1, 4, 1, 335, '', 1, 0, 'img/product/0105.png'),
('0106', 'Giày da xi gót vuông 5p Zara', 1, 4, 1, 295, '', 1, 0, 'img/product/0106.png'),
('0107', 'Giày bệt da miếng nơ Savato', 1, 4, 1, 349, '', 1, 0, 'img/product/0107.png'),
('0108', 'Bốt cổ ngắn 7p Uni', 1, 4, 1, 494, '', 1, 0, 'img/product/0108.png'),
('0109', 'Bốt cổ ngắn có quai 9p', 1, 4, 1, 484, '', 1, 0, 'img/product/0109.png'),
('0110', 'Bốt cổ ngắn d lộn Zara', 1, 4, 1, 494, '', 1, 0, 'img/product/0110.png'),
('0111', 'Giầy 7p đế đúp 150255M', 1, 4, 1, 329, '', 1, 0, 'img/product/0111.png'),
('0112', 'Áo phao nữ BSK cổ lệch 2756', 1, 4, 1, 500, '', 1, 0, 'img/product/0112.png'),
('0113', 'Áo phao nữ BSK cổ tàu 2757', 1, 4, 1, 450, '', 1, 0, 'img/product/0113.png'),
('0114', 'Áo phao béo Aber chấm bi 2626', 1, 4, 1, 595, '', 1, 0, 'img/product/0114.png'),
('0115', 'Áo phao nữ cuộn Zara 2737', 1, 4, 1, 500, '', 1, 0, 'img/product/0115.png'),
('0116', 'Áo phao nam siêu nhẹ xuất dư 2760', 1, 4, 1, 650, '', 1, 0, 'img/product/0116.png'),
('0117', 'Áo phao nữ BSK xuất dư 2758', 1, 4, 1, 560, '', 1, 0, 'img/product/0117.png'),
('0118', 'Áo phao nữ BSK siêu nhẹ có mũ 2761', 1, 4, 1, 495, '', 1, 0, 'img/product/0118.png'),
('0119', 'Áo phao nữ BSK mũ 2765', 1, 4, 1, 550, '', 1, 0, 'img/product/0119.png'),
('0120', 'Áo phao cuộn siêu nhẹ nam 2644', 1, 4, 1, 695, '', 1, 0, 'img/product/0120.png'),
('0121', 'Áo phao cổ bèo Chị Châu 1862', 1, 4, 1, 400, '', 1, 0, 'img/product/0121.png'),
('0122', 'Áo phao nam lông vũ xả 2740', 1, 4, 1, 395, '', 1, 0, 'img/product/0122.png'),
('0123', 'Áo phao TE trần trám xuất dư 2718', 1, 4, 1, 240, '', 1, 0, 'img/product/0123.png'),
('0124', 'Áo len TE cổ lọ 2753', 1, 4, 1, 150, '', 1, 0, 'img/product/0124.png');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=149 ;

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
(38, '0038', '20151007_002', 10, 170),
(39, '0040', '20151024_001', 15, 190),
(40, '0019', '20151024_002', 5, 165),
(41, '0041', '20151024_003', 5, 235),
(42, '0042', '20151024_003', 5, 210),
(43, '0043', '20151024_003', 5, 185),
(44, '0044', '20151024_003', 5, 190),
(45, '0045', '20151024_003', 5, 175),
(46, '0046', '20151024_004', 15, 165),
(47, '0047', '20151024_004', 5, 215),
(48, '0048', '20151024_004', 5, 210),
(49, '0049', '20151024_005', 15, 160),
(50, '0050', '20151024_005', 10, 175),
(51, '0051', '20151024_005', 15, 165),
(52, '0048', '20151024_005', 5, 210),
(53, '0052', '20151024_006', 10, 175),
(54, '0053', '20151024_006', 10, 180),
(55, '0054', '20151024_006', 10, 175),
(56, '0055', '20151024_006', 15, 215),
(57, '0056', '20151024_007', 15, 215),
(58, '0057', '20151024_007', 10, 230),
(59, '0058', '20151024_007', 20, 160),
(60, '0059', '20151024_007', 15, 150),
(61, '0060', '20151024_007', 15, 165),
(62, '0061', '20151024_007', 5, 210),
(63, '0062', '20151024_007', 5, 215),
(64, '0063', '20151024_007', 1, 210),
(65, '0064', '20151024_007', 1, 170),
(66, '0065', '20151024_007', 15, 165),
(67, '0066', '20151024_007', 4, 371),
(68, '0067', '20151024_007', 5, 190),
(69, '0068', '20151024_007', 5, 195),
(70, '0069', '20151024_007', 15, 180),
(71, '0070', '20151024_007', 7, 175),
(72, '0071', '20151024_007', 9, 170),
(73, '0072', '20151024_008', 15, 175),
(74, '0073', '20151024_008', 15, 170),
(75, '0074', '20151024_009', 5, 205),
(76, '0075', '20151026_001', 10, 160),
(77, '0076', '20151026_001', 10, 165),
(78, '0032', '20151031_001', 5, 225),
(79, '0077', '20151101_001', 15, 255),
(80, '0078', '20151101_001', 10, 265),
(81, '0079', '20151107_001', 10, 195),
(82, '0080', '20151107_001', 5, 175),
(83, '0081', '20151107_001', 15, 180),
(84, '0023', '20151108_001', 3, 210),
(85, '0016', '20151109_001', 5, 210),
(86, '0082', '20151109_001', 5, 210),
(87, '0083', '20151109_001', 10, 90),
(88, '0084', '20151115_001', 15, 155),
(89, '0085', '20151115_001', 25, 165),
(90, '0030', '20151115_001', 15, 155),
(91, '0073', '20151115_002', 5, 175),
(92, '0086', '20151115_003', 10, 175),
(93, '0087', '20151115_003', 10, 175),
(94, '0081', '20151115_003', 5, 175),
(95, '0079', '20151115_003', 5, 185),
(96, '0073', '20151119_001', 1, 175),
(97, '0088', '20151119_002', 15, 180),
(98, '0089', '20151120_001', 10, 170),
(99, '0090', '20151120_001', 9, 175),
(100, '0091', '20151120_001', 25, 155),
(101, '0092', '20151123_001', 5, 90),
(102, '0093', '20151123_001', 15, 175),
(103, '0094', '20151123_001', 3, 301),
(104, '0095', '20151123_001', 5, 230),
(105, '0096', '20151123_001', 5, 210),
(106, '0083', '20151123_001', 10, 90),
(107, '0007', '20151123_001', 3, 419),
(108, '0097', '20151123_002', 10, 165),
(109, '0098', '20151123_002', 10, 165),
(110, '0099', '20151123_002', 15, 165),
(111, '0076', '20151123_002', 14, 165),
(112, '0100', '20151123_003', 13, 165),
(113, '0059', '20151123_004', 4, 150),
(114, '0101', '20151128_001', 15, 165),
(115, '0102', '20151128_001', 10, 165),
(116, '0103', '20151128_001', 15, 170),
(117, '0104', '20151128_001', 10, 170),
(118, '0105', '20151128_002', 15, 170),
(119, '0081', '20151128_002', 15, 170),
(120, '0085', '20151130_001', 1, 165),
(121, '0090', '20151204_001', 1, 175),
(122, '0088', '20151204_002', 1, 180),
(123, '0106', '20151208_001', 15, 165),
(124, '0107', '20151208_001', 10, 205),
(125, '0108', '20151208_002', 10, 280),
(126, '0109', '20151210_001', 10, 285),
(127, '0110', '20151210_001', 10, 295),
(128, '0111', '20151210_001', 15, 170),
(129, '0074', '20151210_001', 10, 200),
(130, '0014', '20151212_001', 1, 210),
(131, '0074', '20151214_001', 1, 200),
(132, '0076', '20151214_002', 1, 165),
(133, '0053', '20151219_001', 1, 180),
(134, '0112', '20151222_001', 17, 230),
(135, '0113', '20151222_001', 9, 200),
(136, '0114', '20151222_001', 19, 350),
(137, '0115', '20151222_001', 7, 240),
(138, '0116', '20151222_001', 4, 270),
(139, '0117', '20151222_001', 3, 275),
(140, '0118', '20151222_001', 5, 185),
(141, '0119', '20151222_001', 6, 230),
(142, '0120', '20151222_001', 3, 330),
(143, '0121', '20151222_001', 6, 350),
(144, '0122', '20151222_001', 29, 180),
(145, '0123', '20151222_001', 1, 140),
(146, '0124', '20151222_001', 1, 80),
(147, '0114', '20151223_001', 1, 350),
(148, '0115', '20151223_001', 1, 240);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `product_return`
--

INSERT INTO `product_return` (`id`, `product_code`, `quantity`, `date`, `description`, `provider_id`, `return_price`) VALUES
(1, '0011', 1, '2015-10-22 21:51:53', 'Lỗi 21.10.15', 2, 190),
(2, '0015', 1, '2015-10-22 21:51:53', 'Lỗi 21.10.15', 2, 210),
(3, '0020', 1, '2015-10-22 21:51:53', 'Lỗi 21.10.15', 3, 205),
(4, '0039', 1, '2015-10-22 21:51:53', 'Lỗi 21.10.15', 3, 160),
(5, '0039', 2, '2015-10-22 21:52:36', 'Lỗi 10.10.15', 3, 160),
(6, '0031', 1, '2015-10-22 21:52:36', 'Lỗi 10.10.15', 3, 215),
(7, '0060', 14, '2015-10-26 00:41:44', 'Trả lại Chị Châu', 6, 165),
(8, '0043', 1, '2015-11-02 22:28:03', 'Lỗi ', 2, 185),
(9, '0061', 4, '2015-11-05 00:28:36', 'trả cho châu bán', 6, 210),
(10, '0062', 5, '2015-11-05 00:28:36', 'trả cho châu bán', 6, 215),
(11, '0053', 1, '2015-11-07 14:09:52', 'Lỗi xước và keo', 5, 180),
(12, '0020', 1, '2015-11-11 11:29:04', 'Lỗi keo dán', 3, 205),
(13, '0057', 1, '2015-11-11 11:51:43', 'Lỗi 10.10.2015', 6, 230),
(14, '0044', 5, '2015-11-11 22:01:38', 'Chuyển chị châu', 2, 190),
(15, '0040', 5, '2015-11-11 22:01:38', 'Chuyển chị châu', 4, 190),
(16, '0033', 10, '2015-11-11 22:01:38', 'Trả', 3, 165),
(17, '0034', 22, '2015-11-11 22:01:38', 'Trả', 3, 160),
(18, '0022', 10, '2015-11-11 22:01:38', 'Lỗi ', 3, 200),
(19, '0028', 1, '2015-11-11 22:25:07', 'Lỗi ', 3, 170),
(20, '0019', 1, '2015-11-11 22:25:07', 'Lỗi ', 3, 165),
(21, '0085', 1, '2015-11-17 10:49:08', 'Lỗi dính mực ', 3, 165),
(22, '0026', 1, '2015-11-20 12:58:00', 'Lỗi bạc màu', 3, 170),
(23, '0019', 2, '2015-11-20 12:58:00', 'Lỗi bạc màu và xước', 3, 165),
(24, '0051', 11, '2015-11-28 19:07:28', 'Lỗi ', 3, 165),
(25, '0058', 13, '2015-11-28 19:07:28', 'Lỗi ', 6, 160),
(26, '0059', 15, '2015-11-28 19:07:28', 'Lỗi ', 3, 150),
(27, '0098', 10, '2015-12-01 18:59:19', 'Lỗi ', 4, 165),
(28, '0102', 10, '2015-12-01 18:59:19', 'Lỗi ', 4, 165),
(29, '0103', 15, '2015-12-01 18:59:19', 'Lỗi ', 4, 170),
(30, '0053', 1, '2015-12-07 18:51:21', 'Lỗi - Chuyển chị Châu trả hàng ', 5, 180),
(31, '0078', 10, '2015-12-07 18:51:21', 'Chuyển chị Châu', 3, 265),
(32, '0074', 1, '2015-12-12 23:44:31', 'Lỗi ', 3, 205),
(33, '0031', 1, '2015-12-14 18:17:44', 'Lỗi đưa C châu trả', 3, 215),
(34, '0085', 1, '2015-12-14 18:17:44', 'Lỗi đưa c châu trả', 3, 165),
(35, '0092', 1, '2015-12-14 18:17:44', 'Lỗi đưa c châu trả', 2, 90),
(36, '0109', 1, '2015-12-18 21:44:30', 'Lỗi ', 3, 285),
(37, '0112', 1, '2015-12-22 19:31:33', 'Lỗi màu hồng bị bẩn phía sau Bảo trả lại', 6, 230);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `date`, `amount`, `ket`, `loan`, `fund`, `store`, `debt`) VALUES
(1, '2015-10-25', 108608, 12500, 41275, 24827, 124801, 255),
(2, '2015-10-26', 110455, 14200, 32750, 26502, 116448, 255),
(3, '2015-10-28', 109825, 15800, 22533, 16945, 115128, 285),
(4, '2015-10-30', 110290, 8600, 22533, 19745, 112793, 285),
(5, '2015-10-31', 111328, 10600, 22533, 21745, 111831, 285),
(6, '2015-11-05', 111621, 11900, 26698, 23693, 114341, 285),
(7, '2015-11-07', 111163, 15500, 26698, 28430, 109146, 285),
(8, '2015-11-10', 110422, 11000, 27513, 25700, 111950, 285),
(9, '2015-11-15', 101073, 9500, 12618, 15769, 97637, 285),
(10, '2015-11-16', 100568, 9500, 22268, 10469, 112082, 285),
(11, '2015-11-18', 100016, 12000, 22103, 13029, 108805, 285),
(12, '2015-11-21', 103261, 13500, 28928, 14809, 117095, 285),
(13, '2015-11-23', 104715, 12500, 28928, 18764, 114594, 285),
(14, '2015-11-25', 105600, 7000, 29013, 2404, 131924, 285),
(15, '2015-11-29', 107339, 6050, 42488, 14234, 135308, 285),
(16, '2015-11-30', 108525, 7000, 42488, 17184, 133544, 285),
(17, '2015-12-03', 110588, 7500, 20343, 6369, 124277, 285),
(18, '2015-12-06', 107497, 4235, 20698, 6519, 121391, 285),
(19, '2015-12-07', 112007, 10000, 20698, 13284, 119136, 285),
(20, '2015-12-08', 103752, 2500, 17868, 5539, 115796, 285),
(21, '2015-12-10', 100116, 4500, 19913, -21, 119765, 285),
(22, '2015-12-11', 100570, 6500, 29243, 2264, 127264, 285),
(23, '2015-12-13', 102219, 11500, 29038, 7041, 123931, 285),
(24, '2015-12-16', 104515, 17100, 29953, 14026, 120157, 285),
(25, '2015-12-17', 103506, 17100, 29953, 14026, 119148, 285),
(26, '2015-12-18', 104521, 7000, 29953, 16171, 118018, 285);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`id`, `name`, `tel`, `address`, `description`, `date`) VALUES
(2, 'Vinh Tuyết', '0913077448', 'Hàng Thùng', 'Hàng thùng', '2015-10-04 22:25:52'),
(3, 'Dương', '01666082922', 'Cầu Giấy', '', '2015-10-07 23:04:59'),
(4, 'METRONIC VIET NAM', '0948387993', 'Hào Nam, sau nhạc viện hà nội', '043.211.52.37/0948.387.993. Mrs. Lê', '2015-10-24 09:44:06'),
(5, 'Tuyến', '0904123322', 'Ngã Tư sở', '', '2015-10-24 11:32:53'),
(6, 'Chị Châu', '0966807709', 'Số 3 Lê Văn Lương Vạn Phúc Hà Đông Hà Nội', '', '2015-10-24 11:35:38'),
(7, 'Chiến đại mỗ', '0936374347', 'Đại mỗ', 'rẻ', '2015-11-15 20:21:59'),
(8, 'Chị Thanh', '0466638998', '135 Trần Đại Nghĩa', 'Hàng xả', '2015-12-12 23:26:01');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `provider_paid`
--

INSERT INTO `provider_paid` (`id`, `provider_id`, `amount`, `date`, `description`) VALUES
(1, 2, 28830, '2015-10-04 22:27:27', 'Hóa đơn 28830. | 2:28096 | 9:734 | 2:0 | '),
(2, 3, 35000, '2015-10-08 22:56:05', ' | 2:35000 | 2:0 | 2:0 | '),
(3, 3, 10000, '2015-10-12 23:55:04', 'Rút 10M từ tiền gửi anh Minh còn lại trả dương 10M | 2:10000 | 2:0 | 2:0 | '),
(4, 4, 2850, '2015-10-24 09:48:40', 'Lấy tiền nhà Châu trả | 1:2850 | 2:0 | 2:0 | '),
(5, 2, 4573, '2015-10-24 10:59:23', '1 hóa đơn vinh tuyết chia 2 bên. Chị Châu thanh toán hết | 9:4573 | 2:0 | 2:0 | '),
(6, 6, 27294, '2015-10-24 12:17:23', 'Hàng Chau thanh toán Hộ Anh Minh | 9:27294 | 2:0 | 2:0 | '),
(7, 5, 8525, '2015-10-25 14:39:17', 'đã thanh toán hết | 1:8500 | 13:25 | 2:0 | '),
(8, 6, -2310, '2015-10-26 00:42:37', 'Trả lại 14 đôi 2483 cho Chị Châu | 9:-2310 | 2:0 | 2:0 | '),
(9, 3, 13467, '2015-10-26 00:50:31', 'Tiền chị châu đã dùng hết chuyển sang trả Dương | 9:13467 | 2:0 | 2:0 | '),
(10, 4, 3250, '2015-10-31 23:19:44', 'Chị Châu trả hết hóa đơn tổng. | 9:3250 | 2:0 | 2:0 | '),
(11, 6, -1915, '2015-11-05 00:29:08', 'trả 0061, 0062 cho chị châu | 9:-1915 | 2:0 | 2:0 | '),
(12, 5, 5345, '2015-11-07 14:13:50', 'Thanh toán ngày 5.11, thanh toán luôn 635k cho hóa đơn cảu Chị Châu | 1:5345 | 2:0 | 2:0 | '),
(13, 2, 2815, '2015-11-08 22:39:27', 'Thanh toán hóa đơn hộ bảo | 9:2815 | 2:0 | 2:0 | '),
(14, 2, -950, '2015-11-11 22:43:55', '0044 chuyển sang nhà chị châu 5 đôi | 9:-950 | 2:0 | 2:0 | '),
(15, 4, -950, '2015-11-11 22:44:28', '0040 chuyển lên chị châu 5 đôi | 9:-950 | 2:0 | 2:0 | '),
(16, 6, -230, '2015-11-11 22:44:51', 'Hàng trả lại chị châu | 9:-230 | 2:0 | 2:0 | '),
(17, 3, 7185, '2015-11-11 22:55:15', 'Phần tiền còn lại của bảo bên chị châu là 7185 coi như chuyển sang thanh toán cho Dương. bảo và chị châu hết nợ | 9:7185 | 2:0 | 2:0 | '),
(18, 7, 5300, '2015-11-15 20:46:43', ' | 9:5300 | 2:0 | 2:0 | '),
(19, 7, 2700, '2015-11-19 22:33:41', 'Chị Châu thanh toán hộ | 9:2700 | 2:0 | 2:0 | '),
(20, 2, 8350, '2015-11-23 17:28:33', ' | 9:8335 | 13:15 | 2:0 | '),
(21, 2, -15, '2015-11-23 17:54:23', ' | 13:-15 | 2:0 | 2:0 | '),
(22, 2, 2145, '2015-11-23 21:20:17', ' | 9:2145 | 2:0 | 2:0 | '),
(23, 3, 600, '2015-11-23 21:22:12', ' | 9:600 | 2:0 | 2:0 | '),
(24, 3, 8000, '2015-11-23 21:23:35', 'Bảo chuyển cho chị Châu để thanh toán nợ cho Anh Dương sáng 23.11 | 1:08000 | 2:0 | 2:0 | '),
(25, 3, -4065, '2015-11-28 19:28:05', ' | 9:-4065 | 2:0 | 2:0 | '),
(27, 6, -2080, '2015-11-28 22:15:36', 'Lấy lại phần hàng bảo chuyển cho chị châu | 9:-2080 | 2:0 | 2:0 | '),
(28, 4, 16460, '2015-11-30 16:37:06', 'Vay Chị Châu 12 triệu thanh toán tiền, Anh Khánh nhận hộ | 1:4475 | 9:12000 | 13:-15 | '),
(29, 7, 5280, '2015-12-08 22:24:33', 'Chị Châu thanh toán hộ | 9:5280 | 2:0 | 2:0 | '),
(30, 2, 210, '2015-12-12 19:13:32', ' | 9:210 | 2:0 | 2:0 | '),
(31, 6, 26550, '2015-12-23 09:04:13', 'Bảo nhạp hàng lấy từ zamy. Hien. Chị thanh bên chị châu | 1:26550 | 2:0 | 2:0 | '),
(32, 6, 590, '2015-12-23 23:18:07', ' | 9:590 | 2:0 | 2:0 | ');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `provider_paid_fund_change_histo`
--

INSERT INTO `provider_paid_fund_change_histo` (`id`, `fund_change_histo_id`, `provider_paid_id`) VALUES
(1, 16, 1),
(2, 17, 1),
(3, 36, 2),
(4, 55, 3),
(5, 86, 4),
(6, 87, 5),
(7, 90, 6),
(8, 93, 7),
(9, 94, 7),
(10, 96, 8),
(11, 97, 9),
(12, 106, 10),
(13, 124, 11),
(14, 139, 12),
(15, 156, 13),
(16, 170, 14),
(17, 171, 15),
(18, 172, 16),
(19, 173, 17),
(20, 189, 18),
(21, 204, 19),
(22, 214, 20),
(23, 215, 20),
(24, 216, 21),
(25, 217, 22),
(26, 218, 23),
(27, 219, 24),
(28, 240, 25),
(30, 243, 27),
(31, 253, 28),
(32, 254, 28),
(33, 255, 28),
(34, 292, 29),
(35, 308, 30),
(36, 372, 31),
(37, 378, 32);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=137 ;

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
(16, 1, 25, 1, 'Bình nước', '2015-10-07 15:41:41', 2, 1),
(17, 1, 350, 1, 'Đi chợ sáng mua gà. ... khai trương', '2015-10-08 02:52:32', 2, 1),
(18, 1, 550, 2, 'Châu đi mua lễ thắp hương (hoa quả, bánh, hương vàng túi đựng tiền)', '2015-10-08 15:54:47', 2, 1),
(19, 1, 200, 2, 'Đưa bảo trả lại cho khách hôm khai trương', '2015-10-08 15:54:47', 2, 1),
(20, 1, 60, 2, 'Tiền lẻ thắp hương', '2015-10-08 15:54:47', 2, 1),
(21, 1, 600, 2, 'Tiền phong bao lì xì', '2015-10-08 15:54:47', 2, 1),
(22, 1, 1300, 1, 'Chi mua đồ điện: Quạt trần, 3 bóng đôi, các phụ kiện điện', '2015-10-09 16:17:14', 2, 1),
(23, 1, 5000, 1, 'Ứng trước 5m tiền gương kính', '2015-10-09 16:17:14', 2, 1),
(24, 1, 120, 4, 'Mua chuột cho bảo', '2015-10-10 21:57:06', 2, 1),
(25, 1, 160, 4, 'Mua 2 súng bắn giá cho bảo', '2015-10-10 21:57:06', 2, 1),
(26, 1, 220, 4, 'Mua access point lắp wifi', '2015-10-11 23:56:04', 2, 1),
(27, 1, 157, 1, 'Lot thuong truoc 5x3.5, lot thuong sau 20x3.5, silicon 10x 7.0', '2015-10-13 23:43:41', 2, 1),
(28, 1, 700, 3, 'Mua thảm', '2015-10-13 18:50:01', 2, 1),
(29, 1, 71, 3, 'đồ thắp hương', '2015-10-13 18:50:01', 2, 1),
(30, 1, 25, 3, 'SHIP FEE', '2015-10-11 18:55:25', 2, 1),
(31, 1, 5445, 4, 'Lắp camera', '2015-10-14 22:18:24', 2, 1),
(32, 1, 70, 3, 'tiền lì xì mở hàng', '2015-10-08 22:57:02', 2, 1),
(33, 1, 25, 3, 'phí ship hàng cho Thu   Huyền', '2015-10-16 12:55:15', 2, 1),
(35, 1, 20, 3, 'mua hoa thắp hương', '2015-10-17 23:19:26', 2, 1),
(36, 1, 1650, 3, 'mua bàn quầy', '2015-10-17 23:21:13', 2, 1),
(37, 1, 1890, 1, 'In túi bóng và mua giấy cuộn', '2015-10-18 22:25:34', 2, 1),
(38, 1, 50, 3, 'Mua bánh thắp hương, muaỉ toỉ để cửa hàng, mua nước', '2015-10-19 16:14:03', 2, 1),
(39, 1, 25, 3, 'phí ship hàng cho Vũ', '2015-10-20 00:18:08', 2, 1),
(40, 1, 60, 3, 'mua choi lau', '2015-10-21 22:55:00', 2, 1),
(41, 1, 20, 3, 'mua banh va hoa thap huong', '2015-10-22 22:35:28', 2, 1),
(43, 1, 10, 3, 'Mua lựu thắp hương', '2015-10-26 15:52:53', 2, 1),
(44, 1, 540, 4, 'tiền quảng cáo facebook (HSBC của A Duệ)', '2015-10-31 09:06:14', 2, 1),
(45, 1, 42, 3, 'bánh, tiền vàng, hoa thắp hương rằm', '2015-10-27 11:07:18', 2, 1),
(46, 1, 17, 3, 'mua hoa ly', '2015-10-29 11:07:54', 2, 1),
(47, 1, 16, 3, 'mua táo', '2015-10-30 11:08:16', 2, 1),
(48, 1, 12, 1, 'mua táo', '2015-11-01 11:08:36', 2, 1),
(49, 1, 32, 3, 'phí ship hàng cho chị Đỗ Thuần Phương lần 1', '2015-11-01 11:21:35', 2, 1),
(50, 1, 43, 3, 'Phí ship hàng cho Chị Đỗ THuần Phương lần 2', '2015-11-01 11:25:32', 2, 1),
(51, 1, 45, 3, 'Phí ship hàng cho em Nguyễn Thị Bích Thảo', '2015-11-01 11:30:33', 2, 1),
(52, 1, 39, 3, 'đổi nước, mua bánh gạo thắp hương', '2015-11-02 15:04:30', 2, 1),
(53, 1, 200, 3, 'tăng like   comment  share fb', '2015-11-03 22:34:39', 2, 1),
(54, 1, 165, 4, 'Quảng cáo facebook (thẻ HSBC anh Duệ)', '2015-11-03 23:28:06', 2, 1),
(55, 1, 35, 3, 'Phí ship hàng đi Bắc Ninh cho em Trần Thị Minh Thương', '2015-11-05 18:37:40', 2, 1),
(56, 1, 53, 3, 'Phí ship hàng lần 3 cho chị Đỗ Thuần Phương', '2015-11-05 18:44:43', 2, 1),
(59, 1, 20, 3, 'Mua giấy gói hàng', '2015-11-06 13:41:39', 2, 1),
(60, 1, 430, 3, 'thanh toán tiền điện, nước, nét tháng 10.2015', '2015-11-05 13:42:41', 2, 1),
(61, 1, 35, 3, 'mua táo, hoa ', '2015-11-05 13:43:54', 2, 1),
(62, 1, 43, 3, 'Phí ship hàng cho chị Đinh Thị Loan', '2015-11-07 14:39:01', 2, 1),
(63, 1, 18, 3, 'Phí ship hàng cho Quỳnh Maruko ', '2015-11-07 14:39:27', 2, 1),
(64, 1, 18, 3, 'phí ship hàng cho chị Đỗ Thuần Phương', '2015-11-07 14:39:50', 2, 1),
(65, 1, 20, 3, 'mua bánh gạo thắp hương', '2015-11-08 10:27:10', 2, 1),
(66, 1, 100, 3, 'nạp thẻ', '2015-11-08 10:27:36', 2, 1),
(67, 1, 12, 3, 'mua táo', '2015-11-10 10:54:04', 2, 1),
(68, 1, 495, 3, 'Tiền bảo lấy hàng bên chị châu còn nợ. anh Duệ chốt trả hết nợ này để quản lý khi bảo có lấy hàng bên chị châu ship online và nhận tiền bên bảo', '2015-11-10 22:12:00', 1, 1),
(69, 1, 6050, 1, 'Thanh toán tiền biển quảng cáo cho hưởng', '2015-11-10 22:21:11', 2, 1),
(71, 1, 34, 3, 'Phí chip chuyển hoàn hàng của Chị Đỗ Thuần Phương', '2015-11-11 12:13:57', 2, 1),
(72, 1, 20, 3, 'Mua hoa ly thắp hương', '2015-11-11 12:14:38', 2, 1),
(73, 1, 10000, 2, 'Chị châu thanh toán tiền Kính gương 10M', '2015-11-11 22:43:07', 2, 1),
(74, 1, 57, 3, 'Mua đồ thắp hương mùng 1', '2015-11-12 10:38:15', 2, 1),
(75, 1, 100, 3, 'mua giấy xi măng gói hàng', '2015-11-12 23:11:03', 2, 1),
(76, 1, 23, 3, 'Mua bánh gạp thắp hương', '2015-11-14 23:04:42', 2, 1),
(77, 1, 20, 3, 'Mua chuối', '2015-11-16 20:48:07', 2, 1),
(78, 1, 450, 3, 'Thanh toán 50% phí tăng 10k like fanpage', '2015-11-16 20:49:00', 2, 1),
(79, 1, 530, 3, 'Chốt chí chạy ads fanpage đến 19h ngày 14.11', '2015-11-16 20:51:32', 2, 1),
(80, 1, 460, 3, 'Thanh toán 50% chi phí tăng 10 nghìn like fanpage', '2015-11-16 20:52:54', 2, 1),
(81, 1, 30, 3, 'mua hoa ly thắp hương', '2015-11-17 11:18:53', 2, 1),
(82, 1, 20, 3, 'Mua chuối thắp hương', '2015-11-18 10:51:19', 2, 1),
(83, 1, 20, 3, 'Mua hoa ly thắp hương', '2015-11-21 12:27:33', 2, 1),
(84, 1, 25, 3, 'mua bánh thắp hương', '2015-11-23 23:25:50', 2, 1),
(85, 1, 220, 2, 'Chị Châu thanh toán tiền cáp anh Minh', '2015-11-23 15:42:31', 1, 1),
(86, 1, 25, 3, 'Phí ship hàng cho Linh Giang bạn Bảo', '2015-11-24 10:55:43', 2, 1),
(87, 1, 50, 3, 'phí ship hàng chyển hoàn đôi giầy lỗi của chị Đỗ Thuần Phương', '2015-11-25 14:41:25', 2, 1),
(88, 1, 100, 3, 'mua xôi giò, bánh gạo, hoa,, tiền vàng, thuốc lá thắp hương rằm', '2015-11-26 10:48:00', 2, 1),
(89, 1, 95, 3, 'Mua bánh đồng tiền, chè, trầu cau, nến bay ban thờ ', '2015-11-28 18:25:22', 2, 1),
(90, 1, 450, 3, 'Thanh toán nốt tiền chạy 10k like fanpage', '2015-11-28 18:31:12', 2, 1),
(91, 1, 20, 3, 'Phí ship hàng cho c Hoài bạn Bảo ', '2015-11-29 15:58:21', 2, 1),
(92, 1, 30, 3, 'Anh Minh rút ', '2015-11-29 20:15:55', 2, 1),
(93, 1, 35, 3, 'Mua bánh thăp hương ', '2015-11-30 15:58:35', 2, 1),
(94, 1, 20, 3, 'Mua hoa, chè thắp hương ', '2015-12-01 12:56:04', 2, 1),
(95, 1, 275, 3, 'Mua sách cho ch ', '2015-12-02 12:53:14', 2, 1),
(96, 1, 25, 3, 'Mua bánh thắp hương ', '2015-12-02 12:53:32', 2, 1),
(97, 1, 25, 3, 'Mua đủ đủ và bánh thắp hương', '2015-12-03 22:52:25', 2, 1),
(98, 1, 15, 3, 'mua bánh thắp hương', '2015-12-04 22:52:51', 2, 1),
(99, 1, 15, 3, 'Mua bánh chưng thắp hương', '2015-12-05 10:57:18', 2, 1),
(100, 1, 20, 3, 'phí chuyển hàng cho Thùy Linh bạn Bảo', '2015-12-05 17:52:22', 2, 1),
(101, 1, 1765, 3, 'Đóng tiền điện , nước, net tháng 11.2015. Tháng trước chị chủ nhà xem nhầm công tơ nên ít, tháng này nộp bù', '2015-12-05 22:19:19', 2, 1),
(102, 1, 45, 3, 'Mua bánh thắp hương và đồ lặt vặt', '2015-12-07 14:26:35', 2, 1),
(103, 1, 7700, 1, 'Mua tủ lạnh và máy giặt ', '2015-12-07 14:31:54', 1, 1),
(104, 1, 40, 3, 'mua hoa, xoài thắp hương', '2015-12-08 13:43:29', 2, 1),
(105, 1, 3000, 1, 'Mua tủ lạnh và máy giặt (rút từ chị Châu)', '2015-12-07 22:27:41', 1, 1),
(106, 1, 240, 3, 'Mua đồ trang trí noel ', '2015-12-09 23:59:54', 2, 1),
(107, 1, 15, 3, 'mua bánh chưng thắp hương', '2015-12-09 00:06:22', 2, 1),
(108, 1, 35, 3, 'mua đồ thắp hương', '2015-12-10 00:33:40', 2, 1),
(109, 1, 1193, 4, 'Thuê host và domain 2nine.vn', '2015-12-11 22:21:54', 2, 1),
(110, 1, 15, 3, 'mua bánh thắp hương', '2015-12-12 15:51:45', 2, 1),
(111, 1, 65, 1, 'Mua bánh thắp hương và giấy vệ sinh', '2015-12-13 23:22:36', 2, 1),
(112, 1, 450, 1, 'Chị Châu thanh toán tiền quảng cáo face. chốt đến ngày 11.12.2015', '2015-12-13 23:27:39', 2, 1),
(113, 1, 300, 3, 'Ứng trước lương cho Thương', '2015-12-14 22:53:22', 2, 1),
(114, 1, 70, 1, 'Mua hoa ly và bánh thắp hương', '2015-12-14 22:55:35', 2, 1),
(115, 1, 50, 3, 'Mua đồ thắp hương', '2015-12-15 23:14:40', 2, 1),
(116, 1, 4000, 3, 'Thanh toán lương cho Em Thương NV _ Chốt 14.12', '2015-12-15 16:21:11', 2, 1),
(117, 1, 20, 3, 'Mua bánh thắp hương', '2015-12-16 14:49:41', 2, 1),
(118, 1, 50, 3, 'Nạp thẻ', '2015-12-16 00:41:26', 2, 1),
(119, 1, 485, 3, 'Mua giá và móc quần áo', '2015-12-17 14:49:16', 2, 1),
(120, 1, 60, 3, 'mua bánh thắp hương và đồ lặt vặt', '2015-12-17 14:07:17', 2, 1),
(121, 1, 85, 3, 'Mua 20 móc áo ', '2015-12-18 14:07:35', 2, 1),
(122, 1, 400, 3, 'Mua giá quần áo', '2015-12-19 12:54:09', 2, 1),
(123, 1, 50, 3, 'Mua đồ thắp hương', '2015-12-19 12:54:31', 2, 1),
(124, 1, 20, 3, 'Mua bán thắp hương', '2015-12-19 12:55:04', 2, 1),
(125, 1, 20, 3, 'mua bánh thắp hương', '2015-12-20 21:15:36', 2, 1),
(126, 1, 10000, 4, 'Mua 2 laptop cho anh minh', '2015-12-21 11:54:24', 1, 1),
(127, 1, 264, 3, 'Mua đồ dùng cho của hàng và gia đình ', '2015-12-21 17:01:10', 2, 1),
(129, 8, 356, 1, 'Hóa đơn số 20151212_012 A Minh lấy ( )', '2015-12-12 15:28:24', 1, 1),
(130, 1, 20, 3, 'Phí chuyển hàng cho chị Hằng ', '2015-12-22 16:12:00', 2, 1),
(131, 1, 35, 3, 'Mua bánh thắp hương', '2015-12-22 16:12:16', 2, 1),
(132, 1, 20, 3, 'Phí chuyển tiền của chị Hằng ', '2015-12-15 16:13:51', 2, 1),
(134, 8, 335, 1, 'Hóa đơn số 20151222_004 Bảo lấy ( )', '2015-12-22 16:27:49', 1, 1),
(135, 1, 28, 3, 'Phí chuyển hàng cho Chị Đỗ Thuần Phương khách onl của Bảo ', '2015-12-22 16:35:40', 2, 1),
(136, 1, 15, 3, 'Mua bánh thắp hương', '2015-12-23 11:51:08', 2, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Employees Information' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `shop_id`, `name`, `email`, `phone_number`, `username`, `password`, `confirmcode`, `status`, `start_date`, `end_date`, `description`) VALUES
(1, 1, 'Anh Minh', 'trantridue@gmail.com', '0918888398', 'admin', '4eae18cf9e54a0f62b44176d074cbe2f', 'y', 'y', '2013-01-01 09:07:18', '2015-08-19 20:19:40', 'nothing'),
(2, 1, 'Chị Châu', 'zabuza.vn@gmail.com', '0966807709', 'chau ', 'e10adc3949ba59abbe56e057f20f883e', 'y', 'y', '2015-06-15 09:08:37', '2015-09-04 08:00:41', 'nothing'),
(3, 1, 'Bảo', 'baobao@gmail.com', '01649785255', 'bao', 'e10adc3949ba59abbe56e057f20f883e', 'y', 'y', '2013-06-01 20:47:12', '2015-09-21 20:34:22', 'nothing'),
(4, 1, 'Anh Duệ', 'trantridue@gmail.com', '0979355285', 'due', 'e10adc3949ba59abbe56e057f20f883e', 'y', 'y', '2015-10-10 06:40:54', '2020-12-31 22:00:00', 'Due');

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
