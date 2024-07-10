/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t155`;
CREATE DATABASE IF NOT EXISTS `t155` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t155`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/xiangqinwangzhan/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/xiangqinwangzhan/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/xiangqinwangzhan/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-02-21 11:53:48'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-02-21 11:53:48'),
	(3, 'zhiwei_types', '职位', 1, '职位1', NULL, NULL, '2022-02-21 11:53:48'),
	(4, 'zhiwei_types', '职位', 2, '职位2', NULL, NULL, '2022-02-21 11:53:48'),
	(5, 'zhiwei_types', '职位', 3, '职位3', NULL, NULL, '2022-02-21 11:53:48'),
	(6, 'bumen_types', '部门', 1, '部门1', NULL, NULL, '2022-02-21 11:53:48'),
	(7, 'bumen_types', '部门', 2, '部门2', NULL, NULL, '2022-02-21 11:53:48'),
	(8, 'bumen_types', '部门', 3, '部门3', NULL, NULL, '2022-02-21 11:53:49'),
	(9, 'bumen_types', '部门', 4, '部门4', NULL, NULL, '2022-02-21 11:53:49'),
	(10, 'bumen_types', '部门', 5, '部门5', NULL, NULL, '2022-02-21 11:53:49'),
	(11, 'bumen_types', '部门', 6, '部门6', NULL, NULL, '2022-02-21 11:53:49'),
	(12, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-02-21 11:53:49'),
	(13, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-02-21 11:53:49'),
	(14, 'zuzhipingjia_types', '评价类型', 1, '正面评价', NULL, NULL, '2022-02-21 11:53:49'),
	(15, 'zuzhipingjia_types', '评价类型', 2, '负面评价', NULL, NULL, '2022-02-21 11:53:49'),
	(16, 'xinfangjubao_types', '信访举报类型', 1, '信访1', NULL, NULL, '2022-02-21 11:53:49'),
	(17, 'xinfangjubao_types', '信访举报类型', 2, '信访2', NULL, NULL, '2022-02-21 11:53:49'),
	(18, 'xinfangjubao_types', '信访举报类型', 3, '举报1', NULL, NULL, '2022-02-21 11:53:49'),
	(19, 'xinfangjubao_types', '信访举报类型', 4, '举报2', NULL, NULL, '2022-02-21 11:53:49'),
	(20, 'xinfangjubao_types', '信访举报类型', 5, '举报3', NULL, NULL, '2022-02-21 11:53:49'),
	(21, 'zhiwei_types', '职位', 4, '职位4', NULL, '', '2022-02-21 12:51:18');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/banganbuguanli/upload/touxiang1.jpg', 1, '2022-02-21 11:54:35', '公告详情1', '2022-02-21 11:54:35'),
	(2, '公告名称2', 'http://localhost:8080/banganbuguanli/upload/touxiang1.jpg', 1, '2022-02-21 11:54:35', '公告详情2', '2022-02-21 11:54:35'),
	(3, '公告名称3', 'http://localhost:8080/banganbuguanli/upload/touxiang1.jpg', 2, '2022-02-21 11:54:35', '公告详情3', '2022-02-21 11:54:35'),
	(4, '公告名称4', 'http://localhost:8080/banganbuguanli/upload/touxiang1.jpg', 1, '2022-02-21 11:54:35', '公告详情4', '2022-02-21 11:54:35'),
	(5, '公告名称5', 'http://localhost:8080/banganbuguanli/upload/touxiang1.jpg', 2, '2022-02-21 11:54:35', '公告详情5', '2022-02-21 11:54:35'),
	(6, '公告名称6', 'http://localhost:8080/banganbuguanli/upload/touxiang1.jpg', 2, '2022-02-21 11:54:35', '公告详情6', '2022-02-21 11:54:35'),
	(7, '公告名称7', 'http://localhost:8080/banganbuguanli/upload/touxiang1.jpg', 1, '2022-02-21 11:54:35', '公告详情7', '2022-02-21 11:54:35'),
	(8, '公告名称8', 'http://localhost:8080/banganbuguanli/upload/touxiang1.jpg', 2, '2022-02-21 11:54:35', '公告详情8', '2022-02-21 11:54:35'),
	(9, '公告名称9', 'http://localhost:8080/banganbuguanli/upload/touxiang1.jpg', 1, '2022-02-21 11:54:35', '公告详情9', '2022-02-21 11:54:35'),
	(10, '公告名称10', 'http://localhost:8080/banganbuguanli/upload/touxiang1.jpg', 1, '2022-02-21 11:54:35', '公告详情10', '2022-02-21 11:54:35'),
	(11, '公告名称11', 'http://localhost:8080/banganbuguanli/upload/touxiang1.jpg', 2, '2022-02-21 11:54:35', '公告详情11', '2022-02-21 11:54:35');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xueshengganbu_id` int DEFAULT NULL COMMENT '学生干部',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='留言';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `xueshengganbu_id`, `liuyan_name`, `liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 2, '留言标题1', '留言内容1', '回复信息1', '2022-02-21 11:54:35', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(2, 3, '留言标题2', '留言内容2', '回复信息2', '2022-02-21 11:54:35', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(3, 1, '留言标题3', '留言内容3', '回复信息3', '2022-02-21 11:54:35', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(4, 1, '留言标题4', '留言内容4', '回复信息4', '2022-02-21 11:54:35', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(5, 2, '留言标题5', '留言内容5', '回复信息5', '2022-02-21 11:54:35', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(6, 2, '留言标题6', '留言内容6', '回复信息6', '2022-02-21 11:54:35', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(7, 3, '留言标题7', '留言内容7', '回复信息7', '2022-02-21 11:54:35', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(8, 3, '留言标题8', '留言内容8', '回复信息8', '2022-02-21 11:54:35', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(9, 3, '留言标题9', '留言内容9', '回复信息9', '2022-02-21 11:54:35', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(10, 2, '留言标题10', '留言内容10', '回复信息10', '2022-02-21 11:54:35', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(11, 1, '留言标题11', '留言内容11', '回复信息11', '2022-02-21 11:54:35', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(12, 1, '标题1', '内容1', '', '2022-02-21 12:59:37', NULL, '2022-02-21 12:59:37');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'b25ydktu8eramzn1hes5kak1k0vi4vs2', '2022-02-21 12:17:00', '2024-04-27 14:58:21'),
	(2, 1, 'a1', 'xueshengganbu', '学生干部', '6w3ixsjj3wzkh43c44lviosxb53vg0yh', '2022-02-21 12:50:23', '2024-04-27 14:59:30');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2021-04-27 06:51:13');

DROP TABLE IF EXISTS `xinfangjubao`;
CREATE TABLE IF NOT EXISTS `xinfangjubao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xueshengganbu_id` int DEFAULT NULL COMMENT '学生干部',
  `xinfangjubao_name` varchar(200) DEFAULT NULL COMMENT '信访举报标题 Search111 ',
  `xinfangjubao_types` int NOT NULL COMMENT '信访举报类型 Search111 ',
  `xinfangjubao_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `xinfangjubao_content` text COMMENT '信访举报内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='信访举报';

DELETE FROM `xinfangjubao`;
INSERT INTO `xinfangjubao` (`id`, `xueshengganbu_id`, `xinfangjubao_name`, `xinfangjubao_types`, `xinfangjubao_file`, `xinfangjubao_content`, `insert_time`, `create_time`) VALUES
	(1, 3, '信访举报标题1', 5, 'http://localhost:8080/banganbuguanli/upload/file.rar', '信访举报内容1', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(2, 2, '信访举报标题2', 1, 'http://localhost:8080/banganbuguanli/upload/file.rar', '信访举报内容2', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(3, 3, '信访举报标题3', 5, 'http://localhost:8080/banganbuguanli/upload/file.rar', '信访举报内容3', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(4, 2, '信访举报标题4', 5, 'http://localhost:8080/banganbuguanli/upload/file.rar', '信访举报内容4', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(5, 3, '信访举报标题5', 5, 'http://localhost:8080/banganbuguanli/upload/file.rar', '信访举报内容5', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(6, 1, '信访举报标题6', 1, 'http://localhost:8080/banganbuguanli/upload/file.rar', '信访举报内容6', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(7, 3, '信访举报标题7', 2, 'http://localhost:8080/banganbuguanli/upload/file.rar', '信访举报内容7', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(8, 3, '信访举报标题8', 4, 'http://localhost:8080/banganbuguanli/upload/file.rar', '信访举报内容8', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(9, 1, '信访举报标题9', 4, 'http://localhost:8080/banganbuguanli/upload/file.rar', '信访举报内容9', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(10, 3, '信访举报标题10', 3, 'http://localhost:8080/banganbuguanli/upload/file.rar', '信访举报内容10', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(11, 3, '信访举报标题11', 1, 'http://localhost:8080/banganbuguanli/upload/file.rar', '信访举报内容11', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(12, 2, '信访标题999', 4, 'http://localhost:8080/banganbuguanli/upload/1645447911217.rar', '<p>信访举办内容999</p>', '2022-02-21 12:52:07', '2022-02-21 12:52:07');

DROP TABLE IF EXISTS `xueshengganbu`;
CREATE TABLE IF NOT EXISTS `xueshengganbu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xueshengganbu_name` varchar(200) DEFAULT NULL COMMENT '学生干部姓名 Search111 ',
  `xueshengganbu_phone` varchar(200) DEFAULT NULL COMMENT '学生干部手机号',
  `xueshengganbu_id_number` varchar(200) DEFAULT NULL COMMENT '学生干部身份证号',
  `xueshengganbu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueshengganbu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `bumen_types` int DEFAULT NULL COMMENT '部门  Search111',
  `zhiwei_types` int DEFAULT NULL COMMENT '职位  Search111',
  `kaohe` int DEFAULT NULL COMMENT '考核',
  `jijian` int DEFAULT NULL COMMENT '纪检',
  `xinfang` int DEFAULT NULL COMMENT '信访',
  `lvli` int DEFAULT NULL COMMENT '履历',
  `shenji` int DEFAULT NULL COMMENT '审计',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='学生干部';

DELETE FROM `xueshengganbu`;
INSERT INTO `xueshengganbu` (`id`, `username`, `password`, `xueshengganbu_name`, `xueshengganbu_phone`, `xueshengganbu_id_number`, `xueshengganbu_photo`, `xueshengganbu_email`, `sex_types`, `bumen_types`, `zhiwei_types`, `kaohe`, `jijian`, `xinfang`, `lvli`, `shenji`, `insert_time`, `create_time`) VALUES
	(1, '学生干部1', '123456', '学生干部姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/banganbuguanli/upload/touxiang1.jpg', '1@qq.com', 2, 4, 1, 39, 82, 419, 284, 100, '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(2, '学生干部2', '123456', '学生干部姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/banganbuguanli/upload/touxiang2.jpg', '2@qq.com', 2, 2, 3, 461, 242, 311, 61, 238, '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(3, '学生干部3', '123456', '学生干部姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/banganbuguanli/upload/touxiang3.jpg', '3@qq.com', 1, 2, 1, 48, 49, 299, 453, 216, '2022-02-21 12:51:34', '2022-02-21 11:54:35');

DROP TABLE IF EXISTS `zuzhipingjia`;
CREATE TABLE IF NOT EXISTS `zuzhipingjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xueshengganbu_id` int DEFAULT NULL COMMENT '学生干部',
  `zuzhipingjia_name` varchar(200) DEFAULT NULL COMMENT '评价标题  Search111 ',
  `zuzhipingjia_types` int NOT NULL COMMENT '评价类型 Search111 ',
  `zuzhipingjia_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `zuzhipingjia_content` text COMMENT '评价内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='组织评价';

DELETE FROM `zuzhipingjia`;
INSERT INTO `zuzhipingjia` (`id`, `xueshengganbu_id`, `zuzhipingjia_name`, `zuzhipingjia_types`, `zuzhipingjia_file`, `zuzhipingjia_content`, `insert_time`, `create_time`) VALUES
	(1, 3, '评价标题1', 1, 'http://localhost:8080/banganbuguanli/upload/file.rar', '评价内容1', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(2, 1, '评价标题2', 2, 'http://localhost:8080/banganbuguanli/upload/file.rar', '评价内容2', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(3, 2, '评价标题3', 1, 'http://localhost:8080/banganbuguanli/upload/file.rar', '评价内容3', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(4, 2, '评价标题4', 1, 'http://localhost:8080/banganbuguanli/upload/file.rar', '评价内容4', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(5, 1, '评价标题5', 2, 'http://localhost:8080/banganbuguanli/upload/file.rar', '评价内容5', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(6, 1, '评价标题6', 1, 'http://localhost:8080/banganbuguanli/upload/file.rar', '评价内容6', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(7, 1, '评价标题7', 2, 'http://localhost:8080/banganbuguanli/upload/file.rar', '评价内容7', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(8, 2, '评价标题8', 2, 'http://localhost:8080/banganbuguanli/upload/file.rar', '评价内容8', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(9, 3, '评价标题9', 2, 'http://localhost:8080/banganbuguanli/upload/file.rar', '评价内容9', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(10, 2, '评价标题10', 2, 'http://localhost:8080/banganbuguanli/upload/file.rar', '评价内容10', '2022-02-21 11:54:35', '2022-02-21 11:54:35'),
	(11, 3, '评价标题11', 1, 'http://localhost:8080/banganbuguanli/upload/file.rar', '评价内容11', '2022-02-21 11:54:35', '2022-02-21 11:54:35');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
