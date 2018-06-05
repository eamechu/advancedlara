-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 05, 2018 at 06:30 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `advancedlara`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
CREATE TABLE IF NOT EXISTS `activations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(8, 10, 'L4p8yD6XkjeR0LK86cnB4tKiG054L8rx', 1, '2018-06-05 11:57:54', '2018-06-05 11:50:51', '2018-06-05 11:57:54'),
(13, 16, '165FBpFSMt2AeC9b90s8j5idy460kfUL', 1, '2018-06-05 12:37:36', '2018-06-05 12:37:08', '2018-06-05 12:37:36'),
(14, 17, '0t9rnKyt9eAeWi4BOo2f1uTdvlF2BGR4', 1, '2018-06-05 12:41:53', '2018-06-05 12:41:23', '2018-06-05 12:41:53'),
(15, 18, 'ovJHih7hzPWPjZr385OGgr65Xs9qqAna', 1, '2018-06-05 13:50:51', '2018-06-05 13:23:29', '2018-06-05 13:50:51'),
(16, 19, 'FOpbSgsNaf1ON3YI61NFq3NELlfQZkJy', 1, '2018-06-05 15:50:51', '2018-06-05 14:57:47', '2018-06-05 14:57:47'),
(17, 20, 'eCT11dwawkTGczbL2HB9bc3134DnGC6X', 1, NULL, '2018-06-05 15:28:57', '2018-06-05 15:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `address` varchar(60) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(10) NOT NULL,
  `zip` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `city`, `state`, `zip`) VALUES
(1, 'Bucky Roberts', '32 Hungerford Ave', 'Adams', 'NY', 13605),
(2, 'Noah Parker', '342 Tunafish Lane', 'Raleigh', 'NC', 27606),
(3, 'Kelsey Burger', '43 Crab Orchard Dr', 'Oakland', 'CA', 90210),
(4, 'Corey Smith', '423 Wisteria Lane', 'Simmersville', 'AK', 54112),
(5, 'Harry Potter', '673 Greenwich Ave', 'Newark', 'NJ', 80432),
(6, 'Henry Jackson', '2134 Grant St', 'Gary', 'IN', 47404),
(7, 'Cynthia Alvarez', '1568 Greenfield Ave', 'Augusta', 'GA', 30568),
(8, 'Teresa Smith', '8725 Black St', 'Philadelphia', 'PA', 19603),
(9, 'Gary Foster', '3752 Wittfield Blvd', 'Indianapolis', 'IN', 46219),
(10, 'Sherry Gibbons', '5517 Oak St', 'Phoenix', 'AZ', 85072),
(11, 'Jack Nicholson', '1234 Star Lane', 'Hollywood', 'CA', 90210),
(12, 'Penny Green', '4972 Massachusetts Ave', 'Orlando', 'FL', 33718),
(13, 'Alexander Evans', '6310 E 21st Rd', 'Las Vegas', 'NV', 83594),
(14, 'Jeremy White', '3954 Brentwood Dr', 'Seattle', 'WA', 99037),
(15, 'Omar Badshah', '6801 Regina Cir', 'Madison', 'WI', 53209),
(16, 'Preston Harrison', '104 Main St', 'Denver', 'CO', 81712),
(17, 'Manuel Rodriguez', '99543 Westin Blvd', 'Provo', 'UT', 85478),
(18, 'David Jones', '5488 W 34th St', 'Boston', 'MA', 2104),
(19, 'Nick Flanders', '3486 Happy Trails Dr', 'Springfield', 'OH', 45872),
(20, 'Paul Brown', '3290 Pennsylvania Ave', 'Chicago', 'IL', 61208),
(21, 'Sara Rehm', '7746 Wysong Ave', 'Detroit', 'MI', 48913),
(22, 'Haley Carter', '2957 Princess Way', 'Portland', 'OR', 97532),
(23, 'Julian Thomas', '5564 Dandy Trail', 'Santa Fe', 'NM', 81543),
(24, 'George Lucas', '8224 Star Wars Ln', 'Galaxy', 'TN', 37512),
(25, 'Perry Jordan', '4321 Victory Rd', 'Montgomery', 'AL', 33219),
(26, 'Christopher Layton', '871 Georgia Pl', 'Houston', 'TX', 78704),
(27, 'Devon Myers', '9932 Carmel Dr', 'New York', 'NY', 11920),
(28, 'Debra Talkington', '8421 Smithfield Ave', 'Mesa', 'AZ', 82573),
(29, 'Peter Johnson', '4213 Jones Pkwy', 'Missoula', 'MS', 37228),
(30, 'Harry Brown', '125 Cinnamon Way', 'Raleigh', 'NC', 27418),
(31, 'Kay Billings', '4592 Jessica Ave', 'Cincinnati', 'OH', 43118),
(32, 'Desmond Rafferty', '6329 Jordan St', 'San Diego', 'CA', 93980),
(33, 'Lisa Washington', '3490 Dearborn Ave', 'Boise', 'ID', 84930),
(34, 'Jackson Taylor', '7733 Miami Way', 'Atlanta', 'GA', 37544),
(35, 'Michael Davis', '9245 Olney Ave', 'Eau Claire', 'WI', 54732),
(36, 'Candice Thompson', '3122 Ebony Blvd', 'Memphis', 'TN', 33152),
(37, 'Terry Mitchell', '7438 Tacoma St', 'Spokane', 'WA', 99753),
(38, 'Ruth Bolen', '5584 Frigid Ln', 'Anchorage', 'AK', 99831),
(39, 'James Hamilton', '449 Routiers Ave', 'Ft Lauderdale', 'FL', 33912),
(40, 'Harvey Akins', '7950 Ridge Rd', 'Newark', 'NJ', 2753),
(41, 'Timothy Smothers', '5892 Maple Ave', 'Washington', 'DC', 213),
(42, 'Stephanie Nichols', '2275 Apple St', 'Highland', 'MI', 49003),
(43, 'Ken Davidson', '1583 N 27th Rd', 'Dallas', 'TX', 78432),
(44, 'Angel Martin', '3195 Mapleton Ave', 'Providence', 'RI', 8132),
(45, 'Cathy Douglas', '8934 Glory St', 'Boulder', 'CO', 89578),
(46, 'Kendall Norton', '8733 Jordan Ave', 'Kansas City', 'KS', 66555),
(47, 'Desire Morton', '2138 Peaches Way', 'Ellettsville', 'IL', 67330),
(48, 'Patty Zrock', '7397 Happy St', 'Brooklyn', 'NY', 13420),
(49, 'Evan Bayh', '6613 North St', 'Miami', 'FL', 33990),
(50, 'Kevin Masters', '91350 Carmel Dr', 'Brisket', 'WY', 80154),
(51, 'Paula Barker', '6528 Prozac Ave', 'San Francisco', 'CA', 92953),
(52, 'John Jacobs', '2957 Ashway Ct', 'Pittsburgh', 'PA', 18320),
(53, 'Dana Brunswick', '4825 Polly Ln', 'Las Vegas', 'NV', 89223),
(54, 'David Turner', '743 Main St', 'Knoxville', 'TN', 37710),
(55, 'Michael Orlando', '1355 Joseph Way', 'Pensacola', 'FL', 31552),
(56, 'Terry Green', '6320 LaSalle St', 'Yazoo', 'MS', 30428),
(57, 'Greg Evans', '2294 South St', 'Indianapolis', 'IN', 46203),
(58, 'Sandy Johnson', '5319 Brentwood Dr', 'Louisville', 'KY', 41350),
(59, 'Charlie Jones', '5382 Miracle Ln', 'New Orleans', 'LA', 73210),
(60, 'Kevin Grier', '855 Henry St', 'Provo', 'UT', 83111),
(61, 'Lani Kulana', '3352 Hibiscus Ln', 'Honolulu', 'HI', 93525),
(62, 'Mary Worley', '4291 Cherry St', 'Oaktown', 'NH', 5308),
(63, 'Tanya Gleason', '7315 Franklin Rd', 'Peoria', 'IL', 66514),
(64, 'Donna Bradley', '2753 Florida Way', 'San Jose', 'CA', 91342),
(65, 'Jimmy Lawson', '9 Corporate Dr', 'Excelsior', 'GA', 37833),
(66, 'Brenda Fowler', '8447 Jackson Pl', 'St Louis', 'MO', 63153),
(67, 'Karen Mills', '9077 Cumberland Way', 'Tulsa', 'OK', 74319),
(68, 'Aretha Gordon', '1489 Pumpkin Ave', 'Appleton', 'WI', 54310),
(69, 'Carol Brown', '6225 Tamiami Trl', 'Ft Myers', 'FL', 33914),
(70, 'Jerry Freeman', '7840 Princess Dr', 'Topeka', 'KS', 63330),
(71, 'LuAnn Dennis', '5602 Norman St', 'Philadelphia', 'PA', 17569),
(72, 'Thomas Jackson', '3958 Breen Ave', 'Mobile', 'AL', 34558),
(73, 'Marilyn Pritchett', '1468 Duncan St', 'Trenton', 'NJ', 7104),
(74, 'Katherine Cain', '4388 Drysdale Ln', 'Texarkana', 'AR', 77315),
(75, 'Patsy Cline', '9926 Hemingway Blvd', 'Tuscaloosa', 'CA', 97221),
(76, 'Kerry Jackson', '5533 Penelope St', 'Beaverton', 'OR', 91353),
(77, 'Princess Wilson', '3127 Spencer Dr', 'Norton', 'sC', 27384),
(78, 'Henry Fisk', '6341 Wilmington Ave', 'Lincoln', 'NE', 70011),
(79, 'Jessica Grant', '2203 Pansy Ln', 'Butte', 'MT', 54438),
(80, 'Joe Franklin', '1078 Dusky Dr', 'Independence', 'IN', 46935),
(81, 'Larry Hood', '3522 Potter St', 'Marietta', 'GA', 37023),
(82, 'Jim OBrien', '6084 Maple St', 'Boston', 'MA', 1358),
(83, 'Tanya Hicks', '1487 Potter St', 'Orlando', 'FL', 34258),
(84, 'Dean Williams', '2279 Gray St', 'Roanoke', 'VA', 27384),
(85, 'Jason Freeman', '4301 Perry Ave', 'Lincoln', 'NE', 67301),
(86, 'Katy Smith', '8733 Johnson Way', 'Santa Fe', 'NM', 80227),
(87, 'Andy Jones', '5177 US 42 S', 'Paragon', 'MI', 48203),
(88, 'Crystal Jarvis', '9028 Indiana Ave', 'Tuscaloosa', 'AL', 32784),
(89, 'Elizabeth McMurray', '730 Walnut St', 'Mooresville', 'WI', 53802),
(90, 'Cassandra Tansy', '1209 Broadway St', 'Bloomington', 'IN', 46801),
(91, 'Dick Moore', '3209 Simpson Rd', 'New York', 'NY', 10220),
(92, 'Marisa Rodriguez', '873 Olney Ave', 'Muncie', 'VA', 20384),
(93, 'Tyrone Jackson', '7725 Georgia St', 'Salt Lake City', 'UT', 82004),
(94, 'Donald Gray', '8339 Olivia St', 'Champaign', 'IL', 60337),
(95, 'Victoria Jameson', '2804 Oak Tree St', 'Salina', 'KS', 67905),
(96, 'Lucy Bronson', '5336 Michigan Ave', 'Wilmington', 'DE', 1903);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `cost` float NOT NULL,
  `seller_id` int(11) NOT NULL,
  `bids` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `cost`, `seller_id`, `bids`) VALUES
(1, 'Brand New iMac Computer', 149.99, 32, 3),
(2, 'used diaper from my sister', 2.04, 1, 0),
(3, 'Fresh apple pie', 14.99, 54, 32),
(4, 'New gym socks', 2.34, 90, 566),
(5, 'Weedwacker only slightly used', 4.56, 84, 2),
(6, 'New ipad stolen from best buy', 399, 32, 23),
(7, 'Book about having babies', 21.34, 44, 21),
(8, 'Woman Jeans', 49.5, 56, 123),
(9, 'traditional carpet', 25.45, 14, 75),
(10, '3 boxes of frogs', 30.49, 68, 145),
(11, '48 boxes of frogs', 74.29, 6, 99),
(12, '7 boxes of frogs', 857.75, 18, 88),
(13, 'laptop', 743.3, 89, 158),
(14, 'thumbelina', 228.05, 15, 49),
(15, 'bed', 127.15, 65, 189),
(16, 'shampoing', 12.8, 6, 105),
(17, 'stove', 37.66, 68, 111),
(18, 'cushion', 7.15, 97, 157),
(19, 'refrigerator', 657.49, 61, 129),
(20, 'gold necklace', 853.07, 10, 101),
(21, 'pan', 33.7, 7, 184),
(22, 'awesome alien computer game', 10.75, 18, 29),
(23, 'baby coat', 89.99, 14, 47),
(24, 'baby seat', 145.78, 2, 199),
(25, 'satchel', 44.71, 15, 66),
(26, 'women perfum', 110.9, 48, 84),
(27, 'conveyor belt', 1120.75, 11, 4),
(28, 'used car', 5700.5, 12, 135),
(29, 'supercomputer', 49.75, 50, 176),
(30, 'mirror', 26.8, 19, 56),
(31, 'piano', 1800.4, 13, 147),
(32, 'quitar', 88.4, 25, 164),
(33, 'trumpet', 255.15, 36, 23),
(34, 'machintosh', 3845, 20, 107),
(35, 'earphone', 10.5, 17, 110),
(36, 'computer', 418, 11, 152),
(37, 'night light', 13.87, 97, 198),
(38, 'pc bag', 50.99, 48, 65),
(39, 'babyfoot', 376.7, 2, 121),
(40, 'hairdryer', 88.9, 12, 177),
(41, 'babyliss', 130.75, 68, 79),
(42, 'door', 150.5, 98, 13),
(43, 'baby soap', 12.7, 4, 198),
(44, 'used phone', 43.75, 9, 69),
(45, 'bath', 757.15, 96, 55),
(46, 'flower', 10.75, 16, 89),
(47, 'battery charger', 48.75, 25, 87),
(48, 'air conditioner', 975, 12, 151),
(49, 'casserole', 115.75, 46, 35),
(50, 'used toilet', 180.7, 64, 11),
(51, 'teashirt', 14.98, 65, 114),
(52, 'moto', 920, 22, 174),
(53, 'saxophone', 220.9, 60, 140),
(54, 'bicycle', 180.55, 97, 35),
(55, 'man perfum', 95, 75, 199),
(56, 'table', 157.25, 91, 48),
(57, 'boat', 4890.5, 17, 177),
(58, 'iphone', 547, 8, 28),
(59, 'body milk', 50.5, 16, 90),
(60, 'new curtain for bedroom', 278.4, 92, 11),
(61, 'diamond ring', 1900, 15, 45),
(62, 'swept', 4.5, 9, 99),
(63, 'women hat', 17.55, 39, 60),
(64, 'washing machine', 680.9, 42, 125),
(65, 'baby bottle', 27.98, 91, 117),
(66, 'women sun glasses', 66.7, 18, 174),
(67, 'person weighs', 65.25, 10, 100),
(68, 'photo frame', 18, 85, 170),
(69, 'key board', 16.7, 90, 101),
(70, 'screen', 250, 81, 188),
(71, 'bucket', 2.5, 1, 19),
(72, 'lipstick', 24.75, 3, 44),
(73, 'wardrobe', 120.75, 9, 71),
(74, 'blue dress size 40', 88.9, 7, 113),
(75, 'newspaper', 1.5, 95, 172),
(76, 'scanner', 350, 14, 62),
(77, 'camera', 550.7, 17, 95),
(78, 'camcorder', 788.99, 25, 127),
(79, 'gun', 420.1, 81, 107),
(80, 'domestic dog', 200, 19, 129),
(81, 'horse', 759.5, 30, 115),
(82, 'truck', 7800.5, 32, 123),
(83, 'soccer ball', 95.49, 54, 155),
(84, 'gold earring', 385, 75, 92),
(85, 'basket', 250.45, 46, 142),
(86, 'bikini', 85.2, 12, 57),
(87, 'red skirt', 15.9, 18, 188),
(88, 'copier machine', 800.7, 50, 160),
(89, 'handbag', 35.9, 8, 108),
(90, 'bath towel', 25.1, 11, 186),
(91, 'coffee machine', 210.89, 15, 170),
(92, 'wedding dress', 690, 26, 48),
(93, 'man sun glasses', 80.7, 19, 174),
(94, 'candle', 7.5, 22, 102),
(95, 'scarf', 11.9, 7, 143),
(96, 'microwave', 150.29, 6, 11),
(97, 'electric oven', 645, 62, 171),
(98, 'play station', 256.75, 12, 188),
(99, 'dvd', 126.84, 14, 113),
(100, 'magazine', 3.5, 8, 152);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

DROP TABLE IF EXISTS `persistences`;
CREATE TABLE IF NOT EXISTS `persistences` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(18, 20, 'yIcFXz9ynC7zAQMduLp0I5xcn4iPEq6H', '2018-06-05 15:30:36', '2018-06-05 15:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
CREATE TABLE IF NOT EXISTS `reminders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 18, 'TvBmv9YP6uw9LsnKAE5b57670XfmVTcJ', 0, NULL, '2018-06-05 13:58:50', '2018-06-05 13:58:50'),
(2, 19, 'XTgAzGPrumVYHn9bDsJACwOXvUNLVg30', 1, '2018-06-05 15:01:39', '2018-06-05 15:00:00', '2018-06-05 15:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, NULL, NULL),
(2, 'manager', 'Manager', NULL, NULL, NULL),
(3, 'esme', 'Esme', NULL, NULL, NULL),
(4, 'ussdclient', 'USSDClient', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
CREATE TABLE IF NOT EXISTS `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(10, 3, '2018-06-05 11:50:51', '2018-06-05 11:50:51'),
(16, 3, '2018-06-05 12:37:08', '2018-06-05 12:37:08'),
(17, 1, '2018-06-05 12:41:23', '2018-06-05 12:41:23'),
(18, 3, '2018-06-05 13:23:29', '2018-06-05 13:23:29'),
(19, 3, '2018-06-05 14:57:47', '2018-06-05 14:57:47'),
(20, 3, '2018-06-05 15:28:57', '2018-06-05 15:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

DROP TABLE IF EXISTS `throttle`;
CREATE TABLE IF NOT EXISTS `throttle` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2018-06-05 12:52:12', '2018-06-05 12:52:12'),
(2, NULL, 'ip', '127.0.0.1', '2018-06-05 12:52:12', '2018-06-05 12:52:12'),
(3, NULL, 'global', NULL, '2018-06-05 12:52:40', '2018-06-05 12:52:40'),
(4, NULL, 'ip', '127.0.0.1', '2018-06-05 12:52:40', '2018-06-05 12:52:40'),
(5, NULL, 'global', NULL, '2018-06-05 12:57:14', '2018-06-05 12:57:14'),
(6, NULL, 'ip', '127.0.0.1', '2018-06-05 12:57:14', '2018-06-05 12:57:14'),
(7, NULL, 'global', NULL, '2018-06-05 13:01:44', '2018-06-05 13:01:44'),
(8, NULL, 'ip', '127.0.0.1', '2018-06-05 13:01:44', '2018-06-05 13:01:44'),
(9, NULL, 'global', NULL, '2018-06-05 13:04:54', '2018-06-05 13:04:54'),
(10, NULL, 'ip', '127.0.0.1', '2018-06-05 13:04:54', '2018-06-05 13:04:54'),
(11, NULL, 'global', NULL, '2018-06-05 13:13:52', '2018-06-05 13:13:52'),
(12, NULL, 'ip', '127.0.0.1', '2018-06-05 13:13:52', '2018-06-05 13:13:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `username`, `created_at`, `updated_at`) VALUES
(10, 'esme@gmail.com', '$2y$10$76CVuoMBepANgkQsVkv/jeZ0E5BMvgjAVpcYrV5Y2qZSv.spR4s9.', NULL, '2018-06-05 11:58:11', 'Esme', 'EsmeUser', 'esme', '2018-06-05 11:50:51', '2018-06-05 11:58:11'),
(16, 'wedilexoxa@vpslists.com', '$2y$10$h3bPks1TUPgNgto537dfue0B/8glV822HOHITgsgvfVvFxB5SL0ve', NULL, '2018-06-05 12:37:48', 'Wedley', 'Lex', 'wed', '2018-06-05 12:37:08', '2018-06-05 12:37:48'),
(18, 'labi@fxprix.com', '$2y$10$S18dZqccHv.zjdB7t6Kb3uvQ7/HnNZwHMS6JewR0juHjrKkT0dfvG', NULL, NULL, 'Emzcorp', 'Inc', 'emzcorp', '2018-06-05 13:23:29', '2018-06-05 13:23:29'),
(20, 'test@o3enzyme.com', '$2y$10$bCGCjFh6dSNeGz8idxKRQuRQ1zRrnvUL.Bd51vpbEVdu9cyTWTPrW', NULL, '2018-06-05 15:30:36', 'Tester', 'Test', 'test', '2018-06-05 15:28:57', '2018-06-05 15:30:36');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
