-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table lorenzo.accident
CREATE TABLE IF NOT EXISTS `accident` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicleNumber` varchar(50) NOT NULL DEFAULT '0',
  `location` varchar(50) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0',
  `date` varchar(50) NOT NULL DEFAULT '0',
  `vehicleType` varchar(50) NOT NULL DEFAULT '0',
  `driverName` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table lorenzo.accident: ~1 rows (approximately)
/*!40000 ALTER TABLE `accident` DISABLE KEYS */;
INSERT INTO `accident` (`id`, `vehicleNumber`, `location`, `time`, `date`, `vehicleType`, `driverName`) VALUES
	(3, 'HQ-3456', 'mahargama', '12:06', '2022-05-09', 'Car', 'Kamal'),
	(4, 'HQ-3456', 'mahargama', '03:24', '2022-05-08', 'Toyota Axio', 'Kamal');
/*!40000 ALTER TABLE `accident` ENABLE KEYS */;

-- Dumping structure for table lorenzo.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `mail` varchar(50) NOT NULL DEFAULT '0',
  `telephone` int(11) NOT NULL DEFAULT 0,
  `age` int(11) NOT NULL DEFAULT 0,
  `address` varchar(50) NOT NULL DEFAULT '0',
  `gender` varchar(50) NOT NULL DEFAULT '0',
  `userName` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table lorenzo.customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`id`, `name`, `mail`, `telephone`, `age`, `address`, `gender`, `userName`, `password`) VALUES
	(1, 'Anjalee Kapukotuwa', 'anjaleehansikakapukotuwa@gmail.com', 774273389, 10, 'no 80', 'female', 'hansi', 'hansi123'),
	(2, 'sachin dileepa', 'sachindileepa41@gmail.com', 763055154, 0, '0', 'male', 'ashini', 'ash1'),
	(3, 'sachin dileepa', 'sachindileepa41@gmail.com', 763055154, 0, '0', 'male', 'bla', 'bla');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table lorenzo.employee
CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `mail` varchar(50) NOT NULL DEFAULT '0',
  `telephone` int(11) NOT NULL DEFAULT 0,
  `age` int(11) NOT NULL DEFAULT 0,
  `address` varchar(50) NOT NULL DEFAULT '0',
  `userName` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `gender` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table lorenzo.employee: ~0 rows (approximately)
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`id`, `name`, `mail`, `telephone`, `age`, `address`, `userName`, `password`, `gender`) VALUES
	(1, 'Anjalee Kapukotuwa', 'anjaleehansikakapukotuwa@gmail.com', 774273389, 22, 'Samanala Uyana Road,164/44,Kaduwela road,Malabe', 'hansi', '123123', NULL),
	(2, 'sachin dileepa', 'sachindileepa41@gmail.com', 763055154, 22, 'no 90,old road,Pannipitiya,Sri lanka', 'sachin', 'sachin123', NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;

-- Dumping structure for table lorenzo.maintaines
CREATE TABLE IF NOT EXISTS `maintaines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicalId` varchar(50) NOT NULL DEFAULT '0',
  `qty` int(11) NOT NULL DEFAULT 0,
  `partId` int(11) NOT NULL DEFAULT 0,
  `date` varchar(50) NOT NULL DEFAULT '0',
  `description` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table lorenzo.maintaines: ~0 rows (approximately)
/*!40000 ALTER TABLE `maintaines` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintaines` ENABLE KEYS */;

