-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.8 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 blog 的数据库结构
DROP DATABASE IF EXISTS `blog`;
CREATE DATABASE IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `blog`;


-- 导出  表 blog.b_category 结构
DROP TABLE IF EXISTS `b_category`;
CREATE TABLE IF NOT EXISTS `b_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8C853C3BC3121AE3` (`parentId`),
  CONSTRAINT `FK8C853C3BC3121AE3` FOREIGN KEY (`parentId`) REFERENCES `b_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 正在导出表  blog.b_category 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `b_category` DISABLE KEYS */;
INSERT INTO `b_category` (`id`, `name`, `parentId`) VALUES
	(1, 'root', NULL),
	(2, 'p1', 1),
	(3, 'p2', 1),
	(4, 'c1', 1),
	(5, 'c2', 3);
/*!40000 ALTER TABLE `b_category` ENABLE KEYS */;


-- 导出  表 blog.resources 结构
DROP TABLE IF EXISTS `resources`;
CREATE TABLE IF NOT EXISTS `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  blog.resources 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `resources` ENABLE KEYS */;


-- 导出  表 blog.roles 结构
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enable` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  blog.roles 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


-- 导出  表 blog.roles_resources 结构
DROP TABLE IF EXISTS `roles_resources`;
CREATE TABLE IF NOT EXISTS `roles_resources` (
  `role_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`resource_id`),
  KEY `FKAF06BF23AF45199A` (`resource_id`),
  KEY `FKAF06BF238E19309A` (`role_id`),
  CONSTRAINT `FKAF06BF238E19309A` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FKAF06BF23AF45199A` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  blog.roles_resources 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `roles_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_resources` ENABLE KEYS */;


-- 导出  表 blog.users 结构
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `enable` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  blog.users 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- 导出  表 blog.users_roles 结构
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE IF NOT EXISTS `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKF6CCD9C68E19309A` (`role_id`),
  KEY `FKF6CCD9C63343F47A` (`user_id`),
  CONSTRAINT `FKF6CCD9C63343F47A` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKF6CCD9C68E19309A` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  blog.users_roles 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;


-- 导出  表 blog.z_article 结构
DROP TABLE IF EXISTS `z_article`;
CREATE TABLE IF NOT EXISTS `z_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `createdDate` datetime NOT NULL,
  `updatedDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- 正在导出表  blog.z_article 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `z_article` DISABLE KEYS */;
INSERT INTO `z_article` (`id`, `categoryId`, `title`, `content`, `createdDate`, `updatedDate`) VALUES
	(2, 2, '41414企鹅企鹅企鹅', 'fuck44', '2013-12-24 10:05:23', '2014-01-04 17:30:10'),
	(3, 2, '哈哈', '嘻嘻e1e1e', '2013-12-24 10:12:31', '2014-01-04 16:20:54'),
	(5, 2, '1234', 'hhhhh', '2014-01-04 16:10:38', '2014-01-04 16:10:38'),
	(6, 1, '1313', '41414', '2014-01-04 16:22:05', '2014-01-04 16:22:05'),
	(7, 1, '肥嘟嘟123', '41414', '2014-01-04 16:40:33', '2014-01-06 11:02:18');
/*!40000 ALTER TABLE `z_article` ENABLE KEYS */;


-- 导出  表 blog.z_category 结构
DROP TABLE IF EXISTS `z_category`;
CREATE TABLE IF NOT EXISTS `z_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `parentId` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- 正在导出表  blog.z_category 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `z_category` DISABLE KEYS */;
INSERT INTO `z_category` (`id`, `name`, `parentId`) VALUES
	(1, '学习', 0),
	(2, '英语', 1),
	(4, 'happy', 2),
	(6, '计算机', 1),
	(7, 'new item1', 2);
/*!40000 ALTER TABLE `z_category` ENABLE KEYS */;


-- 导出  表 blog.z_user 结构
DROP TABLE IF EXISTS `z_user`;
CREATE TABLE IF NOT EXISTS `z_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在导出表  blog.z_user 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `z_user` DISABLE KEYS */;
INSERT INTO `z_user` (`userId`, `firstname`, `lastname`, `phone`, `email`, `birthdate`) VALUES
	(1, 'Jason', 'Zhu', 2147483647, 'baogee@vip.qq.com', '1990-03-07'),
	(2, 'Marco', 'Wang', 1234567829, 'test@qq.com', '1990-03-07'),
	(3, '123', '456', 123, '213@qq.com', '1999-01-13'),
	(4, 'fdfd', 'dadad', 1234, '111@qq.com', '2014-01-27');
/*!40000 ALTER TABLE `z_user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
