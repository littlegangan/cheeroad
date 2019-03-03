-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.53 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.5.0.5284
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 tp_shop 的数据库结构
CREATE DATABASE IF NOT EXISTS `tp_shop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tp_shop`;

-- 导出  表 tp_shop.tp_admin 结构
CREATE TABLE IF NOT EXISTS `tp_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '登录名',
  `password` varchar(50) DEFAULT NULL COMMENT '登录密码',
  `sex` tinyint(3) unsigned DEFAULT NULL COMMENT '性别（0表示女， 1表示男）',
  `tel` varchar(50) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `role` tinyint(3) unsigned DEFAULT NULL COMMENT '角色（0表示普通管理员  1表示超级管理员）',
  `status` tinyint(3) unsigned DEFAULT NULL COMMENT '审核状态（0表示未审核  1表示已审核）',
  `create_time` varchar(50) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `date_time` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- 正在导出表  tp_shop.tp_admin 的数据：55 rows
DELETE FROM `tp_admin`;
/*!40000 ALTER TABLE `tp_admin` DISABLE KEYS */;
INSERT INTO `tp_admin` (`id`, `username`, `password`, `sex`, `tel`, `email`, `role`, `status`, `create_time`, `delete_time`, `date_time`, `date`) VALUES
	(1, 'stella', '698d51a19d8a121ce581499d7b701668', 0, '123', '123@qq.com', 1, 1, NULL, NULL, NULL, NULL),
	(21, 'rewqr', '698d51a19d8a121ce581499d7b701668', 0, '431265437', '5362764376', 0, 1, NULL, NULL, NULL, NULL),
	(4, 'adg', '7f6ffaa6bb0b408017b62254211691b5', 0, '351254', '526547', 0, 0, NULL, NULL, NULL, NULL),
	(15, 'carry', '7f6ffaa6bb0b408017b62254211691b5', 0, '24143413', '54354362', 0, 1, NULL, NULL, NULL, NULL),
	(6, 'abc', '7f6ffaa6bb0b408017b62254211691b5', 1, '3432151436', '54326515', 0, 1, NULL, NULL, NULL, NULL),
	(8, 'ytyey', '7f6ffaa6bb0b408017b62254211691b5', 0, '5436243643', '65462415', 0, 0, NULL, NULL, NULL, NULL),
	(9, '54753', '698d51a19d8a121ce581499d7b701668', 0, '432154165', '654615', 0, 1, NULL, NULL, NULL, NULL),
	(19, 'abc', '698d51a19d8a121ce581499d7b701668', 0, '32541', '54215', 0, 1, NULL, NULL, NULL, NULL),
	(11, '5416424t', '698d51a19d8a121ce581499d7b701668', 0, '23532153', '542155', 0, 0, NULL, NULL, NULL, NULL),
	(12, '43515', '7f6ffaa6bb0b408017b62254211691b5', 1, '352413646', '6547564215', 0, 1, NULL, NULL, NULL, NULL),
	(13, '543256', '698d51a19d8a121ce581499d7b701668', 0, '24215', '54364316', 0, 1, NULL, NULL, NULL, NULL),
	(20, 'freyte', '698d51a19d8a121ce581499d7b701668', 1, '234253', '54364326', 0, 0, NULL, NULL, NULL, NULL),
	(44, '43215325', '698d51a19d8a121ce581499d7b701668', 1, '431`53', '5435145', 0, 1, NULL, NULL, NULL, NULL),
	(22, '3fsdaf', '698d51a19d8a121ce581499d7b701668', 0, '432156', '54765836', 0, 0, NULL, NULL, NULL, NULL),
	(23, 'rewqt', '698d51a19d8a121ce581499d7b701668', 0, '34215436', '6536543757', 0, 1, NULL, NULL, NULL, NULL),
	(24, 'fdasfe', '698d51a19d8a121ce581499d7b701668', 1, '32452154', '635441', 0, 1, NULL, NULL, NULL, NULL),
	(25, 'farg', '698d51a19d8a121ce581499d7b701668', 0, '432154', '32143215', 0, 0, NULL, NULL, NULL, NULL),
	(26, 'fdatfew', '698d51a19d8a121ce581499d7b701668', 0, '43215614376', '432431556', 0, 1, NULL, NULL, NULL, NULL),
	(28, 'dsagfwg', '698d51a19d8a121ce581499d7b701668', 1, '34215435', '54362265', 0, 0, NULL, NULL, NULL, NULL),
	(29, 'fwertrh', '698d51a19d8a121ce581499d7b701668', 1, '32541', '53215361', 0, 1, NULL, NULL, NULL, NULL),
	(30, 'fewqt', '698d51a19d8a121ce581499d7b701668', 1, '43125', '634632', 0, 1, NULL, NULL, NULL, NULL),
	(31, 'klyikhfjgg', '698d51a19d8a121ce581499d7b701668', 0, '24215215', '32654776', 0, 1, NULL, NULL, NULL, NULL),
	(32, 'fdasf', '698d51a19d8a121ce581499d7b701668', 0, '3214541654', '767549879', 0, 0, NULL, NULL, NULL, NULL),
	(83, 'ooo', '888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(84, 'mmm', '888', NULL, NULL, '5555', NULL, NULL, NULL, NULL, NULL, NULL),
	(34, 'fdghre', '698d51a19d8a121ce581499d7b701668', 0, '431435', '5436346', 0, 0, NULL, NULL, NULL, NULL),
	(35, 'fewqt', '698d51a19d8a121ce581499d7b701668', 1, '54315', '542163375', 0, 1, NULL, NULL, NULL, NULL),
	(36, 'dsafw', '698d51a19d8a121ce581499d7b701668', 0, '325165', '5431232', 0, 1, NULL, NULL, NULL, NULL),
	(37, 'fsag', '698d51a19d8a121ce581499d7b701668', 1, '34524', '532154', 0, 1, NULL, NULL, NULL, NULL),
	(38, 'gfsatgr', '698d51a19d8a121ce581499d7b701668', 1, '4325521', '54215436', 0, 1, NULL, NULL, NULL, NULL),
	(39, 'grwetgr', '698d51a19d8a121ce581499d7b701668', 1, '3453125', '5436257', 0, 0, NULL, NULL, NULL, NULL),
	(40, 'fdsagf', '698d51a19d8a121ce581499d7b701668', 1, '43215', '54362', 0, 0, NULL, NULL, NULL, NULL),
	(41, 'rewqt', '698d51a19d8a121ce581499d7b701668', 1, '43215', '6526', 0, 1, NULL, NULL, NULL, NULL),
	(42, 'dfsagr', '698d51a19d8a121ce581499d7b701668', 1, '35216546', '421431543', 0, 1, NULL, NULL, NULL, NULL),
	(87, 'thinkphp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(88, 'thinkphp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(62, 'gfdgf', '698d51a19d8a121ce581499d7b701668', 1, '435255435', '4314314`', 0, 1, NULL, NULL, NULL, NULL),
	(63, 'dsa', '698d51a19d8a121ce581499d7b701668', 1, '352524', '653622567', 0, 1, NULL, NULL, NULL, NULL),
	(48, '666', 'd41d8cd98f00b204e9800998ecf8427e', 1, '8888888', '654373424', 0, 1, NULL, NULL, NULL, NULL),
	(64, 'das', '698d51a19d8a121ce581499d7b701668', 0, '532154165', '643672547', 0, 1, NULL, NULL, NULL, NULL),
	(86, 'thinkphp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(77, 'vvv', '111', NULL, NULL, 'ddd', NULL, NULL, NULL, NULL, NULL, NULL),
	(85, 'hhh', '698d51a19d8a121ce581499d7b701668', 1, '342156', '123@qq.com', 0, 1, NULL, NULL, NULL, NULL),
	(80, 'aaa', '333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(81, 'ooo', '888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(82, 'aaa', '333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(59, 'ete', '698d51a19d8a121ce581499d7b701668', 1, '3453', '56362', 0, 1, NULL, NULL, NULL, NULL),
	(58, 'etet', '698d51a19d8a121ce581499d7b701668', 1, '543551', '54215436', 0, 1, NULL, NULL, NULL, NULL),
	(65, 'lpl', '698d51a19d8a121ce581499d7b701668', 1, '788', '634526', 0, 1, NULL, NULL, NULL, NULL),
	(66, 'adb', '698d51a19d8a121ce581499d7b701668', 1, '123456', '5324315', 0, 1, NULL, 1536638770, NULL, NULL),
	(67, 'lou', '698d51a19d8a121ce581499d7b701668', 0, '35251346', '64354215', 0, 0, NULL, NULL, NULL, NULL),
	(68, 'we', '698d51a19d8a121ce581499d7b701668', 1, '666', '6547354', 0, 1, NULL, NULL, NULL, NULL),
	(90, 'thinkphp', NULL, NULL, NULL, NULL, NULL, NULL, '1536637552', NULL, NULL, NULL),
	(91, 'thinkphp', NULL, NULL, NULL, NULL, NULL, NULL, '1536637621', NULL, NULL, NULL),
	(93, 'rrr', '112', NULL, NULL, '5555', NULL, NULL, NULL, NULL, '1514736000', NULL);
/*!40000 ALTER TABLE `tp_admin` ENABLE KEYS */;

-- 导出  表 tp_shop.tp_auth_group 结构
CREATE TABLE IF NOT EXISTS `tp_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='权限组表（定义每个用户组具有哪些权限规则）';

-- 正在导出表  tp_shop.tp_auth_group 的数据：2 rows
DELETE FROM `tp_auth_group`;
/*!40000 ALTER TABLE `tp_auth_group` DISABLE KEYS */;
INSERT INTO `tp_auth_group` (`id`, `title`, `status`, `rules`) VALUES
	(1, '超级管理员', 1, '4,5,10,11,12,20,6,13,14,15,22,23,24,29,30,31,33,7,16,17,21,8,9,18,19,32,39,40,37,41'),
	(2, '管理员', 1, '4,6,13,14,15,22,7,16,17,21,32,39,40');
/*!40000 ALTER TABLE `tp_auth_group` ENABLE KEYS */;

-- 导出  表 tp_shop.tp_auth_group_access 结构
CREATE TABLE IF NOT EXISTS `tp_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户组表（定义用户所属的用户组）';

-- 正在导出表  tp_shop.tp_auth_group_access 的数据：2 rows
DELETE FROM `tp_auth_group_access`;
/*!40000 ALTER TABLE `tp_auth_group_access` DISABLE KEYS */;
INSERT INTO `tp_auth_group_access` (`uid`, `group_id`) VALUES
	(1, 1),
	(4, 2);
/*!40000 ALTER TABLE `tp_auth_group_access` ENABLE KEYS */;

-- 导出  表 tp_shop.tp_brand 结构
CREATE TABLE IF NOT EXISTS `tp_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) NOT NULL COMMENT '品牌名称',
  `logo` varchar(255) NOT NULL COMMENT '品牌标志',
  `www` varchar(255) NOT NULL COMMENT '链接',
  `is_show` tinyint(4) NOT NULL COMMENT '1展示 2隐藏',
  `sort` smallint(6) NOT NULL COMMENT '排序',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='品牌表';

-- 正在导出表  tp_shop.tp_brand 的数据：2 rows
DELETE FROM `tp_brand`;
/*!40000 ALTER TABLE `tp_brand` DISABLE KEYS */;
INSERT INTO `tp_brand` (`id`, `brand_name`, `logo`, `www`, `is_show`, `sort`, `create_time`) VALUES
	(1, '耐克', 'uploads/brand/20180914\\b6574da20958375535c63892f9f6efa4.jpg', 'www.nike.com', 1, 0, 0),
	(2, '苹果', '', '', 1, 0, 0);
/*!40000 ALTER TABLE `tp_brand` ENABLE KEYS */;

-- 导出  表 tp_shop.tp_cart 结构
CREATE TABLE IF NOT EXISTS `tp_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL COMMENT '会员id',
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `goods_cover` varchar(255) NOT NULL COMMENT '商品封面',
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称',
  `per_price` decimal(10,2) unsigned NOT NULL COMMENT '商品单价',
  `total_price` decimal(10,2) unsigned NOT NULL COMMENT '商品总价格',
  `nums` smallint(5) unsigned NOT NULL COMMENT '购买数量',
  `spec_rule` char(50) NOT NULL COMMENT '规格规则',
  `spec_desc` varchar(50) NOT NULL COMMENT '商品描述',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '购买状态（0 未下单 1 已下单）',
  `create_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- 正在导出表  tp_shop.tp_cart 的数据：11 rows
DELETE FROM `tp_cart`;
/*!40000 ALTER TABLE `tp_cart` DISABLE KEYS */;
INSERT INTO `tp_cart` (`id`, `member_id`, `goods_id`, `goods_cover`, `goods_name`, `per_price`, `total_price`, `nums`, `spec_rule`, `spec_desc`, `status`, `create_time`) VALUES
	(1, 1, 1, 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'iPhone Xr', 6399.00, 51192.00, 8, '2_6_9_13_16', '32GB_珊瑚红_国行版_官方标配_合约版', 1, 0),
	(2, 1, 1, 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'iPhone Xr', 6499.00, 25996.00, 4, '3_6_9_13_16', '64GB_珊瑚红_国行版_官方标配_合约版', 1, 0),
	(3, 1, 1, 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'iPhone Xr', 6299.00, 6299.00, 1, '1_6_9_13_16', '16GB_珊瑚红_国行版_官方标配_合约版', 1, 0),
	(4, 1, 1, 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'iPhone Xr', 6399.00, 6399.00, 1, '2_6_9_13_16', '32GB_珊瑚红_国行版_官方标配_合约版', 1, 0),
	(5, 1, 1, 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'iPhone Xr', 6299.00, 6299.00, 1, '1_6_9_13_16', '16GB_珊瑚红_国行版_官方标配_合约版', 1, 0),
	(6, 1, 1, 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'iPhone Xr', 6299.00, 6299.00, 1, '1_6_9_13_16', '16GB_珊瑚红_国行版_官方标配_合约版', 1, 0),
	(7, 1, 1, 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'iPhone Xr', 6299.00, 6299.00, 1, '1_6_9_13_16', '16GB_珊瑚红_国行版_官方标配_合约版', 1, 0),
	(8, 1, 1, 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'iPhone Xr', 6299.00, 6299.00, 1, '1_6_9_13_16', '16GB_珊瑚红_国行版_官方标配_合约版', 1, 0),
	(9, 1, 1, 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'iPhone Xr', 6499.00, 12998.00, 2, '3_6_9_13_16', '64GB_珊瑚红_国行版_官方标配_合约版', 1, 0),
	(10, 1, 1, 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'iPhone Xr', 6399.00, 19197.00, 3, '2_6_9_13_16', '32GB_珊瑚红_国行版_官方标配_合约版', 1, 0),
	(11, 1, 1, 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'iPhone Xr', 6399.00, 25596.00, 4, '2_6_9_13_16', '32GB_珊瑚红_国行版_官方标配_合约版', 1, 0);
/*!40000 ALTER TABLE `tp_cart` ENABLE KEYS */;

-- 导出  表 tp_shop.tp_category 结构
CREATE TABLE IF NOT EXISTS `tp_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` char(50) NOT NULL COMMENT '商品分类名称',
  `pid` int(10) unsigned NOT NULL COMMENT '父id',
  `parent_path` char(50) NOT NULL COMMENT '分类路径',
  `level` tinyint(3) unsigned NOT NULL COMMENT '等级',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='商品分类表';

-- 正在导出表  tp_shop.tp_category 的数据：12 rows
DELETE FROM `tp_category`;
/*!40000 ALTER TABLE `tp_category` DISABLE KEYS */;
INSERT INTO `tp_category` (`id`, `cate_name`, `pid`, `parent_path`, `level`, `status`, `create_time`) VALUES
	(1, '家电/数码/手机', 0, '1', 1, 1, 0),
	(2, '游戏/动漫/影视', 0, '2', 1, 1, 0),
	(3, '运动/户外/乐器', 0, '3', 1, 1, 0),
	(4, '汽车/二手车/用品', 0, '4', 1, 1, 0),
	(5, '苹果', 1, '1_5', 2, 1, 0),
	(6, 'htc', 1, '1_6', 2, 1, 0),
	(7, '三星', 1, '1_7', 2, 1, 0),
	(9, 'iPhone', 5, '1_5_9', 3, 1, 0),
	(8, '华为', 1, '1_8', 2, 1, 0),
	(11, '古墓丽影', 2, '2_11', 2, 1, 0),
	(12, '秦时明月', 2, '2_12', 2, 1, 0),
	(13, '复仇者联盟', 2, '2_13', 2, 1, 0);
/*!40000 ALTER TABLE `tp_category` ENABLE KEYS */;

-- 导出  表 tp_shop.tp_goods 结构
CREATE TABLE IF NOT EXISTS `tp_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称',
  `goods_cover` varchar(255) NOT NULL COMMENT '商品封面图片',
  `serial_number` varchar(50) NOT NULL COMMENT '商品编号',
  `market_price` decimal(10,2) NOT NULL COMMENT '市场价',
  `our_price` decimal(10,2) NOT NULL COMMENT '本店价',
  `is_new` tinyint(4) NOT NULL COMMENT '是否新品（1是 0否）',
  `is_hot` tinyint(4) NOT NULL COMMENT '是否热销（1是 0否）',
  `is_putaway` tinyint(4) NOT NULL COMMENT '是否上架（1是 0否）',
  `sort` int(11) NOT NULL COMMENT '排序',
  `category_id` int(11) NOT NULL COMMENT '所属分类id',
  `brand_id` int(11) NOT NULL COMMENT '所属品牌id',
  `model_id` int(11) NOT NULL COMMENT '所属商品模型id',
  `goods_details` text NOT NULL COMMENT '商品详情',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- 正在导出表  tp_shop.tp_goods 的数据：16 rows
DELETE FROM `tp_goods`;
/*!40000 ALTER TABLE `tp_goods` DISABLE KEYS */;
INSERT INTO `tp_goods` (`id`, `goods_name`, `goods_cover`, `serial_number`, `market_price`, `our_price`, `is_new`, `is_hot`, `is_putaway`, `sort`, `category_id`, `brand_id`, `model_id`, `goods_details`, `create_time`) VALUES
	(1, 'iPhone Xr', 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'h20180921152356615450', 6499.00, 5999.00, 1, 1, 1, 1, 9, 2, 2, '&lt;p&gt;&lt;br/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180921/1537514576.jpg&quot; title=&quot;1537514576.jpg&quot; alt=&quot;dd259d3a1aa823da.jpg&quot;/&gt;&lt;/p&gt;', 0),
	(2, 'iPhone Xr', 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'h20180921152356615450', 6499.00, 5999.00, 1, 1, 1, 1, 9, 2, 2, '&lt;p&gt;&lt;br/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180921/1537514576.jpg&quot; title=&quot;1537514576.jpg&quot; alt=&quot;dd259d3a1aa823da.jpg&quot;/&gt;&lt;/p&gt;', 0),
	(3, 'iPhone Xr', 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'h20180921152356615450', 6499.00, 5999.00, 1, 1, 1, 1, 9, 2, 2, '&lt;p&gt;&lt;br/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180921/1537514576.jpg&quot; title=&quot;1537514576.jpg&quot; alt=&quot;dd259d3a1aa823da.jpg&quot;/&gt;&lt;/p&gt;', 0),
	(4, 'iPhone Xr', 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'h20180921152356615450', 6499.00, 5999.00, 1, 1, 1, 1, 9, 2, 2, '&lt;p&gt;&lt;br/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180921/1537514576.jpg&quot; title=&quot;1537514576.jpg&quot; alt=&quot;dd259d3a1aa823da.jpg&quot;/&gt;&lt;/p&gt;', 0),
	(5, 'iPhone Xr', 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'h20180921152356615450', 6499.00, 5999.00, 1, 1, 1, 1, 9, 2, 2, '&lt;p&gt;&lt;br/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180921/1537514576.jpg&quot; title=&quot;1537514576.jpg&quot; alt=&quot;dd259d3a1aa823da.jpg&quot;/&gt;&lt;/p&gt;', 0),
	(6, 'iPhone Xr', 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'h20180921152356615450', 6499.00, 5999.00, 1, 1, 1, 1, 9, 2, 2, '&lt;p&gt;&lt;br/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180921/1537514576.jpg&quot; title=&quot;1537514576.jpg&quot; alt=&quot;dd259d3a1aa823da.jpg&quot;/&gt;&lt;/p&gt;', 0),
	(7, 'iPhone Xr', 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'h20180921152356615450', 6499.00, 5999.00, 1, 1, 1, 1, 9, 2, 2, '&lt;p&gt;&lt;br/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180921/1537514576.jpg&quot; title=&quot;1537514576.jpg&quot; alt=&quot;dd259d3a1aa823da.jpg&quot;/&gt;&lt;/p&gt;', 0),
	(8, 'iPhone Xr', 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'h20180921152356615450', 6499.00, 5999.00, 1, 1, 1, 1, 9, 2, 2, '&lt;p&gt;&lt;br/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180921/1537514576.jpg&quot; title=&quot;1537514576.jpg&quot; alt=&quot;dd259d3a1aa823da.jpg&quot;/&gt;&lt;/p&gt;', 0),
	(9, 'iPhone Xr', 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'h20180921152356615450', 6499.00, 5999.00, 1, 1, 1, 1, 9, 2, 2, '&lt;p&gt;&lt;br/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180921/1537514576.jpg&quot; title=&quot;1537514576.jpg&quot; alt=&quot;dd259d3a1aa823da.jpg&quot;/&gt;&lt;/p&gt;', 0),
	(10, 'iPhone Xr', 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'h20180921152356615450', 6499.00, 5999.00, 1, 1, 1, 1, 9, 2, 2, '&lt;p&gt;&lt;br/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180921/1537514576.jpg&quot; title=&quot;1537514576.jpg&quot; alt=&quot;dd259d3a1aa823da.jpg&quot;/&gt;&lt;/p&gt;', 0),
	(11, 'iPhone Xr', 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'h20180921152356615450', 6499.00, 5999.00, 1, 1, 1, 1, 9, 2, 2, '&lt;p&gt;&lt;br/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180921/1537514576.jpg&quot; title=&quot;1537514576.jpg&quot; alt=&quot;dd259d3a1aa823da.jpg&quot;/&gt;&lt;/p&gt;', 0),
	(12, 'iPhone Xr', 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'h20180921152356615450', 6499.00, 5999.00, 1, 1, 1, 1, 9, 2, 2, '&lt;p&gt;&lt;br/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180921/1537514576.jpg&quot; title=&quot;1537514576.jpg&quot; alt=&quot;dd259d3a1aa823da.jpg&quot;/&gt;&lt;/p&gt;', 0),
	(13, 'iPhone Xr', 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'h20180921152356615450', 6499.00, 5999.00, 1, 1, 1, 1, 9, 2, 2, '&lt;p&gt;&lt;br/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180921/1537514576.jpg&quot; title=&quot;1537514576.jpg&quot; alt=&quot;dd259d3a1aa823da.jpg&quot;/&gt;&lt;/p&gt;', 0),
	(14, 'iPhone Xr', 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'h20180921152356615450', 6499.00, 5999.00, 1, 1, 1, 1, 9, 2, 2, '&lt;p&gt;&lt;br/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180921/1537514576.jpg&quot; title=&quot;1537514576.jpg&quot; alt=&quot;dd259d3a1aa823da.jpg&quot;/&gt;&lt;/p&gt;', 0),
	(15, 'iPhone Xr', 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'h20180921152356615450', 6499.00, 5999.00, 1, 1, 1, 1, 9, 2, 2, '&lt;p&gt;&lt;br/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180921/1537514576.jpg&quot; title=&quot;1537514576.jpg&quot; alt=&quot;dd259d3a1aa823da.jpg&quot;/&gt;&lt;/p&gt;', 0),
	(16, 'iPhone Xr', 'uploads/goodscover/20180921\\2c2ac7418144961a428368138c2e8f10.jpg', 'h20180921152356615450', 6499.00, 5999.00, 1, 1, 1, 1, 9, 2, 2, '&lt;p&gt;&lt;br/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180921/1537514576.jpg&quot; title=&quot;1537514576.jpg&quot; alt=&quot;dd259d3a1aa823da.jpg&quot;/&gt;&lt;/p&gt;', 0);
/*!40000 ALTER TABLE `tp_goods` ENABLE KEYS */;

-- 导出  表 tp_shop.tp_goods_image 结构
CREATE TABLE IF NOT EXISTS `tp_goods_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `img_url` varchar(255) NOT NULL COMMENT '商品相册',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='商品相册表';

-- 正在导出表  tp_shop.tp_goods_image 的数据：4 rows
DELETE FROM `tp_goods_image`;
/*!40000 ALTER TABLE `tp_goods_image` DISABLE KEYS */;
INSERT INTO `tp_goods_image` (`id`, `goods_id`, `img_url`, `create_time`) VALUES
	(1, 1, 'uploads/goods/20180921\\e51a03ae20d351ccd9f813f01652aad3.jpg', 0),
	(2, 1, 'uploads/goods/20180921\\fd1b044a67972281cabcc4ae743edd23.jpg', 0),
	(3, 1, 'uploads/goods/20180921\\ab91cffae2943954e623c9e828404040.jpg', 0),
	(4, 1, 'uploads/goods/20180921\\4f0d4b4404e99cfaaab6fa02e69d27f1.jpg', 0);
/*!40000 ALTER TABLE `tp_goods_image` ENABLE KEYS */;

-- 导出  表 tp_shop.tp_goods_model 结构
CREATE TABLE IF NOT EXISTS `tp_goods_model` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model_name` char(50) DEFAULT NULL COMMENT '商品模型名称',
  `is_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1显示 0隐藏',
  `sort` int(11) NOT NULL COMMENT '排序',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='商品模型表';

-- 正在导出表  tp_shop.tp_goods_model 的数据：7 rows
DELETE FROM `tp_goods_model`;
/*!40000 ALTER TABLE `tp_goods_model` DISABLE KEYS */;
INSERT INTO `tp_goods_model` (`id`, `model_name`, `is_show`, `sort`, `create_time`) VALUES
	(1, '笔记本电脑', 1, 0, 0),
	(2, '手机', 1, 1, 0),
	(3, '平板电脑', 1, 2, 0),
	(4, '空调', 1, 3, 0),
	(5, '冰箱', 1, 4, 0),
	(6, '服装', 1, 5, 0),
	(7, '运动装备', 1, 6, 0);
/*!40000 ALTER TABLE `tp_goods_model` ENABLE KEYS */;

-- 导出  表 tp_shop.tp_goods_spec 结构
CREATE TABLE IF NOT EXISTS `tp_goods_spec` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spec_name` char(50) NOT NULL COMMENT '商品规格名称',
  `model_id` int(10) unsigned NOT NULL COMMENT '商品模型id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1显示 0隐藏',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='商品规格表';

-- 正在导出表  tp_shop.tp_goods_spec 的数据：8 rows
DELETE FROM `tp_goods_spec`;
/*!40000 ALTER TABLE `tp_goods_spec` DISABLE KEYS */;
INSERT INTO `tp_goods_spec` (`id`, `spec_name`, `model_id`, `status`, `create_time`) VALUES
	(1, '内存容量', 2, 1, 0),
	(2, '颜色', 2, 1, 0),
	(3, '版本', 2, 1, 0),
	(4, '套餐类型', 2, 1, 0),
	(5, '网络类型', 2, 1, 0),
	(6, '大小', 1, 1, 0),
	(7, '运行内存', 1, 1, 0),
	(8, '硬盘类型', 1, 1, 0);
/*!40000 ALTER TABLE `tp_goods_spec` ENABLE KEYS */;

-- 导出  表 tp_shop.tp_goods_spec_item 结构
CREATE TABLE IF NOT EXISTS `tp_goods_spec_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spec_item_name` char(50) NOT NULL COMMENT '商品规格项名称',
  `spec_id` int(10) unsigned NOT NULL COMMENT '商品规格id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1显示 0隐藏',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='商品规格项表';

-- 正在导出表  tp_shop.tp_goods_spec_item 的数据：25 rows
DELETE FROM `tp_goods_spec_item`;
/*!40000 ALTER TABLE `tp_goods_spec_item` DISABLE KEYS */;
INSERT INTO `tp_goods_spec_item` (`id`, `spec_item_name`, `spec_id`, `status`, `create_time`) VALUES
	(1, '16GB', 1, 1, 0),
	(2, '32GB', 1, 1, 0),
	(3, '64GB', 1, 1, 0),
	(4, '128GB', 1, 1, 0),
	(5, '256GB', 1, 1, 0),
	(6, '珊瑚红', 2, 1, 0),
	(7, '活力橙', 2, 1, 0),
	(8, '深空灰', 2, 1, 0),
	(9, '国行版', 3, 1, 0),
	(10, '港版', 3, 1, 0),
	(11, '日版', 3, 1, 0),
	(12, '美版', 3, 1, 0),
	(13, '官方标配', 4, 1, 0),
	(14, '发烧套餐一', 4, 1, 0),
	(15, '发烧套餐二', 4, 1, 0),
	(16, '合约版', 5, 1, 0),
	(17, '全网通', 5, 1, 0),
	(18, '13.3英寸', 6, 1, 0),
	(19, '14英寸', 6, 1, 0),
	(20, '15.6英寸', 6, 1, 0),
	(21, '4GB', 7, 1, 0),
	(22, '8GB', 7, 1, 0),
	(23, '16GB', 7, 1, 0),
	(24, '128GB SSD + 1TB机械硬盘', 8, 1, 0),
	(25, '256GB SSD', 8, 1, 0);
/*!40000 ALTER TABLE `tp_goods_spec_item` ENABLE KEYS */;

-- 导出  表 tp_shop.tp_goods_spec_price 结构
CREATE TABLE IF NOT EXISTS `tp_goods_spec_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品模型id',
  `spec_rule` varchar(50) NOT NULL COMMENT '商品规格规则',
  `spec_desc` varchar(255) NOT NULL COMMENT '商品规格描述',
  `spec_inventory` varchar(50) NOT NULL COMMENT '商品规格库存',
  `spec_price` decimal(10,2) NOT NULL COMMENT '商品规格价格',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品规格价格表';

-- 正在导出表  tp_shop.tp_goods_spec_price 的数据：3 rows
DELETE FROM `tp_goods_spec_price`;
/*!40000 ALTER TABLE `tp_goods_spec_price` DISABLE KEYS */;
INSERT INTO `tp_goods_spec_price` (`id`, `goods_id`, `spec_rule`, `spec_desc`, `spec_inventory`, `spec_price`, `create_time`) VALUES
	(1, 1, '1_6_9_13_16', '16GB_珊瑚红_国行版_官方标配_合约版', '11', 300.00, 0),
	(2, 1, '2_6_9_13_16', '32GB_珊瑚红_国行版_官方标配_合约版', '22', 400.00, 0),
	(3, 1, '3_6_9_13_16', '64GB_珊瑚红_国行版_官方标配_合约版', '33', 500.00, 0);
/*!40000 ALTER TABLE `tp_goods_spec_price` ENABLE KEYS */;

-- 导出  表 tp_shop.tp_member 结构
CREATE TABLE IF NOT EXISTS `tp_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- 正在导出表  tp_shop.tp_member 的数据：1 rows
DELETE FROM `tp_member`;
/*!40000 ALTER TABLE `tp_member` DISABLE KEYS */;
INSERT INTO `tp_member` (`id`, `username`, `password`, `create_time`) VALUES
	(1, 'haha', '111', NULL);
/*!40000 ALTER TABLE `tp_member` ENABLE KEYS */;

-- 导出  表 tp_shop.tp_nav 结构
CREATE TABLE IF NOT EXISTS `tp_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` char(50) DEFAULT NULL COMMENT 'admin(后台) home(前台) mobile(移动端)',
  `position` tinyint(4) unsigned DEFAULT NULL COMMENT '位置（1头部 2中部 3尾部）',
  `title` char(50) DEFAULT NULL COMMENT '描述',
  `icon` char(50) DEFAULT NULL COMMENT '图标',
  `sort` smallint(6) unsigned DEFAULT NULL COMMENT '排序',
  `url` char(50) DEFAULT NULL COMMENT '链接地址路径',
  `is_show` tinyint(4) DEFAULT NULL COMMENT '1显示 0隐藏',
  `status` tinyint(4) unsigned DEFAULT '1' COMMENT '1启用 0禁用',
  `pid` int(11) unsigned DEFAULT NULL COMMENT '导航层级',
  `condition` varchar(50) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='导航表';

-- 正在导出表  tp_shop.tp_nav 的数据：38 rows
DELETE FROM `tp_nav`;
/*!40000 ALTER TABLE `tp_nav` DISABLE KEYS */;
INSERT INTO `tp_nav` (`id`, `module`, `position`, `title`, `icon`, `sort`, `url`, `is_show`, `status`, `pid`, `condition`, `create_time`) VALUES
	(1, 'admin', NULL, '后台', NULL, NULL, NULL, 0, 0, 0, NULL, '2018-09-04 17:50:39'),
	(2, 'home', NULL, '前台', NULL, NULL, NULL, 0, 0, 0, NULL, '2018-09-04 17:51:34'),
	(3, 'mobile', NULL, '移动端', NULL, NULL, NULL, 0, 0, 0, NULL, '2018-09-04 17:51:58'),
	(4, 'admin', NULL, '系统设置', NULL, NULL, NULL, 1, 0, 1, NULL, '2018-09-04 17:52:48'),
	(5, 'admin', NULL, '管理员设置', NULL, NULL, NULL, 1, 0, 4, NULL, '2018-09-04 17:53:53'),
	(6, 'admin', NULL, '自定义导航', NULL, NULL, NULL, 1, 0, 4, NULL, '2018-09-04 17:54:23'),
	(7, 'admin', NULL, '评论管理', NULL, NULL, NULL, 1, 0, 1, NULL, '2018-09-04 17:55:05'),
	(8, 'admin', NULL, '会员管理', NULL, NULL, NULL, 1, 0, 1, NULL, '2018-09-04 17:55:55'),
	(9, 'admin', NULL, '商品中心', NULL, NULL, NULL, 1, 0, 1, NULL, '2018-09-04 17:56:17'),
	(10, 'admin', NULL, '管理员添加', NULL, NULL, 'admin/admin/add', 0, 1, 5, NULL, '2018-09-04 17:57:15'),
	(11, 'admin', NULL, '管理员删除', NULL, NULL, 'admin/admin/del', 0, 1, 5, NULL, '2018-09-04 17:57:40'),
	(12, 'admin', NULL, '管理员编辑', NULL, NULL, 'admin/admin/edit', 0, 1, 5, NULL, '2018-09-04 17:58:00'),
	(13, 'admin', NULL, '导航添加', NULL, NULL, 'admin/nav/add', 0, 1, 6, NULL, '2018-09-04 17:58:21'),
	(14, 'admin', NULL, '导航编辑', NULL, NULL, 'admin/nav/edit', 0, 1, 6, NULL, '2018-09-04 17:58:36'),
	(15, 'admin', NULL, '导航删除', NULL, NULL, 'admin/nav/del', 0, 1, 6, NULL, '2018-09-04 17:58:53'),
	(16, 'admin', NULL, '显示评论', NULL, NULL, NULL, 0, 1, 7, NULL, '2018-09-04 17:59:20'),
	(17, 'admin', NULL, '隐藏评论', NULL, NULL, NULL, 0, 1, 7, NULL, '2018-09-04 17:59:49'),
	(37, 'admin', NULL, '品牌列表', NULL, NULL, 'admin/brand/lists', 1, 1, 32, NULL, '2018-09-13 16:32:00'),
	(20, 'admin', NULL, '管理员列表', NULL, NULL, 'admin/admin/lists', 1, 1, 5, NULL, '2018-09-05 10:04:45'),
	(21, 'admin', NULL, '删除评论', NULL, NULL, NULL, 0, 1, 7, NULL, '2018-09-05 10:05:08'),
	(22, 'admin', NULL, '导航列表', NULL, NULL, 'admin/nav/lists', 1, 1, 6, NULL, '2018-09-08 10:49:04'),
	(23, 'admin', NULL, '权限管理', NULL, NULL, NULL, 1, 1, 4, NULL, '2018-09-11 16:13:44'),
	(24, 'admin', NULL, '角色列表', NULL, NULL, 'admin/auth_group/lists', 1, 1, 23, NULL, '2018-09-11 16:16:48'),
	(29, 'admin', NULL, '角色添加', NULL, NULL, 'admin/auth_group/add', 0, 1, 23, NULL, '2018-09-11 16:25:19'),
	(30, 'admin', NULL, '角色编辑', NULL, NULL, 'admin/auth_group/edit', 0, 1, 23, NULL, '2018-09-11 16:25:19'),
	(31, 'admin', NULL, '角色删除', NULL, NULL, 'admin/auth_group/del', 0, 1, 23, NULL, '2018-09-11 16:25:19'),
	(32, 'admin', NULL, '商品管理', NULL, NULL, NULL, 1, 1, 9, NULL, '2018-09-13 15:52:03'),
	(33, 'admin', NULL, '商品列表', NULL, NULL, 'admin/goods/lists', 1, 1, 32, NULL, '2018-09-13 15:53:45'),
	(34, 'admin', NULL, '商品添加', NULL, NULL, 'admin/goods/add', 0, 1, 32, NULL, '2018-09-13 16:09:39'),
	(35, 'admin', NULL, '商品编辑', NULL, NULL, 'admin/goods/edit', 0, 1, 32, NULL, '2018-09-13 16:10:17'),
	(36, 'admin', NULL, '商品删除', NULL, NULL, 'admin/goods/del', 0, 1, 32, NULL, '2018-09-13 16:10:43'),
	(39, 'admin', NULL, '商品模型列表', NULL, NULL, 'admin/goods_model/lists', 1, 1, 32, NULL, '2018-09-14 11:18:53'),
	(40, 'admin', NULL, '商品模型规格', NULL, NULL, 'admin/goods_spec/lists', 1, 1, 32, NULL, '2018-09-14 14:08:48'),
	(41, 'admin', NULL, '商品分类列表', NULL, NULL, 'admin/category/lists', 1, 1, 32, NULL, '2018-09-15 11:57:15'),
	(42, 'home', 1, '手机', NULL, NULL, 'home/goods/goodsList', 1, 1, 2, NULL, '2018-09-21 11:08:08'),
	(43, 'home', 1, '平板', NULL, NULL, 'home/goods/lists', 1, 1, 2, NULL, '2018-09-21 11:09:27'),
	(44, 'home', 1, '笔记本电脑', NULL, NULL, 'home/goods/lists', 1, 1, 2, NULL, '2018-09-21 11:10:57'),
	(45, 'home', 1, '数码', NULL, NULL, 'home/goods/lists', 1, 1, 2, NULL, '2018-09-21 11:12:55');
/*!40000 ALTER TABLE `tp_nav` ENABLE KEYS */;

-- 导出  表 tp_shop.tp_order 结构
CREATE TABLE IF NOT EXISTS `tp_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL COMMENT '会员id',
  `order_sn` varchar(255) NOT NULL COMMENT '订单编号',
  `order_status` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '订单状态（0取消 1正常）',
  `pay_status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '付款状态（0未付款 1已付款）',
  `order_details` text NOT NULL COMMENT '订单详情',
  `send_status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '发货状态（0未发货 1已发货 2派送中 3已送达）',
  `order_amount` decimal(10,2) unsigned NOT NULL COMMENT '订单总额',
  `receiver` char(50) NOT NULL COMMENT '收货人',
  `receiver_tel` char(50) NOT NULL COMMENT '收货人电话',
  `receiver_address` varchar(255) NOT NULL COMMENT '收货人地址',
  `create_time` int(10) unsigned NOT NULL COMMENT '下单时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- 正在导出表  tp_shop.tp_order 的数据：33 rows
DELETE FROM `tp_order`;
/*!40000 ALTER TABLE `tp_order` DISABLE KEYS */;
INSERT INTO `tp_order` (`id`, `member_id`, `order_sn`, `order_status`, `pay_status`, `order_details`, `send_status`, `order_amount`, `receiver`, `receiver_tel`, `receiver_address`, `create_time`) VALUES
	(1, 1, '20180926181240521687', 1, 0, '[{"id":2,"member_id":1,"goods_id":1,"goods_cover":"uploads\\/goodscover\\/20180921\\\\2c2ac7418144961a428368138c2e8f10.jpg","goods_name":"iPhone Xr","per_price":"6499.00","total_price":"25996.00","nums":4,"spec_rule":"3_6_9_13_16","spec_desc":"64GB_\\u73ca\\u745a\\u7ea2_\\u56fd\\u884c\\u7248_\\u5b98\\u65b9\\u6807\\u914d_\\u5408\\u7ea6\\u7248","status":0,"create_time":0}]', 0, 25996.00, '', '', '', 0),
	(2, 1, '20181004171243975671', 1, 0, '[{"id":4,"member_id":1,"goods_id":1,"goods_cover":"uploads\\/goodscover\\/20180921\\\\2c2ac7418144961a428368138c2e8f10.jpg","goods_name":"iPhone Xr","per_price":"6399.00","total_price":"6399.00","nums":1,"spec_rule":"2_6_9_13_16","spec_desc":"32GB_\\u73ca\\u745a\\u7ea2_\\u56fd\\u884c\\u7248_\\u5b98\\u65b9\\u6807\\u914d_\\u5408\\u7ea6\\u7248","status":0,"create_time":0}]', 0, 6399.00, '', '', '', 0),
	(3, 1, '20181004180609426823', 1, 0, '[{"id":5,"member_id":1,"goods_id":1,"goods_cover":"uploads\\/goodscover\\/20180921\\\\2c2ac7418144961a428368138c2e8f10.jpg","goods_name":"iPhone Xr","per_price":"6299.00","total_price":"6299.00","nums":1,"spec_rule":"1_6_9_13_16","spec_desc":"16GB_\\u73ca\\u745a\\u7ea2_\\u56fd\\u884c\\u7248_\\u5b98\\u65b9\\u6807\\u914d_\\u5408\\u7ea6\\u7248","status":0,"create_time":0}]', 0, 6299.00, '', '', '', 0),
	(4, 1, '20181004181809216727', 1, 0, '[{"id":6,"member_id":1,"goods_id":1,"goods_cover":"uploads\\/goodscover\\/20180921\\\\2c2ac7418144961a428368138c2e8f10.jpg","goods_name":"iPhone Xr","per_price":"6299.00","total_price":"6299.00","nums":1,"spec_rule":"1_6_9_13_16","spec_desc":"16GB_\\u73ca\\u745a\\u7ea2_\\u56fd\\u884c\\u7248_\\u5b98\\u65b9\\u6807\\u914d_\\u5408\\u7ea6\\u7248","status":0,"create_time":0}]', 0, 6299.00, '', '', '', 0),
	(5, 1, '20181004181949686128', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(6, 1, '20181004182652430557', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(7, 1, '20181004183154517982', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(8, 1, '20181004183213186161', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(9, 1, '20181004183245332407', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(10, 1, '20181004183422269936', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(11, 1, '20181005091958929438', 1, 0, '[{"id":7,"member_id":1,"goods_id":1,"goods_cover":"uploads\\/goodscover\\/20180921\\\\2c2ac7418144961a428368138c2e8f10.jpg","goods_name":"iPhone Xr","per_price":"6299.00","total_price":"6299.00","nums":1,"spec_rule":"1_6_9_13_16","spec_desc":"16GB_\\u73ca\\u745a\\u7ea2_\\u56fd\\u884c\\u7248_\\u5b98\\u65b9\\u6807\\u914d_\\u5408\\u7ea6\\u7248","status":0,"create_time":0}]', 0, 6299.00, '', '', '', 0),
	(12, 1, '20181005092034125598', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(13, 1, '20181005092337202469', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(14, 1, '20181005092354520694', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(15, 1, '20181005092448300229', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(16, 1, '20181005092542671708', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(17, 1, '20181005093517810487', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(18, 1, '20181005095649458932', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(19, 1, '20181005095819441415', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(20, 1, '20181005100523868878', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(21, 1, '20181005100654151153', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(22, 1, '20181005100920449548', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(23, 1, '20181005101754743958', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(24, 1, '20181005101935276421', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(25, 1, '20181005102012293541', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(26, 1, '20181005102237304388', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(27, 1, '20181005102310261268', 1, 0, '[]', 0, 6299.00, '', '', '', 0),
	(28, 1, '20181005104412408955', 1, 0, '[{"id":8,"member_id":1,"goods_id":1,"goods_cover":"uploads\\/goodscover\\/20180921\\\\2c2ac7418144961a428368138c2e8f10.jpg","goods_name":"iPhone Xr","per_price":"6299.00","total_price":"6299.00","nums":1,"spec_rule":"1_6_9_13_16","spec_desc":"16GB_\\u73ca\\u745a\\u7ea2_\\u56fd\\u884c\\u7248_\\u5b98\\u65b9\\u6807\\u914d_\\u5408\\u7ea6\\u7248","status":0,"create_time":0}]', 0, 6299.00, '', '', '', 0),
	(29, 1, '20181005105028248516', 1, 0, '[{"id":9,"member_id":1,"goods_id":1,"goods_cover":"uploads\\/goodscover\\/20180921\\\\2c2ac7418144961a428368138c2e8f10.jpg","goods_name":"iPhone Xr","per_price":"6499.00","total_price":"12998.00","nums":2,"spec_rule":"3_6_9_13_16","spec_desc":"64GB_\\u73ca\\u745a\\u7ea2_\\u56fd\\u884c\\u7248_\\u5b98\\u65b9\\u6807\\u914d_\\u5408\\u7ea6\\u7248","status":0,"create_time":0}]', 0, 12998.00, '', '', '', 0),
	(30, 1, '20181005105645618057', 1, 0, '[]', 0, 12998.00, '', '', '', 0),
	(31, 1, '20181005105752176861', 1, 0, '[]', 0, 12998.00, '', '', '', 0),
	(32, 1, '20181005110139278571', 1, 0, '[{"id":10,"member_id":1,"goods_id":1,"goods_cover":"uploads\\/goodscover\\/20180921\\\\2c2ac7418144961a428368138c2e8f10.jpg","goods_name":"iPhone Xr","per_price":"6399.00","total_price":"19197.00","nums":3,"spec_rule":"2_6_9_13_16","spec_desc":"32GB_\\u73ca\\u745a\\u7ea2_\\u56fd\\u884c\\u7248_\\u5b98\\u65b9\\u6807\\u914d_\\u5408\\u7ea6\\u7248","status":0,"create_time":0}]', 0, 19197.00, '', '', '', 0),
	(33, 1, '20181005110318781660', 1, 0, '[{"id":11,"member_id":1,"goods_id":1,"goods_cover":"uploads\\/goodscover\\/20180921\\\\2c2ac7418144961a428368138c2e8f10.jpg","goods_name":"iPhone Xr","per_price":"6399.00","total_price":"25596.00","nums":4,"spec_rule":"2_6_9_13_16","spec_desc":"32GB_\\u73ca\\u745a\\u7ea2_\\u56fd\\u884c\\u7248_\\u5b98\\u65b9\\u6807\\u914d_\\u5408\\u7ea6\\u7248","status":0,"create_time":0}]', 0, 25596.00, '', '', '', 0);
/*!40000 ALTER TABLE `tp_order` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
