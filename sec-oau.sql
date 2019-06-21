-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        10.3.10-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出  表 sec-oau.permission 结构
CREATE TABLE IF NOT EXISTS `permission` (
  `id` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  sec-oau.permission 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` (`id`, `description`, `name`, `pid`, `url`) VALUES
	('1', '管理员查询全部', 'admin', '0', '/admin/all'),
	('2', '普通查询全部', 'general', '0', '/gen/all');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;

-- 导出  表 sec-oau.role 结构
CREATE TABLE IF NOT EXISTS `role` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  sec-oau.role 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`id`, `name`, `description`) VALUES
	('1', 'GENERAL', '普通权限'),
	('2', 'ADMIN', '管理员权限');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- 导出  表 sec-oau.role_permission 结构
CREATE TABLE IF NOT EXISTS `role_permission` (
  `id` varchar(255) NOT NULL,
  `roleid` varchar(255) DEFAULT NULL,
  `perid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  sec-oau.role_permission 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` (`id`, `roleid`, `perid`) VALUES
	('1', '1', '2'),
	('2', '2', '1'),
	('3', '2', '2');
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;

-- 导出  表 sec-oau.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  sec-oau.user 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `age`, `password`, `sex`, `username`) VALUES
	('1', 18, '$2a$10$b9mt7XuGJg4CXFsfdHoTA.iNVSN5.4dmVr1LEk9V15nBxNWxHjf8a', '男', '13143416909'),
	('2', 17, '$2a$10$b9mt7XuGJg4CXFsfdHoTA.iNVSN5.4dmVr1LEk9V15nBxNWxHjf8a', '女', '13537695063'),
	('3', 19, '$2a$10$b9mt7XuGJg4CXFsfdHoTA.iNVSN5.4dmVr1LEk9V15nBxNWxHjf8a', '男', '13798456312');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- 导出  表 sec-oau.user_role 结构
CREATE TABLE IF NOT EXISTS `user_role` (
  `id` varchar(255) NOT NULL,
  `roleid` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  sec-oau.user_role 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` (`id`, `roleid`, `userid`) VALUES
	('1', '1', '1'),
	('2', '2', '1'),
	('3', '1', '2'),
	('4', '1', '3');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
