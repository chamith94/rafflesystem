-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.46-0ubuntu0.14.04.2 - (Ubuntu)
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             9.3.0.5046
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for raffle
DROP DATABASE IF EXISTS `raffle`;
CREATE DATABASE IF NOT EXISTS `raffle` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `raffle`;

-- Dumping structure for table raffle.order_associate
DROP TABLE IF EXISTS `order_associate`;
CREATE TABLE IF NOT EXISTS `order_associate` (
  `user_id` int(4) DEFAULT NULL,
  `raffle_id` int(10) DEFAULT NULL,
  KEY `FK_associate_userlogindata` (`user_id`),
  KEY `FK_associate_raffle` (`raffle_id`),
  CONSTRAINT `FK_associate_raffle` FOREIGN KEY (`raffle_id`) REFERENCES `raffle` (`raffle_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_associate_userlogindata` FOREIGN KEY (`user_id`) REFERENCES `userlogindata` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table raffle.order_associate: ~0 rows (approximately)
DELETE FROM `order_associate`;
/*!40000 ALTER TABLE `order_associate` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_associate` ENABLE KEYS */;

-- Dumping structure for table raffle.raffle
DROP TABLE IF EXISTS `raffle`;
CREATE TABLE IF NOT EXISTS `raffle` (
  `raffle_id` int(10) NOT NULL AUTO_INCREMENT,
  `raffle_no` int(8) DEFAULT NULL,
  `is_exists` varchar(5) DEFAULT NULL,
  `buy_price` double(10,2) DEFAULT NULL,
  `campaign_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`raffle_id`),
  KEY `campaign_id` (`campaign_id`),
  CONSTRAINT `raffle_ibfk_1` FOREIGN KEY (`campaign_id`) REFERENCES `raffle_campaign` (`campaign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table raffle.raffle: ~2 rows (approximately)
DELETE FROM `raffle`;
/*!40000 ALTER TABLE `raffle` DISABLE KEYS */;
INSERT INTO `raffle` (`raffle_id`, `raffle_no`, `is_exists`, `buy_price`, `campaign_id`) VALUES
	(1, 24589, 'true', 0.00, 1),
	(2, 256546, 'true', 0.00, 2);
/*!40000 ALTER TABLE `raffle` ENABLE KEYS */;

-- Dumping structure for table raffle.raffle_campaign
DROP TABLE IF EXISTS `raffle_campaign`;
CREATE TABLE IF NOT EXISTS `raffle_campaign` (
  `campaign_id` int(10) NOT NULL AUTO_INCREMENT,
  `campaign_name` varchar(500) DEFAULT NULL,
  `organizer_name` varchar(500) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `raffle_count` int(5) DEFAULT NULL,
  `start_date` varchar(50) DEFAULT NULL,
  `end_date` varchar(50) DEFAULT NULL,
  `min_price` double(10,2) DEFAULT NULL,
  `raffle_image_preview_path` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`campaign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table raffle.raffle_campaign: ~2 rows (approximately)
DELETE FROM `raffle_campaign`;
/*!40000 ALTER TABLE `raffle_campaign` DISABLE KEYS */;
INSERT INTO `raffle_campaign` (`campaign_id`, `campaign_name`, `organizer_name`, `contact_email`, `raffle_count`, `start_date`, `end_date`, `min_price`, `raffle_image_preview_path`) VALUES
	(1, 'dddddd', 'rrrrrrrrrrrrrrrr', 'dj@f.com', 1, '2016-02-03', '2016-02-03', 4.00, 'xxxx'),
	(2, 'Camp2', 'org2', 'fgfgfgfg', 1, '2016-1-1', '2017-1-1', 7.00, 'xxxx');
/*!40000 ALTER TABLE `raffle_campaign` ENABLE KEYS */;

-- Dumping structure for table raffle.userlogindata
DROP TABLE IF EXISTS `userlogindata`;
CREATE TABLE IF NOT EXISTS `userlogindata` (
  `user_id` int(4) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL,
  `user_type` varchar(5) NOT NULL,
  `user_password` varchar(300) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table raffle.userlogindata: ~4 rows (approximately)
DELETE FROM `userlogindata`;
/*!40000 ALTER TABLE `userlogindata` DISABLE KEYS */;
INSERT INTO `userlogindata` (`user_id`, `user_name`, `user_type`, `user_password`) VALUES
	(1, 'Admin', 'ADMIN', '5d41402abc4b2a76b9719d911017c592'),
	(2, 'User1', 'USER', '203ad5ffa1d7c650ad681fdff3965cd2'),
	(3, 'asdjasd@mailinator.com', 'USER', 'e1adc3949ba59abbe56e057f2f883e'),
	(4, 'rtsgbd@mailinator.com', 'USER', 'e1adc3949ba59abbe56e057f2f883e');
/*!40000 ALTER TABLE `userlogindata` ENABLE KEYS */;

-- Dumping structure for table raffle.usersignup
DROP TABLE IF EXISTS `usersignup`;
CREATE TABLE IF NOT EXISTS `usersignup` (
  `user_name` varchar(50) DEFAULT NULL,
  `veri_token` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table raffle.usersignup: ~0 rows (approximately)
DELETE FROM `usersignup`;
/*!40000 ALTER TABLE `usersignup` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersignup` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
