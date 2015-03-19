-- --------------------------------------------------------
-- Host:                         localhost
-- Wersja serwera:               5.6.21 - MySQL Community Server (GPL)
-- Serwer OS:                    Win32
-- HeidiSQL Wersja:              9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- Zrzucanie danych dla tabeli wyborniedb.province: ~16 rows (około)
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` (`id`, `name`) VALUES
	(1, 'dolnośląskie'),
	(2, 'kujawsko-pomorskie'),
	(3, 'lubelskie'),
	(4, 'lubuskie'),
	(5, 'łódzkie'),
	(6, 'małopolskie'),
	(7, 'mazowieckie'),
	(8, 'opolskie'),
	(9, 'podkarpackie'),
	(10, 'podlaskie'),
	(11, 'pomorskie'),
	(12, 'śląskie'),
	(13, 'świętokrzyskie'),
	(14, 'warmińsko-mazurskie'),
	(15, 'wielkopolskie'),
	(16, 'zachodniopomorskie');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
