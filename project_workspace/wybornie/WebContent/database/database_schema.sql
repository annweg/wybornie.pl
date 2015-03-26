CREATE DATABASE IF NOT EXISTS `wyborniedb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci */;
USE `wyborniedb`;


-- Zrzut struktury tabela wyborniedb.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_group` bigint(20) NOT NULL DEFAULT '0',
  `name_pl` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `name_de` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Data exporting was unselected.


-- Zrzut struktury tabela wyborniedb.categorygroup
CREATE TABLE IF NOT EXISTS `categorygroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name_pl` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `name_de` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Data exporting was unselected.


-- Zrzut struktury tabela wyborniedb.city
CREATE TABLE IF NOT EXISTS `city` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `id_province` bigint(20) NOT NULL,
  `id_country` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Data exporting was unselected.


-- Zrzut struktury tabela wyborniedb.cookbook
CREATE TABLE IF NOT EXISTS `cookbook` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description_pl` text COLLATE utf8_polish_ci,
  `description_en` text COLLATE utf8_polish_ci,
  `description_de` text COLLATE utf8_polish_ci,
  `id_user` bigint(20) NOT NULL DEFAULT '0',
  `id_recipe` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Data exporting was unselected.


-- Zrzut struktury tabela wyborniedb.cookbookrecipe
CREATE TABLE IF NOT EXISTS `cookbookrecipe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_cookbook` bigint(20) NOT NULL DEFAULT '0',
  `id_recipe` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Data exporting was unselected.


-- Zrzut struktury tabela wyborniedb.country
CREATE TABLE IF NOT EXISTS `country` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pl` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `en` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `de` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Data exporting was unselected.


-- Zrzut struktury tabela wyborniedb.difficulty
CREATE TABLE IF NOT EXISTS `difficulty` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name_pl` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `name_de` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Data exporting was unselected.


-- Zrzut struktury tabela wyborniedb.ingredient
CREATE TABLE IF NOT EXISTS `ingredient` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name_pl` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `name_de` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Data exporting was unselected.


-- Zrzut struktury tabela wyborniedb.province
CREATE TABLE IF NOT EXISTS `province` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Data exporting was unselected.


-- Zrzut struktury tabela wyborniedb.recipe
CREATE TABLE IF NOT EXISTS `recipe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description_pl` text COLLATE utf8_polish_ci NOT NULL,
  `description_en` text COLLATE utf8_polish_ci NOT NULL,
  `description_de` text COLLATE utf8_polish_ci NOT NULL,
  `id_category` bigint(20) NOT NULL,
  `id_difficulty` bigint(20) NOT NULL,
  `id_timeConsuming` bigint(20) NOT NULL,
  `howManyFor` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Data exporting was unselected.


-- Zrzut struktury tabela wyborniedb.recipecategory
CREATE TABLE IF NOT EXISTS `recipecategory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_category` bigint(20) NOT NULL DEFAULT '0',
  `id_recipe` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Data exporting was unselected.


-- Zrzut struktury tabela wyborniedb.recipeitem
CREATE TABLE IF NOT EXISTS `recipeitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_recipe` bigint(20) NOT NULL DEFAULT '0',
  `id_ingredient` bigint(20) NOT NULL DEFAULT '0',
  `amount` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Data exporting was unselected.


-- Zrzut struktury tabela wyborniedb.timeconsuming
CREATE TABLE IF NOT EXISTS `timeconsuming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name_pl` varchar(150) COLLATE utf8_polish_ci NOT NULL,
  `name_en` varchar(150) COLLATE utf8_polish_ci NOT NULL,
  `name_de` varchar(150) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Data exporting was unselected.


-- Zrzut struktury tabela wyborniedb.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nick` varchar(150) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `firstName` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `birthDate` date NOT NULL,
  `id_city` bigint(20) NOT NULL,
  `id_cookBook` bigint(20) NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Data exporting was unselected.


-- Zrzut struktury tabela wyborniedb.usercookbook
CREATE TABLE IF NOT EXISTS `usercookbook` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) NOT NULL DEFAULT '0',
  `id_cookBook` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

ALTER TABLE `user`
	ADD UNIQUE INDEX `nick` (`nick`),
	ADD UNIQUE INDEX `email` (`email`);