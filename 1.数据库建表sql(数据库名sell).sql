/*
Navicat MySQL Data Transfer

Source Server         : con
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : sell

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-06-04 18:38:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `imgUrl` text,
  `goodsDesc` text,
  `rating` int(11) DEFAULT NULL,
  `ratings` text,
  `sellCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('64', '2020-05-25 17:30:05', '鱼香肉丝盖饭', '新品专享', '20.00', '1590399003384.webp', '鱼香肉丝+香喷喷米饭+搭配素菜\n主要原料：猪肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '2');
INSERT INTO `goods` VALUES ('65', '2020-05-25 17:32:06', '梅菜扣肉盖饭', '新品专享', '25.88', '1590399125472.webp', '梅菜扣肉1份+肉酱蒸蛋+可乐\n主要原料：五花肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '77');
INSERT INTO `goods` VALUES ('66', '2020-05-25 17:33:22', '铁板河粉套餐', '新品专享', '12.99', '1590399200211.webp', '梅菜扣肉1份+肉酱蒸蛋+可乐\n主要原料：五花肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '290');
INSERT INTO `goods` VALUES ('67', '2020-05-25 17:34:13', '毛豆鸡腿肉盖饭', '新品专享', '19.90', '1590399253090.webp', '毛豆鸡腿肉+米饭+时蔬+汤品\n主要原料：毛豆', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '45');
INSERT INTO `goods` VALUES ('68', '2020-05-25 17:35:02', '梅菜扣肉盖饭+蒸蛋+可乐', '新品专享', '20.88', '1590399301223.webp', '梅菜扣肉+搭配时蔬+米饭+蒸蛋+可乐\n主要原料：猪肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '285');
INSERT INTO `goods` VALUES ('69', '2020-05-25 17:37:36', '毛豆鸡腿肉盖饭', '热销榜', '19.90', '1590399449563.webp', '毛豆鸡腿肉+米饭+时蔬+汤品\n主要原料：毛豆', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '108');
INSERT INTO `goods` VALUES ('70', '2020-05-25 17:38:25', '肉沫茄子盖饭', '热销榜', '15.88', '1590399491483.webp', '肉沫茄子+搭配时蔬+米饭+番茄浓汤\n主要原料：紫皮茄子,猪肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '46');
INSERT INTO `goods` VALUES ('71', '2020-05-25 17:39:36', '台式卤肉双拼套餐', '热销榜', '20.88', '1590399571528.webp', '秘制卤肉搭配新鲜菌菇，碰撞出不一样的风味专属\n主要原料：猪肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '247');
INSERT INTO `goods` VALUES ('72', '2020-05-25 17:40:26', '爱心鸡排套餐', '热销榜', '22.88', '1590399625457.webp', '脆香多汁的大鸡排高温炸制后独显特殊风味，配上独有酱汁，吮指有味\n主要原料：鸡肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '131');
INSERT INTO `goods` VALUES ('73', '2020-05-25 17:41:44', '营养肉燥蒸蛋', '热销榜', '1.88', '1590399703764.webp', '鲜，嫩，爽，滑演绎出完美的艺术美食\n主要原料：鸡蛋', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '287');
INSERT INTO `goods` VALUES ('74', '2020-05-25 17:42:34', '培根炒饭+功夫腿排一枚（赠牛肉酱）', '热销榜', '22.88', '1590399751409.webp', '炒饭随心搭配一种小吃，零食偶尔多吃一口不会变胖，自信的你最棒\n主要原料：大米,培根,鸡蛋', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '63');
INSERT INTO `goods` VALUES ('75', '2020-05-25 17:43:29', '秘制卤肉盖饭', '热销榜', '18.88', '1590399808338.webp', '乡村基招牌卤肉，来自文火慢炖，精心熬制12小时，软糯可口。\n主要原料：香菇', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '212');
INSERT INTO `goods` VALUES ('76', '2020-05-25 17:44:34', '红珠泡椒牛肉丝双拼套餐', '热销榜', '22.88', '1590399873296.webp', '优质牛肉，传统技艺，大火爆炒，这泡椒味，纯正地道！\n主要原料：西芹,牛肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '124');
INSERT INTO `goods` VALUES ('77', '2020-05-25 17:45:24', '香爆春笋炒肉饭', '热销榜', '18.88', '1590399918188.webp', '香爆春笋+香喷喷米饭+搭配素菜\n主要原料：猪肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '86');
INSERT INTO `goods` VALUES ('78', '2020-05-25 18:20:30', '椒香脆笋鸡丁饭', '热销榜', '15.88', '1590402029046.webp', '椒香鸡丁+香喷喷米饭+时蔬+番茄浓汤\n主要原料：鸡肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '171');
INSERT INTO `goods` VALUES ('79', '2020-05-25 18:21:51', '营养肉燥蒸蛋', '收藏门店超值专享', '1.88', '1590402109863.webp', '鲜，嫩，爽，滑演绎出完美的艺术美食\n主要原料：鸡蛋', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '111');
INSERT INTO `goods` VALUES ('81', '2020-05-25 19:12:08', '点亮★关注门店超值GO', '收藏门店超值专享', '0.10', '1590405126634.webp', '甜味\n主要原料：冰沙粉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '7');
INSERT INTO `goods` VALUES ('82', '2020-05-25 19:12:56', '营养清蒸南瓜', '收藏门店超值专享', '1.88', '1590405175328.webp', '主要原料：南瓜', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '44');
INSERT INTO `goods` VALUES ('83', '2020-05-25 19:14:18', 'MINI进口果味饮', '收藏门店超值专享', '0.48', '1590405257709.webp', '马来西亚飘洋过海来喂饱你的进口饮品\n主要原料：橙汁', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '169');
INSERT INTO `goods` VALUES ('84', '2020-05-25 19:15:43', '深V橙汁', '收藏门店超值专享', '1.99', '1590405342558.webp', '瓶装，夏日冰镇饮品，更尽兴！\n主要原料：橙汁', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '54');
INSERT INTO `goods` VALUES ('85', '2020-05-25 19:16:57', '鲁西牛肉酱', '收藏门店超值专享', '3.00', '1590405416132.webp', '米饭的灵魂伴侣\n主要原料：牛肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '3');
INSERT INTO `goods` VALUES ('86', '2020-05-25 19:18:11', '原味蒸蛋', '收藏门店超值专享', '5.00', '1590405480076.webp', '美味养颜暖肠胃\n主要原料：鸡蛋,水', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '294');
INSERT INTO `goods` VALUES ('87', '2020-05-25 19:19:38', '周四品牌日12.88鲜炒小煎鸡盖饭含赠品', '鲜炒盖饭', '16.88', '1590405577636.webp', '鲜椒小煎鸡+搭配时蔬+米饭+番茄浓汤\n主要原料：辣椒,鸡肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '170');
INSERT INTO `goods` VALUES ('88', '2020-05-25 19:20:19', '椒香脆笋鸡丁饭', '鲜炒盖饭', '15.88', '1590405618685.webp', '椒香鸡丁+香喷喷米饭+时蔬+番茄浓汤\n主要原料：鸡肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '246');
INSERT INTO `goods` VALUES ('89', '2020-05-25 19:23:41', '秘制卤肉盖饭', '鲜炒盖饭', '18.88', '1590405820967.webp', '乡村基招牌卤肉，来自文火慢炖，精心熬制12小时，软糯可口。\n主要原料：香菇', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '15');
INSERT INTO `goods` VALUES ('90', '2020-05-25 19:24:40', '肉沫茄子盖饭', '鲜炒盖饭', '15.88', '1590405879692.webp', '肉沫茄子+搭配时蔬+米饭+番茄浓汤\n主要原料：紫皮茄子,猪肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '285');
INSERT INTO `goods` VALUES ('91', '2020-05-25 19:28:12', '香爆春笋炒肉饭', '鲜炒盖饭', '18.88', '1590406091434.webp', '香爆春笋+香喷喷米饭+搭配素菜\n主要原料：猪肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '118');
INSERT INTO `goods` VALUES ('92', '2020-05-25 19:29:34', '香爆春笋+香喷喷米饭+搭配素菜 主要原料：猪肉', '鲜炒盖饭', '22.00', '1590406169645.webp', '姜爆鸭丝（酸辣味）+米饭+赠烤肠一根+例汤/饮品任意一款（随机配）\n主要原料：鸭肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '69');
INSERT INTO `goods` VALUES ('93', '2020-05-25 19:31:47', '青椒肉丝炒饭', '炒饭系列', '12.99', '1590406305750.webp', '主要原料：大米', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '124');
INSERT INTO `goods` VALUES ('94', '2020-05-25 19:32:25', '培根炒饭+功夫腿排一枚（赠牛肉酱）', '炒饭系列', '22.88', '1590406344394.webp', '炒饭随心搭配一种小吃，零食偶尔多吃一口不会变胖，自信的你最棒\n主要原料：大米,培根,鸡蛋', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '161');
INSERT INTO `goods` VALUES ('95', '2020-05-25 19:33:07', '培根蛋炒饭（配牛肉酱）【无饮料】', '炒饭系列', '14.70', '1590406381000.webp', '慢慢的炒饭，能让小主直接饱餐一顿\n主要原料：米饭,鸡蛋', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '73');
INSERT INTO `goods` VALUES ('96', '2020-05-25 19:35:08', ' 小炒肉双拼套餐', '千万销量', '20.88', '1590406506935.webp', '农家小炒肉+配荤菜+时蔬+例汤或饮品+米饭\n主要原料：猪肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '201');
INSERT INTO `goods` VALUES ('97', '2020-05-25 19:36:09', '功夫腿排套餐', '千万销量', '23.88', '1590406568499.webp', '香脆口感\n主要原料：鸡肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '52');
INSERT INTO `goods` VALUES ('98', '2020-05-25 19:37:44', '红珠泡椒牛肉丝双拼套餐', '千万销量', '22.88', '1590406663408.webp', '优质牛肉，传统技艺，大火爆炒，这泡椒味，纯正地道！\n主要原料：西芹,牛肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '229');
INSERT INTO `goods` VALUES ('99', '2020-05-25 19:38:24', '爱心鸡排套餐', '千万销量', '22.88', '1590406703970.webp', '脆香多汁的大鸡排高温炸制后独显特殊风味，配上独有酱汁，吮指有味\n主要原料：鸡肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '47');
INSERT INTO `goods` VALUES ('100', '2020-05-25 19:39:22', '台式卤肉双拼套餐', '千万销量', '20.88', '1590406761780.webp', '秘制卤肉搭配新鲜菌菇，碰撞出不一样的风味专属\n主要原料：猪肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '165');
INSERT INTO `goods` VALUES ('101', '2020-05-25 19:40:06', '花椒鸡排套餐', '千万销量', '23.88', '1590406792060.webp', '花椒鸡排+搭配荤菜+时蔬+米饭+瓶装小可乐\n主要原料：鸡排', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '134');
INSERT INTO `goods` VALUES ('102', '2020-05-25 20:02:21', '红珠泡椒牛肉双拼+原味蒸蛋', '营养适配', '23.88', '1590408140609.webp', '红珠泡椒牛肉+搭配荤菜+香喷喷米饭+原味蒸蛋+搭配蔬菜+可乐\n主要原料：芹菜,牛肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '295');
INSERT INTO `goods` VALUES ('103', '2020-05-25 20:04:13', '周四品牌日18.88卤肉盖饭含赠品', '营养适配', '21.22', '1590408252288.webp', '鲜炒小煎鸡+香喷喷米饭+搭配下饭菜+原味蒸蛋+可乐+赠送烤肠一根\n主要原料：藕,香菇,鸡肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '182');
INSERT INTO `goods` VALUES ('104', '2020-05-25 20:05:11', '新版卤肉盖饭+原味蒸蛋（赠烤肠一根）', '营养适配', '22.88', '1590408297083.webp', '秘制卤肉+香喷喷米饭+搭配下饭菜+原味蒸蛋+例汤+赠送烤肠一根\n主要原料：香菇,猪肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '160');
INSERT INTO `goods` VALUES ('105', '2020-05-25 20:06:09', ' 川式小炒肉+配荤菜+蒸蛋+果味饮', '满减专区', '38.00', '1590408368853.webp', '农家小炒肉+配荤菜+蒸蛋+时蔬+米饭+随机饮品\n主要原料：猪肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '206');
INSERT INTO `goods` VALUES ('106', '2020-05-26 10:32:52', '红珠泡椒牛肉+配荤菜+腿排1片+饮品', '满减专区', '38.00', '1590460372135.webp', '全新搭配，任由小主选择，找到专属于你的套餐\n主要原料：西芹,牛肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '19');
INSERT INTO `goods` VALUES ('107', '2020-05-26 10:33:36', '秘制卤肉+配荤菜+腿排1枚+果味饮', '满减专区', '30.04', '1590460415393.webp', '全新搭配，任由小主选择，找到专属于你的套餐\n主要原料：猪肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '149');
INSERT INTO `goods` VALUES ('108', '2020-05-26 10:34:23', '浓郁咖喱鸡超值套餐', '满减专区', '44.00', '1590460462390.webp', '浓郁咖喱鸡超值套餐\n主要原料：水', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '201');
INSERT INTO `goods` VALUES ('109', '2020-05-26 10:35:02', '泡椒牛肉丝双拼+香菇鸡双拼+赠饮品', '满减专区', '60.00', '1590460501887.webp', '超级豪华双人餐，饮品随机。\n主要原料：牛肉,鸡肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '139');
INSERT INTO `goods` VALUES ('110', '2020-05-26 10:35:58', '青椒猪肉串', '撸烤串', '4.90', '1590460557725.webp', '香辣椒香入味，满足味蕾\n主要原料：猪肉', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '59');
INSERT INTO `goods` VALUES ('111', '2020-05-26 11:48:30', '荤素单人冒菜（赠米饭+饮品）', '(冒菜)套餐自选区', '19.00', '1590464909776.webp', '荤素单人冒菜（赠米饭+饮品）\n主要原料：其他', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '56');
INSERT INTO `goods` VALUES ('112', '2020-05-26 11:49:13', '素什锦单人冒菜（赠米饭）', '(冒菜)套餐自选区', '15.00', '1590464952474.webp', '素什锦单人冒菜（赠米饭）\n主要原料：水', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '258');
INSERT INTO `goods` VALUES ('113', '2020-05-26 11:49:57', '荤素双人套餐（配米饭两份+饮品两份）', '(冒菜)套餐自选区', '35.88', '1590464996752.webp', '荤素双人套餐（配米饭两份+饮品两份）\n主要原料：其他', '100', '[{\"username\":\"3******c\",\"rateTime\":1469281964000,\"rateType\":0,\"text\":\"很喜欢的粥\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"2******3\",\"rateTime\":1469271264000,\"rateType\":0,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"},{\"username\":\"3******b\",\"rateTime\":1469261964000,\"rateType\":1,\"text\":\"\",\"avatar\":\"http://static.galileo.xiaojukeji.com/static/tms/default_header.png\"}]', '68');

-- ----------------------------
-- Table structure for goods_cate
-- ----------------------------
DROP TABLE IF EXISTS `goods_cate`;
CREATE TABLE `goods_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateName` varchar(100) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_cate
-- ----------------------------
INSERT INTO `goods_cate` VALUES ('47', '热销榜', '1');
INSERT INTO `goods_cate` VALUES ('48', '收藏门店超值专享', '1');
INSERT INTO `goods_cate` VALUES ('49', '新品专享', '1');
INSERT INTO `goods_cate` VALUES ('50', '鲜炒盖饭', '1');
INSERT INTO `goods_cate` VALUES ('51', '炒饭系列', '1');
INSERT INTO `goods_cate` VALUES ('52', '千万销量', '1');
INSERT INTO `goods_cate` VALUES ('53', '营养适配', '1');
INSERT INTO `goods_cate` VALUES ('54', '满减专区', '1');
INSERT INTO `goods_cate` VALUES ('55', '撸烤串', '1');
INSERT INTO `goods_cate` VALUES ('56', '(冒菜)套餐自选区', '1');
INSERT INTO `goods_cate` VALUES ('57', '小吃搭饮料', '1');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderNo` text,
  `orderTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `phone` text,
  `consignee` varchar(50) DEFAULT NULL,
  `deliverAddress` text,
  `deliveryTime` datetime DEFAULT NULL,
  `remarks` text,
  `orderAmount` float(10,2) DEFAULT NULL,
  `orderState` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '11012', '2020-06-04 17:30:09', '18181358998', '李小飞', '天府新谷', '2020-04-08 10:43:16', '微辣', '19.88', '已受理');
INSERT INTO `orders` VALUES ('2', '11013', '2020-06-04 17:30:42', '18181358998', '小小小小君', '天府三街腾讯大厦B座', '2020-04-25 10:44:41', '微辣', '29.88', '派送中');
INSERT INTO `orders` VALUES ('3', '11015', '2020-06-04 17:31:04', '18181358998', '张紫宸', '仁和新城', '2020-04-23 10:30:00', '微辣', '100.88', '派送中');
INSERT INTO `orders` VALUES ('4', '12012', '2020-06-04 17:31:12', '18181358998', '吴女士', '天府新谷', '2020-05-14 10:44:52', '微辣', '69.88', '派送中');
INSERT INTO `orders` VALUES ('5', '12013', '2020-06-04 17:32:11', '18181358998', '谢先生', '天府新谷', '2020-04-16 10:44:58', '微辣', '19.88', '派送中');
INSERT INTO `orders` VALUES ('6', '12014', '2020-06-04 17:32:33', '18181358998', '丑人多作怪', '天府新谷', '2020-04-16 10:44:58', '微辣', '79.88', '已受理');
INSERT INTO `orders` VALUES ('7', '13012', '2020-06-04 17:32:50', '18181358998', '市井说书人', '天府新谷', '2020-04-16 10:44:58', '微辣', '99.88', '已完成');
INSERT INTO `orders` VALUES ('8', '13013', '2020-06-04 17:32:52', '18181358998', '胸腔起风', '天府新谷', '2020-04-16 10:44:58', '不要辣', '29.88', '已受理');
INSERT INTO `orders` VALUES ('9', '13014', '2020-06-04 17:32:58', '18181358998', '张先生', '天府新谷', '2020-04-16 10:44:58', '微辣', '59.88', '派送中');
INSERT INTO `orders` VALUES ('10', '13015', '2020-06-04 17:33:06', '18181358998', '大黑', '天府新谷', '2020-04-16 10:44:58', '不要辣', '49.88', '已完成');
INSERT INTO `orders` VALUES ('11', '14012', '2020-06-04 17:33:15', '18181358998', '请快递哥快点', '天府新谷', '2020-04-16 10:44:58', '微辣', '39.88', '派送中');
INSERT INTO `orders` VALUES ('12', '14013', '2020-06-04 17:33:38', '18181358998', '碎碎冰大魔王', '天府新谷', '2020-04-16 10:44:58', '不要辣', '59.88', '已受理');
INSERT INTO `orders` VALUES ('13', '14014', '2020-06-04 17:33:41', '18181358998', '妍妍', '天府新谷', '2020-04-16 10:44:58', '微辣', '30.00', '已完成');
INSERT INTO `orders` VALUES ('14', '14014', '2020-06-04 17:34:03', '18181358998', '尕美丨', '天府新谷', '2020-04-16 10:44:58', '微辣', '59.88', '已受理');
INSERT INTO `orders` VALUES ('15', '15011', '2020-06-04 17:34:11', '18181358998', '限量版旳青春', '天府新谷', '2020-04-16 10:44:58', '微辣', '28.88', '已完成');
INSERT INTO `orders` VALUES ('16', '15012', '2020-06-04 17:34:26', '18181358998', '倚窗观雪', '天府新谷', '2020-04-16 10:44:58', '不要辣', '99.88', '已受理');
INSERT INTO `orders` VALUES ('17', '15013', '2020-06-04 17:34:33', '18181358998', '王女士', '天府新谷', '2020-04-16 10:44:58', '微辣', '19.88', '已完成');
INSERT INTO `orders` VALUES ('18', '15014', '2020-06-04 17:34:43', '18181358998', '李大陆', '天府新谷', '2020-04-16 10:44:58', '不要辣', '99.88', '已受理');
INSERT INTO `orders` VALUES ('19', '16011', '2020-06-04 17:35:03', '18181358998', '李俊聪', '天府新谷', '2020-04-16 10:44:58', '微辣', '99.88', '已受理');
INSERT INTO `orders` VALUES ('20', '16012', '2020-06-04 17:35:13', '18181358998', '江女士', '天府新谷', '2020-04-16 10:44:58', '不要辣', '60.00', '已完成');
INSERT INTO `orders` VALUES ('21', '16013', '2020-06-04 17:35:19', '18181358998', '汪小哥', '天府新谷', '2020-04-16 10:44:58', '不要辣', '30.00', '已完成');

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `bulletin` text,
  `avatar` text,
  `deliveryPrice` int(11) DEFAULT NULL,
  `deliveryTime` int(11) DEFAULT NULL,
  `description` text,
  `score` float(11,2) DEFAULT NULL,
  `sellCount` int(11) DEFAULT NULL,
  `supports` text,
  `pics` text,
  `date` text,
  `minPrice` float(20,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('1', '乡村基(高新金融店)', '尊敬的客官，六一攻略：\r\n①6月1日当天在评价区分享童年趣事赠6元无门槛红包\r\n②下单时在订单备注处填写【六一儿童节快乐】随机赠送“回忆杀爆款玩具”，数量有限，送完即止。\r\n提前预祝大小宝宝节日开心。', '1590473180839.webp', '4', '38', '蜂鸟专送', '4.50', '100', '[\"单人精彩套餐\",\"VC无限橙果汁全场8折\"]', '[\"1590480883773.webp\",\"1590480886706.webp\",\"1590480889717.webp\",\"1590482092433.webp\"]', '[\"1970-01-01 08:00:00\",\"1970-01-01 22:30:00\"]', '20.00');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `account` varchar(50) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `userGroup` varchar(30) DEFAULT NULL,
  `imgUrl` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('55', '2020-05-19 17:00:58', 'admin', 'admin', '超级管理员', 'h1301451230.jpg');
INSERT INTO `users` VALUES ('73', '2020-05-26 10:30:34', 'guest', 'guest', '普通管理员', 'default.jpg');
