-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for md
CREATE DATABASE IF NOT EXISTS `md` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `md`;

-- Dumping structure for table md.doctors
CREATE TABLE IF NOT EXISTS `doctors` (
  `username` varchar(50) NOT NULL,
  `amka` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `speciality` varchar(50) NOT NULL,
  `contactinfo` varchar(50) NOT NULL,
  `brief` text NOT NULL,
  `path` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table md.doctors: ~6 rows (approximately)
INSERT INTO `doctors` (`username`, `amka`, `fullname`, `location`, `speciality`, `contactinfo`, `brief`, `path`) VALUES
	('vaspap', '159357159357', 'Βασίλης Παπαδόπουλος', 'Kypseli', '1', '6956429862', 'Ο Βασίλης Παπαδόπουλος είναι έμπειρος καρδιολόγος με πολυετή πείρα στη διάγνωση και θεραπεία καρδιαγγειακών παθήσεων. Δίνει έμφαση στην παροχή εξατομικευμένης φροντίδας και στη χρήση σύγχρονων μεθόδων για την εξασφάλιση της καλύτερης δυνατής υγείας των ασθενών του.', 'images/h1.jpg'),
	('marand', '175621587812', 'Μαρία Ανδρέου', 'Syntagma', '2', '6924813675', 'Η Μαρία Ανδρέου είναι εξειδικευμένη παιδίατρος με πολυετή εμπειρία στη φροντίδα και την υγεία των παιδιών. Επικεντρώνεται στην πρόληψη και θεραπεία παιδιατρικών παθήσεων, προσφέροντας στοργική και εξατομικευμένη ιατρική φροντίδα σε κάθε παιδί.', 'images/hw1.jpg'),
	('koni', '459484984321', 'Κώστας Νικολάου', 'Piraeus', '3', '6951356482', 'Ο Κώστας Νικολάου είναι διακεκριμένος οδοντίατρος με πολυετή εμπειρία και σπουδές στην Οδοντιατρική Σχολή του Πανεπιστημίου Αθηνών. Γνωστός για την αφοσίωση και την ευαισθησία του, παρέχει εξατομικευμένη φροντίδα στους ασθενείς του, κερδίζοντας την εμπιστοσύνη τους με τη φιλική και επιστημονική του προσέγγιση.', 'images/h2.jpg'),
	('Testor', '159', 'Testor', 'Testpr', '1', 'Testor', 'niger', ''),
	('nig', '123', 'nigor', 'athens', '3', '159519162165', '21654654654', '/images/a4e9e8397c67773336168adf1134be53.png'),
	('user', '159', 'admin', 'Athens', '2', '6969696969', '1591', '');

-- Dumping structure for table md.paiddoc
CREATE TABLE IF NOT EXISTS `paiddoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table md.paiddoc: ~2 rows (approximately)
INSERT INTO `paiddoc` (`id`, `username`) VALUES
	(2, 'vaspap'),
	(3, 'marand'),
	(5, 'koni');

-- Dumping structure for table md.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `amka` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table md.users: ~9 rows (approximately)
INSERT INTO `users` (`id`, `username`, `amka`, `password`, `path`, `role`) VALUES
	(49, 'vaspap', '159357159357', 'vaspap', 'images/d1.png', 2),
	(50, 'doc', '123', 'doc', NULL, 1),
	(51, 'testortontoro', '159', '159', NULL, 1),
	(52, 'te', '123', 'te', NULL, 1),
	(53, 'admin', '421421', '159', NULL, 1),
	(54, 'test', '123', '231', NULL, 1),
	(55, 'Testor', '159', '159', NULL, 2),
	(56, 'nig', '123', '123', '/images/a4e9e8397c67773336168adf1134be53.png', 2),
	(57, 'user', '159', '195', NULL, 2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