-- Dumping structure for table lorenzo.rating
CREATE TABLE IF NOT EXISTS `rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL DEFAULT 0,
  `stars` int(11) NOT NULL DEFAULT 0,
  `description` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table lorenzo.rating: ~0 rows (approximately)
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;

-- Dumping structure for table lorenzo.resarvation
CREATE TABLE IF NOT EXISTS `resarvation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicalId` varchar(50) NOT NULL DEFAULT '0',
  `userId` int(11) NOT NULL DEFAULT 0,
  `pickLocation` varchar(50) NOT NULL DEFAULT '0',
  `dropLocation` varchar(50) NOT NULL DEFAULT '0',
  `date` varchar(50) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0',
  `vehicleType` varchar(50) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table lorenzo.resarvation: ~0 rows (approximately)
/*!40000 ALTER TABLE `resarvation` DISABLE KEYS */;
INSERT INTO `resarvation` (`id`, `vehicalId`, `userId`, `pickLocation`, `dropLocation`, `date`, `time`, `vehicleType`, `status`) VALUES
	(1, 'HQ-3456', 3, 'colombo', 'kandy', '2022-05-08', '', 'Volkswagen Polo', 'Finished'),
	(6, 'HQ-3456', 2, 'Sri Lanka', 'western', '2022-05-08', '04:07', 'Toyota Axio', 'Assinged'),
	(10, 'HQ-3456', 2, 'Sri Lanka', 'western', '2022-05-09', '05:09', 'Toyota Axio', 'Assinged');
/*!40000 ALTER TABLE `resarvation` ENABLE KEYS */;

-- Dumping structure for table lorenzo.returnvehicle
CREATE TABLE IF NOT EXISTS `returnvehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicleNumber` varchar(50) NOT NULL DEFAULT '0',
  `cusName` varchar(50) NOT NULL DEFAULT '0',
  `cusMail` varchar(50) NOT NULL DEFAULT '0',
  `cusTel` int(11) NOT NULL DEFAULT 0,
  `pickDate` varchar(50) NOT NULL DEFAULT '0',
  `returnDate` varchar(50) NOT NULL DEFAULT '0',
  `dropTime` varchar(50) NOT NULL DEFAULT '0',
  `vehicleType` varchar(50) NOT NULL DEFAULT '0',
  `serviceType` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table lorenzo.returnvehicle: ~3 rows (approximately)
/*!40000 ALTER TABLE `returnvehicle` DISABLE KEYS */;
INSERT INTO `returnvehicle` (`id`, `vehicleNumber`, `cusName`, `cusMail`, `cusTel`, `pickDate`, `returnDate`, `dropTime`, `vehicleType`, `serviceType`) VALUES
	(5, 'QA-8780', 'Anjalee Hansika Kapukotuwa', 'anjaleehansikakapukotuwa@gmail.com', 774273389, '2022-04-14', '2022-04-14', '20:15', 'Tuck tuck', 'Airport/city transfer'),
	(6, 'HQ-5786', 'Ajith Premalal', 'Ajithpremalal@gmail.com', 715677233, '2022-04-26', '2022-04-30', '04:30', 'Van', 'Tour'),
	(10, 'GH-4567', 'sachin dileepa', 'sachindileepa41@gmail.com', 763055154, '2022-05-04', '2022-05-12', '2022-05-12', 'Van', 'Self drive'),
	(13, 'GH-4567', 'sachin dileepa', 'sachindileepa41@gmail.com', 763055154, '2022-05-11', '2022-05-08', '15:27', 'Toyota Hiace', 'Wedding and event');
/*!40000 ALTER TABLE `returnvehicle` ENABLE KEYS */;

-- Dumping structure for table lorenzo.vehicle
CREATE TABLE IF NOT EXISTS `vehicle` (
  `vehicleNumber` varchar(50) NOT NULL,
  `vehicleType` varchar(50) DEFAULT NULL,
  `numberOfPasenger` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `ownerName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`vehicleNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table lorenzo.vehicle: ~1 rows (approximately)
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` (`vehicleNumber`, `vehicleType`, `numberOfPasenger`, `address`, `status`, `ownerName`) VALUES
	('CA-1234', 'Toyota Hiace KDH', 5, 'colombo', 'not-assigned', 'sunil'),
	('HQ-3456', 'Toyota Axio', 3, 'no 90,Old Road,Pannipitiya', 'Assinged', 'Kamal'),
	('HQ-3458', 'Toyota Aqua', 2, 'colombo', 'Assinged', 'ashawari'),
	('HR_4567', 'Toyota Hiace KDH', 5, 'malabe', 'Assinged', 'anjalee');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
