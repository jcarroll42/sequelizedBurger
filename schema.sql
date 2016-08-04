-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.11-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table burgers_db.burgers
CREATE TABLE IF NOT EXISTS `burgers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `burger_name` varchar(255) NOT NULL,
  `devoured` tinyint(1) DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table burgers_db.burgers: ~5 rows (approximately)
/*!40000 ALTER TABLE `burgers` DISABLE KEYS */;
INSERT INTO `burgers` (`id`, `burger_name`, `devoured`, `date`) VALUES
	(1, 'Bacon Cheeseburger', 1, '2016-07-26 23:18:49'),
	(2, 'Black Bean Burger', 1, '2016-07-26 23:20:44'),
	(3, 'Turkey Burger', 1, '2016-07-30 12:42:48'),
	(4, 'Chicken burger', 0, '2016-07-26 23:23:04'),
	(5, 'Veggie burger', 1, '2016-07-26 23:24:23');
/*!40000 ALTER TABLE `burgers` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
