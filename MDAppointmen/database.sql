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

-- Dumping structure for table md.appointments
CREATE TABLE IF NOT EXISTS `appointments` (
  `client` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table md.appointments: ~1 rows (approximately)
INSERT INTO `appointments` (`client`, `doctor`, `date`, `time`) VALUES
	('user', 'doctor2', '2024-09-15', '15:00');

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

-- Dumping data for table md.doctors: ~9 rows (approximately)
INSERT INTO `doctors` (`username`, `amka`, `fullname`, `location`, `speciality`, `contactinfo`, `brief`, `path`) VALUES
	('vaspap', '159357159357', 'Βασίλης Παπαδόπουλος', 'Βενιζέλου 45, Νέα Σμύρνη', '1', '6956429862', 'Ο Βασίλης Παπαδόπουλος είναι έμπειρος καρδιολόγος με πολυετή πείρα στη διάγνωση και θεραπεία καρδιαγγειακών παθήσεων. Δίνει έμφαση στην παροχή εξατομικευμένης φροντίδας και στη χρήση σύγχρονων μεθόδων για την εξασφάλιση της καλύτερης δυνατής υγείας των ασθενών του.', 'images/h1.png'),
	('marand', '175621587812', 'Μαρία Ανδρέου', 'Καραμανλή 23, Χαλάνδρι', '2', '6924813675', 'Η Μαρία Ανδρέου είναι εξειδικευμένη παιδίατρος με πολυετή εμπειρία στη φροντίδα και την υγεία των παιδιών. Επικεντρώνεται στην πρόληψη και θεραπεία παιδιατρικών παθήσεων, προσφέροντας στοργική και εξατομικευμένη ιατρική φροντίδα σε κάθε παιδί.', 'images/hw1.png'),
	('koni', '459484984321', 'Κώστας Νικολάου', 'Ιωακείμ 12, Κολωνάκι', '3', '6951356482', 'Ο Κώστας Νικολάου είναι διακεκριμένος οδοντίατρος με πολυετή εμπειρία και σπουδές στην Οδοντιατρική Σχολή του Πανεπιστημίου Αθηνών. Γνωστός για την αφοσίωση και την ευαισθησία του, παρέχει εξατομικευμένη φροντίδα στους ασθενείς του, κερδίζοντας την εμπιστοσύνη τους με τη φιλική και επιστημονική του προσέγγιση.', 'images/h2.png'),
	('pachro', '1598498454631', 'Παναγιώτα Χρονοπούλου ', 'Παπανδρέου 32, Γλυφάδα', '1', '6951313212', '\nΗ Παναγιώτα Χρονοπούλου είναι καρδιολόγος με εξειδίκευση στη διάγνωση και θεραπεία καρδιαγγειακών παθήσεων, προσφέροντας σύγχρονες ιατρικές υπηρεσίες και εξατομικευμένη φροντίδα στους ασθενείς της.', 'images/w1.png'),
	('advas', '519153435123', 'Αντριάνα Βασιλοπούλου', ' Συγγρού 117, Νέος Κόσμος', '1', '6924152120', '\nΗ Αντριάνα Βασιλοπούλου είναι διακεκριμένη καρδιολόγος με πολυετή εμπειρία στον τομέα της καρδιολογίας. Είναι γνωστή για την εξειδίκευσή της στις επεμβατικές καρδιολογικές τεχνικές και για την αφοσίωσή της στη βελτίωση της καρδιακής υγείας των ασθενών της μέσω καινοτόμων θεραπευτικών προσεγγίσεων.', 'images/w2.png'),
	('kovla', '595312132132', 'Κωνσταντίνα Βλάχου', 'Αλεξάνδρας 165, Κυψέλη', '2', '6915654641', 'Η Κωνσταντίνα Βλάχου είναι παιδίατρος με εκτενή εμπειρία στη φροντίδα και την παρακολούθηση της υγείας των παιδιών. Εξειδικεύεται στη διάγνωση και θεραπεία παιδιατρικών ασθενειών, δίνοντας έμφαση στην πρόληψη και την προαγωγή της υγείας, ενώ παρέχει στοργική και εξατομικευμένη φροντίδα στους μικρούς της ασθενείς.', 'images/w3.png'),
	('nikpap', '159456412313', 'Νίκος Παππάς', 'Μεσογείων 240, Χολαργός', '2', '6951615612', 'Ο Νίκος Παππάς είναι παιδίατρος με πολυετή εμπειρία στην ιατρική φροντίδα των παιδιών. Διακρίνεται για την εξειδίκευσή του στην πρόληψη και αντιμετώπιση παιδιατρικών ασθενειών, καθώς και για την ευαισθησία και αφοσίωση που δείχνει στους μικρούς ασθενείς και τις οικογένειές τους.', 'images/m1.png'),
	('dimkara', '195343545612', 'Δημήτρης Καραγιάννης', 'Θησέως 12, Κουκάκι', '3', '6984561565', 'Ο Δημήτρης Καραγιάννης είναι οδοντίατρος με εκτενή εμπειρία στη φροντίδα της στοματικής υγείας. Εξειδικεύεται στην αισθητική οδοντιατρική και στις αποκαταστάσεις, προσφέροντας εξατομικευμένες λύσεις για την υγεία και την αισθητική των δοντιών των ασθενών του. Είναι γνωστός για την προσεκτική και ευγενική του προσέγγιση, καθώς και για τη χρήση σύγχρονων τεχνολογιών και τεχνικών.', 'images/m2.png'),
	('doctor2', '15949554', 'Νικόλαος Κούκος', 'Ιακώβου 17, Πειραιάς ', '3', '6945412135', 'Πολύ καλός γιατρός', 'images/logo.png');

-- Dumping structure for table md.paiddoc
CREATE TABLE IF NOT EXISTS `paiddoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table md.paiddoc: ~3 rows (approximately)
INSERT INTO `paiddoc` (`id`, `username`) VALUES
	(19, 'vaspap'),
	(20, 'marand'),
	(22, 'doctor2');

-- Dumping structure for table md.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `amka` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table md.users: ~10 rows (approximately)
INSERT INTO `users` (`id`, `username`, `amka`, `password`, `path`, `role`) VALUES
	(49, 'vaspap', '159357159357', 'vaspap', 'images/h1.png', 2),
	(65, 'marand', '175621587812', 'marand', 'images/hw1.png', 2),
	(66, 'koni', '459484984321', 'koni', 'images/h2.png', 2),
	(67, 'pachro', '519489465123', 'pachro', 'images/w1.png', 2),
	(68, 'advas', '519153435123', 'advas', 'images/w2.png', 2),
	(69, 'kovla', '595312132132', 'kovla', 'images/w3.png', 2),
	(70, 'nikpap', '159456412313', 'nikpap', 'images/m1.png', 2),
	(71, 'dimkara', '195343545612', 'dimkara', 'images/m2.png', 2),
	(76, 'user', '12341251525', 'user', 'images/unipi.png', 1),
	(79, 'doctor2', '15949554', '1', 'images/logo.png', 2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
