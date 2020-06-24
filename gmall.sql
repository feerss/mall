/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50622
Source Host           : 127.0.0.1:3306
Source Database       : gmall

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2020-05-06 11:17:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `base_attr_info`
-- ----------------------------
DROP TABLE IF EXISTS `base_attr_info`;
CREATE TABLE `base_attr_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `attr_name` varchar(100) NOT NULL COMMENT '属性名称',
  `catalog3_id` bigint(20) DEFAULT NULL COMMENT '三级分类id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COMMENT='属性表';

-- ----------------------------
-- Records of base_attr_info
-- ----------------------------
INSERT INTO `base_attr_info` VALUES ('23', '运行内存', '61');
INSERT INTO `base_attr_info` VALUES ('24', '机身内存', '61');
INSERT INTO `base_attr_info` VALUES ('25', '处理器', '285');
INSERT INTO `base_attr_info` VALUES ('26', '屏幕尺寸', '285');
INSERT INTO `base_attr_info` VALUES ('37', '分类', '1');
INSERT INTO `base_attr_info` VALUES ('45', '产地', '371');
INSERT INTO `base_attr_info` VALUES ('46', '运行内存', '63');
INSERT INTO `base_attr_info` VALUES ('65', '品牌', '65');
INSERT INTO `base_attr_info` VALUES ('66', '屏幕尺寸', '285');
INSERT INTO `base_attr_info` VALUES ('67', '系列', '285');
INSERT INTO `base_attr_info` VALUES ('70', '品牌', '86');
INSERT INTO `base_attr_info` VALUES ('71', '品牌', '86');
INSERT INTO `base_attr_info` VALUES ('72', '功率', '86');
INSERT INTO `base_attr_info` VALUES ('73', '像素', '178');
INSERT INTO `base_attr_info` VALUES ('74', '传感器尺寸', '178');
INSERT INTO `base_attr_info` VALUES ('76', '镜头', '178');
INSERT INTO `base_attr_info` VALUES ('81', '机身内存', '63');
INSERT INTO `base_attr_info` VALUES ('83', '价格', '100');
INSERT INTO `base_attr_info` VALUES ('84', '价格', '100');
INSERT INTO `base_attr_info` VALUES ('85', '价格', '100');
INSERT INTO `base_attr_info` VALUES ('86', '价格', '102');
INSERT INTO `base_attr_info` VALUES ('87', '价格', '841');
INSERT INTO `base_attr_info` VALUES ('88', '价格', '86');
INSERT INTO `base_attr_info` VALUES ('89', 'aa', '86');
INSERT INTO `base_attr_info` VALUES ('90', '价格', '930');
INSERT INTO `base_attr_info` VALUES ('91', '价格', '598');
INSERT INTO `base_attr_info` VALUES ('92', '价格', '598');
INSERT INTO `base_attr_info` VALUES ('93', '价格', '598');
INSERT INTO `base_attr_info` VALUES ('94', '价格', '598');
INSERT INTO `base_attr_info` VALUES ('95', '价格', '997');
INSERT INTO `base_attr_info` VALUES ('96', '性能', '262');
INSERT INTO `base_attr_info` VALUES ('97', '性能', '262');

-- ----------------------------
-- Table structure for `base_attr_value`
-- ----------------------------
DROP TABLE IF EXISTS `base_attr_value`;
CREATE TABLE `base_attr_value` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `value_name` varchar(100) NOT NULL DEFAULT '' COMMENT '属性值名称',
  `attr_id` bigint(20) DEFAULT NULL COMMENT '属性id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_attr_value
-- ----------------------------
INSERT INTO `base_attr_value` VALUES ('1', '红色', '18');
INSERT INTO `base_attr_value` VALUES ('2', '白色', '18');
INSERT INTO `base_attr_value` VALUES ('3', '红色', '19');
INSERT INTO `base_attr_value` VALUES ('4', '白色', '19');
INSERT INTO `base_attr_value` VALUES ('5', '华为', '20');
INSERT INTO `base_attr_value` VALUES ('6', '联想', '20');
INSERT INTO `base_attr_value` VALUES ('7', 'X5', '21');
INSERT INTO `base_attr_value` VALUES ('8', 'X6', '21');
INSERT INTO `base_attr_value` VALUES ('9', 'X7', '21');
INSERT INTO `base_attr_value` VALUES ('10', '3.0', '22');
INSERT INTO `base_attr_value` VALUES ('11', '4.0', '22');
INSERT INTO `base_attr_value` VALUES ('12', '5.0', '22');
INSERT INTO `base_attr_value` VALUES ('13', '3G', '23');
INSERT INTO `base_attr_value` VALUES ('14', '4G', '23');
INSERT INTO `base_attr_value` VALUES ('19', 'i3', '25');
INSERT INTO `base_attr_value` VALUES ('20', 'i5', '25');
INSERT INTO `base_attr_value` VALUES ('21', '13.3', '26');
INSERT INTO `base_attr_value` VALUES ('22', '14.0', '26');
INSERT INTO `base_attr_value` VALUES ('32', 'Java', '37');
INSERT INTO `base_attr_value` VALUES ('33', 'C#', '37');
INSERT INTO `base_attr_value` VALUES ('34', 'JavaScript', '37');
INSERT INTO `base_attr_value` VALUES ('35', '123123', '38');
INSERT INTO `base_attr_value` VALUES ('36', '222222', '38');
INSERT INTO `base_attr_value` VALUES ('37', '红色', '39');
INSERT INTO `base_attr_value` VALUES ('38', '白色', '39');
INSERT INTO `base_attr_value` VALUES ('39', '红色', '40');
INSERT INTO `base_attr_value` VALUES ('40', '白色', '40');
INSERT INTO `base_attr_value` VALUES ('41', '南非', '41');
INSERT INTO `base_attr_value` VALUES ('69', '10', '57');
INSERT INTO `base_attr_value` VALUES ('71', '10', '59');
INSERT INTO `base_attr_value` VALUES ('72', '10', '60');
INSERT INTO `base_attr_value` VALUES ('73', '10', '61');
INSERT INTO `base_attr_value` VALUES ('78', '国内', '65');
INSERT INTO `base_attr_value` VALUES ('79', '南非', '65');
INSERT INTO `base_attr_value` VALUES ('80', '32G', '24');
INSERT INTO `base_attr_value` VALUES ('81', '64G', '24');
INSERT INTO `base_attr_value` VALUES ('82', '128G', '24');
INSERT INTO `base_attr_value` VALUES ('83', '8G', '23');
INSERT INTO `base_attr_value` VALUES ('84', '14', '66');
INSERT INTO `base_attr_value` VALUES ('85', '15.6', '66');
INSERT INTO `base_attr_value` VALUES ('86', '神州', '67');
INSERT INTO `base_attr_value` VALUES ('87', '微软', '67');
INSERT INTO `base_attr_value` VALUES ('89', '3434', '68');
INSERT INTO `base_attr_value` VALUES ('90', '5.0', '69');
INSERT INTO `base_attr_value` VALUES ('91', '5.6', '69');
INSERT INTO `base_attr_value` VALUES ('93', '国内', '70');
INSERT INTO `base_attr_value` VALUES ('94', '国外', '70');
INSERT INTO `base_attr_value` VALUES ('95', '国内', '71');
INSERT INTO `base_attr_value` VALUES ('96', '国外', '71');
INSERT INTO `base_attr_value` VALUES ('97', '100W', '72');
INSERT INTO `base_attr_value` VALUES ('99', '2000万', '73');
INSERT INTO `base_attr_value` VALUES ('100', '3000万', '73');
INSERT INTO `base_attr_value` VALUES ('101', '1英寸', '74');
INSERT INTO `base_attr_value` VALUES ('102', '2.3英寸', '74');
INSERT INTO `base_attr_value` VALUES ('115', '1000G', '81');
INSERT INTO `base_attr_value` VALUES ('120', '12G', '23');
INSERT INTO `base_attr_value` VALUES ('121', '5.5', '82');
INSERT INTO `base_attr_value` VALUES ('122', '6.5', '82');
INSERT INTO `base_attr_value` VALUES ('123', '123', '83');
INSERT INTO `base_attr_value` VALUES ('124', '123', '85');
INSERT INTO `base_attr_value` VALUES ('125', '123', '84');
INSERT INTO `base_attr_value` VALUES ('126', '234', '83');
INSERT INTO `base_attr_value` VALUES ('127', '234', '85');
INSERT INTO `base_attr_value` VALUES ('128', '234', '84');
INSERT INTO `base_attr_value` VALUES ('129', '2000', '86');
INSERT INTO `base_attr_value` VALUES ('130', '4000', '86');
INSERT INTO `base_attr_value` VALUES ('132', '2000', '87');
INSERT INTO `base_attr_value` VALUES ('133', '88888', '87');
INSERT INTO `base_attr_value` VALUES ('135', '200', '88');
INSERT INTO `base_attr_value` VALUES ('136', '123', '89');
INSERT INTO `base_attr_value` VALUES ('137', '234', '89');
INSERT INTO `base_attr_value` VALUES ('139', '2000', '90');
INSERT INTO `base_attr_value` VALUES ('140', '2000', '91');
INSERT INTO `base_attr_value` VALUES ('141', '3000', '91');
INSERT INTO `base_attr_value` VALUES ('143', '400', '95');
INSERT INTO `base_attr_value` VALUES ('148', '张三', '46');
INSERT INTO `base_attr_value` VALUES ('149', '离地', '46');

-- ----------------------------
-- Table structure for `base_catalog1`
-- ----------------------------
DROP TABLE IF EXISTS `base_catalog1`;
CREATE TABLE `base_catalog1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(10) NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='一级分类表';

-- ----------------------------
-- Records of base_catalog1
-- ----------------------------
INSERT INTO `base_catalog1` VALUES ('1', '图书、音像、电子书刊');
INSERT INTO `base_catalog1` VALUES ('2', '手机');
INSERT INTO `base_catalog1` VALUES ('3', '家用电器');
INSERT INTO `base_catalog1` VALUES ('4', '数码');
INSERT INTO `base_catalog1` VALUES ('5', '家居家装');
INSERT INTO `base_catalog1` VALUES ('6', '电脑办公');
INSERT INTO `base_catalog1` VALUES ('7', '厨具');
INSERT INTO `base_catalog1` VALUES ('8', '个护化妆');
INSERT INTO `base_catalog1` VALUES ('9', '服饰内衣');
INSERT INTO `base_catalog1` VALUES ('10', '钟表');
INSERT INTO `base_catalog1` VALUES ('11', '鞋靴');
INSERT INTO `base_catalog1` VALUES ('12', '母婴');
INSERT INTO `base_catalog1` VALUES ('13', '礼品箱包');
INSERT INTO `base_catalog1` VALUES ('14', '食品饮料、保健食品');
INSERT INTO `base_catalog1` VALUES ('15', '珠宝');
INSERT INTO `base_catalog1` VALUES ('16', '汽车用品');
INSERT INTO `base_catalog1` VALUES ('17', '运动健康');
INSERT INTO `base_catalog1` VALUES ('18', '玩具乐器');

-- ----------------------------
-- Table structure for `base_catalog1_tm`
-- ----------------------------
DROP TABLE IF EXISTS `base_catalog1_tm`;
CREATE TABLE `base_catalog1_tm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `tm_id` bigint(20) DEFAULT NULL COMMENT '品牌id',
  `catalog1_id` bigint(20) DEFAULT NULL COMMENT '一级分类id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分类与品牌关联表';

-- ----------------------------
-- Records of base_catalog1_tm
-- ----------------------------

-- ----------------------------
-- Table structure for `base_catalog2`
-- ----------------------------
DROP TABLE IF EXISTS `base_catalog2`;
CREATE TABLE `base_catalog2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(200) NOT NULL COMMENT '二级分类名称',
  `catalog1_id` bigint(20) DEFAULT NULL COMMENT '一级分类编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COMMENT='二级分类表';

-- ----------------------------
-- Records of base_catalog2
-- ----------------------------
INSERT INTO `base_catalog2` VALUES ('1', '电子书刊', '1');
INSERT INTO `base_catalog2` VALUES ('2', '音像', '1');
INSERT INTO `base_catalog2` VALUES ('3', '英文原版', '1');
INSERT INTO `base_catalog2` VALUES ('4', '文艺', '1');
INSERT INTO `base_catalog2` VALUES ('5', '少儿', '1');
INSERT INTO `base_catalog2` VALUES ('6', '人文社科', '1');
INSERT INTO `base_catalog2` VALUES ('7', '经管励志', '1');
INSERT INTO `base_catalog2` VALUES ('8', '生活', '1');
INSERT INTO `base_catalog2` VALUES ('9', '科技', '1');
INSERT INTO `base_catalog2` VALUES ('10', '教育', '1');
INSERT INTO `base_catalog2` VALUES ('11', '港台图书', '1');
INSERT INTO `base_catalog2` VALUES ('12', '其他', '1');
INSERT INTO `base_catalog2` VALUES ('13', '手机通讯', '2');
INSERT INTO `base_catalog2` VALUES ('14', '运营商', '2');
INSERT INTO `base_catalog2` VALUES ('15', '手机配件', '2');
INSERT INTO `base_catalog2` VALUES ('16', '大 家 电', '3');
INSERT INTO `base_catalog2` VALUES ('17', '厨卫大电', '3');
INSERT INTO `base_catalog2` VALUES ('18', '厨房小电', '3');
INSERT INTO `base_catalog2` VALUES ('19', '生活电器', '3');
INSERT INTO `base_catalog2` VALUES ('20', '个护健康', '3');
INSERT INTO `base_catalog2` VALUES ('21', '五金家装', '3');
INSERT INTO `base_catalog2` VALUES ('22', '摄影摄像', '4');
INSERT INTO `base_catalog2` VALUES ('23', '数码配件', '4');
INSERT INTO `base_catalog2` VALUES ('24', '智能设备', '4');
INSERT INTO `base_catalog2` VALUES ('25', '影音娱乐', '4');
INSERT INTO `base_catalog2` VALUES ('26', '电子教育', '4');
INSERT INTO `base_catalog2` VALUES ('27', '虚拟商品', '4');
INSERT INTO `base_catalog2` VALUES ('28', '家纺', '5');
INSERT INTO `base_catalog2` VALUES ('29', '灯具', '5');
INSERT INTO `base_catalog2` VALUES ('30', '生活日用', '5');
INSERT INTO `base_catalog2` VALUES ('31', '家装软饰', '5');
INSERT INTO `base_catalog2` VALUES ('32', '宠物生活', '5');
INSERT INTO `base_catalog2` VALUES ('33', '电脑整机', '6');
INSERT INTO `base_catalog2` VALUES ('34', '电脑配件', '6');
INSERT INTO `base_catalog2` VALUES ('35', '外设产品', '6');
INSERT INTO `base_catalog2` VALUES ('36', '游戏设备', '6');
INSERT INTO `base_catalog2` VALUES ('37', '网络产品', '6');
INSERT INTO `base_catalog2` VALUES ('38', '办公设备', '6');
INSERT INTO `base_catalog2` VALUES ('39', '文具/耗材', '6');
INSERT INTO `base_catalog2` VALUES ('40', '服务产品', '6');
INSERT INTO `base_catalog2` VALUES ('41', '烹饪锅具', '7');
INSERT INTO `base_catalog2` VALUES ('42', '刀剪菜板', '7');
INSERT INTO `base_catalog2` VALUES ('43', '厨房配件', '7');
INSERT INTO `base_catalog2` VALUES ('44', '水具酒具', '7');
INSERT INTO `base_catalog2` VALUES ('45', '餐具', '7');
INSERT INTO `base_catalog2` VALUES ('46', '酒店用品', '7');
INSERT INTO `base_catalog2` VALUES ('47', '茶具/咖啡具', '7');
INSERT INTO `base_catalog2` VALUES ('48', '清洁用品', '8');
INSERT INTO `base_catalog2` VALUES ('49', '面部护肤', '8');
INSERT INTO `base_catalog2` VALUES ('50', '身体护理', '8');
INSERT INTO `base_catalog2` VALUES ('51', '口腔护理', '8');
INSERT INTO `base_catalog2` VALUES ('52', '女性护理', '8');
INSERT INTO `base_catalog2` VALUES ('53', '洗发护发', '8');
INSERT INTO `base_catalog2` VALUES ('54', '香水彩妆', '8');
INSERT INTO `base_catalog2` VALUES ('55', '女装', '9');
INSERT INTO `base_catalog2` VALUES ('56', '男装', '9');
INSERT INTO `base_catalog2` VALUES ('57', '内衣', '9');
INSERT INTO `base_catalog2` VALUES ('58', '洗衣服务', '9');
INSERT INTO `base_catalog2` VALUES ('59', '服饰配件', '9');
INSERT INTO `base_catalog2` VALUES ('60', '钟表', '10');
INSERT INTO `base_catalog2` VALUES ('61', '流行男鞋', '11');
INSERT INTO `base_catalog2` VALUES ('62', '时尚女鞋', '11');
INSERT INTO `base_catalog2` VALUES ('63', '奶粉', '12');
INSERT INTO `base_catalog2` VALUES ('64', '营养辅食', '12');
INSERT INTO `base_catalog2` VALUES ('65', '尿裤湿巾', '12');
INSERT INTO `base_catalog2` VALUES ('66', '喂养用品', '12');
INSERT INTO `base_catalog2` VALUES ('67', '洗护用品', '12');
INSERT INTO `base_catalog2` VALUES ('68', '童车童床', '12');
INSERT INTO `base_catalog2` VALUES ('69', '寝居服饰', '12');
INSERT INTO `base_catalog2` VALUES ('70', '妈妈专区', '12');
INSERT INTO `base_catalog2` VALUES ('71', '童装童鞋', '12');
INSERT INTO `base_catalog2` VALUES ('72', '安全座椅', '12');
INSERT INTO `base_catalog2` VALUES ('73', '潮流女包', '13');
INSERT INTO `base_catalog2` VALUES ('74', '精品男包', '13');
INSERT INTO `base_catalog2` VALUES ('75', '功能箱包', '13');
INSERT INTO `base_catalog2` VALUES ('76', '礼品', '13');
INSERT INTO `base_catalog2` VALUES ('77', '奢侈品', '13');
INSERT INTO `base_catalog2` VALUES ('78', '婚庆', '13');
INSERT INTO `base_catalog2` VALUES ('79', '进口食品', '14');
INSERT INTO `base_catalog2` VALUES ('80', '地方特产', '14');
INSERT INTO `base_catalog2` VALUES ('81', '休闲食品', '14');
INSERT INTO `base_catalog2` VALUES ('82', '粮油调味', '14');
INSERT INTO `base_catalog2` VALUES ('83', '饮料冲调', '14');
INSERT INTO `base_catalog2` VALUES ('84', '食品礼券', '14');
INSERT INTO `base_catalog2` VALUES ('85', '茗茶', '14');
INSERT INTO `base_catalog2` VALUES ('86', '时尚饰品', '15');
INSERT INTO `base_catalog2` VALUES ('87', '黄金', '15');
INSERT INTO `base_catalog2` VALUES ('88', 'K金饰品', '15');
INSERT INTO `base_catalog2` VALUES ('89', '金银投资', '15');
INSERT INTO `base_catalog2` VALUES ('90', '银饰', '15');
INSERT INTO `base_catalog2` VALUES ('91', '钻石', '15');
INSERT INTO `base_catalog2` VALUES ('92', '翡翠玉石', '15');
INSERT INTO `base_catalog2` VALUES ('93', '水晶玛瑙', '15');
INSERT INTO `base_catalog2` VALUES ('94', '彩宝', '15');
INSERT INTO `base_catalog2` VALUES ('95', '铂金', '15');
INSERT INTO `base_catalog2` VALUES ('96', '木手串/把件', '15');
INSERT INTO `base_catalog2` VALUES ('97', '珍珠', '15');
INSERT INTO `base_catalog2` VALUES ('98', '维修保养', '16');
INSERT INTO `base_catalog2` VALUES ('99', '车载电器', '16');
INSERT INTO `base_catalog2` VALUES ('100', '美容清洗', '16');
INSERT INTO `base_catalog2` VALUES ('101', '汽车装饰', '16');
INSERT INTO `base_catalog2` VALUES ('102', '安全自驾', '16');
INSERT INTO `base_catalog2` VALUES ('103', '汽车服务', '16');
INSERT INTO `base_catalog2` VALUES ('104', '赛事改装', '16');
INSERT INTO `base_catalog2` VALUES ('105', '运动鞋包', '17');
INSERT INTO `base_catalog2` VALUES ('106', '运动服饰', '17');
INSERT INTO `base_catalog2` VALUES ('107', '骑行运动', '17');
INSERT INTO `base_catalog2` VALUES ('108', '垂钓用品', '17');
INSERT INTO `base_catalog2` VALUES ('109', '游泳用品', '17');
INSERT INTO `base_catalog2` VALUES ('110', '户外鞋服', '17');
INSERT INTO `base_catalog2` VALUES ('111', '户外装备', '17');
INSERT INTO `base_catalog2` VALUES ('112', '健身训练', '17');
INSERT INTO `base_catalog2` VALUES ('113', '体育用品', '17');
INSERT INTO `base_catalog2` VALUES ('114', '适用年龄', '18');
INSERT INTO `base_catalog2` VALUES ('115', '遥控/电动', '18');
INSERT INTO `base_catalog2` VALUES ('116', '毛绒布艺', '18');
INSERT INTO `base_catalog2` VALUES ('117', '娃娃玩具', '18');
INSERT INTO `base_catalog2` VALUES ('118', '模型玩具', '18');
INSERT INTO `base_catalog2` VALUES ('119', '健身玩具', '18');
INSERT INTO `base_catalog2` VALUES ('120', '动漫玩具', '18');
INSERT INTO `base_catalog2` VALUES ('121', '益智玩具', '18');
INSERT INTO `base_catalog2` VALUES ('122', '积木拼插', '18');
INSERT INTO `base_catalog2` VALUES ('123', 'DIY玩具', '18');
INSERT INTO `base_catalog2` VALUES ('124', '创意减压', '18');
INSERT INTO `base_catalog2` VALUES ('125', '乐器', '18');

-- ----------------------------
-- Table structure for `base_catalog3`
-- ----------------------------
DROP TABLE IF EXISTS `base_catalog3`;
CREATE TABLE `base_catalog3` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(200) NOT NULL COMMENT '三级分类名称',
  `catalog2_id` bigint(20) DEFAULT NULL COMMENT '二级分类编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1150 DEFAULT CHARSET=utf8 COMMENT='三级分类表';

-- ----------------------------
-- Records of base_catalog3
-- ----------------------------
INSERT INTO `base_catalog3` VALUES ('1', '电子书', '1');
INSERT INTO `base_catalog3` VALUES ('2', '网络原创', '1');
INSERT INTO `base_catalog3` VALUES ('3', '数字杂志', '1');
INSERT INTO `base_catalog3` VALUES ('4', '多媒体图书', '1');
INSERT INTO `base_catalog3` VALUES ('5', '音乐', '2');
INSERT INTO `base_catalog3` VALUES ('6', '影视', '2');
INSERT INTO `base_catalog3` VALUES ('7', '教育音像', '2');
INSERT INTO `base_catalog3` VALUES ('8', '少儿', '3');
INSERT INTO `base_catalog3` VALUES ('9', '商务投资', '3');
INSERT INTO `base_catalog3` VALUES ('10', '英语学习与考试', '3');
INSERT INTO `base_catalog3` VALUES ('11', '文学', '3');
INSERT INTO `base_catalog3` VALUES ('12', '传记', '3');
INSERT INTO `base_catalog3` VALUES ('13', '励志', '3');
INSERT INTO `base_catalog3` VALUES ('14', '小说', '4');
INSERT INTO `base_catalog3` VALUES ('15', '文学', '4');
INSERT INTO `base_catalog3` VALUES ('16', '青春文学', '4');
INSERT INTO `base_catalog3` VALUES ('17', '传记', '4');
INSERT INTO `base_catalog3` VALUES ('18', '艺术', '4');
INSERT INTO `base_catalog3` VALUES ('19', '少儿', '5');
INSERT INTO `base_catalog3` VALUES ('20', '0-2岁', '5');
INSERT INTO `base_catalog3` VALUES ('21', '3-6岁', '5');
INSERT INTO `base_catalog3` VALUES ('22', '7-10岁', '5');
INSERT INTO `base_catalog3` VALUES ('23', '11-14岁', '5');
INSERT INTO `base_catalog3` VALUES ('24', '历史', '6');
INSERT INTO `base_catalog3` VALUES ('25', '哲学', '6');
INSERT INTO `base_catalog3` VALUES ('26', '国学', '6');
INSERT INTO `base_catalog3` VALUES ('27', '政治/军事', '6');
INSERT INTO `base_catalog3` VALUES ('28', '法律', '6');
INSERT INTO `base_catalog3` VALUES ('29', '人文社科', '6');
INSERT INTO `base_catalog3` VALUES ('30', '心理学', '6');
INSERT INTO `base_catalog3` VALUES ('31', '文化', '6');
INSERT INTO `base_catalog3` VALUES ('32', '社会科学', '6');
INSERT INTO `base_catalog3` VALUES ('33', '经济', '7');
INSERT INTO `base_catalog3` VALUES ('34', '金融与投资', '7');
INSERT INTO `base_catalog3` VALUES ('35', '管理', '7');
INSERT INTO `base_catalog3` VALUES ('36', '励志与成功', '7');
INSERT INTO `base_catalog3` VALUES ('37', '生活', '8');
INSERT INTO `base_catalog3` VALUES ('38', '健身与保健', '8');
INSERT INTO `base_catalog3` VALUES ('39', '家庭与育儿', '8');
INSERT INTO `base_catalog3` VALUES ('40', '旅游', '8');
INSERT INTO `base_catalog3` VALUES ('41', '烹饪美食', '8');
INSERT INTO `base_catalog3` VALUES ('42', '工业技术', '9');
INSERT INTO `base_catalog3` VALUES ('43', '科普读物', '9');
INSERT INTO `base_catalog3` VALUES ('44', '建筑', '9');
INSERT INTO `base_catalog3` VALUES ('45', '医学', '9');
INSERT INTO `base_catalog3` VALUES ('46', '科学与自然', '9');
INSERT INTO `base_catalog3` VALUES ('47', '计算机与互联网', '9');
INSERT INTO `base_catalog3` VALUES ('48', '电子通信', '9');
INSERT INTO `base_catalog3` VALUES ('49', '中小学教辅', '10');
INSERT INTO `base_catalog3` VALUES ('50', '教育与考试', '10');
INSERT INTO `base_catalog3` VALUES ('51', '外语学习', '10');
INSERT INTO `base_catalog3` VALUES ('52', '大中专教材', '10');
INSERT INTO `base_catalog3` VALUES ('53', '字典词典', '10');
INSERT INTO `base_catalog3` VALUES ('54', '艺术/设计/收藏', '11');
INSERT INTO `base_catalog3` VALUES ('55', '经济管理', '11');
INSERT INTO `base_catalog3` VALUES ('56', '文化/学术', '11');
INSERT INTO `base_catalog3` VALUES ('57', '少儿', '11');
INSERT INTO `base_catalog3` VALUES ('58', '工具书', '12');
INSERT INTO `base_catalog3` VALUES ('59', '杂志/期刊', '12');
INSERT INTO `base_catalog3` VALUES ('60', '套装书', '12');
INSERT INTO `base_catalog3` VALUES ('61', '手机', '13');
INSERT INTO `base_catalog3` VALUES ('62', '对讲机', '13');
INSERT INTO `base_catalog3` VALUES ('63', '合约机', '14');
INSERT INTO `base_catalog3` VALUES ('64', '选号中心', '14');
INSERT INTO `base_catalog3` VALUES ('65', '装宽带', '14');
INSERT INTO `base_catalog3` VALUES ('66', '办套餐', '14');
INSERT INTO `base_catalog3` VALUES ('67', '移动电源', '15');
INSERT INTO `base_catalog3` VALUES ('68', '电池/移动电源', '15');
INSERT INTO `base_catalog3` VALUES ('69', '蓝牙耳机', '15');
INSERT INTO `base_catalog3` VALUES ('70', '充电器/数据线', '15');
INSERT INTO `base_catalog3` VALUES ('71', '苹果周边', '15');
INSERT INTO `base_catalog3` VALUES ('72', '手机耳机', '15');
INSERT INTO `base_catalog3` VALUES ('73', '手机贴膜', '15');
INSERT INTO `base_catalog3` VALUES ('74', '手机存储卡', '15');
INSERT INTO `base_catalog3` VALUES ('75', '充电器', '15');
INSERT INTO `base_catalog3` VALUES ('76', '数据线', '15');
INSERT INTO `base_catalog3` VALUES ('77', '手机保护套', '15');
INSERT INTO `base_catalog3` VALUES ('78', '车载配件', '15');
INSERT INTO `base_catalog3` VALUES ('79', 'iPhone 配件', '15');
INSERT INTO `base_catalog3` VALUES ('80', '手机电池', '15');
INSERT INTO `base_catalog3` VALUES ('81', '创意配件', '15');
INSERT INTO `base_catalog3` VALUES ('82', '便携/无线音响', '15');
INSERT INTO `base_catalog3` VALUES ('83', '手机饰品', '15');
INSERT INTO `base_catalog3` VALUES ('84', '拍照配件', '15');
INSERT INTO `base_catalog3` VALUES ('85', '手机支架', '15');
INSERT INTO `base_catalog3` VALUES ('86', '平板电视', '16');
INSERT INTO `base_catalog3` VALUES ('87', '空调', '16');
INSERT INTO `base_catalog3` VALUES ('88', '冰箱', '16');
INSERT INTO `base_catalog3` VALUES ('89', '洗衣机', '16');
INSERT INTO `base_catalog3` VALUES ('90', '家庭影院', '16');
INSERT INTO `base_catalog3` VALUES ('91', 'DVD/电视盒子', '16');
INSERT INTO `base_catalog3` VALUES ('92', '迷你音响', '16');
INSERT INTO `base_catalog3` VALUES ('93', '冷柜/冰吧', '16');
INSERT INTO `base_catalog3` VALUES ('94', '家电配件', '16');
INSERT INTO `base_catalog3` VALUES ('95', '功放', '16');
INSERT INTO `base_catalog3` VALUES ('96', '回音壁/Soundbar', '16');
INSERT INTO `base_catalog3` VALUES ('97', 'Hi-Fi专区', '16');
INSERT INTO `base_catalog3` VALUES ('98', '电视盒子', '16');
INSERT INTO `base_catalog3` VALUES ('99', '酒柜', '16');
INSERT INTO `base_catalog3` VALUES ('100', '燃气灶', '17');
INSERT INTO `base_catalog3` VALUES ('101', '油烟机', '17');
INSERT INTO `base_catalog3` VALUES ('102', '热水器', '17');
INSERT INTO `base_catalog3` VALUES ('103', '消毒柜', '17');
INSERT INTO `base_catalog3` VALUES ('104', '洗碗机', '17');
INSERT INTO `base_catalog3` VALUES ('105', '料理机', '18');
INSERT INTO `base_catalog3` VALUES ('106', '榨汁机', '18');
INSERT INTO `base_catalog3` VALUES ('107', '电饭煲', '18');
INSERT INTO `base_catalog3` VALUES ('108', '电压力锅', '18');
INSERT INTO `base_catalog3` VALUES ('109', '豆浆机', '18');
INSERT INTO `base_catalog3` VALUES ('110', '咖啡机', '18');
INSERT INTO `base_catalog3` VALUES ('111', '微波炉', '18');
INSERT INTO `base_catalog3` VALUES ('112', '电烤箱', '18');
INSERT INTO `base_catalog3` VALUES ('113', '电磁炉', '18');
INSERT INTO `base_catalog3` VALUES ('114', '面包机', '18');
INSERT INTO `base_catalog3` VALUES ('115', '煮蛋器', '18');
INSERT INTO `base_catalog3` VALUES ('116', '酸奶机', '18');
INSERT INTO `base_catalog3` VALUES ('117', '电炖锅', '18');
INSERT INTO `base_catalog3` VALUES ('118', '电水壶/热水瓶', '18');
INSERT INTO `base_catalog3` VALUES ('119', '电饼铛', '18');
INSERT INTO `base_catalog3` VALUES ('120', '多用途锅', '18');
INSERT INTO `base_catalog3` VALUES ('121', '电烧烤炉', '18');
INSERT INTO `base_catalog3` VALUES ('122', '果蔬解毒机', '18');
INSERT INTO `base_catalog3` VALUES ('123', '其它厨房电器', '18');
INSERT INTO `base_catalog3` VALUES ('124', '养生壶/煎药壶', '18');
INSERT INTO `base_catalog3` VALUES ('125', '电热饭盒', '18');
INSERT INTO `base_catalog3` VALUES ('126', '取暖电器', '19');
INSERT INTO `base_catalog3` VALUES ('127', '净化器', '19');
INSERT INTO `base_catalog3` VALUES ('128', '加湿器', '19');
INSERT INTO `base_catalog3` VALUES ('129', '扫地机器人', '19');
INSERT INTO `base_catalog3` VALUES ('130', '吸尘器', '19');
INSERT INTO `base_catalog3` VALUES ('131', '挂烫机/熨斗', '19');
INSERT INTO `base_catalog3` VALUES ('132', '插座', '19');
INSERT INTO `base_catalog3` VALUES ('133', '电话机', '19');
INSERT INTO `base_catalog3` VALUES ('134', '清洁机', '19');
INSERT INTO `base_catalog3` VALUES ('135', '除湿机', '19');
INSERT INTO `base_catalog3` VALUES ('136', '干衣机', '19');
INSERT INTO `base_catalog3` VALUES ('137', '收录/音机', '19');
INSERT INTO `base_catalog3` VALUES ('138', '电风扇', '19');
INSERT INTO `base_catalog3` VALUES ('139', '冷风扇', '19');
INSERT INTO `base_catalog3` VALUES ('140', '其它生活电器', '19');
INSERT INTO `base_catalog3` VALUES ('141', '生活电器配件', '19');
INSERT INTO `base_catalog3` VALUES ('142', '净水器', '19');
INSERT INTO `base_catalog3` VALUES ('143', '饮水机', '19');
INSERT INTO `base_catalog3` VALUES ('144', '剃须刀', '20');
INSERT INTO `base_catalog3` VALUES ('145', '剃/脱毛器', '20');
INSERT INTO `base_catalog3` VALUES ('146', '口腔护理', '20');
INSERT INTO `base_catalog3` VALUES ('147', '电吹风', '20');
INSERT INTO `base_catalog3` VALUES ('148', '美容器', '20');
INSERT INTO `base_catalog3` VALUES ('149', '理发器', '20');
INSERT INTO `base_catalog3` VALUES ('150', '卷/直发器', '20');
INSERT INTO `base_catalog3` VALUES ('151', '按摩椅', '20');
INSERT INTO `base_catalog3` VALUES ('152', '按摩器', '20');
INSERT INTO `base_catalog3` VALUES ('153', '足浴盆', '20');
INSERT INTO `base_catalog3` VALUES ('154', '血压计', '20');
INSERT INTO `base_catalog3` VALUES ('155', '电子秤/厨房秤', '20');
INSERT INTO `base_catalog3` VALUES ('156', '血糖仪', '20');
INSERT INTO `base_catalog3` VALUES ('157', '体温计', '20');
INSERT INTO `base_catalog3` VALUES ('158', '其它健康电器', '20');
INSERT INTO `base_catalog3` VALUES ('159', '计步器/脂肪检测仪', '20');
INSERT INTO `base_catalog3` VALUES ('160', '电动工具', '21');
INSERT INTO `base_catalog3` VALUES ('161', '手动工具', '21');
INSERT INTO `base_catalog3` VALUES ('162', '仪器仪表', '21');
INSERT INTO `base_catalog3` VALUES ('163', '浴霸/排气扇', '21');
INSERT INTO `base_catalog3` VALUES ('164', '灯具', '21');
INSERT INTO `base_catalog3` VALUES ('165', 'LED灯', '21');
INSERT INTO `base_catalog3` VALUES ('166', '洁身器', '21');
INSERT INTO `base_catalog3` VALUES ('167', '水槽', '21');
INSERT INTO `base_catalog3` VALUES ('168', '龙头', '21');
INSERT INTO `base_catalog3` VALUES ('169', '淋浴花洒', '21');
INSERT INTO `base_catalog3` VALUES ('170', '厨卫五金', '21');
INSERT INTO `base_catalog3` VALUES ('171', '家具五金', '21');
INSERT INTO `base_catalog3` VALUES ('172', '门铃', '21');
INSERT INTO `base_catalog3` VALUES ('173', '电气开关', '21');
INSERT INTO `base_catalog3` VALUES ('174', '插座', '21');
INSERT INTO `base_catalog3` VALUES ('175', '电工电料', '21');
INSERT INTO `base_catalog3` VALUES ('176', '监控安防', '21');
INSERT INTO `base_catalog3` VALUES ('177', '电线/线缆', '21');
INSERT INTO `base_catalog3` VALUES ('178', '数码相机', '22');
INSERT INTO `base_catalog3` VALUES ('179', '单电/微单相机', '22');
INSERT INTO `base_catalog3` VALUES ('180', '单反相机', '22');
INSERT INTO `base_catalog3` VALUES ('181', '摄像机', '22');
INSERT INTO `base_catalog3` VALUES ('182', '拍立得', '22');
INSERT INTO `base_catalog3` VALUES ('183', '运动相机', '22');
INSERT INTO `base_catalog3` VALUES ('184', '镜头', '22');
INSERT INTO `base_catalog3` VALUES ('185', '户外器材', '22');
INSERT INTO `base_catalog3` VALUES ('186', '影棚器材', '22');
INSERT INTO `base_catalog3` VALUES ('187', '冲印服务', '22');
INSERT INTO `base_catalog3` VALUES ('188', '数码相框', '22');
INSERT INTO `base_catalog3` VALUES ('189', '存储卡', '23');
INSERT INTO `base_catalog3` VALUES ('190', '读卡器', '23');
INSERT INTO `base_catalog3` VALUES ('191', '滤镜', '23');
INSERT INTO `base_catalog3` VALUES ('192', '闪光灯/手柄', '23');
INSERT INTO `base_catalog3` VALUES ('193', '相机包', '23');
INSERT INTO `base_catalog3` VALUES ('194', '三脚架/云台', '23');
INSERT INTO `base_catalog3` VALUES ('195', '相机清洁/贴膜', '23');
INSERT INTO `base_catalog3` VALUES ('196', '机身附件', '23');
INSERT INTO `base_catalog3` VALUES ('197', '镜头附件', '23');
INSERT INTO `base_catalog3` VALUES ('198', '电池/充电器', '23');
INSERT INTO `base_catalog3` VALUES ('199', '移动电源', '23');
INSERT INTO `base_catalog3` VALUES ('200', '数码支架', '23');
INSERT INTO `base_catalog3` VALUES ('201', '智能手环', '24');
INSERT INTO `base_catalog3` VALUES ('202', '智能手表', '24');
INSERT INTO `base_catalog3` VALUES ('203', '智能眼镜', '24');
INSERT INTO `base_catalog3` VALUES ('204', '运动跟踪器', '24');
INSERT INTO `base_catalog3` VALUES ('205', '健康监测', '24');
INSERT INTO `base_catalog3` VALUES ('206', '智能配饰', '24');
INSERT INTO `base_catalog3` VALUES ('207', '智能家居', '24');
INSERT INTO `base_catalog3` VALUES ('208', '体感车', '24');
INSERT INTO `base_catalog3` VALUES ('209', '其他配件', '24');
INSERT INTO `base_catalog3` VALUES ('210', '智能机器人', '24');
INSERT INTO `base_catalog3` VALUES ('211', '无人机', '24');
INSERT INTO `base_catalog3` VALUES ('212', 'MP3/MP4', '25');
INSERT INTO `base_catalog3` VALUES ('213', '智能设备', '25');
INSERT INTO `base_catalog3` VALUES ('214', '耳机/耳麦', '25');
INSERT INTO `base_catalog3` VALUES ('215', '便携/无线音箱', '25');
INSERT INTO `base_catalog3` VALUES ('216', '音箱/音响', '25');
INSERT INTO `base_catalog3` VALUES ('217', '高清播放器', '25');
INSERT INTO `base_catalog3` VALUES ('218', '收音机', '25');
INSERT INTO `base_catalog3` VALUES ('219', 'MP3/MP4配件', '25');
INSERT INTO `base_catalog3` VALUES ('220', '麦克风', '25');
INSERT INTO `base_catalog3` VALUES ('221', '专业音频', '25');
INSERT INTO `base_catalog3` VALUES ('222', '苹果配件', '25');
INSERT INTO `base_catalog3` VALUES ('223', '学生平板', '26');
INSERT INTO `base_catalog3` VALUES ('224', '点读机/笔', '26');
INSERT INTO `base_catalog3` VALUES ('225', '早教益智', '26');
INSERT INTO `base_catalog3` VALUES ('226', '录音笔', '26');
INSERT INTO `base_catalog3` VALUES ('227', '电纸书', '26');
INSERT INTO `base_catalog3` VALUES ('228', '电子词典', '26');
INSERT INTO `base_catalog3` VALUES ('229', '复读机', '26');
INSERT INTO `base_catalog3` VALUES ('230', '延保服务', '27');
INSERT INTO `base_catalog3` VALUES ('231', '杀毒软件', '27');
INSERT INTO `base_catalog3` VALUES ('232', '积分商品', '27');
INSERT INTO `base_catalog3` VALUES ('233', '桌布/罩件', '28');
INSERT INTO `base_catalog3` VALUES ('234', '地毯地垫', '28');
INSERT INTO `base_catalog3` VALUES ('235', '沙发垫套/椅垫', '28');
INSERT INTO `base_catalog3` VALUES ('236', '床品套件', '28');
INSERT INTO `base_catalog3` VALUES ('237', '被子', '28');
INSERT INTO `base_catalog3` VALUES ('238', '枕芯', '28');
INSERT INTO `base_catalog3` VALUES ('239', '床单被罩', '28');
INSERT INTO `base_catalog3` VALUES ('240', '毯子', '28');
INSERT INTO `base_catalog3` VALUES ('241', '床垫/床褥', '28');
INSERT INTO `base_catalog3` VALUES ('242', '蚊帐', '28');
INSERT INTO `base_catalog3` VALUES ('243', '抱枕靠垫', '28');
INSERT INTO `base_catalog3` VALUES ('244', '毛巾浴巾', '28');
INSERT INTO `base_catalog3` VALUES ('245', '电热毯', '28');
INSERT INTO `base_catalog3` VALUES ('246', '窗帘/窗纱', '28');
INSERT INTO `base_catalog3` VALUES ('247', '布艺软饰', '28');
INSERT INTO `base_catalog3` VALUES ('248', '凉席', '28');
INSERT INTO `base_catalog3` VALUES ('249', '台灯', '29');
INSERT INTO `base_catalog3` VALUES ('250', '节能灯', '29');
INSERT INTO `base_catalog3` VALUES ('251', '装饰灯', '29');
INSERT INTO `base_catalog3` VALUES ('252', '落地灯', '29');
INSERT INTO `base_catalog3` VALUES ('253', '应急灯/手电', '29');
INSERT INTO `base_catalog3` VALUES ('254', 'LED灯', '29');
INSERT INTO `base_catalog3` VALUES ('255', '吸顶灯', '29');
INSERT INTO `base_catalog3` VALUES ('256', '五金电器', '29');
INSERT INTO `base_catalog3` VALUES ('257', '筒灯射灯', '29');
INSERT INTO `base_catalog3` VALUES ('258', '吊灯', '29');
INSERT INTO `base_catalog3` VALUES ('259', '氛围照明', '29');
INSERT INTO `base_catalog3` VALUES ('260', '保暖防护', '30');
INSERT INTO `base_catalog3` VALUES ('261', '收纳用品', '30');
INSERT INTO `base_catalog3` VALUES ('262', '雨伞雨具', '30');
INSERT INTO `base_catalog3` VALUES ('263', '浴室用品', '30');
INSERT INTO `base_catalog3` VALUES ('264', '缝纫/针织用品', '30');
INSERT INTO `base_catalog3` VALUES ('265', '洗晒/熨烫', '30');
INSERT INTO `base_catalog3` VALUES ('266', '净化除味', '30');
INSERT INTO `base_catalog3` VALUES ('267', '相框/照片墙', '31');
INSERT INTO `base_catalog3` VALUES ('268', '装饰字画', '31');
INSERT INTO `base_catalog3` VALUES ('269', '节庆饰品', '31');
INSERT INTO `base_catalog3` VALUES ('270', '手工/十字绣', '31');
INSERT INTO `base_catalog3` VALUES ('271', '装饰摆件', '31');
INSERT INTO `base_catalog3` VALUES ('272', '帘艺隔断', '31');
INSERT INTO `base_catalog3` VALUES ('273', '墙贴/装饰贴', '31');
INSERT INTO `base_catalog3` VALUES ('274', '钟饰', '31');
INSERT INTO `base_catalog3` VALUES ('275', '花瓶花艺', '31');
INSERT INTO `base_catalog3` VALUES ('276', '香薰蜡烛', '31');
INSERT INTO `base_catalog3` VALUES ('277', '创意家居', '31');
INSERT INTO `base_catalog3` VALUES ('278', '宠物主粮', '32');
INSERT INTO `base_catalog3` VALUES ('279', '宠物零食', '32');
INSERT INTO `base_catalog3` VALUES ('280', '医疗保健', '32');
INSERT INTO `base_catalog3` VALUES ('281', '家居日用', '32');
INSERT INTO `base_catalog3` VALUES ('282', '宠物玩具', '32');
INSERT INTO `base_catalog3` VALUES ('283', '出行装备', '32');
INSERT INTO `base_catalog3` VALUES ('284', '洗护美容', '32');
INSERT INTO `base_catalog3` VALUES ('285', '笔记本', '33');
INSERT INTO `base_catalog3` VALUES ('286', '超极本', '33');
INSERT INTO `base_catalog3` VALUES ('287', '游戏本', '33');
INSERT INTO `base_catalog3` VALUES ('288', '平板电脑', '33');
INSERT INTO `base_catalog3` VALUES ('289', '平板电脑配件', '33');
INSERT INTO `base_catalog3` VALUES ('290', '台式机', '33');
INSERT INTO `base_catalog3` VALUES ('291', '服务器/工作站', '33');
INSERT INTO `base_catalog3` VALUES ('292', '笔记本配件', '33');
INSERT INTO `base_catalog3` VALUES ('293', '一体机', '33');
INSERT INTO `base_catalog3` VALUES ('294', 'CPU', '34');
INSERT INTO `base_catalog3` VALUES ('295', '主板', '34');
INSERT INTO `base_catalog3` VALUES ('296', '显卡', '34');
INSERT INTO `base_catalog3` VALUES ('297', '硬盘', '34');
INSERT INTO `base_catalog3` VALUES ('298', 'SSD固态硬盘', '34');
INSERT INTO `base_catalog3` VALUES ('299', '内存', '34');
INSERT INTO `base_catalog3` VALUES ('300', '机箱', '34');
INSERT INTO `base_catalog3` VALUES ('301', '电源', '34');
INSERT INTO `base_catalog3` VALUES ('302', '显示器', '34');
INSERT INTO `base_catalog3` VALUES ('303', '刻录机/光驱', '34');
INSERT INTO `base_catalog3` VALUES ('304', '散热器', '34');
INSERT INTO `base_catalog3` VALUES ('305', '声卡/扩展卡', '34');
INSERT INTO `base_catalog3` VALUES ('306', '装机配件', '34');
INSERT INTO `base_catalog3` VALUES ('307', '组装电脑', '34');
INSERT INTO `base_catalog3` VALUES ('308', '移动硬盘', '35');
INSERT INTO `base_catalog3` VALUES ('309', 'U盘', '35');
INSERT INTO `base_catalog3` VALUES ('310', '鼠标', '35');
INSERT INTO `base_catalog3` VALUES ('311', '键盘', '35');
INSERT INTO `base_catalog3` VALUES ('312', '鼠标垫', '35');
INSERT INTO `base_catalog3` VALUES ('313', '摄像头', '35');
INSERT INTO `base_catalog3` VALUES ('314', '手写板', '35');
INSERT INTO `base_catalog3` VALUES ('315', '硬盘盒', '35');
INSERT INTO `base_catalog3` VALUES ('316', '插座', '35');
INSERT INTO `base_catalog3` VALUES ('317', '线缆', '35');
INSERT INTO `base_catalog3` VALUES ('318', 'UPS电源', '35');
INSERT INTO `base_catalog3` VALUES ('319', '电脑工具', '35');
INSERT INTO `base_catalog3` VALUES ('320', '游戏设备', '35');
INSERT INTO `base_catalog3` VALUES ('321', '电玩', '35');
INSERT INTO `base_catalog3` VALUES ('322', '电脑清洁', '35');
INSERT INTO `base_catalog3` VALUES ('323', '网络仪表仪器', '35');
INSERT INTO `base_catalog3` VALUES ('324', '游戏机', '36');
INSERT INTO `base_catalog3` VALUES ('325', '游戏耳机', '36');
INSERT INTO `base_catalog3` VALUES ('326', '手柄/方向盘', '36');
INSERT INTO `base_catalog3` VALUES ('327', '游戏软件', '36');
INSERT INTO `base_catalog3` VALUES ('328', '游戏周边', '36');
INSERT INTO `base_catalog3` VALUES ('329', '路由器', '37');
INSERT INTO `base_catalog3` VALUES ('330', '网卡', '37');
INSERT INTO `base_catalog3` VALUES ('331', '交换机', '37');
INSERT INTO `base_catalog3` VALUES ('332', '网络存储', '37');
INSERT INTO `base_catalog3` VALUES ('333', '4G/3G上网', '37');
INSERT INTO `base_catalog3` VALUES ('334', '网络盒子', '37');
INSERT INTO `base_catalog3` VALUES ('335', '网络配件', '37');
INSERT INTO `base_catalog3` VALUES ('336', '投影机', '38');
INSERT INTO `base_catalog3` VALUES ('337', '投影配件', '38');
INSERT INTO `base_catalog3` VALUES ('338', '多功能一体机', '38');
INSERT INTO `base_catalog3` VALUES ('339', '打印机', '38');
INSERT INTO `base_catalog3` VALUES ('340', '传真设备', '38');
INSERT INTO `base_catalog3` VALUES ('341', '验钞/点钞机', '38');
INSERT INTO `base_catalog3` VALUES ('342', '扫描设备', '38');
INSERT INTO `base_catalog3` VALUES ('343', '复合机', '38');
INSERT INTO `base_catalog3` VALUES ('344', '碎纸机', '38');
INSERT INTO `base_catalog3` VALUES ('345', '考勤机', '38');
INSERT INTO `base_catalog3` VALUES ('346', '收款/POS机', '38');
INSERT INTO `base_catalog3` VALUES ('347', '会议音频视频', '38');
INSERT INTO `base_catalog3` VALUES ('348', '保险柜', '38');
INSERT INTO `base_catalog3` VALUES ('349', '装订/封装机', '38');
INSERT INTO `base_catalog3` VALUES ('350', '安防监控', '38');
INSERT INTO `base_catalog3` VALUES ('351', '办公家具', '38');
INSERT INTO `base_catalog3` VALUES ('352', '白板', '38');
INSERT INTO `base_catalog3` VALUES ('353', '硒鼓/墨粉', '39');
INSERT INTO `base_catalog3` VALUES ('354', '墨盒', '39');
INSERT INTO `base_catalog3` VALUES ('355', '色带', '39');
INSERT INTO `base_catalog3` VALUES ('356', '纸类', '39');
INSERT INTO `base_catalog3` VALUES ('357', '办公文具', '39');
INSERT INTO `base_catalog3` VALUES ('358', '学生文具', '39');
INSERT INTO `base_catalog3` VALUES ('359', '财会用品', '39');
INSERT INTO `base_catalog3` VALUES ('360', '文件管理', '39');
INSERT INTO `base_catalog3` VALUES ('361', '本册/便签', '39');
INSERT INTO `base_catalog3` VALUES ('362', '计算器', '39');
INSERT INTO `base_catalog3` VALUES ('363', '笔类', '39');
INSERT INTO `base_catalog3` VALUES ('364', '画具画材', '39');
INSERT INTO `base_catalog3` VALUES ('365', '刻录碟片/附件', '39');
INSERT INTO `base_catalog3` VALUES ('366', '上门安装', '40');
INSERT INTO `base_catalog3` VALUES ('367', '延保服务', '40');
INSERT INTO `base_catalog3` VALUES ('368', '维修保养', '40');
INSERT INTO `base_catalog3` VALUES ('369', '电脑软件', '40');
INSERT INTO `base_catalog3` VALUES ('370', '京东服务', '40');
INSERT INTO `base_catalog3` VALUES ('371', '炒锅', '41');
INSERT INTO `base_catalog3` VALUES ('372', '煎锅', '41');
INSERT INTO `base_catalog3` VALUES ('373', '压力锅', '41');
INSERT INTO `base_catalog3` VALUES ('374', '蒸锅', '41');
INSERT INTO `base_catalog3` VALUES ('375', '汤锅', '41');
INSERT INTO `base_catalog3` VALUES ('376', '奶锅', '41');
INSERT INTO `base_catalog3` VALUES ('377', '锅具套装', '41');
INSERT INTO `base_catalog3` VALUES ('378', '煲类', '41');
INSERT INTO `base_catalog3` VALUES ('379', '水壶', '41');
INSERT INTO `base_catalog3` VALUES ('380', '火锅', '41');
INSERT INTO `base_catalog3` VALUES ('381', '菜刀', '42');
INSERT INTO `base_catalog3` VALUES ('382', '剪刀', '42');
INSERT INTO `base_catalog3` VALUES ('383', '刀具套装', '42');
INSERT INTO `base_catalog3` VALUES ('384', '砧板', '42');
INSERT INTO `base_catalog3` VALUES ('385', '瓜果刀/刨', '42');
INSERT INTO `base_catalog3` VALUES ('386', '多功能刀', '42');
INSERT INTO `base_catalog3` VALUES ('387', '保鲜盒', '43');
INSERT INTO `base_catalog3` VALUES ('388', '烘焙/烧烤', '43');
INSERT INTO `base_catalog3` VALUES ('389', '饭盒/提锅', '43');
INSERT INTO `base_catalog3` VALUES ('390', '储物/置物架', '43');
INSERT INTO `base_catalog3` VALUES ('391', '厨房DIY/小工具', '43');
INSERT INTO `base_catalog3` VALUES ('392', '塑料杯', '44');
INSERT INTO `base_catalog3` VALUES ('393', '运动水壶', '44');
INSERT INTO `base_catalog3` VALUES ('394', '玻璃杯', '44');
INSERT INTO `base_catalog3` VALUES ('395', '陶瓷/马克杯', '44');
INSERT INTO `base_catalog3` VALUES ('396', '保温杯', '44');
INSERT INTO `base_catalog3` VALUES ('397', '保温壶', '44');
INSERT INTO `base_catalog3` VALUES ('398', '酒杯/酒具', '44');
INSERT INTO `base_catalog3` VALUES ('399', '杯具套装', '44');
INSERT INTO `base_catalog3` VALUES ('400', '餐具套装', '45');
INSERT INTO `base_catalog3` VALUES ('401', '碗/碟/盘', '45');
INSERT INTO `base_catalog3` VALUES ('402', '筷勺/刀叉', '45');
INSERT INTO `base_catalog3` VALUES ('403', '一次性用品', '45');
INSERT INTO `base_catalog3` VALUES ('404', '果盘/果篮', '45');
INSERT INTO `base_catalog3` VALUES ('405', '自助餐炉', '46');
INSERT INTO `base_catalog3` VALUES ('406', '酒店餐具', '46');
INSERT INTO `base_catalog3` VALUES ('407', '酒店水具', '46');
INSERT INTO `base_catalog3` VALUES ('408', '整套茶具', '47');
INSERT INTO `base_catalog3` VALUES ('409', '茶杯', '47');
INSERT INTO `base_catalog3` VALUES ('410', '茶壶', '47');
INSERT INTO `base_catalog3` VALUES ('411', '茶盘茶托', '47');
INSERT INTO `base_catalog3` VALUES ('412', '茶叶罐', '47');
INSERT INTO `base_catalog3` VALUES ('413', '茶具配件', '47');
INSERT INTO `base_catalog3` VALUES ('414', '茶宠摆件', '47');
INSERT INTO `base_catalog3` VALUES ('415', '咖啡具', '47');
INSERT INTO `base_catalog3` VALUES ('416', '其他', '47');
INSERT INTO `base_catalog3` VALUES ('417', '纸品湿巾', '48');
INSERT INTO `base_catalog3` VALUES ('418', '衣物清洁', '48');
INSERT INTO `base_catalog3` VALUES ('419', '清洁工具', '48');
INSERT INTO `base_catalog3` VALUES ('420', '驱虫用品', '48');
INSERT INTO `base_catalog3` VALUES ('421', '家庭清洁', '48');
INSERT INTO `base_catalog3` VALUES ('422', '皮具护理', '48');
INSERT INTO `base_catalog3` VALUES ('423', '一次性用品', '48');
INSERT INTO `base_catalog3` VALUES ('424', '洁面', '49');
INSERT INTO `base_catalog3` VALUES ('425', '乳液面霜', '49');
INSERT INTO `base_catalog3` VALUES ('426', '面膜', '49');
INSERT INTO `base_catalog3` VALUES ('427', '剃须', '49');
INSERT INTO `base_catalog3` VALUES ('428', '套装', '49');
INSERT INTO `base_catalog3` VALUES ('429', '精华', '49');
INSERT INTO `base_catalog3` VALUES ('430', '眼霜', '49');
INSERT INTO `base_catalog3` VALUES ('431', '卸妆', '49');
INSERT INTO `base_catalog3` VALUES ('432', '防晒', '49');
INSERT INTO `base_catalog3` VALUES ('433', '防晒隔离', '49');
INSERT INTO `base_catalog3` VALUES ('434', 'T区护理', '49');
INSERT INTO `base_catalog3` VALUES ('435', '眼部护理', '49');
INSERT INTO `base_catalog3` VALUES ('436', '精华露', '49');
INSERT INTO `base_catalog3` VALUES ('437', '爽肤水', '49');
INSERT INTO `base_catalog3` VALUES ('438', '沐浴', '50');
INSERT INTO `base_catalog3` VALUES ('439', '润肤', '50');
INSERT INTO `base_catalog3` VALUES ('440', '颈部', '50');
INSERT INTO `base_catalog3` VALUES ('441', '手足', '50');
INSERT INTO `base_catalog3` VALUES ('442', '纤体塑形', '50');
INSERT INTO `base_catalog3` VALUES ('443', '美胸', '50');
INSERT INTO `base_catalog3` VALUES ('444', '套装', '50');
INSERT INTO `base_catalog3` VALUES ('445', '精油', '50');
INSERT INTO `base_catalog3` VALUES ('446', '洗发护发', '50');
INSERT INTO `base_catalog3` VALUES ('447', '染发/造型', '50');
INSERT INTO `base_catalog3` VALUES ('448', '香薰精油', '50');
INSERT INTO `base_catalog3` VALUES ('449', '磨砂/浴盐', '50');
INSERT INTO `base_catalog3` VALUES ('450', '手工/香皂', '50');
INSERT INTO `base_catalog3` VALUES ('451', '洗发', '50');
INSERT INTO `base_catalog3` VALUES ('452', '护发', '50');
INSERT INTO `base_catalog3` VALUES ('453', '染发', '50');
INSERT INTO `base_catalog3` VALUES ('454', '磨砂膏', '50');
INSERT INTO `base_catalog3` VALUES ('455', '香皂', '50');
INSERT INTO `base_catalog3` VALUES ('456', '牙膏/牙粉', '51');
INSERT INTO `base_catalog3` VALUES ('457', '牙刷/牙线', '51');
INSERT INTO `base_catalog3` VALUES ('458', '漱口水', '51');
INSERT INTO `base_catalog3` VALUES ('459', '套装', '51');
INSERT INTO `base_catalog3` VALUES ('460', '卫生巾', '52');
INSERT INTO `base_catalog3` VALUES ('461', '卫生护垫', '52');
INSERT INTO `base_catalog3` VALUES ('462', '私密护理', '52');
INSERT INTO `base_catalog3` VALUES ('463', '脱毛膏', '52');
INSERT INTO `base_catalog3` VALUES ('464', '其他', '52');
INSERT INTO `base_catalog3` VALUES ('465', '洗发', '53');
INSERT INTO `base_catalog3` VALUES ('466', '护发', '53');
INSERT INTO `base_catalog3` VALUES ('467', '染发', '53');
INSERT INTO `base_catalog3` VALUES ('468', '造型', '53');
INSERT INTO `base_catalog3` VALUES ('469', '假发', '53');
INSERT INTO `base_catalog3` VALUES ('470', '套装', '53');
INSERT INTO `base_catalog3` VALUES ('471', '美发工具', '53');
INSERT INTO `base_catalog3` VALUES ('472', '脸部护理', '53');
INSERT INTO `base_catalog3` VALUES ('473', '香水', '54');
INSERT INTO `base_catalog3` VALUES ('474', '底妆', '54');
INSERT INTO `base_catalog3` VALUES ('475', '腮红', '54');
INSERT INTO `base_catalog3` VALUES ('476', '眼影', '54');
INSERT INTO `base_catalog3` VALUES ('477', '唇部', '54');
INSERT INTO `base_catalog3` VALUES ('478', '美甲', '54');
INSERT INTO `base_catalog3` VALUES ('479', '眼线', '54');
INSERT INTO `base_catalog3` VALUES ('480', '美妆工具', '54');
INSERT INTO `base_catalog3` VALUES ('481', '套装', '54');
INSERT INTO `base_catalog3` VALUES ('482', '防晒隔离', '54');
INSERT INTO `base_catalog3` VALUES ('483', '卸妆', '54');
INSERT INTO `base_catalog3` VALUES ('484', '眉笔', '54');
INSERT INTO `base_catalog3` VALUES ('485', '睫毛膏', '54');
INSERT INTO `base_catalog3` VALUES ('486', 'T恤', '55');
INSERT INTO `base_catalog3` VALUES ('487', '衬衫', '55');
INSERT INTO `base_catalog3` VALUES ('488', '针织衫', '55');
INSERT INTO `base_catalog3` VALUES ('489', '雪纺衫', '55');
INSERT INTO `base_catalog3` VALUES ('490', '卫衣', '55');
INSERT INTO `base_catalog3` VALUES ('491', '马甲', '55');
INSERT INTO `base_catalog3` VALUES ('492', '连衣裙', '55');
INSERT INTO `base_catalog3` VALUES ('493', '半身裙', '55');
INSERT INTO `base_catalog3` VALUES ('494', '牛仔裤', '55');
INSERT INTO `base_catalog3` VALUES ('495', '休闲裤', '55');
INSERT INTO `base_catalog3` VALUES ('496', '打底裤', '55');
INSERT INTO `base_catalog3` VALUES ('497', '正装裤', '55');
INSERT INTO `base_catalog3` VALUES ('498', '小西装', '55');
INSERT INTO `base_catalog3` VALUES ('499', '短外套', '55');
INSERT INTO `base_catalog3` VALUES ('500', '风衣', '55');
INSERT INTO `base_catalog3` VALUES ('501', '毛呢大衣', '55');
INSERT INTO `base_catalog3` VALUES ('502', '真皮皮衣', '55');
INSERT INTO `base_catalog3` VALUES ('503', '棉服', '55');
INSERT INTO `base_catalog3` VALUES ('504', '羽绒服', '55');
INSERT INTO `base_catalog3` VALUES ('505', '大码女装', '55');
INSERT INTO `base_catalog3` VALUES ('506', '中老年女装', '55');
INSERT INTO `base_catalog3` VALUES ('507', '婚纱', '55');
INSERT INTO `base_catalog3` VALUES ('508', '打底衫', '55');
INSERT INTO `base_catalog3` VALUES ('509', '旗袍/唐装', '55');
INSERT INTO `base_catalog3` VALUES ('510', '加绒裤', '55');
INSERT INTO `base_catalog3` VALUES ('511', '吊带/背心', '55');
INSERT INTO `base_catalog3` VALUES ('512', '羊绒衫', '55');
INSERT INTO `base_catalog3` VALUES ('513', '短裤', '55');
INSERT INTO `base_catalog3` VALUES ('514', '皮草', '55');
INSERT INTO `base_catalog3` VALUES ('515', '礼服', '55');
INSERT INTO `base_catalog3` VALUES ('516', '仿皮皮衣', '55');
INSERT INTO `base_catalog3` VALUES ('517', '羊毛衫', '55');
INSERT INTO `base_catalog3` VALUES ('518', '设计师/潮牌', '55');
INSERT INTO `base_catalog3` VALUES ('519', '衬衫', '56');
INSERT INTO `base_catalog3` VALUES ('520', 'T恤', '56');
INSERT INTO `base_catalog3` VALUES ('521', 'POLO衫', '56');
INSERT INTO `base_catalog3` VALUES ('522', '针织衫', '56');
INSERT INTO `base_catalog3` VALUES ('523', '羊绒衫', '56');
INSERT INTO `base_catalog3` VALUES ('524', '卫衣', '56');
INSERT INTO `base_catalog3` VALUES ('525', '马甲/背心', '56');
INSERT INTO `base_catalog3` VALUES ('526', '夹克', '56');
INSERT INTO `base_catalog3` VALUES ('527', '风衣', '56');
INSERT INTO `base_catalog3` VALUES ('528', '毛呢大衣', '56');
INSERT INTO `base_catalog3` VALUES ('529', '仿皮皮衣', '56');
INSERT INTO `base_catalog3` VALUES ('530', '西服', '56');
INSERT INTO `base_catalog3` VALUES ('531', '棉服', '56');
INSERT INTO `base_catalog3` VALUES ('532', '羽绒服', '56');
INSERT INTO `base_catalog3` VALUES ('533', '牛仔裤', '56');
INSERT INTO `base_catalog3` VALUES ('534', '休闲裤', '56');
INSERT INTO `base_catalog3` VALUES ('535', '西裤', '56');
INSERT INTO `base_catalog3` VALUES ('536', '西服套装', '56');
INSERT INTO `base_catalog3` VALUES ('537', '大码男装', '56');
INSERT INTO `base_catalog3` VALUES ('538', '中老年男装', '56');
INSERT INTO `base_catalog3` VALUES ('539', '唐装/中山装', '56');
INSERT INTO `base_catalog3` VALUES ('540', '工装', '56');
INSERT INTO `base_catalog3` VALUES ('541', '真皮皮衣', '56');
INSERT INTO `base_catalog3` VALUES ('542', '加绒裤', '56');
INSERT INTO `base_catalog3` VALUES ('543', '卫裤/运动裤', '56');
INSERT INTO `base_catalog3` VALUES ('544', '短裤', '56');
INSERT INTO `base_catalog3` VALUES ('545', '设计师/潮牌', '56');
INSERT INTO `base_catalog3` VALUES ('546', '羊毛衫', '56');
INSERT INTO `base_catalog3` VALUES ('547', '文胸', '57');
INSERT INTO `base_catalog3` VALUES ('548', '女式内裤', '57');
INSERT INTO `base_catalog3` VALUES ('549', '男式内裤', '57');
INSERT INTO `base_catalog3` VALUES ('550', '睡衣/家居服', '57');
INSERT INTO `base_catalog3` VALUES ('551', '塑身美体', '57');
INSERT INTO `base_catalog3` VALUES ('552', '泳衣', '57');
INSERT INTO `base_catalog3` VALUES ('553', '吊带/背心', '57');
INSERT INTO `base_catalog3` VALUES ('554', '抹胸', '57');
INSERT INTO `base_catalog3` VALUES ('555', '连裤袜/丝袜', '57');
INSERT INTO `base_catalog3` VALUES ('556', '美腿袜', '57');
INSERT INTO `base_catalog3` VALUES ('557', '商务男袜', '57');
INSERT INTO `base_catalog3` VALUES ('558', '保暖内衣', '57');
INSERT INTO `base_catalog3` VALUES ('559', '情侣睡衣', '57');
INSERT INTO `base_catalog3` VALUES ('560', '文胸套装', '57');
INSERT INTO `base_catalog3` VALUES ('561', '少女文胸', '57');
INSERT INTO `base_catalog3` VALUES ('562', '休闲棉袜', '57');
INSERT INTO `base_catalog3` VALUES ('563', '大码内衣', '57');
INSERT INTO `base_catalog3` VALUES ('564', '内衣配件', '57');
INSERT INTO `base_catalog3` VALUES ('565', '打底裤袜', '57');
INSERT INTO `base_catalog3` VALUES ('566', '打底衫', '57');
INSERT INTO `base_catalog3` VALUES ('567', '秋衣秋裤', '57');
INSERT INTO `base_catalog3` VALUES ('568', '情趣内衣', '57');
INSERT INTO `base_catalog3` VALUES ('569', '服装洗护', '58');
INSERT INTO `base_catalog3` VALUES ('570', '太阳镜', '59');
INSERT INTO `base_catalog3` VALUES ('571', '光学镜架/镜片', '59');
INSERT INTO `base_catalog3` VALUES ('572', '围巾/手套/帽子套装', '59');
INSERT INTO `base_catalog3` VALUES ('573', '袖扣', '59');
INSERT INTO `base_catalog3` VALUES ('574', '棒球帽', '59');
INSERT INTO `base_catalog3` VALUES ('575', '毛线帽', '59');
INSERT INTO `base_catalog3` VALUES ('576', '遮阳帽', '59');
INSERT INTO `base_catalog3` VALUES ('577', '老花镜', '59');
INSERT INTO `base_catalog3` VALUES ('578', '装饰眼镜', '59');
INSERT INTO `base_catalog3` VALUES ('579', '防辐射眼镜', '59');
INSERT INTO `base_catalog3` VALUES ('580', '游泳镜', '59');
INSERT INTO `base_catalog3` VALUES ('581', '女士丝巾/围巾/披肩', '59');
INSERT INTO `base_catalog3` VALUES ('582', '男士丝巾/围巾', '59');
INSERT INTO `base_catalog3` VALUES ('583', '鸭舌帽', '59');
INSERT INTO `base_catalog3` VALUES ('584', '贝雷帽', '59');
INSERT INTO `base_catalog3` VALUES ('585', '礼帽', '59');
INSERT INTO `base_catalog3` VALUES ('586', '真皮手套', '59');
INSERT INTO `base_catalog3` VALUES ('587', '毛线手套', '59');
INSERT INTO `base_catalog3` VALUES ('588', '防晒手套', '59');
INSERT INTO `base_catalog3` VALUES ('589', '男士腰带/礼盒', '59');
INSERT INTO `base_catalog3` VALUES ('590', '女士腰带/礼盒', '59');
INSERT INTO `base_catalog3` VALUES ('591', '钥匙扣', '59');
INSERT INTO `base_catalog3` VALUES ('592', '遮阳伞/雨伞', '59');
INSERT INTO `base_catalog3` VALUES ('593', '口罩', '59');
INSERT INTO `base_catalog3` VALUES ('594', '耳罩/耳包', '59');
INSERT INTO `base_catalog3` VALUES ('595', '假领', '59');
INSERT INTO `base_catalog3` VALUES ('596', '毛线/布面料', '59');
INSERT INTO `base_catalog3` VALUES ('597', '领带/领结/领带夹', '59');
INSERT INTO `base_catalog3` VALUES ('598', '男表', '60');
INSERT INTO `base_catalog3` VALUES ('599', '瑞表', '60');
INSERT INTO `base_catalog3` VALUES ('600', '女表', '60');
INSERT INTO `base_catalog3` VALUES ('601', '国表', '60');
INSERT INTO `base_catalog3` VALUES ('602', '日韩表', '60');
INSERT INTO `base_catalog3` VALUES ('603', '欧美表', '60');
INSERT INTO `base_catalog3` VALUES ('604', '德表', '60');
INSERT INTO `base_catalog3` VALUES ('605', '儿童手表', '60');
INSERT INTO `base_catalog3` VALUES ('606', '智能手表', '60');
INSERT INTO `base_catalog3` VALUES ('607', '闹钟', '60');
INSERT INTO `base_catalog3` VALUES ('608', '座钟挂钟', '60');
INSERT INTO `base_catalog3` VALUES ('609', '钟表配件', '60');
INSERT INTO `base_catalog3` VALUES ('610', '商务休闲鞋', '61');
INSERT INTO `base_catalog3` VALUES ('611', '正装鞋', '61');
INSERT INTO `base_catalog3` VALUES ('612', '休闲鞋', '61');
INSERT INTO `base_catalog3` VALUES ('613', '凉鞋/沙滩鞋', '61');
INSERT INTO `base_catalog3` VALUES ('614', '男靴', '61');
INSERT INTO `base_catalog3` VALUES ('615', '功能鞋', '61');
INSERT INTO `base_catalog3` VALUES ('616', '拖鞋/人字拖', '61');
INSERT INTO `base_catalog3` VALUES ('617', '雨鞋/雨靴', '61');
INSERT INTO `base_catalog3` VALUES ('618', '传统布鞋', '61');
INSERT INTO `base_catalog3` VALUES ('619', '鞋配件', '61');
INSERT INTO `base_catalog3` VALUES ('620', '帆布鞋', '61');
INSERT INTO `base_catalog3` VALUES ('621', '增高鞋', '61');
INSERT INTO `base_catalog3` VALUES ('622', '工装鞋', '61');
INSERT INTO `base_catalog3` VALUES ('623', '定制鞋', '61');
INSERT INTO `base_catalog3` VALUES ('624', '高跟鞋', '62');
INSERT INTO `base_catalog3` VALUES ('625', '单鞋', '62');
INSERT INTO `base_catalog3` VALUES ('626', '休闲鞋', '62');
INSERT INTO `base_catalog3` VALUES ('627', '凉鞋', '62');
INSERT INTO `base_catalog3` VALUES ('628', '女靴', '62');
INSERT INTO `base_catalog3` VALUES ('629', '雪地靴', '62');
INSERT INTO `base_catalog3` VALUES ('630', '拖鞋/人字拖', '62');
INSERT INTO `base_catalog3` VALUES ('631', '踝靴', '62');
INSERT INTO `base_catalog3` VALUES ('632', '筒靴', '62');
INSERT INTO `base_catalog3` VALUES ('633', '帆布鞋', '62');
INSERT INTO `base_catalog3` VALUES ('634', '雨鞋/雨靴', '62');
INSERT INTO `base_catalog3` VALUES ('635', '妈妈鞋', '62');
INSERT INTO `base_catalog3` VALUES ('636', '鞋配件', '62');
INSERT INTO `base_catalog3` VALUES ('637', '特色鞋', '62');
INSERT INTO `base_catalog3` VALUES ('638', '鱼嘴鞋', '62');
INSERT INTO `base_catalog3` VALUES ('639', '布鞋/绣花鞋', '62');
INSERT INTO `base_catalog3` VALUES ('640', '马丁靴', '62');
INSERT INTO `base_catalog3` VALUES ('641', '坡跟鞋', '62');
INSERT INTO `base_catalog3` VALUES ('642', '松糕鞋', '62');
INSERT INTO `base_catalog3` VALUES ('643', '内增高', '62');
INSERT INTO `base_catalog3` VALUES ('644', '防水台', '62');
INSERT INTO `base_catalog3` VALUES ('645', '婴幼奶粉', '63');
INSERT INTO `base_catalog3` VALUES ('646', '孕妈奶粉', '63');
INSERT INTO `base_catalog3` VALUES ('647', '益生菌/初乳', '64');
INSERT INTO `base_catalog3` VALUES ('648', '米粉/菜粉', '64');
INSERT INTO `base_catalog3` VALUES ('649', '果泥/果汁', '64');
INSERT INTO `base_catalog3` VALUES ('650', 'DHA', '64');
INSERT INTO `base_catalog3` VALUES ('651', '宝宝零食', '64');
INSERT INTO `base_catalog3` VALUES ('652', '钙铁锌/维生素', '64');
INSERT INTO `base_catalog3` VALUES ('653', '清火/开胃', '64');
INSERT INTO `base_catalog3` VALUES ('654', '面条/粥', '64');
INSERT INTO `base_catalog3` VALUES ('655', '婴儿尿裤', '65');
INSERT INTO `base_catalog3` VALUES ('656', '拉拉裤', '65');
INSERT INTO `base_catalog3` VALUES ('657', '婴儿湿巾', '65');
INSERT INTO `base_catalog3` VALUES ('658', '成人尿裤', '65');
INSERT INTO `base_catalog3` VALUES ('659', '奶瓶奶嘴', '66');
INSERT INTO `base_catalog3` VALUES ('660', '吸奶器', '66');
INSERT INTO `base_catalog3` VALUES ('661', '暖奶消毒', '66');
INSERT INTO `base_catalog3` VALUES ('662', '儿童餐具', '66');
INSERT INTO `base_catalog3` VALUES ('663', '水壶/水杯', '66');
INSERT INTO `base_catalog3` VALUES ('664', '牙胶安抚', '66');
INSERT INTO `base_catalog3` VALUES ('665', '围兜/防溅衣', '66');
INSERT INTO `base_catalog3` VALUES ('666', '辅食料理机', '66');
INSERT INTO `base_catalog3` VALUES ('667', '食物存储', '66');
INSERT INTO `base_catalog3` VALUES ('668', '宝宝护肤', '67');
INSERT INTO `base_catalog3` VALUES ('669', '洗发沐浴', '67');
INSERT INTO `base_catalog3` VALUES ('670', '奶瓶清洗', '67');
INSERT INTO `base_catalog3` VALUES ('671', '驱蚊防晒', '67');
INSERT INTO `base_catalog3` VALUES ('672', '理发器', '67');
INSERT INTO `base_catalog3` VALUES ('673', '洗澡用具', '67');
INSERT INTO `base_catalog3` VALUES ('674', '婴儿口腔清洁', '67');
INSERT INTO `base_catalog3` VALUES ('675', '洗衣液/皂', '67');
INSERT INTO `base_catalog3` VALUES ('676', '日常护理', '67');
INSERT INTO `base_catalog3` VALUES ('677', '座便器', '67');
INSERT INTO `base_catalog3` VALUES ('678', '婴儿推车', '68');
INSERT INTO `base_catalog3` VALUES ('679', '餐椅摇椅', '68');
INSERT INTO `base_catalog3` VALUES ('680', '婴儿床', '68');
INSERT INTO `base_catalog3` VALUES ('681', '学步车', '68');
INSERT INTO `base_catalog3` VALUES ('682', '三轮车', '68');
INSERT INTO `base_catalog3` VALUES ('683', '自行车', '68');
INSERT INTO `base_catalog3` VALUES ('684', '电动车', '68');
INSERT INTO `base_catalog3` VALUES ('685', '扭扭车', '68');
INSERT INTO `base_catalog3` VALUES ('686', '滑板车', '68');
INSERT INTO `base_catalog3` VALUES ('687', '婴儿床垫', '68');
INSERT INTO `base_catalog3` VALUES ('688', '婴儿外出服', '69');
INSERT INTO `base_catalog3` VALUES ('689', '婴儿内衣', '69');
INSERT INTO `base_catalog3` VALUES ('690', '婴儿礼盒', '69');
INSERT INTO `base_catalog3` VALUES ('691', '婴儿鞋帽袜', '69');
INSERT INTO `base_catalog3` VALUES ('692', '安全防护', '69');
INSERT INTO `base_catalog3` VALUES ('693', '家居床品', '69');
INSERT INTO `base_catalog3` VALUES ('694', '睡袋/抱被', '69');
INSERT INTO `base_catalog3` VALUES ('695', '爬行垫', '69');
INSERT INTO `base_catalog3` VALUES ('696', '妈咪包/背婴带', '70');
INSERT INTO `base_catalog3` VALUES ('697', '产后塑身', '70');
INSERT INTO `base_catalog3` VALUES ('698', '文胸/内裤', '70');
INSERT INTO `base_catalog3` VALUES ('699', '防辐射服', '70');
INSERT INTO `base_catalog3` VALUES ('700', '孕妈装', '70');
INSERT INTO `base_catalog3` VALUES ('701', '孕期营养', '70');
INSERT INTO `base_catalog3` VALUES ('702', '孕妇护肤', '70');
INSERT INTO `base_catalog3` VALUES ('703', '待产护理', '70');
INSERT INTO `base_catalog3` VALUES ('704', '月子装', '70');
INSERT INTO `base_catalog3` VALUES ('705', '防溢乳垫', '70');
INSERT INTO `base_catalog3` VALUES ('706', '套装', '71');
INSERT INTO `base_catalog3` VALUES ('707', '上衣', '71');
INSERT INTO `base_catalog3` VALUES ('708', '裤子', '71');
INSERT INTO `base_catalog3` VALUES ('709', '裙子', '71');
INSERT INTO `base_catalog3` VALUES ('710', '内衣/家居服', '71');
INSERT INTO `base_catalog3` VALUES ('711', '羽绒服/棉服', '71');
INSERT INTO `base_catalog3` VALUES ('712', '亲子装', '71');
INSERT INTO `base_catalog3` VALUES ('713', '儿童配饰', '71');
INSERT INTO `base_catalog3` VALUES ('714', '礼服/演出服', '71');
INSERT INTO `base_catalog3` VALUES ('715', '运动鞋', '71');
INSERT INTO `base_catalog3` VALUES ('716', '皮鞋/帆布鞋', '71');
INSERT INTO `base_catalog3` VALUES ('717', '靴子', '71');
INSERT INTO `base_catalog3` VALUES ('718', '凉鞋', '71');
INSERT INTO `base_catalog3` VALUES ('719', '功能鞋', '71');
INSERT INTO `base_catalog3` VALUES ('720', '户外/运动服', '71');
INSERT INTO `base_catalog3` VALUES ('721', '提篮式', '72');
INSERT INTO `base_catalog3` VALUES ('722', '安全座椅', '72');
INSERT INTO `base_catalog3` VALUES ('723', '增高垫', '72');
INSERT INTO `base_catalog3` VALUES ('724', '钱包', '73');
INSERT INTO `base_catalog3` VALUES ('725', '手拿包', '73');
INSERT INTO `base_catalog3` VALUES ('726', '单肩包', '73');
INSERT INTO `base_catalog3` VALUES ('727', '双肩包', '73');
INSERT INTO `base_catalog3` VALUES ('728', '手提包', '73');
INSERT INTO `base_catalog3` VALUES ('729', '斜挎包', '73');
INSERT INTO `base_catalog3` VALUES ('730', '钥匙包', '73');
INSERT INTO `base_catalog3` VALUES ('731', '卡包/零钱包', '73');
INSERT INTO `base_catalog3` VALUES ('732', '男士钱包', '74');
INSERT INTO `base_catalog3` VALUES ('733', '男士手包', '74');
INSERT INTO `base_catalog3` VALUES ('734', '卡包名片夹', '74');
INSERT INTO `base_catalog3` VALUES ('735', '商务公文包', '74');
INSERT INTO `base_catalog3` VALUES ('736', '双肩包', '74');
INSERT INTO `base_catalog3` VALUES ('737', '单肩/斜挎包', '74');
INSERT INTO `base_catalog3` VALUES ('738', '钥匙包', '74');
INSERT INTO `base_catalog3` VALUES ('739', '电脑包', '75');
INSERT INTO `base_catalog3` VALUES ('740', '拉杆箱', '75');
INSERT INTO `base_catalog3` VALUES ('741', '旅行包', '75');
INSERT INTO `base_catalog3` VALUES ('742', '旅行配件', '75');
INSERT INTO `base_catalog3` VALUES ('743', '休闲运动包', '75');
INSERT INTO `base_catalog3` VALUES ('744', '拉杆包', '75');
INSERT INTO `base_catalog3` VALUES ('745', '登山包', '75');
INSERT INTO `base_catalog3` VALUES ('746', '妈咪包', '75');
INSERT INTO `base_catalog3` VALUES ('747', '书包', '75');
INSERT INTO `base_catalog3` VALUES ('748', '相机包', '75');
INSERT INTO `base_catalog3` VALUES ('749', '腰包/胸包', '75');
INSERT INTO `base_catalog3` VALUES ('750', '火机烟具', '76');
INSERT INTO `base_catalog3` VALUES ('751', '礼品文具', '76');
INSERT INTO `base_catalog3` VALUES ('752', '军刀军具', '76');
INSERT INTO `base_catalog3` VALUES ('753', '收藏品', '76');
INSERT INTO `base_catalog3` VALUES ('754', '工艺礼品', '76');
INSERT INTO `base_catalog3` VALUES ('755', '创意礼品', '76');
INSERT INTO `base_catalog3` VALUES ('756', '礼盒礼券', '76');
INSERT INTO `base_catalog3` VALUES ('757', '鲜花绿植', '76');
INSERT INTO `base_catalog3` VALUES ('758', '婚庆节庆', '76');
INSERT INTO `base_catalog3` VALUES ('759', '京东卡', '76');
INSERT INTO `base_catalog3` VALUES ('760', '美妆礼品', '76');
INSERT INTO `base_catalog3` VALUES ('761', '礼品定制', '76');
INSERT INTO `base_catalog3` VALUES ('762', '京东福卡', '76');
INSERT INTO `base_catalog3` VALUES ('763', '古董文玩', '76');
INSERT INTO `base_catalog3` VALUES ('764', '箱包', '77');
INSERT INTO `base_catalog3` VALUES ('765', '钱包', '77');
INSERT INTO `base_catalog3` VALUES ('766', '服饰', '77');
INSERT INTO `base_catalog3` VALUES ('767', '腰带', '77');
INSERT INTO `base_catalog3` VALUES ('768', '太阳镜/眼镜框', '77');
INSERT INTO `base_catalog3` VALUES ('769', '配件', '77');
INSERT INTO `base_catalog3` VALUES ('770', '鞋靴', '77');
INSERT INTO `base_catalog3` VALUES ('771', '饰品', '77');
INSERT INTO `base_catalog3` VALUES ('772', '名品腕表', '77');
INSERT INTO `base_catalog3` VALUES ('773', '高档化妆品', '77');
INSERT INTO `base_catalog3` VALUES ('774', '婚嫁首饰', '78');
INSERT INTO `base_catalog3` VALUES ('775', '婚纱摄影', '78');
INSERT INTO `base_catalog3` VALUES ('776', '婚纱礼服', '78');
INSERT INTO `base_catalog3` VALUES ('777', '婚庆服务', '78');
INSERT INTO `base_catalog3` VALUES ('778', '婚庆礼品/用品', '78');
INSERT INTO `base_catalog3` VALUES ('779', '婚宴', '78');
INSERT INTO `base_catalog3` VALUES ('780', '饼干蛋糕', '79');
INSERT INTO `base_catalog3` VALUES ('781', '糖果/巧克力', '79');
INSERT INTO `base_catalog3` VALUES ('782', '休闲零食', '79');
INSERT INTO `base_catalog3` VALUES ('783', '冲调饮品', '79');
INSERT INTO `base_catalog3` VALUES ('784', '粮油调味', '79');
INSERT INTO `base_catalog3` VALUES ('785', '牛奶', '79');
INSERT INTO `base_catalog3` VALUES ('786', '其他特产', '80');
INSERT INTO `base_catalog3` VALUES ('787', '新疆', '80');
INSERT INTO `base_catalog3` VALUES ('788', '北京', '80');
INSERT INTO `base_catalog3` VALUES ('789', '山西', '80');
INSERT INTO `base_catalog3` VALUES ('790', '内蒙古', '80');
INSERT INTO `base_catalog3` VALUES ('791', '福建', '80');
INSERT INTO `base_catalog3` VALUES ('792', '湖南', '80');
INSERT INTO `base_catalog3` VALUES ('793', '四川', '80');
INSERT INTO `base_catalog3` VALUES ('794', '云南', '80');
INSERT INTO `base_catalog3` VALUES ('795', '东北', '80');
INSERT INTO `base_catalog3` VALUES ('796', '休闲零食', '81');
INSERT INTO `base_catalog3` VALUES ('797', '坚果炒货', '81');
INSERT INTO `base_catalog3` VALUES ('798', '肉干肉脯', '81');
INSERT INTO `base_catalog3` VALUES ('799', '蜜饯果干', '81');
INSERT INTO `base_catalog3` VALUES ('800', '糖果/巧克力', '81');
INSERT INTO `base_catalog3` VALUES ('801', '饼干蛋糕', '81');
INSERT INTO `base_catalog3` VALUES ('802', '无糖食品', '81');
INSERT INTO `base_catalog3` VALUES ('803', '米面杂粮', '82');
INSERT INTO `base_catalog3` VALUES ('804', '食用油', '82');
INSERT INTO `base_catalog3` VALUES ('805', '调味品', '82');
INSERT INTO `base_catalog3` VALUES ('806', '南北干货', '82');
INSERT INTO `base_catalog3` VALUES ('807', '方便食品', '82');
INSERT INTO `base_catalog3` VALUES ('808', '有机食品', '82');
INSERT INTO `base_catalog3` VALUES ('809', '饮用水', '83');
INSERT INTO `base_catalog3` VALUES ('810', '饮料', '83');
INSERT INTO `base_catalog3` VALUES ('811', '牛奶乳品', '83');
INSERT INTO `base_catalog3` VALUES ('812', '咖啡/奶茶', '83');
INSERT INTO `base_catalog3` VALUES ('813', '冲饮谷物', '83');
INSERT INTO `base_catalog3` VALUES ('814', '蜂蜜/柚子茶', '83');
INSERT INTO `base_catalog3` VALUES ('815', '成人奶粉', '83');
INSERT INTO `base_catalog3` VALUES ('816', '月饼', '84');
INSERT INTO `base_catalog3` VALUES ('817', '大闸蟹', '84');
INSERT INTO `base_catalog3` VALUES ('818', '粽子', '84');
INSERT INTO `base_catalog3` VALUES ('819', '卡券', '84');
INSERT INTO `base_catalog3` VALUES ('820', '铁观音', '85');
INSERT INTO `base_catalog3` VALUES ('821', '普洱', '85');
INSERT INTO `base_catalog3` VALUES ('822', '龙井', '85');
INSERT INTO `base_catalog3` VALUES ('823', '绿茶', '85');
INSERT INTO `base_catalog3` VALUES ('824', '红茶', '85');
INSERT INTO `base_catalog3` VALUES ('825', '乌龙茶', '85');
INSERT INTO `base_catalog3` VALUES ('826', '花草茶', '85');
INSERT INTO `base_catalog3` VALUES ('827', '花果茶', '85');
INSERT INTO `base_catalog3` VALUES ('828', '养生茶', '85');
INSERT INTO `base_catalog3` VALUES ('829', '黑茶', '85');
INSERT INTO `base_catalog3` VALUES ('830', '白茶', '85');
INSERT INTO `base_catalog3` VALUES ('831', '其它茶', '85');
INSERT INTO `base_catalog3` VALUES ('832', '项链', '86');
INSERT INTO `base_catalog3` VALUES ('833', '手链/脚链', '86');
INSERT INTO `base_catalog3` VALUES ('834', '戒指', '86');
INSERT INTO `base_catalog3` VALUES ('835', '耳饰', '86');
INSERT INTO `base_catalog3` VALUES ('836', '毛衣链', '86');
INSERT INTO `base_catalog3` VALUES ('837', '发饰/发卡', '86');
INSERT INTO `base_catalog3` VALUES ('838', '胸针', '86');
INSERT INTO `base_catalog3` VALUES ('839', '饰品配件', '86');
INSERT INTO `base_catalog3` VALUES ('840', '婚庆饰品', '86');
INSERT INTO `base_catalog3` VALUES ('841', '黄金吊坠', '87');
INSERT INTO `base_catalog3` VALUES ('842', '黄金项链', '87');
INSERT INTO `base_catalog3` VALUES ('843', '黄金转运珠', '87');
INSERT INTO `base_catalog3` VALUES ('844', '黄金手镯/手链/脚链', '87');
INSERT INTO `base_catalog3` VALUES ('845', '黄金耳饰', '87');
INSERT INTO `base_catalog3` VALUES ('846', '黄金戒指', '87');
INSERT INTO `base_catalog3` VALUES ('847', 'K金吊坠', '88');
INSERT INTO `base_catalog3` VALUES ('848', 'K金项链', '88');
INSERT INTO `base_catalog3` VALUES ('849', 'K金手镯/手链/脚链', '88');
INSERT INTO `base_catalog3` VALUES ('850', 'K金戒指', '88');
INSERT INTO `base_catalog3` VALUES ('851', 'K金耳饰', '88');
INSERT INTO `base_catalog3` VALUES ('852', '投资金', '89');
INSERT INTO `base_catalog3` VALUES ('853', '投资银', '89');
INSERT INTO `base_catalog3` VALUES ('854', '投资收藏', '89');
INSERT INTO `base_catalog3` VALUES ('855', '银吊坠/项链', '90');
INSERT INTO `base_catalog3` VALUES ('856', '银手镯/手链/脚链', '90');
INSERT INTO `base_catalog3` VALUES ('857', '银戒指', '90');
INSERT INTO `base_catalog3` VALUES ('858', '银耳饰', '90');
INSERT INTO `base_catalog3` VALUES ('859', '足银手镯', '90');
INSERT INTO `base_catalog3` VALUES ('860', '宝宝银饰', '90');
INSERT INTO `base_catalog3` VALUES ('861', '裸钻', '91');
INSERT INTO `base_catalog3` VALUES ('862', '钻戒', '91');
INSERT INTO `base_catalog3` VALUES ('863', '钻石项链/吊坠', '91');
INSERT INTO `base_catalog3` VALUES ('864', '钻石耳饰', '91');
INSERT INTO `base_catalog3` VALUES ('865', '钻石手镯/手链', '91');
INSERT INTO `base_catalog3` VALUES ('866', '项链/吊坠', '92');
INSERT INTO `base_catalog3` VALUES ('867', '手镯/手串', '92');
INSERT INTO `base_catalog3` VALUES ('868', '戒指', '92');
INSERT INTO `base_catalog3` VALUES ('869', '耳饰', '92');
INSERT INTO `base_catalog3` VALUES ('870', '挂件/摆件/把件', '92');
INSERT INTO `base_catalog3` VALUES ('871', '玉石孤品', '92');
INSERT INTO `base_catalog3` VALUES ('872', '项链/吊坠', '93');
INSERT INTO `base_catalog3` VALUES ('873', '耳饰', '93');
INSERT INTO `base_catalog3` VALUES ('874', '手镯/手链/脚链', '93');
INSERT INTO `base_catalog3` VALUES ('875', '戒指', '93');
INSERT INTO `base_catalog3` VALUES ('876', '头饰/胸针', '93');
INSERT INTO `base_catalog3` VALUES ('877', '摆件/挂件', '93');
INSERT INTO `base_catalog3` VALUES ('878', '琥珀/蜜蜡', '94');
INSERT INTO `base_catalog3` VALUES ('879', '碧玺', '94');
INSERT INTO `base_catalog3` VALUES ('880', '红宝石/蓝宝石', '94');
INSERT INTO `base_catalog3` VALUES ('881', '坦桑石', '94');
INSERT INTO `base_catalog3` VALUES ('882', '珊瑚', '94');
INSERT INTO `base_catalog3` VALUES ('883', '祖母绿', '94');
INSERT INTO `base_catalog3` VALUES ('884', '葡萄石', '94');
INSERT INTO `base_catalog3` VALUES ('885', '其他天然宝石', '94');
INSERT INTO `base_catalog3` VALUES ('886', '项链/吊坠', '94');
INSERT INTO `base_catalog3` VALUES ('887', '耳饰', '94');
INSERT INTO `base_catalog3` VALUES ('888', '手镯/手链', '94');
INSERT INTO `base_catalog3` VALUES ('889', '戒指', '94');
INSERT INTO `base_catalog3` VALUES ('890', '铂金项链/吊坠', '95');
INSERT INTO `base_catalog3` VALUES ('891', '铂金手镯/手链/脚链', '95');
INSERT INTO `base_catalog3` VALUES ('892', '铂金戒指', '95');
INSERT INTO `base_catalog3` VALUES ('893', '铂金耳饰', '95');
INSERT INTO `base_catalog3` VALUES ('894', '小叶紫檀', '96');
INSERT INTO `base_catalog3` VALUES ('895', '黄花梨', '96');
INSERT INTO `base_catalog3` VALUES ('896', '沉香木', '96');
INSERT INTO `base_catalog3` VALUES ('897', '金丝楠', '96');
INSERT INTO `base_catalog3` VALUES ('898', '菩提', '96');
INSERT INTO `base_catalog3` VALUES ('899', '其他', '96');
INSERT INTO `base_catalog3` VALUES ('900', '橄榄核/核桃', '96');
INSERT INTO `base_catalog3` VALUES ('901', '檀香', '96');
INSERT INTO `base_catalog3` VALUES ('902', '珍珠项链', '97');
INSERT INTO `base_catalog3` VALUES ('903', '珍珠吊坠', '97');
INSERT INTO `base_catalog3` VALUES ('904', '珍珠耳饰', '97');
INSERT INTO `base_catalog3` VALUES ('905', '珍珠手链', '97');
INSERT INTO `base_catalog3` VALUES ('906', '珍珠戒指', '97');
INSERT INTO `base_catalog3` VALUES ('907', '珍珠胸针', '97');
INSERT INTO `base_catalog3` VALUES ('908', '机油', '98');
INSERT INTO `base_catalog3` VALUES ('909', '正时皮带', '98');
INSERT INTO `base_catalog3` VALUES ('910', '添加剂', '98');
INSERT INTO `base_catalog3` VALUES ('911', '汽车喇叭', '98');
INSERT INTO `base_catalog3` VALUES ('912', '防冻液', '98');
INSERT INTO `base_catalog3` VALUES ('913', '汽车玻璃', '98');
INSERT INTO `base_catalog3` VALUES ('914', '滤清器', '98');
INSERT INTO `base_catalog3` VALUES ('915', '火花塞', '98');
INSERT INTO `base_catalog3` VALUES ('916', '减震器', '98');
INSERT INTO `base_catalog3` VALUES ('917', '柴机油/辅助油', '98');
INSERT INTO `base_catalog3` VALUES ('918', '雨刷', '98');
INSERT INTO `base_catalog3` VALUES ('919', '车灯', '98');
INSERT INTO `base_catalog3` VALUES ('920', '后视镜', '98');
INSERT INTO `base_catalog3` VALUES ('921', '轮胎', '98');
INSERT INTO `base_catalog3` VALUES ('922', '轮毂', '98');
INSERT INTO `base_catalog3` VALUES ('923', '刹车片/盘', '98');
INSERT INTO `base_catalog3` VALUES ('924', '维修配件', '98');
INSERT INTO `base_catalog3` VALUES ('925', '蓄电池', '98');
INSERT INTO `base_catalog3` VALUES ('926', '底盘装甲/护板', '98');
INSERT INTO `base_catalog3` VALUES ('927', '贴膜', '98');
INSERT INTO `base_catalog3` VALUES ('928', '汽修工具', '98');
INSERT INTO `base_catalog3` VALUES ('929', '改装配件', '98');
INSERT INTO `base_catalog3` VALUES ('930', '导航仪', '99');
INSERT INTO `base_catalog3` VALUES ('931', '安全预警仪', '99');
INSERT INTO `base_catalog3` VALUES ('932', '行车记录仪', '99');
INSERT INTO `base_catalog3` VALUES ('933', '倒车雷达', '99');
INSERT INTO `base_catalog3` VALUES ('934', '蓝牙设备', '99');
INSERT INTO `base_catalog3` VALUES ('935', '车载影音', '99');
INSERT INTO `base_catalog3` VALUES ('936', '净化器', '99');
INSERT INTO `base_catalog3` VALUES ('937', '电源', '99');
INSERT INTO `base_catalog3` VALUES ('938', '智能驾驶', '99');
INSERT INTO `base_catalog3` VALUES ('939', '车载电台', '99');
INSERT INTO `base_catalog3` VALUES ('940', '车载电器配件', '99');
INSERT INTO `base_catalog3` VALUES ('941', '吸尘器', '99');
INSERT INTO `base_catalog3` VALUES ('942', '智能车机', '99');
INSERT INTO `base_catalog3` VALUES ('943', '冰箱', '99');
INSERT INTO `base_catalog3` VALUES ('944', '汽车音响', '99');
INSERT INTO `base_catalog3` VALUES ('945', '车载生活电器', '99');
INSERT INTO `base_catalog3` VALUES ('946', '车蜡', '100');
INSERT INTO `base_catalog3` VALUES ('947', '补漆笔', '100');
INSERT INTO `base_catalog3` VALUES ('948', '玻璃水', '100');
INSERT INTO `base_catalog3` VALUES ('949', '清洁剂', '100');
INSERT INTO `base_catalog3` VALUES ('950', '洗车工具', '100');
INSERT INTO `base_catalog3` VALUES ('951', '镀晶镀膜', '100');
INSERT INTO `base_catalog3` VALUES ('952', '打蜡机', '100');
INSERT INTO `base_catalog3` VALUES ('953', '洗车配件', '100');
INSERT INTO `base_catalog3` VALUES ('954', '洗车机', '100');
INSERT INTO `base_catalog3` VALUES ('955', '洗车水枪', '100');
INSERT INTO `base_catalog3` VALUES ('956', '毛巾掸子', '100');
INSERT INTO `base_catalog3` VALUES ('957', '脚垫', '101');
INSERT INTO `base_catalog3` VALUES ('958', '座垫', '101');
INSERT INTO `base_catalog3` VALUES ('959', '座套', '101');
INSERT INTO `base_catalog3` VALUES ('960', '后备箱垫', '101');
INSERT INTO `base_catalog3` VALUES ('961', '头枕腰靠', '101');
INSERT INTO `base_catalog3` VALUES ('962', '方向盘套', '101');
INSERT INTO `base_catalog3` VALUES ('963', '香水', '101');
INSERT INTO `base_catalog3` VALUES ('964', '空气净化', '101');
INSERT INTO `base_catalog3` VALUES ('965', '挂件摆件', '101');
INSERT INTO `base_catalog3` VALUES ('966', '功能小件', '101');
INSERT INTO `base_catalog3` VALUES ('967', '车身装饰件', '101');
INSERT INTO `base_catalog3` VALUES ('968', '车衣', '101');
INSERT INTO `base_catalog3` VALUES ('969', '安全座椅', '102');
INSERT INTO `base_catalog3` VALUES ('970', '胎压监测', '102');
INSERT INTO `base_catalog3` VALUES ('971', '防盗设备', '102');
INSERT INTO `base_catalog3` VALUES ('972', '应急救援', '102');
INSERT INTO `base_catalog3` VALUES ('973', '保温箱', '102');
INSERT INTO `base_catalog3` VALUES ('974', '地锁', '102');
INSERT INTO `base_catalog3` VALUES ('975', '摩托车', '102');
INSERT INTO `base_catalog3` VALUES ('976', '充气泵', '102');
INSERT INTO `base_catalog3` VALUES ('977', '储物箱', '102');
INSERT INTO `base_catalog3` VALUES ('978', '自驾野营', '102');
INSERT INTO `base_catalog3` VALUES ('979', '摩托车装备', '102');
INSERT INTO `base_catalog3` VALUES ('980', '清洗美容', '103');
INSERT INTO `base_catalog3` VALUES ('981', '功能升级', '103');
INSERT INTO `base_catalog3` VALUES ('982', '保养维修', '103');
INSERT INTO `base_catalog3` VALUES ('983', '油卡充值', '103');
INSERT INTO `base_catalog3` VALUES ('984', '车险', '103');
INSERT INTO `base_catalog3` VALUES ('985', '加油卡', '103');
INSERT INTO `base_catalog3` VALUES ('986', 'ETC', '103');
INSERT INTO `base_catalog3` VALUES ('987', '驾驶培训', '103');
INSERT INTO `base_catalog3` VALUES ('988', '赛事服装', '104');
INSERT INTO `base_catalog3` VALUES ('989', '赛事用品', '104');
INSERT INTO `base_catalog3` VALUES ('990', '制动系统', '104');
INSERT INTO `base_catalog3` VALUES ('991', '悬挂系统', '104');
INSERT INTO `base_catalog3` VALUES ('992', '进气系统', '104');
INSERT INTO `base_catalog3` VALUES ('993', '排气系统', '104');
INSERT INTO `base_catalog3` VALUES ('994', '电子管理', '104');
INSERT INTO `base_catalog3` VALUES ('995', '车身强化', '104');
INSERT INTO `base_catalog3` VALUES ('996', '赛事座椅', '104');
INSERT INTO `base_catalog3` VALUES ('997', '跑步鞋', '105');
INSERT INTO `base_catalog3` VALUES ('998', '休闲鞋', '105');
INSERT INTO `base_catalog3` VALUES ('999', '篮球鞋', '105');
INSERT INTO `base_catalog3` VALUES ('1000', '板鞋', '105');
INSERT INTO `base_catalog3` VALUES ('1001', '帆布鞋', '105');
INSERT INTO `base_catalog3` VALUES ('1002', '足球鞋', '105');
INSERT INTO `base_catalog3` VALUES ('1003', '乒羽网鞋', '105');
INSERT INTO `base_catalog3` VALUES ('1004', '专项运动鞋', '105');
INSERT INTO `base_catalog3` VALUES ('1005', '训练鞋', '105');
INSERT INTO `base_catalog3` VALUES ('1006', '拖鞋', '105');
INSERT INTO `base_catalog3` VALUES ('1007', '运动包', '105');
INSERT INTO `base_catalog3` VALUES ('1008', '羽绒服', '106');
INSERT INTO `base_catalog3` VALUES ('1009', '棉服', '106');
INSERT INTO `base_catalog3` VALUES ('1010', '运动裤', '106');
INSERT INTO `base_catalog3` VALUES ('1011', '夹克/风衣', '106');
INSERT INTO `base_catalog3` VALUES ('1012', '卫衣/套头衫', '106');
INSERT INTO `base_catalog3` VALUES ('1013', 'T恤', '106');
INSERT INTO `base_catalog3` VALUES ('1014', '套装', '106');
INSERT INTO `base_catalog3` VALUES ('1015', '乒羽网服', '106');
INSERT INTO `base_catalog3` VALUES ('1016', '健身服', '106');
INSERT INTO `base_catalog3` VALUES ('1017', '运动背心', '106');
INSERT INTO `base_catalog3` VALUES ('1018', '毛衫/线衫', '106');
INSERT INTO `base_catalog3` VALUES ('1019', '运动配饰', '106');
INSERT INTO `base_catalog3` VALUES ('1020', '折叠车', '107');
INSERT INTO `base_catalog3` VALUES ('1021', '山地车/公路车', '107');
INSERT INTO `base_catalog3` VALUES ('1022', '电动车', '107');
INSERT INTO `base_catalog3` VALUES ('1023', '其他整车', '107');
INSERT INTO `base_catalog3` VALUES ('1024', '骑行服', '107');
INSERT INTO `base_catalog3` VALUES ('1025', '骑行装备', '107');
INSERT INTO `base_catalog3` VALUES ('1026', '平衡车', '107');
INSERT INTO `base_catalog3` VALUES ('1027', '鱼竿鱼线', '108');
INSERT INTO `base_catalog3` VALUES ('1028', '浮漂鱼饵', '108');
INSERT INTO `base_catalog3` VALUES ('1029', '钓鱼桌椅', '108');
INSERT INTO `base_catalog3` VALUES ('1030', '钓鱼配件', '108');
INSERT INTO `base_catalog3` VALUES ('1031', '钓箱鱼包', '108');
INSERT INTO `base_catalog3` VALUES ('1032', '其它', '108');
INSERT INTO `base_catalog3` VALUES ('1033', '泳镜', '109');
INSERT INTO `base_catalog3` VALUES ('1034', '泳帽', '109');
INSERT INTO `base_catalog3` VALUES ('1035', '游泳包防水包', '109');
INSERT INTO `base_catalog3` VALUES ('1036', '女士泳衣', '109');
INSERT INTO `base_catalog3` VALUES ('1037', '男士泳衣', '109');
INSERT INTO `base_catalog3` VALUES ('1038', '比基尼', '109');
INSERT INTO `base_catalog3` VALUES ('1039', '其它', '109');
INSERT INTO `base_catalog3` VALUES ('1040', '冲锋衣裤', '110');
INSERT INTO `base_catalog3` VALUES ('1041', '速干衣裤', '110');
INSERT INTO `base_catalog3` VALUES ('1042', '滑雪服', '110');
INSERT INTO `base_catalog3` VALUES ('1043', '羽绒服/棉服', '110');
INSERT INTO `base_catalog3` VALUES ('1044', '休闲衣裤', '110');
INSERT INTO `base_catalog3` VALUES ('1045', '抓绒衣裤', '110');
INSERT INTO `base_catalog3` VALUES ('1046', '软壳衣裤', '110');
INSERT INTO `base_catalog3` VALUES ('1047', 'T恤', '110');
INSERT INTO `base_catalog3` VALUES ('1048', '户外风衣', '110');
INSERT INTO `base_catalog3` VALUES ('1049', '功能内衣', '110');
INSERT INTO `base_catalog3` VALUES ('1050', '军迷服饰', '110');
INSERT INTO `base_catalog3` VALUES ('1051', '登山鞋', '110');
INSERT INTO `base_catalog3` VALUES ('1052', '雪地靴', '110');
INSERT INTO `base_catalog3` VALUES ('1053', '徒步鞋', '110');
INSERT INTO `base_catalog3` VALUES ('1054', '越野跑鞋', '110');
INSERT INTO `base_catalog3` VALUES ('1055', '休闲鞋', '110');
INSERT INTO `base_catalog3` VALUES ('1056', '工装鞋', '110');
INSERT INTO `base_catalog3` VALUES ('1057', '溯溪鞋', '110');
INSERT INTO `base_catalog3` VALUES ('1058', '沙滩/凉拖', '110');
INSERT INTO `base_catalog3` VALUES ('1059', '户外袜', '110');
INSERT INTO `base_catalog3` VALUES ('1060', '帐篷/垫子', '111');
INSERT INTO `base_catalog3` VALUES ('1061', '睡袋/吊床', '111');
INSERT INTO `base_catalog3` VALUES ('1062', '登山攀岩', '111');
INSERT INTO `base_catalog3` VALUES ('1063', '户外配饰', '111');
INSERT INTO `base_catalog3` VALUES ('1064', '背包', '111');
INSERT INTO `base_catalog3` VALUES ('1065', '户外照明', '111');
INSERT INTO `base_catalog3` VALUES ('1066', '户外仪表', '111');
INSERT INTO `base_catalog3` VALUES ('1067', '户外工具', '111');
INSERT INTO `base_catalog3` VALUES ('1068', '望远镜', '111');
INSERT INTO `base_catalog3` VALUES ('1069', '旅游用品', '111');
INSERT INTO `base_catalog3` VALUES ('1070', '便携桌椅床', '111');
INSERT INTO `base_catalog3` VALUES ('1071', '野餐烧烤', '111');
INSERT INTO `base_catalog3` VALUES ('1072', '军迷用品', '111');
INSERT INTO `base_catalog3` VALUES ('1073', '救援装备', '111');
INSERT INTO `base_catalog3` VALUES ('1074', '滑雪装备', '111');
INSERT INTO `base_catalog3` VALUES ('1075', '极限户外', '111');
INSERT INTO `base_catalog3` VALUES ('1076', '冲浪潜水', '111');
INSERT INTO `base_catalog3` VALUES ('1077', '综合训练器', '112');
INSERT INTO `base_catalog3` VALUES ('1078', '其他大型器械', '112');
INSERT INTO `base_catalog3` VALUES ('1079', '哑铃', '112');
INSERT INTO `base_catalog3` VALUES ('1080', '仰卧板/收腹机', '112');
INSERT INTO `base_catalog3` VALUES ('1081', '其他中小型器材', '112');
INSERT INTO `base_catalog3` VALUES ('1082', '瑜伽舞蹈', '112');
INSERT INTO `base_catalog3` VALUES ('1083', '甩脂机', '112');
INSERT INTO `base_catalog3` VALUES ('1084', '踏步机', '112');
INSERT INTO `base_catalog3` VALUES ('1085', '武术搏击', '112');
INSERT INTO `base_catalog3` VALUES ('1086', '健身车/动感单车', '112');
INSERT INTO `base_catalog3` VALUES ('1087', '跑步机', '112');
INSERT INTO `base_catalog3` VALUES ('1088', '运动护具', '112');
INSERT INTO `base_catalog3` VALUES ('1089', '羽毛球', '113');
INSERT INTO `base_catalog3` VALUES ('1090', '乒乓球', '113');
INSERT INTO `base_catalog3` VALUES ('1091', '篮球', '113');
INSERT INTO `base_catalog3` VALUES ('1092', '足球', '113');
INSERT INTO `base_catalog3` VALUES ('1093', '网球', '113');
INSERT INTO `base_catalog3` VALUES ('1094', '排球', '113');
INSERT INTO `base_catalog3` VALUES ('1095', '高尔夫', '113');
INSERT INTO `base_catalog3` VALUES ('1096', '台球', '113');
INSERT INTO `base_catalog3` VALUES ('1097', '棋牌麻将', '113');
INSERT INTO `base_catalog3` VALUES ('1098', '轮滑滑板', '113');
INSERT INTO `base_catalog3` VALUES ('1099', '其他', '113');
INSERT INTO `base_catalog3` VALUES ('1100', '0-6个月', '114');
INSERT INTO `base_catalog3` VALUES ('1101', '6-12个月', '114');
INSERT INTO `base_catalog3` VALUES ('1102', '1-3岁', '114');
INSERT INTO `base_catalog3` VALUES ('1103', '3-6岁', '114');
INSERT INTO `base_catalog3` VALUES ('1104', '6-14岁', '114');
INSERT INTO `base_catalog3` VALUES ('1105', '14岁以上', '114');
INSERT INTO `base_catalog3` VALUES ('1106', '遥控车', '115');
INSERT INTO `base_catalog3` VALUES ('1107', '遥控飞机', '115');
INSERT INTO `base_catalog3` VALUES ('1108', '遥控船', '115');
INSERT INTO `base_catalog3` VALUES ('1109', '机器人', '115');
INSERT INTO `base_catalog3` VALUES ('1110', '轨道/助力', '115');
INSERT INTO `base_catalog3` VALUES ('1111', '毛绒/布艺', '116');
INSERT INTO `base_catalog3` VALUES ('1112', '靠垫/抱枕', '116');
INSERT INTO `base_catalog3` VALUES ('1113', '芭比娃娃', '117');
INSERT INTO `base_catalog3` VALUES ('1114', '卡通娃娃', '117');
INSERT INTO `base_catalog3` VALUES ('1115', '智能娃娃', '117');
INSERT INTO `base_catalog3` VALUES ('1116', '仿真模型', '118');
INSERT INTO `base_catalog3` VALUES ('1117', '拼插模型', '118');
INSERT INTO `base_catalog3` VALUES ('1118', '收藏爱好', '118');
INSERT INTO `base_catalog3` VALUES ('1119', '炫舞毯', '119');
INSERT INTO `base_catalog3` VALUES ('1120', '爬行垫/毯', '119');
INSERT INTO `base_catalog3` VALUES ('1121', '户外玩具', '119');
INSERT INTO `base_catalog3` VALUES ('1122', '戏水玩具', '119');
INSERT INTO `base_catalog3` VALUES ('1123', '电影周边', '120');
INSERT INTO `base_catalog3` VALUES ('1124', '卡通周边', '120');
INSERT INTO `base_catalog3` VALUES ('1125', '网游周边', '120');
INSERT INTO `base_catalog3` VALUES ('1126', '摇铃/床铃', '121');
INSERT INTO `base_catalog3` VALUES ('1127', '健身架', '121');
INSERT INTO `base_catalog3` VALUES ('1128', '早教启智', '121');
INSERT INTO `base_catalog3` VALUES ('1129', '拖拉玩具', '121');
INSERT INTO `base_catalog3` VALUES ('1130', '积木', '122');
INSERT INTO `base_catalog3` VALUES ('1131', '拼图', '122');
INSERT INTO `base_catalog3` VALUES ('1132', '磁力棒', '122');
INSERT INTO `base_catalog3` VALUES ('1133', '立体拼插', '122');
INSERT INTO `base_catalog3` VALUES ('1134', '手工彩泥', '123');
INSERT INTO `base_catalog3` VALUES ('1135', '绘画工具', '123');
INSERT INTO `base_catalog3` VALUES ('1136', '情景玩具', '123');
INSERT INTO `base_catalog3` VALUES ('1137', '减压玩具', '124');
INSERT INTO `base_catalog3` VALUES ('1138', '创意玩具', '124');
INSERT INTO `base_catalog3` VALUES ('1139', '钢琴', '125');
INSERT INTO `base_catalog3` VALUES ('1140', '电子琴/电钢琴', '125');
INSERT INTO `base_catalog3` VALUES ('1141', '吉他/尤克里里', '125');
INSERT INTO `base_catalog3` VALUES ('1142', '打击乐器', '125');
INSERT INTO `base_catalog3` VALUES ('1143', '西洋管弦', '125');
INSERT INTO `base_catalog3` VALUES ('1144', '民族管弦乐器', '125');
INSERT INTO `base_catalog3` VALUES ('1145', '乐器配件', '125');
INSERT INTO `base_catalog3` VALUES ('1146', '电脑音乐', '125');
INSERT INTO `base_catalog3` VALUES ('1147', '工艺礼品乐器', '125');
INSERT INTO `base_catalog3` VALUES ('1148', '口琴/口风琴/竖笛', '125');
INSERT INTO `base_catalog3` VALUES ('1149', '手风琴', '125');

-- ----------------------------
-- Table structure for `base_dict`
-- ----------------------------
DROP TABLE IF EXISTS `base_dict`;
CREATE TABLE `base_dict` (
  `id` varchar(200) NOT NULL COMMENT '编号',
  `parent_id` varchar(200) DEFAULT NULL COMMENT '父id',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of base_dict
-- ----------------------------

-- ----------------------------
-- Table structure for `base_sale_attr`
-- ----------------------------
DROP TABLE IF EXISTS `base_sale_attr`;
CREATE TABLE `base_sale_attr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) NOT NULL COMMENT '销售属性名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='基本销售属性表';

-- ----------------------------
-- Records of base_sale_attr
-- ----------------------------
INSERT INTO `base_sale_attr` VALUES ('1', '颜色');
INSERT INTO `base_sale_attr` VALUES ('2', '版本');
INSERT INTO `base_sale_attr` VALUES ('3', '尺码');

-- ----------------------------
-- Table structure for `base_trademark`
-- ----------------------------
DROP TABLE IF EXISTS `base_trademark`;
CREATE TABLE `base_trademark` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `tm_name` varchar(100) NOT NULL COMMENT '属性值',
  `logo_url` varchar(200) DEFAULT NULL COMMENT '品牌logo的图片路径',
  `is_enable` varchar(1) DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='品牌表';

-- ----------------------------
-- Records of base_trademark
-- ----------------------------

-- ----------------------------
-- Table structure for `cart_info`
-- ----------------------------
DROP TABLE IF EXISTS `cart_info`;
CREATE TABLE `cart_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `sku_id` bigint(20) DEFAULT NULL COMMENT 'skuid',
  `cart_price` decimal(10,2) DEFAULT NULL COMMENT '放入购物车时价格',
  `sku_num` int(11) DEFAULT NULL COMMENT '数量',
  `img_url` varchar(200) DEFAULT NULL COMMENT '图片文件',
  `sku_name` varchar(200) DEFAULT NULL COMMENT 'sku名称 (冗余)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='购物车表 用户登录系统时更新冗余';

-- ----------------------------
-- Records of cart_info
-- ----------------------------
INSERT INTO `cart_info` VALUES ('10', '2', '18', '1999.00', '8', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAfzhyAABv_ho6M2s616.jpg', '小米6X');
INSERT INTO `cart_info` VALUES ('11', '2', '19', '0.01', '10', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uACb2jAABvI_LYeVc728.jpg', '果果');
INSERT INTO `cart_info` VALUES ('12', '1', '18', '1999.00', '3', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAfzhyAABv_ho6M2s616.jpg', '小米6X');
INSERT INTO `cart_info` VALUES ('13', '1', '20', '9999.00', '2', 'http://192.168.67.200/group1/M00/00/00/wKhDyFtIFGSARHfOAAMVBZhw5ts422.png', '联想(Lenovo)拯救者R720');
INSERT INTO `cart_info` VALUES ('15', '2', '17', '10000.00', '1', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAaIGhAACDUfqh01k599.jpg', '小米100');
INSERT INTO `cart_info` VALUES ('16', '2', '20', '9999.00', '4', 'http://192.168.67.200/group1/M00/00/00/wKhDyFtIFGSARHfOAAMVBZhw5ts422.png', '联想(Lenovo)拯救者R720');
INSERT INTO `cart_info` VALUES ('17', '2', '28', '2777.00', '21', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLKADB6XAABvI_LYeVc047.jpg', '小米77二代');
INSERT INTO `cart_info` VALUES ('18', '2', '27', '2999.00', '3', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLGAFdpQAABv_ho6M2s289.jpg', '小米77一代');
INSERT INTO `cart_info` VALUES ('21', '2', '31', '2999.00', '2', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ42ARr7rAABvJzmlwFs496.jpg', '小米88二代');
INSERT INTO `cart_info` VALUES ('22', '2', '32', '3999.00', '1', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ42AGEopAABv-lCqbtw709.jpg', '小米三代');
INSERT INTO `cart_info` VALUES ('25', '1', '39', '5699.00', '21', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '小米3代');
INSERT INTO `cart_info` VALUES ('26', '1', '38', '2499.00', '31', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '小米手机note2');
INSERT INTO `cart_info` VALUES ('27', '2', '38', '2499.00', '7', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '小米手机note2');
INSERT INTO `cart_info` VALUES ('28', '2', '39', '5699.00', '7', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '小米3代');

-- ----------------------------
-- Table structure for `order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单编号',
  `sku_id` bigint(20) DEFAULT NULL COMMENT 'sku_id',
  `sku_name` varchar(200) DEFAULT NULL COMMENT 'sku名称（冗余)',
  `img_url` varchar(200) DEFAULT NULL COMMENT '图片名称（冗余)',
  `order_price` decimal(10,0) DEFAULT NULL COMMENT '购买价格(下单时sku价格）',
  `sku_num` varchar(200) DEFAULT NULL COMMENT '购买个数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 COMMENT='订单明细表';

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('1', '2', '2', '小米 红米Note5 全网通版 4GB+64GB 黑色 移动联通电信4G手机 双卡双待', null, '1111', '27');
INSERT INTO `order_detail` VALUES ('2', '2', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('3', '3', '2', '小米 红米Note5 全网通版 4GB+64GB 黑色 移动联通电信4G手机 双卡双待', null, '1111', '27');
INSERT INTO `order_detail` VALUES ('4', '3', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('5', '4', '2', '小米 红米Note5 全网通版 4GB+64GB 黑色 移动联通电信4G手机 双卡双待', null, '1111', '27');
INSERT INTO `order_detail` VALUES ('6', '4', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('7', '5', '2', '小米 红米Note5 全网通版 4GB+64GB 黑色 移动联通电信4G手机 双卡双待', null, '1111', '27');
INSERT INTO `order_detail` VALUES ('8', '5', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('9', '6', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('10', '7', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('11', '8', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '3');
INSERT INTO `order_detail` VALUES ('12', '9', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('13', '10', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('14', '11', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('15', '12', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('16', '13', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('17', '14', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('18', '15', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('19', '16', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('20', '17', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('21', '18', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('22', '19', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('23', '8', '2', '小米 红米5 Plus 全面屏拍照手机 全网通版 4GB+64GB 金色 移动联通电信4G手机 双卡双待', null, '1111', '3');
INSERT INTO `order_detail` VALUES ('24', '20', '6', '联想拯救者R720', null, '5999', '8');
INSERT INTO `order_detail` VALUES ('25', '20', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('26', '21', '2', '小米 红米5 Plus 全面屏拍照手机 全网通版 4GB+64GB 金色 移动联通电信4G手机 双卡双待', null, '1111', '3');
INSERT INTO `order_detail` VALUES ('27', '22', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '3');
INSERT INTO `order_detail` VALUES ('28', '23', '2', '小米 红米5 Plus 全面屏拍照手机 全网通版 4GB+64GB 金色 移动联通电信4G手机 双卡双待', null, '1111', '3');
INSERT INTO `order_detail` VALUES ('29', '24', '2', '小米 红米5 Plus 全面屏拍照手机 全网通版 4GB+64GB 金色 移动联通电信4G手机 双卡双待', null, '1111', '3');
INSERT INTO `order_detail` VALUES ('30', '25', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '3');
INSERT INTO `order_detail` VALUES ('31', '26', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '3');
INSERT INTO `order_detail` VALUES ('32', '27', '2', '小米 红米5 Plus 全面屏拍照手机 全网通版 4GB+64GB 金色 移动联通电信4G手机 双卡双待', null, '1111', '3');
INSERT INTO `order_detail` VALUES ('33', '28', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '3');
INSERT INTO `order_detail` VALUES ('34', '29', '6', '联想拯救者R720', null, '5999', '8');
INSERT INTO `order_detail` VALUES ('35', '29', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('36', '30', '6', '联想拯救者R720', null, '5999', '8');
INSERT INTO `order_detail` VALUES ('37', '30', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', null, '999', '6');
INSERT INTO `order_detail` VALUES ('48', '41', '19', '果果', null, '9999', '1');
INSERT INTO `order_detail` VALUES ('53', '53', '20', '联想(Lenovo)拯救者R720', null, '9999', '4');
INSERT INTO `order_detail` VALUES ('54', '53', '18', '小米6X', null, '1999', '3');
INSERT INTO `order_detail` VALUES ('69', '68', '18', '小米6X', null, '1999', '3');
INSERT INTO `order_detail` VALUES ('70', '69', '20', '联想(Lenovo)拯救者R720', null, '9999', '4');
INSERT INTO `order_detail` VALUES ('79', '75', '28', '小米77二代', null, '2777', '21');
INSERT INTO `order_detail` VALUES ('80', '75', '27', '小米77一代', null, '2999', '3');
INSERT INTO `order_detail` VALUES ('83', '76', '18', '小米6X', null, '1999', '3');
INSERT INTO `order_detail` VALUES ('84', '77', '20', '联想(Lenovo)拯救者R720', null, '9999', '4');
INSERT INTO `order_detail` VALUES ('85', '78', '28', '小米77二代', null, '2777', '21');
INSERT INTO `order_detail` VALUES ('86', '79', '27', '小米77一代', null, '2999', '3');
INSERT INTO `order_detail` VALUES ('87', '80', '28', '小米77二代', null, '2777', '21');
INSERT INTO `order_detail` VALUES ('88', '81', '27', '小米77一代', null, '2999', '3');
INSERT INTO `order_detail` VALUES ('89', '82', '32', '小米三代', null, '3999', '1');
INSERT INTO `order_detail` VALUES ('90', '82', '31', '小米88二代', null, '2999', '2');
INSERT INTO `order_detail` VALUES ('91', '83', '32', '小米三代', null, '3999', '1');
INSERT INTO `order_detail` VALUES ('92', '83', '31', '小米88二代', null, '2999', '2');
INSERT INTO `order_detail` VALUES ('93', '84', '32', '小米三代', null, '3999', '1');
INSERT INTO `order_detail` VALUES ('94', '84', '31', '小米88二代', null, '2999', '2');
INSERT INTO `order_detail` VALUES ('95', '85', '32', '小米三代', null, '3999', '1');
INSERT INTO `order_detail` VALUES ('96', '85', '31', '小米88二代', null, '2999', '2');
INSERT INTO `order_detail` VALUES ('97', '86', '32', '小米三代', null, '3999', '1');
INSERT INTO `order_detail` VALUES ('98', '86', '31', '小米88二代', null, '2999', '2');
INSERT INTO `order_detail` VALUES ('99', '87', '32', '小米三代', null, '3999', '1');
INSERT INTO `order_detail` VALUES ('100', '87', '31', '小米88二代', null, '2999', '2');
INSERT INTO `order_detail` VALUES ('101', '88', '31', '小米88二代', null, '2999', '2');
INSERT INTO `order_detail` VALUES ('102', '88', '32', '小米三代', null, '3999', '1');
INSERT INTO `order_detail` VALUES ('103', '89', '31', '小米88二代', null, '2999', '2');
INSERT INTO `order_detail` VALUES ('104', '89', '32', '小米三代', null, '3999', '1');
INSERT INTO `order_detail` VALUES ('105', '90', '31', '小米88二代', null, '2999', '2');
INSERT INTO `order_detail` VALUES ('106', '90', '32', '小米三代', null, '3999', '1');
INSERT INTO `order_detail` VALUES ('107', '91', '32', '小米三代', null, '3999', '1');
INSERT INTO `order_detail` VALUES ('108', '92', '31', '小米88二代', null, '2999', '2');
INSERT INTO `order_detail` VALUES ('111', '94', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '2');
INSERT INTO `order_detail` VALUES ('112', '95', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '5');
INSERT INTO `order_detail` VALUES ('113', '95', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '2');
INSERT INTO `order_detail` VALUES ('114', '96', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '5');
INSERT INTO `order_detail` VALUES ('115', '96', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '6');
INSERT INTO `order_detail` VALUES ('116', '97', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '5');
INSERT INTO `order_detail` VALUES ('117', '97', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '6');
INSERT INTO `order_detail` VALUES ('118', '98', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '5');
INSERT INTO `order_detail` VALUES ('119', '98', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '6');
INSERT INTO `order_detail` VALUES ('120', '99', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '5');
INSERT INTO `order_detail` VALUES ('121', '99', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '6');
INSERT INTO `order_detail` VALUES ('122', '100', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '5');
INSERT INTO `order_detail` VALUES ('123', '100', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '6');
INSERT INTO `order_detail` VALUES ('124', '101', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '5');
INSERT INTO `order_detail` VALUES ('125', '101', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '6');
INSERT INTO `order_detail` VALUES ('126', '102', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '7');
INSERT INTO `order_detail` VALUES ('127', '102', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '7');
INSERT INTO `order_detail` VALUES ('128', '103', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '7');
INSERT INTO `order_detail` VALUES ('129', '103', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '7');
INSERT INTO `order_detail` VALUES ('130', '104', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '7');
INSERT INTO `order_detail` VALUES ('131', '104', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '7');
INSERT INTO `order_detail` VALUES ('132', '105', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '7');
INSERT INTO `order_detail` VALUES ('133', '105', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '7');
INSERT INTO `order_detail` VALUES ('134', '106', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '7');
INSERT INTO `order_detail` VALUES ('135', '106', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '7');
INSERT INTO `order_detail` VALUES ('136', '107', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '7');
INSERT INTO `order_detail` VALUES ('137', '107', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '7');
INSERT INTO `order_detail` VALUES ('138', '108', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '7');
INSERT INTO `order_detail` VALUES ('139', '108', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '7');
INSERT INTO `order_detail` VALUES ('140', '109', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '7');
INSERT INTO `order_detail` VALUES ('141', '110', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '7');
INSERT INTO `order_detail` VALUES ('142', '111', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '7');
INSERT INTO `order_detail` VALUES ('143', '112', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '7');
INSERT INTO `order_detail` VALUES ('144', '113', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '7');
INSERT INTO `order_detail` VALUES ('145', '113', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '7');
INSERT INTO `order_detail` VALUES ('146', '114', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '7');
INSERT INTO `order_detail` VALUES ('147', '114', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '7');
INSERT INTO `order_detail` VALUES ('148', '115', '39', '小米3代', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '5699', '7');
INSERT INTO `order_detail` VALUES ('149', '116', '38', '小米手机note2', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '2499', '7');

-- ----------------------------
-- Table structure for `order_info`
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `consignee` varchar(100) DEFAULT NULL COMMENT '收货人',
  `consignee_tel` varchar(20) DEFAULT NULL COMMENT '收件人电话',
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT '总金额',
  `order_status` varchar(20) DEFAULT NULL COMMENT '订单状态',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `payment_way` varchar(20) DEFAULT NULL COMMENT '付款方式',
  `delivery_address` varchar(1000) DEFAULT NULL COMMENT '送货地址',
  `order_comment` varchar(200) DEFAULT NULL COMMENT '订单备注',
  `out_trade_no` varchar(50) DEFAULT NULL COMMENT '订单交易编号（第三方支付用)',
  `trade_body` varchar(200) DEFAULT NULL COMMENT '订单描述(第三方支付用)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `expire_time` datetime DEFAULT NULL COMMENT '失效时间',
  `process_status` varchar(20) DEFAULT NULL COMMENT '进度状态',
  `tracking_no` varchar(100) DEFAULT NULL COMMENT '物流单编号',
  `parent_order_id` bigint(20) DEFAULT NULL COMMENT '父订单编号',
  `img_url` varchar(200) DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='订单表 订单表';

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('29', 'admin', null, '53986.00', 'CLOSED', '1', 'ONLINE', '北京市海淀区', 'aaaa', 'ATGUIGU1526983929753100', null, '2018-05-22 18:12:10', '2018-05-23 18:12:10', 'CLOSED', null, null, null);
INSERT INTO `order_info` VALUES ('49', 'atguigu', null, '65988.00', 'CLOSED', '2', 'ONLINE', '北京市昌平区', '', 'ATGUIGU1531882134380575', null, '2018-07-18 10:48:54', '2018-07-19 10:48:54', 'CLOSED', null, null, null);
INSERT INTO `order_info` VALUES ('50', 'atguigu', null, '65988.00', 'CLOSED', '2', 'ONLINE', '北京市昌平区', '', 'ATGUIGU1531882155970160', null, '2018-07-18 10:49:16', '2018-07-19 10:49:16', 'CLOSED', null, null, null);
INSERT INTO `order_info` VALUES ('52', 'atguigu', null, '0.01', 'CLOSED', '2', 'ONLINE', '北京市昌平区', '', 'ATGUIGU1531886076410000', null, '2018-07-18 11:54:36', '2018-07-19 11:54:36', 'CLOSED', null, null, null);
INSERT INTO `order_info` VALUES ('53', 'atguigu', null, '0.01', 'SPLIT', '2', 'ONLINE', '北京市昌平区', '', 'ATGUIGU1532006223102000', null, '2018-07-19 21:17:03', '2018-07-21 21:17:03', 'SPLIT', null, null, null);
INSERT INTO `order_info` VALUES ('68', 'atguigu', null, '0.01', 'WAITING_DELEVER', '2', 'ONLINE', '北京市昌平区', '', 'ATGUIGU1532158895422104', null, '2018-07-21 15:41:35', '2018-07-22 15:41:35', 'WAITING_DELEVER', null, '53', null);
INSERT INTO `order_info` VALUES ('69', 'atguigu', null, '0.01', 'WAITING_DELEVER', '2', 'ONLINE', '北京市昌平区', '', 'ATGUIGU1532158895440117', null, '2018-07-21 15:41:35', '2018-07-22 15:41:35', 'WAITING_DELEVER', null, '53', null);
INSERT INTO `order_info` VALUES ('74', 'atguigu', null, '67314.00', 'CLOSED', '2', 'ONLINE', '北京市昌平区', '', 'ATGUIGU1533715123066400', null, '2018-08-08 15:58:43', '2018-08-09 15:58:43', 'CLOSED', null, null, null);
INSERT INTO `order_info` VALUES ('75', 'atguigu', null, '0.01', 'SPLIT', '2', 'ONLINE', '北京市昌平区', '', 'ATGUIGU1533717976187799', null, '2018-08-08 16:46:16', '2018-08-13 16:46:16', 'SPLIT', null, null, null);
INSERT INTO `order_info` VALUES ('76', 'atguigu', null, '5997.00', 'DELEVERED', '2', 'ONLINE', '北京市昌平区', '', 'ATGUIGU1534146582181553', null, '2018-08-13 15:49:42', '2018-08-14 15:49:42', 'DELEVERED', null, '53', null);
INSERT INTO `order_info` VALUES ('77', 'atguigu', null, '39996.00', 'DELEVERED', '2', 'ONLINE', '北京市昌平区', '', 'ATGUIGU1534146582230832', null, '2018-08-13 15:49:42', '2018-08-14 15:49:42', 'DELEVERED', null, '53', null);
INSERT INTO `order_info` VALUES ('78', 'atguigu', null, '58317.00', 'WAITING_DELEVER', '2', 'ONLINE', '北京市昌平区', '', 'ATGUIGU1534146647815345', null, '2018-08-13 15:50:48', '2018-08-14 15:50:48', 'WAITING_DELEVER', null, '75', null);
INSERT INTO `order_info` VALUES ('79', 'atguigu', null, '8997.00', 'WAITING_DELEVER', '2', 'ONLINE', '北京市昌平区', '', 'ATGUIGU1534146651730238', null, '2018-08-13 15:50:52', '2018-08-14 15:50:52', 'WAITING_DELEVER', null, '75', null);
INSERT INTO `order_info` VALUES ('80', 'atguigu', null, '58317.00', 'SPLIT', '2', 'ONLINE', '北京市昌平区', '', 'ATGUIGU1534146817265535', null, '2018-08-13 15:53:37', '2018-08-14 15:53:37', 'SPLIT', null, '75', null);
INSERT INTO `order_info` VALUES ('81', 'atguigu', null, '8997.00', 'SPLIT', '2', 'ONLINE', '北京市昌平区', '', 'ATGUIGU1534146827684590', null, '2018-08-13 15:53:48', '2018-08-14 15:53:48', 'SPLIT', null, '75', null);
INSERT INTO `order_info` VALUES ('82', 'atguigu', null, '9997.00', 'CLOSED', '2', 'ONLINE', '北京市昌平区', '钱有点多，买不起！', 'ATGUIGU1536305739677928', null, '2018-09-07 15:35:40', '2018-09-08 15:35:40', 'CLOSED', null, null, null);
INSERT INTO `order_info` VALUES ('83', 'atguigu', null, '9997.00', 'CLOSED', '2', 'ONLINE', '北京市昌平区', '钱有点多，买不起！', 'ATGUIGU1536305930687958', null, '2018-09-07 15:38:51', '2018-09-08 15:38:51', 'CLOSED', null, null, null);
INSERT INTO `order_info` VALUES ('84', 'atguigu', null, '9997.00', 'CLOSED', '2', 'ONLINE', '北京市昌平区', '我很有钱，但是，我不买！', 'ATGUIGU1536307042701834', null, '2018-09-07 15:57:23', '2018-09-08 15:57:23', 'CLOSED', null, null, null);
INSERT INTO `order_info` VALUES ('85', '', null, '9997.00', 'CLOSED', '2', 'ONLINE', '', '', 'ATGUIGU1536309544732586', null, '2018-09-07 16:39:05', '2018-09-08 16:39:05', 'CLOSED', null, null, null);
INSERT INTO `order_info` VALUES ('86', 'atguigu', null, '0.01', 'DELEVERED', '2', 'ONLINE', '北京市昌平区', '不错，很好，good，nice', 'ATGUIGU1536375345342600', null, '2018-09-08 10:55:45', '2018-09-09 10:55:45', 'DELEVERED', null, null, null);
INSERT INTO `order_info` VALUES ('87', 'atguigu', null, '0.01', 'DELEVERED', '2', 'ONLINE', '北京市昌平区', 'admin', 'ATGUIGU1536388207944673', null, '2018-09-08 14:30:08', '2018-09-09 14:30:08', 'DELEVERED', null, null, null);
INSERT INTO `order_info` VALUES ('88', 'atguigu', null, '0.01', 'CLOSED', '2', 'ONLINE', '北京市昌平区', '电商第十五天', 'ATGUIGU1536547625252309', null, '2018-09-10 10:47:05', '2018-09-11 10:47:05', 'CLOSED', null, null, null);
INSERT INTO `order_info` VALUES ('89', 'atguigu', null, '0.02', 'DELEVERED', '2', 'ONLINE', '北京市昌平区', '再次测试', 'ATGUIGU1536547841538815', null, '2018-09-10 10:50:42', '2018-09-11 10:50:42', 'DELEVERED', null, null, null);
INSERT INTO `order_info` VALUES ('90', 'atguigu', null, '0.01', 'SPLIT', '2', 'ONLINE', '北京市昌平区', '拆单测试', 'ATGUIGU1536564753910178', null, '2018-09-10 15:32:34', '2018-09-11 15:32:34', 'SPLIT', null, null, null);
INSERT INTO `order_info` VALUES ('91', 'atguigu', null, '3999.00', 'DELEVERED', '2', 'ONLINE', '北京市昌平区', '拆单测试', 'ATGUIGU1536564845171835', null, '2018-09-10 15:34:05', '2018-09-11 15:34:05', 'DELEVERED', null, '90', null);
INSERT INTO `order_info` VALUES ('92', 'atguigu', null, '5998.00', 'DELEVERED', '2', 'ONLINE', '北京市昌平区', '拆单测试', 'ATGUIGU1536564845217852', null, '2018-09-10 15:34:05', '2018-09-11 15:34:05', 'DELEVERED', null, '90', null);
INSERT INTO `order_info` VALUES ('94', 'atguigu', null, '11398.00', 'CLOSED', '2', 'ONLINE', '北京市昌平区', '测试', 'it1587818929497516', null, '2020-04-25 20:48:49', '2020-04-26 20:48:49', 'CLOSED', null, null, null);
INSERT INTO `order_info` VALUES ('95', 'atguigu', null, '23893.00', 'CLOSED', '2', 'ONLINE', '北京市昌平区', '12', 'it1587819512794322', null, '2020-04-25 20:58:33', '2020-04-26 20:58:33', 'CLOSED', null, null, null);
INSERT INTO `order_info` VALUES ('96', 'atguigu', null, '43489.00', 'CLOSED', '2', 'ONLINE', '北京市昌平区', '测试', 'it1587986514856916', null, '2020-04-27 19:21:55', '2020-04-28 19:21:55', 'CLOSED', null, null, null);
INSERT INTO `order_info` VALUES ('97', 'atguigu', null, '43489.00', 'CLOSED', '2', 'ONLINE', '北京市昌平区', '12', 'it1587986701900348', null, '2020-04-27 19:25:02', '2020-04-28 19:25:02', 'CLOSED', null, null, null);
INSERT INTO `order_info` VALUES ('98', 'atguigu', null, '43489.00', 'CLOSED', '2', 'ONLINE', '北京市昌平区', '', 'it1587986804465115', null, '2020-04-27 19:26:44', '2020-04-28 19:26:44', 'CLOSED', null, null, null);
INSERT INTO `order_info` VALUES ('99', 'atguigu', null, '43489.00', 'CLOSED', '2', 'ONLINE', '北京市昌平区', '测试', 'it1587986893530225', null, '2020-04-27 19:28:14', '2020-04-28 19:28:14', 'CLOSED', null, null, null);
INSERT INTO `order_info` VALUES ('100', 'atguigu', null, '0.01', 'PAID', '2', 'ONLINE', '北京市昌平区', '12', 'it1587986942297431', null, '2020-04-27 19:29:02', '2020-04-28 19:29:02', 'PAID', null, null, null);
INSERT INTO `order_info` VALUES ('101', 'atguigu', null, '0.02', 'CLOSED', '2', 'ONLINE', '北京市昌平区', '测试2', 'it1587996424800156', null, '2020-04-27 22:07:05', '2020-04-28 22:07:05', 'CLOSED', null, null, null);
INSERT INTO `order_info` VALUES ('103', 'atguigu', null, '0.01', 'UNPAID', '2', 'ONLINE', '北京市昌平区', '测试', 'it1588605330298324', null, '2020-05-04 23:15:30', '2020-05-05 23:15:30', 'UNPAID', null, null, null);
INSERT INTO `order_info` VALUES ('104', 'atguigu', null, '0.01', 'UNPAID', '2', 'ONLINE', '北京市昌平区', '真是', 'it1588605704228237', null, '2020-05-04 23:21:44', '2020-05-05 23:21:44', 'UNPAID', null, null, null);
INSERT INTO `order_info` VALUES ('105', 'atguigu', null, '0.01', 'PAID', '2', 'ONLINE', '北京市昌平区', '真的', 'it158860581997860', null, '2020-05-04 23:23:40', '2020-05-05 23:23:40', 'NOTIFIED_WARE', null, null, null);
INSERT INTO `order_info` VALUES ('106', 'atguigu', null, '0.01', 'PAID', '2', 'ONLINE', '北京市昌平区', '1', 'it1588606169441266', null, '2020-05-04 23:29:29', '2020-05-05 23:29:29', 'NOTIFIED_WARE', null, null, null);
INSERT INTO `order_info` VALUES ('107', 'atguigu', null, '0.01', 'PAID', '2', 'ONLINE', '北京市昌平区', '2', 'it158860636946083', null, '2020-05-04 23:32:49', '2020-05-05 23:32:49', 'NOTIFIED_WARE', null, null, null);
INSERT INTO `order_info` VALUES ('108', 'atguigu', null, '0.01', 'SPLIT', '2', 'ONLINE', '北京市昌平区', '3', 'it1588606866395974', null, '2020-05-04 23:41:06', '2020-05-05 23:41:06', 'SPLIT', null, null, null);
INSERT INTO `order_info` VALUES ('109', 'atguigu', null, '39893.00', 'DELEVERED', '2', 'ONLINE', '北京市昌平区', '3', 'it1588606924590342', null, '2020-05-04 23:42:05', '2020-05-05 23:42:05', 'DELEVERED', null, '108', null);
INSERT INTO `order_info` VALUES ('110', 'atguigu', null, '17493.00', 'DELEVERED', '2', 'ONLINE', '北京市昌平区', '3', 'it1588606924602746', null, '2020-05-04 23:42:05', '2020-05-05 23:42:05', 'DELEVERED', null, '108', null);
INSERT INTO `order_info` VALUES ('111', 'atguigu', null, '39893.00', 'UNPAID', '2', 'ONLINE', '北京市昌平区', '3', 'it1588606926456485', null, '2020-05-04 23:42:06', '2020-05-05 23:42:06', 'UNPAID', null, '108', null);
INSERT INTO `order_info` VALUES ('112', 'atguigu', null, '17493.00', 'UNPAID', '2', 'ONLINE', '北京市昌平区', '3', 'it1588606926517828', null, '2020-05-04 23:42:07', '2020-05-05 23:42:07', 'UNPAID', null, '108', null);
INSERT INTO `order_info` VALUES ('113', 'atguigu', null, '57386.00', 'UNPAID', '2', 'ONLINE', '北京市昌平区', '真的', 'it1588607051207793', null, '2020-05-04 23:44:11', '2020-05-05 23:44:11', 'UNPAID', null, null, null);
INSERT INTO `order_info` VALUES ('114', 'atguigu', null, '0.01', 'SPLIT', '2', 'ONLINE', '北京市昌平区', '666', 'it1588607486293834', null, '2020-05-04 23:51:26', '2020-05-05 23:51:26', 'SPLIT', null, null, null);
INSERT INTO `order_info` VALUES ('115', 'atguigu', null, '39893.00', 'DELEVERED', '2', 'ONLINE', '北京市昌平区', '666', 'it1588607527726324', null, '2020-05-04 23:52:08', '2020-05-05 23:52:08', 'DELEVERED', null, '114', null);
INSERT INTO `order_info` VALUES ('116', 'atguigu', null, '17493.00', 'DELEVERED', '2', 'ONLINE', '北京市昌平区', '666', 'it1588607527732704', null, '2020-05-04 23:52:08', '2020-05-05 23:52:08', 'DELEVERED', null, '114', null);

-- ----------------------------
-- Table structure for `order_log`
-- ----------------------------
DROP TABLE IF EXISTS `order_log`;
CREATE TABLE `order_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单编号',
  `order_status` bigint(20) DEFAULT NULL COMMENT '订单状态',
  `operate_date` datetime DEFAULT NULL COMMENT '发生时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单流水表';

-- ----------------------------
-- Records of order_log
-- ----------------------------

-- ----------------------------
-- Table structure for `order_logistics`
-- ----------------------------
DROP TABLE IF EXISTS `order_logistics`;
CREATE TABLE `order_logistics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `logistics_status` varchar(2) DEFAULT NULL COMMENT '物流状态',
  `logistics_no` varchar(100) DEFAULT NULL COMMENT '物流单号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物流表';

-- ----------------------------
-- Records of order_logistics
-- ----------------------------

-- ----------------------------
-- Table structure for `payment_info`
-- ----------------------------
DROP TABLE IF EXISTS `payment_info`;
CREATE TABLE `payment_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `out_trade_no` varchar(50) DEFAULT NULL COMMENT '对外业务编号',
  `order_id` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `alipay_trade_no` varchar(50) DEFAULT NULL COMMENT '支付宝交易编号',
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT '支付金额',
  `subject` varchar(200) DEFAULT NULL COMMENT '交易内容',
  `payment_status` varchar(20) DEFAULT NULL COMMENT '支付状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `callback_time` datetime DEFAULT NULL COMMENT '回调时间',
  `callback_content` varchar(1000) DEFAULT NULL COMMENT '回调信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='支付信息表';

-- ----------------------------
-- Records of payment_info
-- ----------------------------
INSERT INTO `payment_info` VALUES ('6', 'ATGUIGU1526293773068499', '5', null, '0.04', '小米 红米Note5 全网通版 4GB+64GB 黑色 移动联通电信4G手机 双卡双待等2件商品', 'PAID', null, '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('7', 'ATGUIGU1526719959770411', '17', null, '0.01', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待等1件商品', 'PAID', null, '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('8', 'ATGUIGU152671428534218', '15', null, '0.01', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待等1件商品', 'PAID', null, '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('9', 'ATGUIGU1526712825457362', '14', null, '0.01', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待等1件商品', 'PAID', null, '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('10', 'ATGUIGU1526712803268528', '13', null, '0.01', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待等1件商品', 'PAID', null, '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('11', 'ATGUIGU1526712757840424', '12', null, '0.01', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待等1件商品', 'PAID', null, '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('12', 'ATGUIGU1526712567675868', '11', null, '0.01', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待等1件商品', 'PAID', null, '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('13', 'ATGUIGU1526712560729350', '10', null, '0.01', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待等1件商品', 'PAID', null, '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('14', 'ATGUIGU1526711939766803', '9', null, '0.01', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待等1件商品', 'PAID', null, '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('15', 'ATGUIGU1526959108861732', '20', null, '0.01', '联想拯救者R720等2件商品', 'PAID', null, '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('16', 'ATGUIGU1531798753879988', '45', null, '0.01', '果果等1件商品', 'PAID', null, '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('18', 'ATGUIGU1531793448684425', '42', null, '0.05', '果果等1件商品', 'PAID', null, '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('27', 'ATGUIGU1531882338446222', '51', null, '0.01', '支付宝=== 来发钱了！支付宝====付款', 'PAID', '2018-07-19 16:24:29', '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('28', 'ATGUIGU1532006223371231', '22', null, '0.01', '联想(Lenovo)拯救者R720等2件商品', 'PAID', null, '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('29', 'ATGUIGU1532006223371222', '23', null, '0.01', '联想(Lenovo)拯救者R720等2件商品', 'PAID', null, '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('30', 'ATGUIGU1532006223100001', '24', null, '0.01', '联想(Lenovo)拯救者R720等2件商品', 'PAID', null, '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('31', 'ATGUIGU1532006223101011', '25', null, '0.01', '联想(Lenovo)拯救者R720等2件商品', 'PAID', null, '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('33', 'ATGUIGU1532006223101012', '26', null, '0.01', '支付宝=== 来发钱了！支付宝====付款', 'PAID', '2018-07-21 10:04:44', '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('36', 'ATGUIGU1532006223102222', '27', null, '0.01', '支付宝=== 来发钱了！支付宝====付款', 'PAID', '2018-07-21 11:02:49', '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('37', 'ATGUIGU1532006223102223', '28', null, '0.01', '联想(Lenovo)拯救者R720等2件商品', 'PAID', null, '2018-07-21 13:25:39', null);
INSERT INTO `payment_info` VALUES ('38', 'ATGUIGU1532006223102000', '53', null, '0.01', '支付宝=== 来发钱了！支付宝====付款', 'PAID', '2018-07-21 15:39:18', null, null);
INSERT INTO `payment_info` VALUES ('51', 'ATGUIGU1533717976187799', '75', null, '0.01', '支付宝-没有问题，可以继续使用！', 'UNPAID', '2018-08-13 11:04:54', null, null);
INSERT INTO `payment_info` VALUES ('52', 'ATGUIGU1536375345342601', '86', null, '9997.00', '购买手机发个学生打游戏！', 'UNPAID', null, null, null);
INSERT INTO `payment_info` VALUES ('53', 'ATGUIGU1536375345342601', '86', null, '0.01', '购买手机发个学生打游戏！', 'UNPAID', null, null, null);
INSERT INTO `payment_info` VALUES ('54', 'ATGUIGU1536375345342600', '86', null, '0.01', '购买手机发个学生打游戏！', 'UNPAID', null, null, null);
INSERT INTO `payment_info` VALUES ('55', 'ATGUIGU1536388207944673', '87', null, '0.01', '购买手机发个学生打游戏！', 'PAID', null, null, null);
INSERT INTO `payment_info` VALUES ('56', 'ATGUIGU1536547625252309', '88', null, '0.01', '购买手机发个学生打游戏！', 'UNPAID', null, null, null);
INSERT INTO `payment_info` VALUES ('57', 'ATGUIGU1536547841538815', '89', null, '0.02', '购买手机发个学生打游戏！', 'PAID', null, null, null);
INSERT INTO `payment_info` VALUES ('58', 'ATGUIGU1536564753910178', '90', null, '0.01', '购买手机发个学生打游戏！', 'PAID', null, null, null);
INSERT INTO `payment_info` VALUES ('60', 'it1587986942297430', '100', null, '0.01', '给李国琰转账', 'UNPAID', null, null, null);
INSERT INTO `payment_info` VALUES ('62', 'it1587996424800153', '101', null, '0.02', '给李国琰转账', 'ClOSED', '2020-04-27 22:07:30', null, null);
INSERT INTO `payment_info` VALUES ('64', 'it1588605330298324', '103', null, '0.01', '给李国琰转账', 'UNPAID', '2020-05-04 23:15:33', null, null);
INSERT INTO `payment_info` VALUES ('65', 'it1588605330298324', '103', null, '0.01', '给李国琰转账', 'UNPAID', '2020-05-04 23:16:45', null, null);
INSERT INTO `payment_info` VALUES ('66', 'it1588605330298324', '103', null, '57386.00', '给李国琰转账', 'UNPAID', '2020-05-04 23:17:25', null, null);
INSERT INTO `payment_info` VALUES ('67', 'it1588605330298324', '103', null, '0.01', '给李国琰转账', 'UNPAID', '2020-05-04 23:17:37', null, null);
INSERT INTO `payment_info` VALUES ('68', 'it1588605704228237', '104', null, '0.01', '给李国琰转账', 'UNPAID', '2020-05-04 23:21:47', null, null);
INSERT INTO `payment_info` VALUES ('69', 'it1588605704228237', '104', null, '0.01', '给李国琰转账', 'UNPAID', '2020-05-04 23:22:47', null, null);
INSERT INTO `payment_info` VALUES ('70', 'it158860581997860', '105', null, '0.01', '给李国琰转账', 'PAID', '2020-05-04 23:24:28', null, null);
INSERT INTO `payment_info` VALUES ('71', 'it1588606169441266', '106', null, '0.01', '给李国琰转账', 'PAID', '2020-05-04 23:29:45', null, null);
INSERT INTO `payment_info` VALUES ('72', 'it158860636946083', '107', null, '0.01', '给李国琰转账', 'PAID', '2020-05-04 23:33:07', null, null);
INSERT INTO `payment_info` VALUES ('73', 'it1588606866395974', '108', null, '0.01', '给李国琰转账', 'PAID', '2020-05-04 23:41:24', null, null);
INSERT INTO `payment_info` VALUES ('74', 'it1588607486293834', '114', null, '0.01', '给李国琰转账', 'PAID', '2020-05-04 23:51:51', null, null);

-- ----------------------------
-- Table structure for `sku_attr_value`
-- ----------------------------
DROP TABLE IF EXISTS `sku_attr_value`;
CREATE TABLE `sku_attr_value` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `attr_id` bigint(20) DEFAULT NULL COMMENT '属性id（冗余)',
  `value_id` bigint(20) DEFAULT NULL COMMENT '属性值id',
  `sku_id` bigint(20) DEFAULT NULL COMMENT 'skuid',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='sku平台属性值关联表';

-- ----------------------------
-- Records of sku_attr_value
-- ----------------------------
INSERT INTO `sku_attr_value` VALUES ('1', '23', '13', '2');
INSERT INTO `sku_attr_value` VALUES ('2', '24', '16', '2');
INSERT INTO `sku_attr_value` VALUES ('3', '23', '13', '3');
INSERT INTO `sku_attr_value` VALUES ('4', '24', '16', '3');
INSERT INTO `sku_attr_value` VALUES ('5', '23', '14', '4');
INSERT INTO `sku_attr_value` VALUES ('6', '24', '17', '4');
INSERT INTO `sku_attr_value` VALUES ('7', '25', '20', '5');
INSERT INTO `sku_attr_value` VALUES ('8', '26', '22', '5');
INSERT INTO `sku_attr_value` VALUES ('9', '25', '20', '6');
INSERT INTO `sku_attr_value` VALUES ('10', '26', '22', '6');
INSERT INTO `sku_attr_value` VALUES ('11', '23', '15', '7');
INSERT INTO `sku_attr_value` VALUES ('12', '24', '18', '7');
INSERT INTO `sku_attr_value` VALUES ('13', '23', '14', '9');
INSERT INTO `sku_attr_value` VALUES ('14', '24', '17', '9');
INSERT INTO `sku_attr_value` VALUES ('15', '23', '14', '10');
INSERT INTO `sku_attr_value` VALUES ('16', '24', '18', '10');
INSERT INTO `sku_attr_value` VALUES ('17', '23', '14', '11');
INSERT INTO `sku_attr_value` VALUES ('18', '24', '18', '11');
INSERT INTO `sku_attr_value` VALUES ('19', '23', '13', '12');
INSERT INTO `sku_attr_value` VALUES ('20', '24', '80', '12');
INSERT INTO `sku_attr_value` VALUES ('21', '23', '13', '13');
INSERT INTO `sku_attr_value` VALUES ('22', '24', '80', '13');
INSERT INTO `sku_attr_value` VALUES ('23', '23', '83', '14');
INSERT INTO `sku_attr_value` VALUES ('24', '24', '80', '14');
INSERT INTO `sku_attr_value` VALUES ('25', '23', '14', '15');
INSERT INTO `sku_attr_value` VALUES ('26', '24', '81', '15');
INSERT INTO `sku_attr_value` VALUES ('27', '23', '14', '16');
INSERT INTO `sku_attr_value` VALUES ('28', '24', '80', '16');
INSERT INTO `sku_attr_value` VALUES ('29', '23', '13', '17');
INSERT INTO `sku_attr_value` VALUES ('30', '24', '80', '17');
INSERT INTO `sku_attr_value` VALUES ('31', '23', '13', '18');
INSERT INTO `sku_attr_value` VALUES ('32', '24', '81', '18');
INSERT INTO `sku_attr_value` VALUES ('33', '23', '83', '19');
INSERT INTO `sku_attr_value` VALUES ('34', '24', '82', '19');
INSERT INTO `sku_attr_value` VALUES ('35', '25', '20', '20');
INSERT INTO `sku_attr_value` VALUES ('36', '26', '22', '20');
INSERT INTO `sku_attr_value` VALUES ('37', '66', '85', '20');
INSERT INTO `sku_attr_value` VALUES ('38', '67', '87', '20');
INSERT INTO `sku_attr_value` VALUES ('39', '23', '83', '21');
INSERT INTO `sku_attr_value` VALUES ('40', '24', '82', '21');
INSERT INTO `sku_attr_value` VALUES ('41', '23', '83', '23');
INSERT INTO `sku_attr_value` VALUES ('42', '23', '83', '24');
INSERT INTO `sku_attr_value` VALUES ('43', '23', '83', '22');
INSERT INTO `sku_attr_value` VALUES ('44', '24', '81', '23');
INSERT INTO `sku_attr_value` VALUES ('45', '24', '81', '24');
INSERT INTO `sku_attr_value` VALUES ('46', '24', '81', '22');
INSERT INTO `sku_attr_value` VALUES ('47', '23', '83', '25');
INSERT INTO `sku_attr_value` VALUES ('48', '24', '81', '25');
INSERT INTO `sku_attr_value` VALUES ('49', '73', '99', '26');
INSERT INTO `sku_attr_value` VALUES ('50', '74', '101', '26');
INSERT INTO `sku_attr_value` VALUES ('51', '23', '83', '27');
INSERT INTO `sku_attr_value` VALUES ('52', '24', '82', '27');
INSERT INTO `sku_attr_value` VALUES ('53', '23', '14', '28');
INSERT INTO `sku_attr_value` VALUES ('54', '24', '81', '28');
INSERT INTO `sku_attr_value` VALUES ('55', '23', '14', '29');
INSERT INTO `sku_attr_value` VALUES ('56', '24', '82', '29');
INSERT INTO `sku_attr_value` VALUES ('57', '82', '116', '29');
INSERT INTO `sku_attr_value` VALUES ('58', '84', '117', '29');
INSERT INTO `sku_attr_value` VALUES ('59', '23', '14', '30');
INSERT INTO `sku_attr_value` VALUES ('60', '24', '81', '30');
INSERT INTO `sku_attr_value` VALUES ('61', '23', '83', '31');
INSERT INTO `sku_attr_value` VALUES ('62', '24', '82', '31');
INSERT INTO `sku_attr_value` VALUES ('63', '23', '14', '32');
INSERT INTO `sku_attr_value` VALUES ('64', '24', '81', '32');
INSERT INTO `sku_attr_value` VALUES ('65', '23', '13', '38');
INSERT INTO `sku_attr_value` VALUES ('66', '24', '81', '38');
INSERT INTO `sku_attr_value` VALUES ('67', '23', '83', '39');
INSERT INTO `sku_attr_value` VALUES ('68', '24', '82', '39');

-- ----------------------------
-- Table structure for `sku_image`
-- ----------------------------
DROP TABLE IF EXISTS `sku_image`;
CREATE TABLE `sku_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sku_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `img_name` varchar(20) DEFAULT NULL COMMENT '图片名称（冗余）',
  `img_url` varchar(200) DEFAULT NULL COMMENT '图片路径(冗余)',
  `spu_img_id` bigint(20) DEFAULT NULL COMMENT '商品图片id',
  `is_default` varchar(4000) DEFAULT NULL COMMENT '是否默认',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='库存单元图片表';

-- ----------------------------
-- Records of sku_image
-- ----------------------------
INSERT INTO `sku_image` VALUES ('1', '2', '金侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrrzYmANKMZAABk-uSRx_w574.jpg', '74', 'http://file.service.com/group1/M00/00/00/wKhDyVrrzYqAFidJAABvI_LYeVc573.jpg');
INSERT INTO `sku_image` VALUES ('2', '2', '金正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrrzYqAFidJAABvI_LYeVc573.jpg', '76', 'http://file.service.com/group1/M00/00/00/wKhDyVrrzYqAFidJAABvI_LYeVc573.jpg');
INSERT INTO `sku_image` VALUES ('3', '3', '金背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAeTA2AAAt9d6sJFQ842.jpg', '82', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAXEdMAABvI_LYeVc795.jpg');
INSERT INTO `sku_image` VALUES ('4', '3', '金侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAQstxAABk-uSRx_w849.jpg', '83', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAXEdMAABvI_LYeVc795.jpg');
INSERT INTO `sku_image` VALUES ('5', '3', '金全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uARO65AAB4RhOIKYk066.jpg', '84', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAXEdMAABvI_LYeVc795.jpg');
INSERT INTO `sku_image` VALUES ('6', '3', '金正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAXEdMAABvI_LYeVc795.jpg', '85', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAXEdMAABvI_LYeVc795.jpg');
INSERT INTO `sku_image` VALUES ('7', '3', '金正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAR6RqAACIKwmE3Zs454.jpg', '86', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAXEdMAABvI_LYeVc795.jpg');
INSERT INTO `sku_image` VALUES ('8', '4', '黑背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAF22jAAAnqwz0YWg974.jpg', '77', null);
INSERT INTO `sku_image` VALUES ('9', '4', '黑侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAS3m5AABp0_3sawE790.jpg', '78', null);
INSERT INTO `sku_image` VALUES ('10', '4', '黑全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAUysoAABwN0amTik330.jpg', '79', null);
INSERT INTO `sku_image` VALUES ('11', '4', '黑正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAbT0rAABv_ho6M2s990.jpg', '80', null);
INSERT INTO `sku_image` VALUES ('12', '4', '黑正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAfS_8AACDUfqh01k812.jpg', '81', null);
INSERT INTO `sku_image` VALUES ('13', '5', '侧面1.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-AH0bPAALwRWgREBk623.jpg', '87', null);
INSERT INTO `sku_image` VALUES ('14', '5', '侧面2.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-AMPgJAALvYFDzimw653.jpg', '88', null);
INSERT INTO `sku_image` VALUES ('15', '5', '地面1.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-ALdwZAAIceOUIA-w673.jpg', '89', null);
INSERT INTO `sku_image` VALUES ('16', '5', '正面1.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-Abka_AAMVBZhw5ts345.jpg', '90', null);
INSERT INTO `sku_image` VALUES ('17', '5', '正面2.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-ANAr1AAIFjNM9RW8008.jpg', '91', null);
INSERT INTO `sku_image` VALUES ('18', '5', '正面3.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-AcJS3AAKa63jyrrE510.jpg', '92', null);
INSERT INTO `sku_image` VALUES ('19', '6', '侧面1.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-AH0bPAALwRWgREBk623.jpg', '87', null);
INSERT INTO `sku_image` VALUES ('20', '6', '侧面2.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-AMPgJAALvYFDzimw653.jpg', '88', null);
INSERT INTO `sku_image` VALUES ('21', '6', '地面1.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-ALdwZAAIceOUIA-w673.jpg', '89', null);
INSERT INTO `sku_image` VALUES ('22', '6', '正面1.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-Abka_AAMVBZhw5ts345.jpg', '90', null);
INSERT INTO `sku_image` VALUES ('23', '6', '正面2.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-ANAr1AAIFjNM9RW8008.jpg', '91', null);
INSERT INTO `sku_image` VALUES ('24', '6', '正面3.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-AcJS3AAKa63jyrrE510.jpg', '92', null);
INSERT INTO `sku_image` VALUES ('25', '7', '金背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AVRUsAAAt9d6sJFQ918.jpg', '107', null);
INSERT INTO `sku_image` VALUES ('26', '7', '金侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AT92vAABk-uSRx_w466.jpg', '108', null);
INSERT INTO `sku_image` VALUES ('27', '7', '金全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AB6o0AAB4RhOIKYk962.jpg', '109', null);
INSERT INTO `sku_image` VALUES ('28', '7', '金正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AT-psAABvI_LYeVc750.jpg', '110', null);
INSERT INTO `sku_image` VALUES ('29', '7', '金正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2ACsJfAACIKwmE3Zs014.jpg', '111', null);
INSERT INTO `sku_image` VALUES ('30', '9', '金背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AVRUsAAAt9d6sJFQ918.jpg', '107', null);
INSERT INTO `sku_image` VALUES ('31', '9', '金侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AT92vAABk-uSRx_w466.jpg', '108', null);
INSERT INTO `sku_image` VALUES ('32', '9', '金全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AB6o0AAB4RhOIKYk962.jpg', '109', null);
INSERT INTO `sku_image` VALUES ('33', '9', '金正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AT-psAABvI_LYeVc750.jpg', '110', null);
INSERT INTO `sku_image` VALUES ('34', '9', '金正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2ACsJfAACIKwmE3Zs014.jpg', '111', null);
INSERT INTO `sku_image` VALUES ('35', '10', '金背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AVRUsAAAt9d6sJFQ918.jpg', '107', null);
INSERT INTO `sku_image` VALUES ('36', '10', '金侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AT92vAABk-uSRx_w466.jpg', '108', null);
INSERT INTO `sku_image` VALUES ('37', '10', '金全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AB6o0AAB4RhOIKYk962.jpg', '109', null);
INSERT INTO `sku_image` VALUES ('38', '10', '金正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AT-psAABvI_LYeVc750.jpg', '110', null);
INSERT INTO `sku_image` VALUES ('39', '10', '金正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2ACsJfAACIKwmE3Zs014.jpg', '111', null);
INSERT INTO `sku_image` VALUES ('40', '11', '金背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AVRUsAAAt9d6sJFQ918.jpg', '107', '0');
INSERT INTO `sku_image` VALUES ('41', '11', '金侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AT92vAABk-uSRx_w466.jpg', '108', '0');
INSERT INTO `sku_image` VALUES ('42', '11', '金全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AB6o0AAB4RhOIKYk962.jpg', '109', '0');
INSERT INTO `sku_image` VALUES ('43', '11', '金正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AT-psAABvI_LYeVc750.jpg', '110', '1');
INSERT INTO `sku_image` VALUES ('44', '12', '黑背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAT1fxAAAnqwz0YWg840.jpg', '142', '0');
INSERT INTO `sku_image` VALUES ('45', '12', '黑侧.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAa2vOAABp0_3sawE364.jpg', '143', '1');
INSERT INTO `sku_image` VALUES ('46', '12', '黑全.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAJahbAABwN0amTik650.jpg', '144', '0');
INSERT INTO `sku_image` VALUES ('47', '13', '黑背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAT1fxAAAnqwz0YWg840.jpg', '142', '0');
INSERT INTO `sku_image` VALUES ('48', '13', '黑侧.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAa2vOAABp0_3sawE364.jpg', '143', '1');
INSERT INTO `sku_image` VALUES ('49', '13', '黑全.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAJahbAABwN0amTik650.jpg', '144', '0');
INSERT INTO `sku_image` VALUES ('50', '14', '金背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uASLHaAAAt9d6sJFQ095.jpg', '147', '0');
INSERT INTO `sku_image` VALUES ('51', '14', '金侧.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAZJWLAABk-uSRx_w567.jpg', '148', '0');
INSERT INTO `sku_image` VALUES ('52', '14', '金全.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAGqFaAAB4RhOIKYk621.jpg', '149', '0');
INSERT INTO `sku_image` VALUES ('53', '14', '金正.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uACb2jAABvI_LYeVc728.jpg', '150', '1');
INSERT INTO `sku_image` VALUES ('54', '14', '金正背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAXdhBAACIKwmE3Zs082.jpg', '151', '0');
INSERT INTO `sku_image` VALUES ('55', '15', '黑背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAT1fxAAAnqwz0YWg840.jpg', '142', '0');
INSERT INTO `sku_image` VALUES ('56', '15', '黑侧.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAa2vOAABp0_3sawE364.jpg', '143', '0');
INSERT INTO `sku_image` VALUES ('57', '15', '黑全.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAJahbAABwN0amTik650.jpg', '144', '0');
INSERT INTO `sku_image` VALUES ('58', '15', '黑正.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAfzhyAABv_ho6M2s616.jpg', '145', '1');
INSERT INTO `sku_image` VALUES ('59', '15', '黑正背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAaIGhAACDUfqh01k599.jpg', '146', '0');
INSERT INTO `sku_image` VALUES ('60', '16', '金背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uASLHaAAAt9d6sJFQ095.jpg', '147', '0');
INSERT INTO `sku_image` VALUES ('61', '16', '金侧.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAZJWLAABk-uSRx_w567.jpg', '148', '0');
INSERT INTO `sku_image` VALUES ('62', '16', '金全.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAGqFaAAB4RhOIKYk621.jpg', '149', '0');
INSERT INTO `sku_image` VALUES ('63', '16', '金正.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uACb2jAABvI_LYeVc728.jpg', '150', '0');
INSERT INTO `sku_image` VALUES ('64', '16', '金正背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAXdhBAACIKwmE3Zs082.jpg', '151', '0');
INSERT INTO `sku_image` VALUES ('65', '17', '黑背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAT1fxAAAnqwz0YWg840.jpg', '142', '0');
INSERT INTO `sku_image` VALUES ('66', '17', '黑侧.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAa2vOAABp0_3sawE364.jpg', '143', '0');
INSERT INTO `sku_image` VALUES ('67', '17', '黑全.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAJahbAABwN0amTik650.jpg', '144', '0');
INSERT INTO `sku_image` VALUES ('68', '17', '黑正.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAfzhyAABv_ho6M2s616.jpg', '145', '0');
INSERT INTO `sku_image` VALUES ('69', '17', '黑正背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAaIGhAACDUfqh01k599.jpg', '146', '1');
INSERT INTO `sku_image` VALUES ('70', '18', '黑背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAT1fxAAAnqwz0YWg840.jpg', '142', '0');
INSERT INTO `sku_image` VALUES ('71', '18', '黑侧.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAa2vOAABp0_3sawE364.jpg', '143', '0');
INSERT INTO `sku_image` VALUES ('72', '18', '黑全.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAJahbAABwN0amTik650.jpg', '144', '0');
INSERT INTO `sku_image` VALUES ('73', '18', '黑正.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAfzhyAABv_ho6M2s616.jpg', '145', '1');
INSERT INTO `sku_image` VALUES ('74', '18', '黑正背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAaIGhAACDUfqh01k599.jpg', '146', '0');
INSERT INTO `sku_image` VALUES ('75', '19', '金背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uASLHaAAAt9d6sJFQ095.jpg', '147', '0');
INSERT INTO `sku_image` VALUES ('76', '19', '金侧.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAZJWLAABk-uSRx_w567.jpg', '148', '0');
INSERT INTO `sku_image` VALUES ('77', '19', '金全.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAGqFaAAB4RhOIKYk621.jpg', '149', '0');
INSERT INTO `sku_image` VALUES ('78', '19', '金正.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uACb2jAABvI_LYeVc728.jpg', '150', '1');
INSERT INTO `sku_image` VALUES ('79', '19', '金正背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAXdhBAACIKwmE3Zs082.jpg', '151', '0');
INSERT INTO `sku_image` VALUES ('80', '20', '侧面1.png', 'http://192.168.67.200/group1/M00/00/00/wKhDyFtIFGSAWN43AALwRWgREBk970.png', '152', '0');
INSERT INTO `sku_image` VALUES ('81', '20', '侧面2.png', 'http://192.168.67.200/group1/M00/00/00/wKhDyFtIFGSAUPPEAALvYFDzimw251.png', '153', '0');
INSERT INTO `sku_image` VALUES ('82', '20', '地面1.png', 'http://192.168.67.200/group1/M00/00/00/wKhDyFtIFGSAOK7tAAIceOUIA-w202.png', '154', '0');
INSERT INTO `sku_image` VALUES ('83', '20', '正面1.png', 'http://192.168.67.200/group1/M00/00/00/wKhDyFtIFGSARHfOAAMVBZhw5ts422.png', '155', '1');
INSERT INTO `sku_image` VALUES ('84', '20', '正面2.png', 'http://192.168.67.200/group1/M00/00/00/wKhDyFtIFGSALqfPAAIFjNM9RW8199.png', '156', '0');
INSERT INTO `sku_image` VALUES ('85', '20', '正面3.png', 'http://192.168.67.200/group1/M00/00/00/wKhDyFtIFGSASnjuAAKa63jyrrE674.png', '157', '0');
INSERT INTO `sku_image` VALUES ('86', '21', '黑背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAT1fxAAAnqwz0YWg840.jpg', '142', '0');
INSERT INTO `sku_image` VALUES ('87', '21', '黑侧.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAa2vOAABp0_3sawE364.jpg', '143', '0');
INSERT INTO `sku_image` VALUES ('88', '21', '黑全.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAJahbAABwN0amTik650.jpg', '144', '0');
INSERT INTO `sku_image` VALUES ('89', '21', '黑正.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAfzhyAABv_ho6M2s616.jpg', '145', '1');
INSERT INTO `sku_image` VALUES ('90', '21', '黑正背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAaIGhAACDUfqh01k599.jpg', '146', '0');
INSERT INTO `sku_image` VALUES ('91', '24', '黑背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAT1fxAAAnqwz0YWg840.jpg', '142', '0');
INSERT INTO `sku_image` VALUES ('92', '23', '黑背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAT1fxAAAnqwz0YWg840.jpg', '142', '0');
INSERT INTO `sku_image` VALUES ('93', '22', '黑背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAT1fxAAAnqwz0YWg840.jpg', '142', '0');
INSERT INTO `sku_image` VALUES ('94', '23', '黑侧.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAa2vOAABp0_3sawE364.jpg', '143', '0');
INSERT INTO `sku_image` VALUES ('95', '24', '黑侧.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAa2vOAABp0_3sawE364.jpg', '143', '0');
INSERT INTO `sku_image` VALUES ('96', '22', '黑侧.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAa2vOAABp0_3sawE364.jpg', '143', '0');
INSERT INTO `sku_image` VALUES ('97', '24', '黑全.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAJahbAABwN0amTik650.jpg', '144', '0');
INSERT INTO `sku_image` VALUES ('98', '22', '黑全.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAJahbAABwN0amTik650.jpg', '144', '0');
INSERT INTO `sku_image` VALUES ('99', '23', '黑全.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAJahbAABwN0amTik650.jpg', '144', '0');
INSERT INTO `sku_image` VALUES ('100', '22', '黑正.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAfzhyAABv_ho6M2s616.jpg', '145', '1');
INSERT INTO `sku_image` VALUES ('101', '23', '黑正.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAfzhyAABv_ho6M2s616.jpg', '145', '1');
INSERT INTO `sku_image` VALUES ('102', '24', '黑正.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAfzhyAABv_ho6M2s616.jpg', '145', '1');
INSERT INTO `sku_image` VALUES ('103', '22', '黑正背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAaIGhAACDUfqh01k599.jpg', '146', '0');
INSERT INTO `sku_image` VALUES ('104', '23', '黑正背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAaIGhAACDUfqh01k599.jpg', '146', '0');
INSERT INTO `sku_image` VALUES ('105', '24', '黑正背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAaIGhAACDUfqh01k599.jpg', '146', '0');
INSERT INTO `sku_image` VALUES ('106', '25', '黑背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAT1fxAAAnqwz0YWg840.jpg', '142', '0');
INSERT INTO `sku_image` VALUES ('107', '25', '黑侧.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAa2vOAABp0_3sawE364.jpg', '143', '0');
INSERT INTO `sku_image` VALUES ('108', '25', '黑全.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAJahbAABwN0amTik650.jpg', '144', '0');
INSERT INTO `sku_image` VALUES ('109', '25', '黑正.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAfzhyAABv_ho6M2s616.jpg', '145', '1');
INSERT INTO `sku_image` VALUES ('110', '25', '黑正背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAaIGhAACDUfqh01k599.jpg', '146', '0');
INSERT INTO `sku_image` VALUES ('111', '26', '黑背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1te4L-AX6nEAAAnqwz0YWg923.jpg', '166', '0');
INSERT INTO `sku_image` VALUES ('112', '26', '黑侧.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1te4L-AOszXAABp0_3sawE264.jpg', '167', '0');
INSERT INTO `sku_image` VALUES ('113', '26', '黑全.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1te4L-ALQmpAABwN0amTik495.jpg', '168', '0');
INSERT INTO `sku_image` VALUES ('114', '26', '黑正.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1te4L-AfeMBAABv_ho6M2s833.jpg', '169', '0');
INSERT INTO `sku_image` VALUES ('115', '26', '黑正背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1te4L-APUkJAACDUfqh01k175.jpg', '170', '0');
INSERT INTO `sku_image` VALUES ('116', '26', '001.png', 'http://192.168.67.203/group1/M00/00/00/wKhDy1te4L-AJCO4AAMkEGbUlpk041.png', '176', '1');
INSERT INTO `sku_image` VALUES ('117', '27', '黑背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLGAVnnPAAAnqwz0YWg288.jpg', '177', '0');
INSERT INTO `sku_image` VALUES ('118', '27', '黑侧.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLGATQ5fAABp0_3sawE372.jpg', '178', '0');
INSERT INTO `sku_image` VALUES ('119', '27', '黑全.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLGART2jAABwN0amTik001.jpg', '179', '0');
INSERT INTO `sku_image` VALUES ('120', '27', '黑正.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLGAFdpQAABv_ho6M2s289.jpg', '180', '1');
INSERT INTO `sku_image` VALUES ('121', '27', '黑正背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLGAGcT0AACDUfqh01k284.jpg', '181', '0');
INSERT INTO `sku_image` VALUES ('122', '28', '金背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLGAXbblAAAt9d6sJFQ951.jpg', '182', '0');
INSERT INTO `sku_image` VALUES ('123', '28', '金侧.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLKAcFM0AABk-uSRx_w233.jpg', '183', '0');
INSERT INTO `sku_image` VALUES ('124', '28', '金全.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLKAbYRxAAB4RhOIKYk460.jpg', '184', '0');
INSERT INTO `sku_image` VALUES ('125', '28', '金正.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLKADB6XAABvI_LYeVc047.jpg', '185', '1');
INSERT INTO `sku_image` VALUES ('126', '28', '金正背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLKAMwUUAACIKwmE3Zs718.jpg', '186', '0');
INSERT INTO `sku_image` VALUES ('127', '29', '黑背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1uBquCAQJYwAAAnqwz0YWg356.jpg', '187', '0');
INSERT INTO `sku_image` VALUES ('128', '29', '黑侧.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1uBquCAZz7EAABp0_3sawE145.jpg', '188', '0');
INSERT INTO `sku_image` VALUES ('129', '29', '黑全.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1uBquCAWUGJAABwN0amTik732.jpg', '189', '0');
INSERT INTO `sku_image` VALUES ('130', '29', '黑正.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1uBquGACnFDAABv_ho6M2s715.jpg', '190', '1');
INSERT INTO `sku_image` VALUES ('131', '29', '黑正背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1uBquGALgj2AACDUfqh01k687.jpg', '191', '0');
INSERT INTO `sku_image` VALUES ('132', '30', '黑背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ4yAFYTSAAAnqwz0YWg317.jpg', '237', '0');
INSERT INTO `sku_image` VALUES ('133', '30', '黑侧.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ4yASLoBAABp1xFAhrU846.jpg', '238', '0');
INSERT INTO `sku_image` VALUES ('134', '30', '黑全.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ4yAOHSEAABwM7Yaww0859.jpg', '239', '1');
INSERT INTO `sku_image` VALUES ('135', '30', '黑正.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ42AGEopAABv-lCqbtw709.jpg', '240', '0');
INSERT INTO `sku_image` VALUES ('136', '30', '黑正背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ42ACv4FAACDYa0I2wg314.jpg', '241', '0');
INSERT INTO `sku_image` VALUES ('137', '31', '金背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ42AZs0AAAAt9d6sJFQ182.jpg', '242', '0');
INSERT INTO `sku_image` VALUES ('138', '31', '金侧.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ42AdZimAABk87cuaDg572.jpg', '243', '0');
INSERT INTO `sku_image` VALUES ('139', '31', '金全.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ42AO8wNAAB4Swduxc0248.jpg', '244', '0');
INSERT INTO `sku_image` VALUES ('140', '31', '金正.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ42ARr7rAABvJzmlwFs496.jpg', '245', '1');
INSERT INTO `sku_image` VALUES ('141', '31', '金正背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ46AainsAACIJ7tnt3g223.jpg', '246', '0');
INSERT INTO `sku_image` VALUES ('142', '32', '黑背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aASZ-7AACbuutfIxI568.jpg', '237', '0');
INSERT INTO `sku_image` VALUES ('143', '32', '黑侧.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAQtQgAAGNGWcf4Bg049.jpg', '238', '0');
INSERT INTO `sku_image` VALUES ('144', '32', '黑全.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '239', '0');
INSERT INTO `sku_image` VALUES ('145', '32', '黑正.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAbRn5AAGxOgdhnng271.jpg', '240', '1');
INSERT INTO `sku_image` VALUES ('146', '32', '黑正背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAQ_GJAAIXc1LGT24102.jpg', '241', '0');
INSERT INTO `sku_image` VALUES ('147', '38', '黑背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aASZ-7AACbuutfIxI568.jpg', '273', '0');
INSERT INTO `sku_image` VALUES ('148', '38', '黑侧.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAQtQgAAGNGWcf4Bg049.jpg', '274', '0');
INSERT INTO `sku_image` VALUES ('149', '38', '黑全.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg', '275', '1');
INSERT INTO `sku_image` VALUES ('150', '38', '黑正.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAbRn5AAGxOgdhnng271.jpg', '276', '0');
INSERT INTO `sku_image` VALUES ('151', '38', '黑正背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAQ_GJAAIXc1LGT24102.jpg', '277', '0');
INSERT INTO `sku_image` VALUES ('152', '39', '金背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAK3fuAADfnMDJkAM027.jpg', '278', '0');
INSERT INTO `sku_image` VALUES ('153', '39', '金全.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAe3maAAIsKfx4n_g925.jpg', '279', '0');
INSERT INTO `sku_image` VALUES ('154', '39', '金正背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg', '281', '1');
INSERT INTO `sku_image` VALUES ('155', '39', '金侧.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAdkfNAAGr4YZ6yQs695.jpg', '280', '0');
INSERT INTO `sku_image` VALUES ('156', '39', '金正.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAYAHBAAG6_8yB2-c583.jpg', '282', '0');

-- ----------------------------
-- Table structure for `sku_info`
-- ----------------------------
DROP TABLE IF EXISTS `sku_info`;
CREATE TABLE `sku_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '库存id(itemID)',
  `spu_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `price` decimal(10,0) DEFAULT NULL COMMENT '价格',
  `sku_name` varchar(200) DEFAULT NULL COMMENT 'sku名称',
  `sku_desc` varchar(2000) DEFAULT NULL COMMENT '商品规格描述',
  `weight` decimal(10,2) DEFAULT NULL COMMENT '重量',
  `tm_id` bigint(20) DEFAULT NULL COMMENT '品牌(冗余)',
  `catalog3_id` bigint(20) DEFAULT NULL COMMENT '三级分类id（冗余)',
  `sku_default_img` varchar(200) DEFAULT NULL COMMENT '默认显示图片(冗余)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='库存单元表';

-- ----------------------------
-- Records of sku_info
-- ----------------------------
INSERT INTO `sku_info` VALUES ('1', '14', '1111', 'AAAA', 'AAAAAAAAAAA', '10.00', null, '61', null);
INSERT INTO `sku_info` VALUES ('2', '14', '1111', '小米 红米Note5 全网通版 4GB+64GB 黑色 移动联通电信4G手机 双卡双待', 'BBBBB', '10.00', null, '61', 'http://file.service.com/group1/M00/00/00/wKhDyVrrzYqAFidJAABvI_LYeVc573.jpg');
INSERT INTO `sku_info` VALUES ('3', '15', '999', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', '分辨率：2160*1080后置摄像头：1200万像素前置摄像头：500万像素核      数：八核频      率：以官网信息为准品牌： 小米（MI）商品名称：小米红米5 Plus商品编号：5911916商品毛重：380.00g商品产地：中国大陆系统：安卓（Android）机身厚度：薄（7mm-8.5mm）电池容量：3000mAh-3999mAh机身颜色：金色系热点：快速充电运行内存：3GB前置摄像头像素：500万-799万游戏配置：MIMO技术，VOLTE功能后置摄像头像素：1200万-1999万机身内存：32GB屏幕配置：符合全面屏比例', '0.38', null, '61', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAXEdMAABvI_LYeVc795.jpg');
INSERT INTO `sku_info` VALUES ('4', '15', '999', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 黑色 移动联通电信4G手机 双卡双待', '分辨率：2160*1080后置摄像头：1200万像素前置摄像头：500万像素核      数：八核频      率：以官网信息为准品牌： 小米（MI）商品名称：小米红米5 Plus商品编号：5835263商品毛重：380.00g商品产地：中国大陆系统：安卓（Android）机身厚度：薄（7mm-8.5mm）电池容量：3000mAh-3999mAh机身颜色：黑色系热点：快速充电运行内存：3GB前置摄像头像素：500万-799万游戏配置：MIMO技术，VOLTE功能后置摄像头像素：1200万-1999万机身内存：32GB屏幕配置：符合全面屏比例', '0.38', null, '61', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAXEdMAABvI_LYeVc795.jpg');
INSERT INTO `sku_info` VALUES ('5', '16', '5799', '联想拯救者R720', '联想(Lenovo)拯救者R720 14.0英寸大屏游戏笔记本电脑(i5-7300HQ 8G 1T+128G SSD GTX1050Ti 4G IPS 黑金)', '4.15', null, '285', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-Abka_AAMVBZhw5ts345.jpg');
INSERT INTO `sku_info` VALUES ('6', '16', '5999', '联想拯救者R720', '联想(Lenovo)拯救者R720 13.3英寸游戏笔记本电脑(i5-7700HQ 8G 1T+128G SSD GTX1050 2G IPS)黑', '4.15', null, '285', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-Abka_AAMVBZhw5ts345.jpg');
INSERT INTO `sku_info` VALUES ('7', '19', '1111', '米555', '8G+128G 金色', '1.00', null, '61', null);
INSERT INTO `sku_info` VALUES ('8', '19', '111', '111', '11111', '111.00', null, '61', null);
INSERT INTO `sku_info` VALUES ('9', '19', '555', '555', '5555555', '55.00', null, '61', null);
INSERT INTO `sku_info` VALUES ('10', '19', '55', '55', '5', '55.00', null, '61', null);
INSERT INTO `sku_info` VALUES ('11', '19', '12', '423', '1', '1.00', null, '61', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AT-psAABvI_LYeVc750.jpg');
INSERT INTO `sku_info` VALUES ('20', '46', '9999', '联想(Lenovo)拯救者R720', '联想(Lenovo)拯救者R720 15.6英寸大屏游戏笔记本电脑(i5-7300HQ 8G 1T+128G SSD GTX1050Ti 4G IPS 黑金)', '4.15', null, '285', 'http://192.168.67.200/group1/M00/00/00/wKhDyFtIFGSARHfOAAMVBZhw5ts422.png');
INSERT INTO `sku_info` VALUES ('21', '45', '1999', '小米Max3', '小米Max3 全网通版 4GB内存 黑色 64GB 移动联通电信4G手机 双卡双待', '0.47', null, '61', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAfzhyAABv_ho6M2s616.jpg');
INSERT INTO `sku_info` VALUES ('25', '45', '1999', '小米MIX2S ', '小米MIX2S 全面屏游戏手机 8GB+64GB 黑色 全网通4G 陶瓷手机', '0.57', null, '61', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAfzhyAABv_ho6M2s616.jpg');
INSERT INTO `sku_info` VALUES ('26', '49', '999', '佳能（Canon）', '佳能（Canon）IXUS 190 数码相机 （2000万像素 10倍光学变焦 24mm超广角 支持Wi-Fi和NFC）黑色', '0.35', null, '178', 'http://192.168.67.203/group1/M00/00/00/wKhDy1te4L-AJCO4AAMkEGbUlpk041.png');
INSERT INTO `sku_info` VALUES ('27', '50', '2999', '小米77一代', '不错，很好！good！nice！', '0.77', null, '61', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLGAFdpQAABv_ho6M2s289.jpg');
INSERT INTO `sku_info` VALUES ('28', '50', '2777', '小米77二代', '77好！不错！相当不错！非常好！', '0.78', null, '61', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLKADB6XAABvI_LYeVc047.jpg');
INSERT INTO `sku_info` VALUES ('29', '51', '1999', '小qq', 'Apple 苹果 小qq 全面屏手机 银色 全网通 64GB', '0.47', null, '61', 'http://192.168.67.203/group1/M00/00/00/wKhDy1uBquGACnFDAABv_ho6M2s715.jpg');
INSERT INTO `sku_info` VALUES ('30', '56', '1999', '小米88一代', '不错，很好，nice，good！', '0.47', null, '61', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ4yAOHSEAABwM7Yaww0859.jpg');
INSERT INTO `sku_info` VALUES ('31', '56', '2999', '小米88二代', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '0.57', null, '61', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ42ARr7rAABvJzmlwFs496.jpg');
INSERT INTO `sku_info` VALUES ('32', '56', '3999', '小米三代', '不错，还可以，比前两代更容易死机！', '0.37', null, '61', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg');
INSERT INTO `sku_info` VALUES ('38', '66', '2499', '小米手机note2', '好手机', '0.79', null, '61', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg');
INSERT INTO `sku_info` VALUES ('39', '66', '5699', '小米3代', '超好', '0.99', null, '61', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg');

-- ----------------------------
-- Table structure for `sku_sale_attr_value`
-- ----------------------------
DROP TABLE IF EXISTS `sku_sale_attr_value`;
CREATE TABLE `sku_sale_attr_value` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sku_id` bigint(20) DEFAULT NULL COMMENT '库存单元id',
  `sale_attr_id` bigint(20) DEFAULT NULL COMMENT '销售属性id（冗余)',
  `sale_attr_value_id` bigint(20) DEFAULT NULL COMMENT '销售属性值id',
  `sale_attr_name` varchar(20) DEFAULT NULL COMMENT '销售属性名称(冗余)',
  `sale_attr_value_name` varchar(20) DEFAULT NULL COMMENT '销售属性值名称(冗余)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='sku销售属性值';

-- ----------------------------
-- Records of sku_sale_attr_value
-- ----------------------------
INSERT INTO `sku_sale_attr_value` VALUES ('27', '16', '1', '77', '颜色', '金色');
INSERT INTO `sku_sale_attr_value` VALUES ('28', '16', '2', '78', '版本', '3G+32G');
INSERT INTO `sku_sale_attr_value` VALUES ('29', '17', '1', '76', '颜色', '黑色');
INSERT INTO `sku_sale_attr_value` VALUES ('30', '17', '2', '78', '版本', '3G+32G');
INSERT INTO `sku_sale_attr_value` VALUES ('31', '18', '1', '76', '颜色', '黑色');
INSERT INTO `sku_sale_attr_value` VALUES ('32', '18', '2', '79', '版本', '4G+64G');
INSERT INTO `sku_sale_attr_value` VALUES ('33', '19', '1', '77', '颜色', '金色');
INSERT INTO `sku_sale_attr_value` VALUES ('34', '19', '2', '79', '版本', '4G+64G');
INSERT INTO `sku_sale_attr_value` VALUES ('35', '20', '1', '80', '颜色', '黑色');
INSERT INTO `sku_sale_attr_value` VALUES ('36', '21', '1', '76', '颜色', '黑色');
INSERT INTO `sku_sale_attr_value` VALUES ('37', '21', '2', '79', '版本', '4G+64G');
INSERT INTO `sku_sale_attr_value` VALUES ('38', '24', '1', '76', '颜色', '黑色');
INSERT INTO `sku_sale_attr_value` VALUES ('39', '23', '1', '76', '颜色', '黑色');
INSERT INTO `sku_sale_attr_value` VALUES ('40', '22', '1', '76', '颜色', '黑色');
INSERT INTO `sku_sale_attr_value` VALUES ('41', '24', '2', '79', '版本', '4G+64G');
INSERT INTO `sku_sale_attr_value` VALUES ('42', '22', '2', '79', '版本', '4G+64G');
INSERT INTO `sku_sale_attr_value` VALUES ('43', '23', '2', '79', '版本', '4G+64G');
INSERT INTO `sku_sale_attr_value` VALUES ('44', '25', '1', '76', '颜色', '黑色');
INSERT INTO `sku_sale_attr_value` VALUES ('45', '25', '2', '79', '版本', '4G+64G');
INSERT INTO `sku_sale_attr_value` VALUES ('46', '26', '1', '86', '颜色', '黑色');
INSERT INTO `sku_sale_attr_value` VALUES ('47', '26', '2', '88', '版本', 'IXUS 190');
INSERT INTO `sku_sale_attr_value` VALUES ('48', '27', '1', '91', '颜色', '金色');
INSERT INTO `sku_sale_attr_value` VALUES ('49', '27', '2', '94', '版本', '8G+128G');
INSERT INTO `sku_sale_attr_value` VALUES ('50', '28', '1', '91', '颜色', '金色');
INSERT INTO `sku_sale_attr_value` VALUES ('51', '28', '2', '93', '版本', '4G+64G');
INSERT INTO `sku_sale_attr_value` VALUES ('52', '29', '2', '96', '版本', 'V2.0');
INSERT INTO `sku_sale_attr_value` VALUES ('53', '29', '1', '97', '颜色', '黑色');
INSERT INTO `sku_sale_attr_value` VALUES ('54', '30', '1', '108', '颜色', '黑色');
INSERT INTO `sku_sale_attr_value` VALUES ('55', '30', '2', '110', '版本', '6G+64G');
INSERT INTO `sku_sale_attr_value` VALUES ('56', '31', '1', '109', '颜色', '金色');
INSERT INTO `sku_sale_attr_value` VALUES ('57', '31', '2', '111', '版本', '8G+128');
INSERT INTO `sku_sale_attr_value` VALUES ('58', '32', '1', '108', '颜色', '黑色');
INSERT INTO `sku_sale_attr_value` VALUES ('59', '32', '2', '110', '版本', '6G+64G');
INSERT INTO `sku_sale_attr_value` VALUES ('60', '38', '1', '135', '颜色', '黑色');
INSERT INTO `sku_sale_attr_value` VALUES ('61', '38', '2', '137', '版本', '4G+64G');
INSERT INTO `sku_sale_attr_value` VALUES ('62', '39', '1', '136', '颜色', '白色');
INSERT INTO `sku_sale_attr_value` VALUES ('63', '39', '2', '137', '版本', '4G+64G');

-- ----------------------------
-- Table structure for `spu_color`
-- ----------------------------
DROP TABLE IF EXISTS `spu_color`;
CREATE TABLE `spu_color` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `spu_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `color` varchar(100) DEFAULT NULL COMMENT '商品颜色',
  `file_name` varchar(100) DEFAULT NULL COMMENT '文件名',
  `is_enabled` varchar(1) DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品颜色表';

-- ----------------------------
-- Records of spu_color
-- ----------------------------
INSERT INTO `spu_color` VALUES ('1', '1', '1', '红色', '1');
INSERT INTO `spu_color` VALUES ('2', '1', '2', '蓝色', '1');

-- ----------------------------
-- Table structure for `spu_image`
-- ----------------------------
DROP TABLE IF EXISTS `spu_image`;
CREATE TABLE `spu_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `spu_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `img_name` varchar(200) DEFAULT NULL COMMENT '图片名称',
  `img_url` varchar(200) DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8 COMMENT='商品图片表';

-- ----------------------------
-- Records of spu_image
-- ----------------------------
INSERT INTO `spu_image` VALUES ('1', '4', 'zly.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrqwyqATxUEAACgV5vFD-g579.jpg');
INSERT INTO `spu_image` VALUES ('2', '5', '黑背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrqyWaAPkhVAAAnqwz0YWg000.jpg');
INSERT INTO `spu_image` VALUES ('3', '5', '黑侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrqyWaAcsZ6AABp0_3sawE249.jpg');
INSERT INTO `spu_image` VALUES ('4', '5', '黑全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrqyWaATbttAABwN0amTik337.jpg');
INSERT INTO `spu_image` VALUES ('5', '5', '黑正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrqyWaAH5ZXAABv_ho6M2s028.jpg');
INSERT INTO `spu_image` VALUES ('6', '5', '黑正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrqyWaAXBwMAACDUfqh01k179.jpg');
INSERT INTO `spu_image` VALUES ('7', '5', '金背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrqyWeAJOoRAAAt9d6sJFQ283.jpg');
INSERT INTO `spu_image` VALUES ('8', '5', '金侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrqyWeAfw8KAABk-uSRx_w412.jpg');
INSERT INTO `spu_image` VALUES ('9', '5', '金全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrqyWeAdLKBAAB4RhOIKYk191.jpg');
INSERT INTO `spu_image` VALUES ('10', '5', '金正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrqyWeAK1aeAABvI_LYeVc538.jpg');
INSERT INTO `spu_image` VALUES ('11', '5', '金正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrqyWeAADrtAACIKwmE3Zs628.jpg');
INSERT INTO `spu_image` VALUES ('12', '7', '黑背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAMlmRAAAnqwz0YWg862.jpg');
INSERT INTO `spu_image` VALUES ('13', '7', '黑侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyABa1CAABp0_3sawE022.jpg');
INSERT INTO `spu_image` VALUES ('14', '7', '黑全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAW-5DAABwN0amTik398.jpg');
INSERT INTO `spu_image` VALUES ('15', '7', '黑正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAbzNoAABv_ho6M2s362.jpg');
INSERT INTO `spu_image` VALUES ('16', '7', '黑正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAWRcYAACDUfqh01k485.jpg');
INSERT INTO `spu_image` VALUES ('17', '7', '金背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAa04rAAAt9d6sJFQ798.jpg');
INSERT INTO `spu_image` VALUES ('18', '7', '金侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyATB9TAABk-uSRx_w036.jpg');
INSERT INTO `spu_image` VALUES ('19', '7', '金全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAHYuSAAB4RhOIKYk808.jpg');
INSERT INTO `spu_image` VALUES ('20', '7', '金正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAMl1OAABvI_LYeVc215.jpg');
INSERT INTO `spu_image` VALUES ('21', '7', '金正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyASj2rAACIKwmE3Zs984.jpg');
INSERT INTO `spu_image` VALUES ('22', '8', '黑背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAMlmRAAAnqwz0YWg862.jpg');
INSERT INTO `spu_image` VALUES ('23', '8', '黑侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyABa1CAABp0_3sawE022.jpg');
INSERT INTO `spu_image` VALUES ('24', '8', '黑全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAW-5DAABwN0amTik398.jpg');
INSERT INTO `spu_image` VALUES ('25', '8', '黑正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAbzNoAABv_ho6M2s362.jpg');
INSERT INTO `spu_image` VALUES ('26', '8', '黑正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAWRcYAACDUfqh01k485.jpg');
INSERT INTO `spu_image` VALUES ('27', '8', '金背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAa04rAAAt9d6sJFQ798.jpg');
INSERT INTO `spu_image` VALUES ('28', '8', '金侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyATB9TAABk-uSRx_w036.jpg');
INSERT INTO `spu_image` VALUES ('29', '8', '金全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAHYuSAAB4RhOIKYk808.jpg');
INSERT INTO `spu_image` VALUES ('30', '8', '金正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAMl1OAABvI_LYeVc215.jpg');
INSERT INTO `spu_image` VALUES ('31', '8', '金正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyASj2rAACIKwmE3Zs984.jpg');
INSERT INTO `spu_image` VALUES ('32', '9', '黑背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAMlmRAAAnqwz0YWg862.jpg');
INSERT INTO `spu_image` VALUES ('33', '9', '黑侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyABa1CAABp0_3sawE022.jpg');
INSERT INTO `spu_image` VALUES ('34', '9', '黑全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAW-5DAABwN0amTik398.jpg');
INSERT INTO `spu_image` VALUES ('35', '9', '黑正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAbzNoAABv_ho6M2s362.jpg');
INSERT INTO `spu_image` VALUES ('36', '9', '黑正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAWRcYAACDUfqh01k485.jpg');
INSERT INTO `spu_image` VALUES ('37', '9', '金背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAa04rAAAt9d6sJFQ798.jpg');
INSERT INTO `spu_image` VALUES ('38', '9', '金侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyATB9TAABk-uSRx_w036.jpg');
INSERT INTO `spu_image` VALUES ('39', '9', '金全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAHYuSAAB4RhOIKYk808.jpg');
INSERT INTO `spu_image` VALUES ('40', '9', '金正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAMl1OAABvI_LYeVc215.jpg');
INSERT INTO `spu_image` VALUES ('41', '9', '金正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyASj2rAACIKwmE3Zs984.jpg');
INSERT INTO `spu_image` VALUES ('42', '10', '黑背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAMlmRAAAnqwz0YWg862.jpg');
INSERT INTO `spu_image` VALUES ('43', '10', '黑侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyABa1CAABp0_3sawE022.jpg');
INSERT INTO `spu_image` VALUES ('44', '10', '黑全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAW-5DAABwN0amTik398.jpg');
INSERT INTO `spu_image` VALUES ('45', '10', '黑正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAbzNoAABv_ho6M2s362.jpg');
INSERT INTO `spu_image` VALUES ('46', '10', '黑正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAWRcYAACDUfqh01k485.jpg');
INSERT INTO `spu_image` VALUES ('47', '10', '金背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAa04rAAAt9d6sJFQ798.jpg');
INSERT INTO `spu_image` VALUES ('48', '10', '金侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyATB9TAABk-uSRx_w036.jpg');
INSERT INTO `spu_image` VALUES ('49', '10', '金全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAHYuSAAB4RhOIKYk808.jpg');
INSERT INTO `spu_image` VALUES ('50', '10', '金正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAMl1OAABvI_LYeVc215.jpg');
INSERT INTO `spu_image` VALUES ('51', '10', '金正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyASj2rAACIKwmE3Zs984.jpg');
INSERT INTO `spu_image` VALUES ('52', '11', '黑背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAMlmRAAAnqwz0YWg862.jpg');
INSERT INTO `spu_image` VALUES ('53', '11', '黑侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyABa1CAABp0_3sawE022.jpg');
INSERT INTO `spu_image` VALUES ('54', '11', '黑全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAW-5DAABwN0amTik398.jpg');
INSERT INTO `spu_image` VALUES ('55', '11', '黑正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAbzNoAABv_ho6M2s362.jpg');
INSERT INTO `spu_image` VALUES ('56', '11', '黑正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAWRcYAACDUfqh01k485.jpg');
INSERT INTO `spu_image` VALUES ('57', '11', '金背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAa04rAAAt9d6sJFQ798.jpg');
INSERT INTO `spu_image` VALUES ('58', '11', '金侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyATB9TAABk-uSRx_w036.jpg');
INSERT INTO `spu_image` VALUES ('59', '11', '金全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAHYuSAAB4RhOIKYk808.jpg');
INSERT INTO `spu_image` VALUES ('60', '11', '金正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAMl1OAABvI_LYeVc215.jpg');
INSERT INTO `spu_image` VALUES ('61', '11', '金正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyASj2rAACIKwmE3Zs984.jpg');
INSERT INTO `spu_image` VALUES ('62', '12', '黑背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAMlmRAAAnqwz0YWg862.jpg');
INSERT INTO `spu_image` VALUES ('63', '12', '黑侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyABa1CAABp0_3sawE022.jpg');
INSERT INTO `spu_image` VALUES ('64', '12', '黑全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAW-5DAABwN0amTik398.jpg');
INSERT INTO `spu_image` VALUES ('65', '12', '黑正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAbzNoAABv_ho6M2s362.jpg');
INSERT INTO `spu_image` VALUES ('66', '12', '黑正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAWRcYAACDUfqh01k485.jpg');
INSERT INTO `spu_image` VALUES ('67', '12', '金背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAa04rAAAt9d6sJFQ798.jpg');
INSERT INTO `spu_image` VALUES ('68', '12', '金侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyATB9TAABk-uSRx_w036.jpg');
INSERT INTO `spu_image` VALUES ('69', '12', '金全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAHYuSAAB4RhOIKYk808.jpg');
INSERT INTO `spu_image` VALUES ('70', '12', '金正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyAMl1OAABvI_LYeVc215.jpg');
INSERT INTO `spu_image` VALUES ('71', '12', '金正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrryYyASj2rAACIKwmE3Zs984.jpg');
INSERT INTO `spu_image` VALUES ('72', '13', '黑背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrrzKCAa2-eAAAnqwz0YWg642.jpg');
INSERT INTO `spu_image` VALUES ('73', '13', '黑全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrrzKGAENdtAABwN0amTik321.jpg');
INSERT INTO `spu_image` VALUES ('74', '14', '金侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrrzYmANKMZAABk-uSRx_w574.jpg');
INSERT INTO `spu_image` VALUES ('75', '14', '金全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrrzYmAQoOqAAB4RhOIKYk419.jpg');
INSERT INTO `spu_image` VALUES ('76', '14', '金正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrrzYqAFidJAABvI_LYeVc573.jpg');
INSERT INTO `spu_image` VALUES ('77', '15', '黑背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAF22jAAAnqwz0YWg974.jpg');
INSERT INTO `spu_image` VALUES ('78', '15', '黑侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAS3m5AABp0_3sawE790.jpg');
INSERT INTO `spu_image` VALUES ('79', '15', '黑全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAUysoAABwN0amTik330.jpg');
INSERT INTO `spu_image` VALUES ('80', '15', '黑正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAbT0rAABv_ho6M2s990.jpg');
INSERT INTO `spu_image` VALUES ('81', '15', '黑正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAfS_8AACDUfqh01k812.jpg');
INSERT INTO `spu_image` VALUES ('82', '15', '金背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAeTA2AAAt9d6sJFQ842.jpg');
INSERT INTO `spu_image` VALUES ('83', '15', '金侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAQstxAABk-uSRx_w849.jpg');
INSERT INTO `spu_image` VALUES ('84', '15', '金全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uARO65AAB4RhOIKYk066.jpg');
INSERT INTO `spu_image` VALUES ('85', '15', '金正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAXEdMAABvI_LYeVc795.jpg');
INSERT INTO `spu_image` VALUES ('86', '15', '金正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVrvp0uAR6RqAACIKwmE3Zs454.jpg');
INSERT INTO `spu_image` VALUES ('87', '16', '侧面1.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-AH0bPAALwRWgREBk623.jpg');
INSERT INTO `spu_image` VALUES ('88', '16', '侧面2.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-AMPgJAALvYFDzimw653.jpg');
INSERT INTO `spu_image` VALUES ('89', '16', '地面1.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-ALdwZAAIceOUIA-w673.jpg');
INSERT INTO `spu_image` VALUES ('90', '16', '正面1.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-Abka_AAMVBZhw5ts345.jpg');
INSERT INTO `spu_image` VALUES ('91', '16', '正面2.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-ANAr1AAIFjNM9RW8008.jpg');
INSERT INTO `spu_image` VALUES ('92', '16', '正面3.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeH-AcJS3AAKa63jyrrE510.jpg');
INSERT INTO `spu_image` VALUES ('93', '17', '侧面1.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeaCAYCTaAALwRWgREBk466.jpg');
INSERT INTO `spu_image` VALUES ('94', '17', '侧面2.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeaCAZgHIAALvYFDzimw460.jpg');
INSERT INTO `spu_image` VALUES ('95', '17', '地面1.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeaCAfNBUAAIceOUIA-w133.jpg');
INSERT INTO `spu_image` VALUES ('96', '17', '正面1.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeaGAe84wAAMVBZhw5ts931.jpg');
INSERT INTO `spu_image` VALUES ('97', '17', '正面2.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeaGAKvCnAAIFjNM9RW8136.jpg');
INSERT INTO `spu_image` VALUES ('98', '17', '正面3.png', 'http://file.service.com/group1/M00/00/00/wKhDyVsDeaGAAa5ZAAKa63jyrrE449.jpg');
INSERT INTO `spu_image` VALUES ('99', '18', 'ty1.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsLz9KATOgqAACtsGvmtY4840.jpg');
INSERT INTO `spu_image` VALUES ('100', '18', 'ty2.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsLz9KAJ6kaAABecbtUPQk921.jpg');
INSERT INTO `spu_image` VALUES ('101', '18', 'zly.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsLz9OAS9bMAACgV5vFD-g030.jpg');
INSERT INTO `spu_image` VALUES ('102', '19', '黑背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AWAIxAAAnqwz0YWg496.jpg');
INSERT INTO `spu_image` VALUES ('103', '19', '黑侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AXBjkAABp0_3sawE089.jpg');
INSERT INTO `spu_image` VALUES ('104', '19', '黑全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2ARo1vAABwN0amTik955.jpg');
INSERT INTO `spu_image` VALUES ('105', '19', '黑正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2Ab-GmAABv_ho6M2s359.jpg');
INSERT INTO `spu_image` VALUES ('106', '19', '黑正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AMHfrAACDUfqh01k157.jpg');
INSERT INTO `spu_image` VALUES ('107', '19', '金背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AVRUsAAAt9d6sJFQ918.jpg');
INSERT INTO `spu_image` VALUES ('108', '19', '金侧.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AT92vAABk-uSRx_w466.jpg');
INSERT INTO `spu_image` VALUES ('109', '19', '金全.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AB6o0AAB4RhOIKYk962.jpg');
INSERT INTO `spu_image` VALUES ('110', '19', '金正.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2AT-psAABvI_LYeVc750.jpg');
INSERT INTO `spu_image` VALUES ('111', '19', '金正背.jpg', 'http://file.service.com/group1/M00/00/00/wKhDyVsMsj2ACsJfAACIKwmE3Zs014.jpg');
INSERT INTO `spu_image` VALUES ('112', '21', 'logo.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9h9SAZg-WAAHwJV7k8qE581.png');
INSERT INTO `spu_image` VALUES ('113', '22', 'solr.jpg.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9iKuAJiOWAAA609d3410877.png');
INSERT INTO `spu_image` VALUES ('114', '23', 'solr.jpg.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9iKuAJiOWAAA609d3410877.png');
INSERT INTO `spu_image` VALUES ('115', '24', 'solr.jpg.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9iKuAJiOWAAA609d3410877.png');
INSERT INTO `spu_image` VALUES ('116', '25', 'solr.jpg.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9iKuAJiOWAAA609d3410877.png');
INSERT INTO `spu_image` VALUES ('117', '26', 'solr.jpg.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9iKuAJiOWAAA609d3410877.png');
INSERT INTO `spu_image` VALUES ('118', '27', 'solr.jpg.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9iKuAJiOWAAA609d3410877.png');
INSERT INTO `spu_image` VALUES ('119', '28', 'solr.jpg.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9jGmAZODLAAA609d3410684.png');
INSERT INTO `spu_image` VALUES ('120', '29', 'solr.jpg.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9jGmAZODLAAA609d3410684.png');
INSERT INTO `spu_image` VALUES ('121', '31', 'ty1.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9kDOAYBS8AACtsGvmtY4419.jpg');
INSERT INTO `spu_image` VALUES ('122', '30', 'ty1.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9kDOAYBS8AACtsGvmtY4419.jpg');
INSERT INTO `spu_image` VALUES ('123', '32', 't.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9kbaAJrN8AAAh0Gk-NqQ816.png');
INSERT INTO `spu_image` VALUES ('124', '33', 't.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9kbaAJrN8AAAh0Gk-NqQ816.png');
INSERT INTO `spu_image` VALUES ('125', '34', 'zly.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9kzaAA0JIAACgV5vFD-g814.jpg');
INSERT INTO `spu_image` VALUES ('126', '35', 'ty1.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9lA6AFqDqAACtsGvmtY4402.jpg');
INSERT INTO `spu_image` VALUES ('127', '36', 'solr.jpg.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9lRqAA-F2AAA609d3410876.png');
INSERT INTO `spu_image` VALUES ('128', '37', 'atguigu.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9ld-AQrP3AACGMGOXnn8720.png');
INSERT INTO `spu_image` VALUES ('129', '38', 'solr.jpg.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9limARIQ8AAA609d3410761.png');
INSERT INTO `spu_image` VALUES ('130', '39', 'atguigu.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls9lp-AXrKDAACGMGOXnn8968.png');
INSERT INTO `spu_image` VALUES ('131', '40', 'liuyan.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-CyiATDfIAAAQlvZ6QBI902.jpg');
INSERT INTO `spu_image` VALUES ('132', '40', '侧面1.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-DCKALtaVAALwRWgREBk407.png');
INSERT INTO `spu_image` VALUES ('133', '40', '啊啊1.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-DCKASU1fAALvYFDzimw029.png');
INSERT INTO `spu_image` VALUES ('134', '40', '地面1.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-DCKAVttfAAIceOUIA-w292.png');
INSERT INTO `spu_image` VALUES ('135', '40', '正面1.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-DCKAQ0A0AAMVBZhw5ts654.png');
INSERT INTO `spu_image` VALUES ('136', '40', '正面2.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-DCKARu8lAAIFjNM9RW8533.png');
INSERT INTO `spu_image` VALUES ('137', '40', '正面3.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-DCKAVWl9AAKa63jyrrE666.png');
INSERT INTO `spu_image` VALUES ('138', '41', '地面1.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-UHaAMziMAAIceOUIA-w423.png');
INSERT INTO `spu_image` VALUES ('139', '42', '正面3.png', 'http://192.168.67.200/group1/M00/00/00/wKhDyFs_KnCAdj38AAKa63jyrrE974.png');
INSERT INTO `spu_image` VALUES ('140', '43', '正面3.png', 'http://192.168.67.200/group1/M00/00/00/wKhDyFs_KwWAT_aWAAKa63jyrrE634.png');
INSERT INTO `spu_image` VALUES ('141', '44', '侧面2.png', 'http://192.168.67.200/group1/M00/00/00/wKhDyFs_K8mAfLd2AALvYFDzimw542.png');
INSERT INTO `spu_image` VALUES ('142', '45', '黑背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAT1fxAAAnqwz0YWg840.jpg');
INSERT INTO `spu_image` VALUES ('143', '45', '黑侧.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAa2vOAABp0_3sawE364.jpg');
INSERT INTO `spu_image` VALUES ('144', '45', '黑全.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAJahbAABwN0amTik650.jpg');
INSERT INTO `spu_image` VALUES ('145', '45', '黑正.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAfzhyAABv_ho6M2s616.jpg');
INSERT INTO `spu_image` VALUES ('146', '45', '黑正背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAaIGhAACDUfqh01k599.jpg');
INSERT INTO `spu_image` VALUES ('147', '45', '金背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uASLHaAAAt9d6sJFQ095.jpg');
INSERT INTO `spu_image` VALUES ('148', '45', '金侧.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAZJWLAABk-uSRx_w567.jpg');
INSERT INTO `spu_image` VALUES ('149', '45', '金全.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAGqFaAAB4RhOIKYk621.jpg');
INSERT INTO `spu_image` VALUES ('150', '45', '金正.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uACb2jAABvI_LYeVc728.jpg');
INSERT INTO `spu_image` VALUES ('151', '45', '金正背.jpg', 'http://192.168.67.202/group1/M00/00/00/wKhDyls-b0uAXdhBAACIKwmE3Zs082.jpg');
INSERT INTO `spu_image` VALUES ('152', '46', '侧面1.png', 'http://192.168.67.200/group1/M00/00/00/wKhDyFtIFGSAWN43AALwRWgREBk970.png');
INSERT INTO `spu_image` VALUES ('153', '46', '侧面2.png', 'http://192.168.67.200/group1/M00/00/00/wKhDyFtIFGSAUPPEAALvYFDzimw251.png');
INSERT INTO `spu_image` VALUES ('154', '46', '地面1.png', 'http://192.168.67.200/group1/M00/00/00/wKhDyFtIFGSAOK7tAAIceOUIA-w202.png');
INSERT INTO `spu_image` VALUES ('155', '46', '正面1.png', 'http://192.168.67.200/group1/M00/00/00/wKhDyFtIFGSARHfOAAMVBZhw5ts422.png');
INSERT INTO `spu_image` VALUES ('156', '46', '正面2.png', 'http://192.168.67.200/group1/M00/00/00/wKhDyFtIFGSALqfPAAIFjNM9RW8199.png');
INSERT INTO `spu_image` VALUES ('157', '46', '正面3.png', 'http://192.168.67.200/group1/M00/00/00/wKhDyFtIFGSASnjuAAKa63jyrrE674.png');
INSERT INTO `spu_image` VALUES ('158', '47', '侧面1.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyltXzV2ACgrDAALwRWgREBk421.png');
INSERT INTO `spu_image` VALUES ('159', '47', '侧面2.png', 'http://192.168.67.202/group1/M00/00/00/wKhDyltXzV2AVSWeAALvYFDzimw108.png');
INSERT INTO `spu_image` VALUES ('160', '48', '侧面1.png', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tbskyADVFWAALwRWgREBk847.png');
INSERT INTO `spu_image` VALUES ('161', '48', '侧面2.png', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tbskyAWuz7AALvYFDzimw939.png');
INSERT INTO `spu_image` VALUES ('162', '48', '地面1.png', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tbskyAVRRmAAIceOUIA-w601.png');
INSERT INTO `spu_image` VALUES ('163', '48', '正面1.png', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tbsk2AEW45AAMVBZhw5ts354.png');
INSERT INTO `spu_image` VALUES ('164', '48', '正面2.png', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tbsk2AJ3JBAAIFjNM9RW8194.png');
INSERT INTO `spu_image` VALUES ('165', '48', '正面3.png', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tbsk2Abv-wAAKa63jyrrE687.png');
INSERT INTO `spu_image` VALUES ('166', '49', '黑背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1te4L-AX6nEAAAnqwz0YWg923.jpg');
INSERT INTO `spu_image` VALUES ('167', '49', '黑侧.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1te4L-AOszXAABp0_3sawE264.jpg');
INSERT INTO `spu_image` VALUES ('168', '49', '黑全.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1te4L-ALQmpAABwN0amTik495.jpg');
INSERT INTO `spu_image` VALUES ('169', '49', '黑正.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1te4L-AfeMBAABv_ho6M2s833.jpg');
INSERT INTO `spu_image` VALUES ('170', '49', '黑正背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1te4L-APUkJAACDUfqh01k175.jpg');
INSERT INTO `spu_image` VALUES ('171', '49', '金背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1te4L-AVJIAAAAt9d6sJFQ033.jpg');
INSERT INTO `spu_image` VALUES ('172', '49', '金侧.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1te4L-AcUcGAABk-uSRx_w927.jpg');
INSERT INTO `spu_image` VALUES ('173', '49', '金全.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1te4L-AGZCPAAB4RhOIKYk871.jpg');
INSERT INTO `spu_image` VALUES ('174', '49', '金正.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1te4L-AGZJnAABvI_LYeVc570.jpg');
INSERT INTO `spu_image` VALUES ('175', '49', '金正背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1te4L-ALv3-AACIKwmE3Zs374.jpg');
INSERT INTO `spu_image` VALUES ('176', '49', '001.png', 'http://192.168.67.203/group1/M00/00/00/wKhDy1te4L-AJCO4AAMkEGbUlpk041.png');
INSERT INTO `spu_image` VALUES ('177', '50', '黑背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLGAVnnPAAAnqwz0YWg288.jpg');
INSERT INTO `spu_image` VALUES ('178', '50', '黑侧.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLGATQ5fAABp0_3sawE372.jpg');
INSERT INTO `spu_image` VALUES ('179', '50', '黑全.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLGART2jAABwN0amTik001.jpg');
INSERT INTO `spu_image` VALUES ('180', '50', '黑正.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLGAFdpQAABv_ho6M2s289.jpg');
INSERT INTO `spu_image` VALUES ('181', '50', '黑正背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLGAGcT0AACDUfqh01k284.jpg');
INSERT INTO `spu_image` VALUES ('182', '50', '金背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLGAXbblAAAt9d6sJFQ951.jpg');
INSERT INTO `spu_image` VALUES ('183', '50', '金侧.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLKAcFM0AABk-uSRx_w233.jpg');
INSERT INTO `spu_image` VALUES ('184', '50', '金全.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLKAbYRxAAB4RhOIKYk460.jpg');
INSERT INTO `spu_image` VALUES ('185', '50', '金正.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLKADB6XAABvI_LYeVc047.jpg');
INSERT INTO `spu_image` VALUES ('186', '50', '金正背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1tfQLKAMwUUAACIKwmE3Zs718.jpg');
INSERT INTO `spu_image` VALUES ('187', '51', '黑背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1uBquCAQJYwAAAnqwz0YWg356.jpg');
INSERT INTO `spu_image` VALUES ('188', '51', '黑侧.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1uBquCAZz7EAABp0_3sawE145.jpg');
INSERT INTO `spu_image` VALUES ('189', '51', '黑全.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1uBquCAWUGJAABwN0amTik732.jpg');
INSERT INTO `spu_image` VALUES ('190', '51', '黑正.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1uBquGACnFDAABv_ho6M2s715.jpg');
INSERT INTO `spu_image` VALUES ('191', '51', '黑正背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1uBquGALgj2AACDUfqh01k687.jpg');
INSERT INTO `spu_image` VALUES ('192', '51', '金背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1uBquGACgOJAAAt9d6sJFQ044.jpg');
INSERT INTO `spu_image` VALUES ('193', '51', '金侧.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1uBquGAS1sFAABk-uSRx_w399.jpg');
INSERT INTO `spu_image` VALUES ('194', '51', '金全.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1uBquGAPxh6AAB4RhOIKYk252.jpg');
INSERT INTO `spu_image` VALUES ('195', '51', '金正.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1uBquGAFVYqAABvI_LYeVc296.jpg');
INSERT INTO `spu_image` VALUES ('196', '51', '金正背.jpg', 'http://192.168.67.203/group1/M00/00/00/wKhDy1uBquKAZTQxAACIKwmE3Zs848.jpg');
INSERT INTO `spu_image` VALUES ('197', '52', '黑背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe2AJIrOAAAnqwz0YWg489.jpg');
INSERT INTO `spu_image` VALUES ('198', '52', '黑侧.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe2ACRf5AABp0_3sawE071.jpg');
INSERT INTO `spu_image` VALUES ('199', '52', '黑全.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe2AQYIhAABwN0amTik514.jpg');
INSERT INTO `spu_image` VALUES ('200', '52', '黑正.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6AVWnDAABv_ho6M2s690.jpg');
INSERT INTO `spu_image` VALUES ('201', '52', '黑正背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6AfCWcAACDUfqh01k454.jpg');
INSERT INTO `spu_image` VALUES ('202', '52', '金背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6AYdotAAAt9d6sJFQ618.jpg');
INSERT INTO `spu_image` VALUES ('203', '52', '金侧.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6AcfiGAABk-uSRx_w583.jpg');
INSERT INTO `spu_image` VALUES ('204', '52', '金全.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6AVFNQAAB4RhOIKYk844.jpg');
INSERT INTO `spu_image` VALUES ('205', '52', '金正.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6ACp8AAABvI_LYeVc602.jpg');
INSERT INTO `spu_image` VALUES ('206', '52', '金正背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6ALT2FAACIKwmE3Zs138.jpg');
INSERT INTO `spu_image` VALUES ('207', '54', '黑背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe2AJIrOAAAnqwz0YWg489.jpg');
INSERT INTO `spu_image` VALUES ('208', '54', '黑侧.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe2ACRf5AABp0_3sawE071.jpg');
INSERT INTO `spu_image` VALUES ('209', '54', '黑全.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe2AQYIhAABwN0amTik514.jpg');
INSERT INTO `spu_image` VALUES ('210', '54', '黑正.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6AVWnDAABv_ho6M2s690.jpg');
INSERT INTO `spu_image` VALUES ('211', '54', '黑正背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6AfCWcAACDUfqh01k454.jpg');
INSERT INTO `spu_image` VALUES ('212', '54', '金背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6AYdotAAAt9d6sJFQ618.jpg');
INSERT INTO `spu_image` VALUES ('213', '54', '金侧.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6AcfiGAABk-uSRx_w583.jpg');
INSERT INTO `spu_image` VALUES ('214', '54', '金全.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6AVFNQAAB4RhOIKYk844.jpg');
INSERT INTO `spu_image` VALUES ('215', '54', '金正.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6ACp8AAABvI_LYeVc602.jpg');
INSERT INTO `spu_image` VALUES ('216', '54', '金正背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6ALT2FAACIKwmE3Zs138.jpg');
INSERT INTO `spu_image` VALUES ('217', '53', '黑背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe2AJIrOAAAnqwz0YWg489.jpg');
INSERT INTO `spu_image` VALUES ('218', '53', '黑侧.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe2ACRf5AABp0_3sawE071.jpg');
INSERT INTO `spu_image` VALUES ('219', '53', '黑全.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe2AQYIhAABwN0amTik514.jpg');
INSERT INTO `spu_image` VALUES ('220', '53', '黑正.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6AVWnDAABv_ho6M2s690.jpg');
INSERT INTO `spu_image` VALUES ('221', '53', '黑正背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6AfCWcAACDUfqh01k454.jpg');
INSERT INTO `spu_image` VALUES ('222', '53', '金背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6AYdotAAAt9d6sJFQ618.jpg');
INSERT INTO `spu_image` VALUES ('223', '53', '金侧.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6AcfiGAABk-uSRx_w583.jpg');
INSERT INTO `spu_image` VALUES ('224', '53', '金全.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6AVFNQAAB4RhOIKYk844.jpg');
INSERT INTO `spu_image` VALUES ('225', '53', '金正.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6ACp8AAABvI_LYeVc602.jpg');
INSERT INTO `spu_image` VALUES ('226', '53', '金正背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEFe6ALT2FAACIKwmE3Zs138.jpg');
INSERT INTO `spu_image` VALUES ('227', '55', '黑背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEF2OAfrJVAAAnqwz0YWg771.jpg');
INSERT INTO `spu_image` VALUES ('228', '55', '黑侧.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEF2OAdSqyAABp0_3sawE610.jpg');
INSERT INTO `spu_image` VALUES ('229', '55', '黑全.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEF2OALIkLAABwN0amTik737.jpg');
INSERT INTO `spu_image` VALUES ('230', '55', '黑正.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEF2OAWKB8AABv_ho6M2s432.jpg');
INSERT INTO `spu_image` VALUES ('231', '55', '黑正背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEF2OAAlAKAACDUfqh01k915.jpg');
INSERT INTO `spu_image` VALUES ('232', '55', '金背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEF2SAYi3YAAAt9d6sJFQ743.jpg');
INSERT INTO `spu_image` VALUES ('233', '55', '金侧.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEF2SAEWOVAABk-uSRx_w519.jpg');
INSERT INTO `spu_image` VALUES ('234', '55', '金全.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEF2SAEDqdAAB4RhOIKYk349.jpg');
INSERT INTO `spu_image` VALUES ('235', '55', '金正.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEF2SABuf4AABvI_LYeVc208.jpg');
INSERT INTO `spu_image` VALUES ('236', '55', '金正背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuEF2SAZt9eAACIKwmE3Zs660.jpg');
INSERT INTO `spu_image` VALUES ('237', '56', '黑背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ4yAFYTSAAAnqwz0YWg317.jpg');
INSERT INTO `spu_image` VALUES ('238', '56', '黑侧.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ4yASLoBAABp1xFAhrU846.jpg');
INSERT INTO `spu_image` VALUES ('239', '56', '黑全.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ4yAOHSEAABwM7Yaww0859.jpg');
INSERT INTO `spu_image` VALUES ('240', '56', '黑正.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ42AGEopAABv-lCqbtw709.jpg');
INSERT INTO `spu_image` VALUES ('241', '56', '黑正背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ42ACv4FAACDYa0I2wg314.jpg');
INSERT INTO `spu_image` VALUES ('242', '56', '金背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ42AZs0AAAAt9d6sJFQ182.jpg');
INSERT INTO `spu_image` VALUES ('243', '56', '金侧.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ42AdZimAABk87cuaDg572.jpg');
INSERT INTO `spu_image` VALUES ('244', '56', '金全.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ42AO8wNAAB4Swduxc0248.jpg');
INSERT INTO `spu_image` VALUES ('245', '56', '金正.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ42ARr7rAABvJzmlwFs496.jpg');
INSERT INTO `spu_image` VALUES ('246', '56', '金正背.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuFZ46AainsAACIJ7tnt3g223.jpg');
INSERT INTO `spu_image` VALUES ('247', '57', '001.jpg', 'http://192.168.67.204/group1/M00/00/00/wKhDzFuJ2fOAO7DeAAAsZCdeARw599.jpg');
INSERT INTO `spu_image` VALUES ('248', '58', '黑侧.jpg', 'http://192.168.245.131/0/1');
INSERT INTO `spu_image` VALUES ('249', '58', '黑正.jpg', 'http://192.168.245.131/0/1');
INSERT INTO `spu_image` VALUES ('250', '58', '金背.jpg', 'http://192.168.245.131/0/1');
INSERT INTO `spu_image` VALUES ('251', '58', '黑全.jpg', 'http://192.168.245.131/0/1');
INSERT INTO `spu_image` VALUES ('252', '58', '黑背.jpg', 'http://192.168.245.131/0/1');
INSERT INTO `spu_image` VALUES ('253', '59', '黑正.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16QcZqAJkuOAAGxOgdhnng037.jpg');
INSERT INTO `spu_image` VALUES ('254', '60', '金背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16SfcOABvkcAADfnMDJkAM405.jpg');
INSERT INTO `spu_image` VALUES ('255', '60', '黑背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16SfcOACohzAACbuutfIxI561.jpg');
INSERT INTO `spu_image` VALUES ('256', '60', '黑正.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16SfcOAfHyYAAGxOgdhnng180.jpg');
INSERT INTO `spu_image` VALUES ('257', '60', '黑侧.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16SfcOABkFHAAGNGWcf4Bg584.jpg');
INSERT INTO `spu_image` VALUES ('258', '60', '黑正背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16SfcOAeAzQAAIXc1LGT24293.jpg');
INSERT INTO `spu_image` VALUES ('259', '60', '黑全.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16SfcOAGwgRAAImKTV0RBw232.jpg');
INSERT INTO `spu_image` VALUES ('260', '61', '黑背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sf42APNIaAACbuutfIxI203.jpg');
INSERT INTO `spu_image` VALUES ('261', '61', '黑侧.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sf42AKwkMAAGNGWcf4Bg592.jpg');
INSERT INTO `spu_image` VALUES ('262', '61', '黑正.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sf42AS1dEAAGxOgdhnng819.jpg');
INSERT INTO `spu_image` VALUES ('263', '61', '黑正背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sf42ATbLXAAIXc1LGT24786.jpg');
INSERT INTO `spu_image` VALUES ('264', '61', '黑全.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sf42AKjihAAImKTV0RBw411.jpg');
INSERT INTO `spu_image` VALUES ('265', '61', '金背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sf5KAT-Q4AADfnMDJkAM302.jpg');
INSERT INTO `spu_image` VALUES ('266', '61', '金全.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sf5KADnuAAAIsKfx4n_g114.jpg');
INSERT INTO `spu_image` VALUES ('267', '61', '金正.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sf5KAVZzxAAG6_8yB2-c685.jpg');
INSERT INTO `spu_image` VALUES ('268', '61', '金正背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sf5KAeew4AAJJbuXt4Qg500.jpg');
INSERT INTO `spu_image` VALUES ('269', '61', '金侧.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sf5KAZKzJAAGr4YZ6yQs512.jpg');
INSERT INTO `spu_image` VALUES ('270', '62', '金正.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Srj-ALr9sAAG6_8yB2-c175.jpg');
INSERT INTO `spu_image` VALUES ('271', '63', '金正.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Srj-ALr9sAAG6_8yB2-c175.jpg');
INSERT INTO `spu_image` VALUES ('272', '64', '金正.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Srj-ALr9sAAG6_8yB2-c175.jpg');
INSERT INTO `spu_image` VALUES ('273', '66', '黑背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aASZ-7AACbuutfIxI568.jpg');
INSERT INTO `spu_image` VALUES ('274', '66', '黑侧.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAQtQgAAGNGWcf4Bg049.jpg');
INSERT INTO `spu_image` VALUES ('275', '66', '黑全.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAATBJAAImKTV0RBw076.jpg');
INSERT INTO `spu_image` VALUES ('276', '66', '黑正.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAbRn5AAGxOgdhnng271.jpg');
INSERT INTO `spu_image` VALUES ('277', '66', '黑正背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3aAQ_GJAAIXc1LGT24102.jpg');
INSERT INTO `spu_image` VALUES ('278', '66', '金背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAK3fuAADfnMDJkAM027.jpg');
INSERT INTO `spu_image` VALUES ('279', '66', '金全.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAe3maAAIsKfx4n_g925.jpg');
INSERT INTO `spu_image` VALUES ('280', '66', '金侧.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAdkfNAAGr4YZ6yQs695.jpg');
INSERT INTO `spu_image` VALUES ('281', '66', '金正背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAANlEAAJJbuXt4Qg307.jpg');
INSERT INTO `spu_image` VALUES ('282', '66', '金正.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Sr3yAYAHBAAG6_8yB2-c583.jpg');
INSERT INTO `spu_image` VALUES ('283', '67', '黑全.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Vr9CAVWkjAAImKTV0RBw432.jpg');
INSERT INTO `spu_image` VALUES ('284', '67', '黑正.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Vr9CAAexzAAGxOgdhnng184.jpg');
INSERT INTO `spu_image` VALUES ('285', '67', '黑背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Vr9CAca0GAACbuutfIxI885.jpg');
INSERT INTO `spu_image` VALUES ('286', '67', '黑侧.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Vr9CAIHrkAAGNGWcf4Bg343.jpg');
INSERT INTO `spu_image` VALUES ('287', '67', '黑正背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Vr9CACmgjAAIXc1LGT24797.jpg');
INSERT INTO `spu_image` VALUES ('288', '67', '金侧.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Vr9WAY6_yAAGr4YZ6yQs162.jpg');
INSERT INTO `spu_image` VALUES ('289', '67', '金背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Vr9WAXZehAADfnMDJkAM003.jpg');
INSERT INTO `spu_image` VALUES ('290', '67', '金正背.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Vr9WAH4PkAAJJbuXt4Qg377.jpg');
INSERT INTO `spu_image` VALUES ('291', '67', '金全.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Vr9WAbADhAAIsKfx4n_g615.jpg');
INSERT INTO `spu_image` VALUES ('292', '67', '金正.jpg', 'http://192.168.245.131/group1/M00/00/00/wKj1g16Vr9WALapGAAG6_8yB2-c540.jpg');

-- ----------------------------
-- Table structure for `spu_info`
-- ----------------------------
DROP TABLE IF EXISTS `spu_info`;
CREATE TABLE `spu_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `spu_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `description` varchar(1000) DEFAULT NULL COMMENT '商品描述(后台简述）',
  `catalog3_id` bigint(20) DEFAULT NULL COMMENT '分类编号二id',
  `tm_id` bigint(20) DEFAULT NULL COMMENT '品牌id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of spu_info
-- ----------------------------
INSERT INTO `spu_info` VALUES ('5', '小米 红米5 Plus', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 黑色 移动联通电信4G手机 双卡双待', '61', null);
INSERT INTO `spu_info` VALUES ('7', 'OPPO R15', 'OPPO R15 全面屏双摄拍照手机 6G+128G 星空紫 全网通 移动联通电信4G 双卡双待手机', '61', null);
INSERT INTO `spu_info` VALUES ('13', '荣耀 V10 ', '荣耀 V10 高配版 6GB+64GB 幻夜黑 移动联通电信4G全面屏游戏手机 双卡双待', '61', null);
INSERT INTO `spu_info` VALUES ('14', '小米 红米Note5 全网通版', '小米 红米Note5 全网通版 4GB+64GB 黑色 移动联通电信4G手机 双卡双待', '61', null);
INSERT INTO `spu_info` VALUES ('15', '小米 红米5 Plus ', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 黑色 移动联通电信4G手机 双卡双待', '61', null);
INSERT INTO `spu_info` VALUES ('16', '联想拯救者R720', '联想(Lenovo)拯救者R720 15.6英寸大屏游戏笔记本电脑(i5-7300HQ 8G 1T+128G SSD GTX1050Ti 4G IPS 黑金)', '285', null);
INSERT INTO `spu_info` VALUES ('17', '联想拯救者R720', '联想(Lenovo)拯救者R720 15.6英寸游戏笔记本电脑(i7-7700HQ 8G 1T+128G SSD GTX1050 2G IPS)黑', '285', null);
INSERT INTO `spu_info` VALUES ('40', 'Apple iPhone 8 Plus', 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', '61', null);
INSERT INTO `spu_info` VALUES ('45', '小米=====5', '小米555555555555555', '61', null);
INSERT INTO `spu_info` VALUES ('46', '联想拯救者', '游戏本，也能开发。速度杠杠滴。24G内存一点都不卡。', '285', null);
INSERT INTO `spu_info` VALUES ('48', '联想', '联想好用，硅谷专用！', '285', null);
INSERT INTO `spu_info` VALUES ('49', '佳能（Canon）IXUS 190 数码相机', '佳能（Canon）IXUS 190 数码相机 （2000万像素 10倍光学变焦 24mm超广角 支持Wi-Fi和NFC）黑色 好用！', '178', null);
INSERT INTO `spu_info` VALUES ('50', '小米77', '小米好吃，还能打电话。最重要的是打游戏不卡！', '61', null);
INSERT INTO `spu_info` VALUES ('56', '小米88', '不错，很好，nice，good！', '61', null);
INSERT INTO `spu_info` VALUES ('57', '小米999', 'good，nice！', '61', null);
INSERT INTO `spu_info` VALUES ('58', '华为手机', '好的手机  就是你', '61', null);
INSERT INTO `spu_info` VALUES ('59', '小米', '好手机  不说哈', '61', null);
INSERT INTO `spu_info` VALUES ('60', '华为', '正品', '61', null);
INSERT INTO `spu_info` VALUES ('61', '华为none', '华为', '61', null);
INSERT INTO `spu_info` VALUES ('62', '1', '1', '61', null);
INSERT INTO `spu_info` VALUES ('63', '1', '1', '61', null);
INSERT INTO `spu_info` VALUES ('64', '1', '1', '61', null);
INSERT INTO `spu_info` VALUES ('65', '2', '2', '61', null);
INSERT INTO `spu_info` VALUES ('66', '小米手机', '12', '61', null);
INSERT INTO `spu_info` VALUES ('67', '小米手机', '好手机', '61', null);

-- ----------------------------
-- Table structure for `spu_poster`
-- ----------------------------
DROP TABLE IF EXISTS `spu_poster`;
CREATE TABLE `spu_poster` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `spu_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `file_name` varchar(200) DEFAULT NULL COMMENT '文件名称',
  `file_type` varchar(200) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品海报表';

-- ----------------------------
-- Records of spu_poster
-- ----------------------------
INSERT INTO `spu_poster` VALUES ('1', '1', '1111111111111111111111111111111111', '1');
INSERT INTO `spu_poster` VALUES ('2', '2', '2222', '1');

-- ----------------------------
-- Table structure for `spu_sale_attr`
-- ----------------------------
DROP TABLE IF EXISTS `spu_sale_attr`;
CREATE TABLE `spu_sale_attr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号(业务中无关联)',
  `spu_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `sale_attr_id` bigint(20) DEFAULT NULL COMMENT '销售属性id',
  `sale_attr_name` varchar(20) DEFAULT NULL COMMENT '销售属性名称(冗余)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='spu销售属性';

-- ----------------------------
-- Records of spu_sale_attr
-- ----------------------------
INSERT INTO `spu_sale_attr` VALUES ('1', '14', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('2', '14', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('3', '15', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('4', '15', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('5', '16', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('6', '16', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('7', '17', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('8', '17', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('9', '18', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('10', '18', '3', '尺码');
INSERT INTO `spu_sale_attr` VALUES ('11', '19', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('12', '19', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('13', '21', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('14', '22', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('15', '23', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('16', '24', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('17', '25', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('18', '26', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('19', '27', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('20', '28', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('21', '29', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('22', '31', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('23', '30', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('24', '33', '3', '尺码');
INSERT INTO `spu_sale_attr` VALUES ('25', '32', '3', '尺码');
INSERT INTO `spu_sale_attr` VALUES ('26', '34', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('27', '35', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('28', '36', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('29', '37', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('30', '38', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('31', '39', '3', '尺码');
INSERT INTO `spu_sale_attr` VALUES ('32', '40', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('33', '40', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('34', '41', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('35', '44', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('36', '45', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('37', '45', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('38', '46', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('39', '47', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('40', '48', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('41', '48', '3', '尺码');
INSERT INTO `spu_sale_attr` VALUES ('42', '49', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('43', '49', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('44', '50', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('45', '50', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('46', '51', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('47', '51', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('48', '52', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('49', '54', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('50', '53', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('51', '55', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('52', '56', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('53', '56', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('54', '57', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('55', '58', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('56', '58', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('57', '59', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('58', '60', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('59', '60', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('60', '61', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('61', '61', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('62', '63', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('63', '64', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('64', '63', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('65', '64', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('66', '62', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('67', '62', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('68', '65', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('69', '65', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('70', '66', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('71', '66', '2', '版本');
INSERT INTO `spu_sale_attr` VALUES ('72', '67', '1', '颜色');
INSERT INTO `spu_sale_attr` VALUES ('73', '67', '2', '版本');

-- ----------------------------
-- Table structure for `spu_sale_attr_value`
-- ----------------------------
DROP TABLE IF EXISTS `spu_sale_attr_value`;
CREATE TABLE `spu_sale_attr_value` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '销售属性值编号',
  `spu_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `sale_attr_id` bigint(20) DEFAULT NULL COMMENT '销售属性id',
  `sale_attr_value_name` varchar(20) DEFAULT NULL COMMENT '销售属性值名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COMMENT='spu销售属性值';

-- ----------------------------
-- Records of spu_sale_attr_value
-- ----------------------------
INSERT INTO `spu_sale_attr_value` VALUES ('1', '9', '1', '星空紫');
INSERT INTO `spu_sale_attr_value` VALUES ('2', '9', '1', '热力红');
INSERT INTO `spu_sale_attr_value` VALUES ('3', '9', '2', '官方版');
INSERT INTO `spu_sale_attr_value` VALUES ('4', '9', '2', '套装版');
INSERT INTO `spu_sale_attr_value` VALUES ('17', '13', '1', '极光蓝');
INSERT INTO `spu_sale_attr_value` VALUES ('18', '13', '1', '幻夜黑');
INSERT INTO `spu_sale_attr_value` VALUES ('19', '13', '2', '全网通4+64');
INSERT INTO `spu_sale_attr_value` VALUES ('20', '13', '2', '全网通4+128');
INSERT INTO `spu_sale_attr_value` VALUES ('21', '14', '1', '极光蓝');
INSERT INTO `spu_sale_attr_value` VALUES ('22', '14', '1', '幻夜黑');
INSERT INTO `spu_sale_attr_value` VALUES ('23', '14', '2', '4+64G');
INSERT INTO `spu_sale_attr_value` VALUES ('24', '14', '2', '6+128G');
INSERT INTO `spu_sale_attr_value` VALUES ('25', '15', '1', '金色');
INSERT INTO `spu_sale_attr_value` VALUES ('26', '15', '1', '黑色');
INSERT INTO `spu_sale_attr_value` VALUES ('27', '15', '1', '玫瑰金');
INSERT INTO `spu_sale_attr_value` VALUES ('28', '15', '1', '浅蓝色');
INSERT INTO `spu_sale_attr_value` VALUES ('29', '15', '2', '3G+32G');
INSERT INTO `spu_sale_attr_value` VALUES ('30', '15', '2', '4G+64G');
INSERT INTO `spu_sale_attr_value` VALUES ('31', '16', '1', 'i5 黄金版');
INSERT INTO `spu_sale_attr_value` VALUES ('32', '16', '1', 'i7 黄金版');
INSERT INTO `spu_sale_attr_value` VALUES ('33', '16', '2', '加强版');
INSERT INTO `spu_sale_attr_value` VALUES ('34', '16', '2', '血色战旗版');
INSERT INTO `spu_sale_attr_value` VALUES ('35', '17', '1', '红色');
INSERT INTO `spu_sale_attr_value` VALUES ('36', '17', '1', '黄金');
INSERT INTO `spu_sale_attr_value` VALUES ('37', '17', '2', '黄金版');
INSERT INTO `spu_sale_attr_value` VALUES ('38', '17', '2', '加强版');
INSERT INTO `spu_sale_attr_value` VALUES ('39', '17', '2', '血战版');
INSERT INTO `spu_sale_attr_value` VALUES ('40', '18', '1', '红色');
INSERT INTO `spu_sale_attr_value` VALUES ('41', '18', '1', '黑色');
INSERT INTO `spu_sale_attr_value` VALUES ('42', '18', '3', '13.3');
INSERT INTO `spu_sale_attr_value` VALUES ('43', '18', '3', '14.0');
INSERT INTO `spu_sale_attr_value` VALUES ('44', '19', '2', '3+32G');
INSERT INTO `spu_sale_attr_value` VALUES ('45', '19', '2', '4+64G');
INSERT INTO `spu_sale_attr_value` VALUES ('46', '19', '1', '红色');
INSERT INTO `spu_sale_attr_value` VALUES ('47', '19', '1', '金色');
INSERT INTO `spu_sale_attr_value` VALUES ('68', '40', '1', '金色');
INSERT INTO `spu_sale_attr_value` VALUES ('69', '40', '1', '银色');
INSERT INTO `spu_sale_attr_value` VALUES ('70', '40', '2', '国内');
INSERT INTO `spu_sale_attr_value` VALUES ('71', '40', '2', '港版');
INSERT INTO `spu_sale_attr_value` VALUES ('72', '41', '1', 'aaa');
INSERT INTO `spu_sale_attr_value` VALUES ('73', '41', '1', 'bbb');
INSERT INTO `spu_sale_attr_value` VALUES ('74', '44', '1', 'RED');
INSERT INTO `spu_sale_attr_value` VALUES ('75', '44', '1', 'YELLOW');
INSERT INTO `spu_sale_attr_value` VALUES ('76', '45', '1', '黑色');
INSERT INTO `spu_sale_attr_value` VALUES ('77', '45', '1', '金色');
INSERT INTO `spu_sale_attr_value` VALUES ('78', '45', '2', '3G+32G');
INSERT INTO `spu_sale_attr_value` VALUES ('79', '45', '2', '4G+64G');
INSERT INTO `spu_sale_attr_value` VALUES ('80', '46', '1', '黑色');
INSERT INTO `spu_sale_attr_value` VALUES ('81', '47', '2', '国内');
INSERT INTO `spu_sale_attr_value` VALUES ('82', '47', '2', '国外');
INSERT INTO `spu_sale_attr_value` VALUES ('83', '48', '1', '黑色');
INSERT INTO `spu_sale_attr_value` VALUES ('84', '48', '3', '15.6');
INSERT INTO `spu_sale_attr_value` VALUES ('85', '48', '3', '14.0');
INSERT INTO `spu_sale_attr_value` VALUES ('86', '49', '1', '黑色');
INSERT INTO `spu_sale_attr_value` VALUES ('87', '49', '1', '蓝色');
INSERT INTO `spu_sale_attr_value` VALUES ('88', '49', '2', 'IXUS 190');
INSERT INTO `spu_sale_attr_value` VALUES ('89', '49', '2', 'IXUS 285');
INSERT INTO `spu_sale_attr_value` VALUES ('90', '50', '1', '黑色');
INSERT INTO `spu_sale_attr_value` VALUES ('91', '50', '1', '金色');
INSERT INTO `spu_sale_attr_value` VALUES ('92', '50', '2', '3G+32G');
INSERT INTO `spu_sale_attr_value` VALUES ('93', '50', '2', '4G+64G');
INSERT INTO `spu_sale_attr_value` VALUES ('94', '50', '2', '8G+128G');
INSERT INTO `spu_sale_attr_value` VALUES ('95', '51', '2', 'V1.0');
INSERT INTO `spu_sale_attr_value` VALUES ('96', '51', '2', 'V2.0');
INSERT INTO `spu_sale_attr_value` VALUES ('97', '51', '1', '黑色');
INSERT INTO `spu_sale_attr_value` VALUES ('98', '51', '1', '绿色');
INSERT INTO `spu_sale_attr_value` VALUES ('99', '51', '1', '黄色');
INSERT INTO `spu_sale_attr_value` VALUES ('100', '52', '1', '黑色');
INSERT INTO `spu_sale_attr_value` VALUES ('101', '52', '1', '金色');
INSERT INTO `spu_sale_attr_value` VALUES ('102', '54', '1', '黑色');
INSERT INTO `spu_sale_attr_value` VALUES ('103', '54', '1', '金色');
INSERT INTO `spu_sale_attr_value` VALUES ('104', '53', '1', '黑色');
INSERT INTO `spu_sale_attr_value` VALUES ('105', '53', '1', '金色');
INSERT INTO `spu_sale_attr_value` VALUES ('106', '55', '2', 'v1.0');
INSERT INTO `spu_sale_attr_value` VALUES ('107', '55', '2', 'v2.0');
INSERT INTO `spu_sale_attr_value` VALUES ('108', '56', '1', '黑色');
INSERT INTO `spu_sale_attr_value` VALUES ('109', '56', '1', '金色');
INSERT INTO `spu_sale_attr_value` VALUES ('110', '56', '2', '6G+64G');
INSERT INTO `spu_sale_attr_value` VALUES ('111', '56', '2', '8G+128');
INSERT INTO `spu_sale_attr_value` VALUES ('112', '57', '1', '红色');
INSERT INTO `spu_sale_attr_value` VALUES ('113', null, null, '黑色');
INSERT INTO `spu_sale_attr_value` VALUES ('114', null, null, '红色');
INSERT INTO `spu_sale_attr_value` VALUES ('115', null, null, '6+64G');
INSERT INTO `spu_sale_attr_value` VALUES ('116', null, null, '8+128G');
INSERT INTO `spu_sale_attr_value` VALUES ('117', null, null, '黑');
INSERT INTO `spu_sale_attr_value` VALUES ('118', null, null, '黑色');
INSERT INTO `spu_sale_attr_value` VALUES ('119', null, null, '红色');
INSERT INTO `spu_sale_attr_value` VALUES ('120', null, null, '6G+64G');
INSERT INTO `spu_sale_attr_value` VALUES ('121', null, null, '8G+128G');
INSERT INTO `spu_sale_attr_value` VALUES ('122', null, null, '黑色');
INSERT INTO `spu_sale_attr_value` VALUES ('123', null, null, '白色');
INSERT INTO `spu_sale_attr_value` VALUES ('124', null, null, '6G+64G');
INSERT INTO `spu_sale_attr_value` VALUES ('125', null, null, '8G+128G');
INSERT INTO `spu_sale_attr_value` VALUES ('126', null, null, '4G+32G');
INSERT INTO `spu_sale_attr_value` VALUES ('127', null, null, '222');
INSERT INTO `spu_sale_attr_value` VALUES ('128', null, null, '222');
INSERT INTO `spu_sale_attr_value` VALUES ('129', null, null, '333');
INSERT INTO `spu_sale_attr_value` VALUES ('130', null, null, '333');
INSERT INTO `spu_sale_attr_value` VALUES ('131', null, null, '222');
INSERT INTO `spu_sale_attr_value` VALUES ('132', null, null, '333');
INSERT INTO `spu_sale_attr_value` VALUES ('133', '65', '2', '2');
INSERT INTO `spu_sale_attr_value` VALUES ('134', '65', '2', '2');
INSERT INTO `spu_sale_attr_value` VALUES ('135', '66', '1', '黑色');
INSERT INTO `spu_sale_attr_value` VALUES ('136', '66', '1', '白色');
INSERT INTO `spu_sale_attr_value` VALUES ('137', '66', '2', '4G+64G');
INSERT INTO `spu_sale_attr_value` VALUES ('138', '66', '2', '8G+128g');
INSERT INTO `spu_sale_attr_value` VALUES ('139', '66', '2', '3G+16G');
INSERT INTO `spu_sale_attr_value` VALUES ('140', '67', '1', '黑色');
INSERT INTO `spu_sale_attr_value` VALUES ('141', '67', '1', '金色');
INSERT INTO `spu_sale_attr_value` VALUES ('142', '67', '2', '6G+64G');
INSERT INTO `spu_sale_attr_value` VALUES ('143', '67', '2', '8G+128G');

-- ----------------------------
-- Table structure for `spu_size`
-- ----------------------------
DROP TABLE IF EXISTS `spu_size`;
CREATE TABLE `spu_size` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `spu_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `spu_size` varchar(100) DEFAULT NULL COMMENT '商品尺寸',
  `is_enabled` varchar(1) DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品尺寸表';

-- ----------------------------
-- Records of spu_size
-- ----------------------------
INSERT INTO `spu_size` VALUES ('1', '1', '36', '1');
INSERT INTO `spu_size` VALUES ('2', '1', '37', '1');
INSERT INTO `spu_size` VALUES ('3', '1', '42', '1');

-- ----------------------------
-- Table structure for `spu_version`
-- ----------------------------
DROP TABLE IF EXISTS `spu_version`;
CREATE TABLE `spu_version` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `spu_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `spu_version` varchar(100) DEFAULT NULL COMMENT '商品版本',
  `is_enabled` varchar(1) DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品版本表';

-- ----------------------------
-- Records of spu_version
-- ----------------------------
INSERT INTO `spu_version` VALUES ('1', '1', 'v1.0', '1');
INSERT INTO `spu_version` VALUES ('2', '1', 'v1.1', '1');

-- ----------------------------
-- Table structure for `stock_sku`
-- ----------------------------
DROP TABLE IF EXISTS `stock_sku`;
CREATE TABLE `stock_sku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sku_id` bigint(20) DEFAULT NULL COMMENT 'skuid',
  `stockhouse_id` bigint(20) DEFAULT NULL COMMENT '仓库id',
  `stock` int(11) DEFAULT NULL COMMENT '库存数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sku与仓库关联表';

-- ----------------------------
-- Records of stock_sku
-- ----------------------------

-- ----------------------------
-- Table structure for `stock_stockhouse_info`
-- ----------------------------
DROP TABLE IF EXISTS `stock_stockhouse_info`;
CREATE TABLE `stock_stockhouse_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '仓库名称',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `areacode` varchar(20) DEFAULT NULL COMMENT '区域编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仓库信息表';

-- ----------------------------
-- Records of stock_stockhouse_info
-- ----------------------------

-- ----------------------------
-- Table structure for `user_address`
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_address` varchar(500) DEFAULT NULL COMMENT '用户地址',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `consignee` varchar(40) DEFAULT NULL COMMENT '收件人',
  `phone_num` varchar(40) DEFAULT NULL COMMENT '联系方式',
  `is_default` varchar(1) DEFAULT NULL COMMENT '是否是默认',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户地址表';

-- ----------------------------
-- Records of user_address
-- ----------------------------
INSERT INTO `user_address` VALUES ('1', '北京市海淀区', '1', 'admin', '1', '1');
INSERT INTO `user_address` VALUES ('2', '北京市昌平区', '2', 'atguigu', '2', '2');

-- ----------------------------
-- Table structure for `user_details`
-- ----------------------------
DROP TABLE IF EXISTS `user_details`;
CREATE TABLE `user_details` (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `id_card` bigint(20) DEFAULT NULL COMMENT '身份证编号',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户',
  `user_phone` varchar(100) DEFAULT NULL COMMENT '用户手机号',
  `hometown` varchar(200) DEFAULT NULL COMMENT '用户籍贯',
  `address_id` bigint(20) DEFAULT NULL COMMENT '用户住址',
  `sex` varchar(1) DEFAULT NULL COMMENT '0女1男',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户帐户信息表';

-- ----------------------------
-- Records of user_details
-- ----------------------------

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `login_name` varchar(200) DEFAULT NULL COMMENT '用户名称',
  `nick_name` varchar(200) DEFAULT NULL COMMENT '用户昵称',
  `passwd` varchar(200) DEFAULT NULL COMMENT '用户密码',
  `name` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `phone_num` varchar(200) DEFAULT NULL COMMENT '手机号',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `head_img` varchar(200) DEFAULT NULL COMMENT '头像',
  `user_level` varchar(200) DEFAULT NULL COMMENT '用户级别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'admin', 'Administrator', '202cb962ac59075b964b07152d234b70', 'Admin', '2222', 'upd@qq.com', '1', '1');
INSERT INTO `user_info` VALUES ('2', 'atguigu', 'Atguigu', '202cb962ac59075b964b07152d234b70', '尚硅谷', '11111', 'atguigu.com', '2', '2');
INSERT INTO `user_info` VALUES ('3', 'zhansan', '张三', '202cb962ac59075b964b07152d234b70', '张三', '333', 'atguigu.com', '3', '3');

-- ----------------------------
-- Table structure for `ware_info`
-- ----------------------------
DROP TABLE IF EXISTS `ware_info`;
CREATE TABLE `ware_info` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `areacode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ware_info
-- ----------------------------
INSERT INTO `ware_info` VALUES ('1', '北京大兴仓库', '北京大兴', '110000');
INSERT INTO `ware_info` VALUES ('2', '北京昌平区仓库', '北京昌平', '110100');

-- ----------------------------
-- Table structure for `ware_order`
-- ----------------------------
DROP TABLE IF EXISTS `ware_order`;
CREATE TABLE `ware_order` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `warehouse_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ware_exec_status` varchar(2) DEFAULT NULL,
  `tracking_no` varchar(50) DEFAULT NULL,
  `express_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ware_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ware_order_task`
-- ----------------------------
DROP TABLE IF EXISTS `ware_order_task`;
CREATE TABLE `ware_order_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单编号',
  `consignee` varchar(100) DEFAULT NULL COMMENT '收货人',
  `consignee_tel` varchar(20) DEFAULT NULL COMMENT '收货人电话',
  `delivery_address` varchar(1000) DEFAULT NULL COMMENT '送货地址',
  `order_comment` varchar(200) DEFAULT NULL COMMENT '订单备注',
  `payment_way` varchar(2) DEFAULT NULL COMMENT '付款方式 1:在线付款 2:货到付款',
  `task_status` varchar(20) DEFAULT NULL COMMENT '工作单状态',
  `order_body` varchar(200) DEFAULT NULL COMMENT '订单描述',
  `tracking_no` varchar(200) DEFAULT NULL COMMENT '物流单号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `ware_id` bigint(20) DEFAULT NULL COMMENT '仓库编号',
  `task_comment` varchar(500) DEFAULT NULL COMMENT '工作单备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='库存工作单表 库存工作单表';

-- ----------------------------
-- Records of ware_order_task
-- ----------------------------
INSERT INTO `ware_order_task` VALUES ('1', '15', 'admin', null, '北京市海淀区', '', '2', 'DEDUCTED', '卖货了！', null, '2018-05-19 17:05:42', null, null);
INSERT INTO `ware_order_task` VALUES ('2', '14', 'admin', null, '北京市海淀区', 'asfasdf', '2', 'OUT_OF_STOCK', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待等1件商品', null, '2018-05-19 17:20:10', null, null);
INSERT INTO `ware_order_task` VALUES ('3', '13', 'admin', null, '北京市海淀区', '', '2', 'OUT_OF_STOCK', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待等1件商品', null, '2018-05-19 17:25:38', null, null);
INSERT INTO `ware_order_task` VALUES ('4', '17', 'admin', null, '北京市海淀区', '', '2', 'OUT_OF_STOCK', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待等1件商品', null, '2018-05-19 17:31:32', null, null);
INSERT INTO `ware_order_task` VALUES ('5', '12', 'admin', null, '北京市海淀区', '', '2', 'OUT_OF_STOCK', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待等1件商品', null, '2018-05-19 17:34:04', null, null);
INSERT INTO `ware_order_task` VALUES ('6', '11', 'admin', null, '北京市海淀区', '', '2', 'DEDUCTED', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待等1件商品', null, '2018-05-19 17:38:21', null, null);
INSERT INTO `ware_order_task` VALUES ('7', '10', 'admin', null, '北京市海淀区', '', '2', 'DEDUCTED', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待等1件商品', null, '2018-05-21 09:55:46', null, null);
INSERT INTO `ware_order_task` VALUES ('8', '8', 'admin', null, '北京市海淀区', '', '2', 'SPLIT', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待等2件商品', null, '2018-05-21 17:11:18', null, null);
INSERT INTO `ware_order_task` VALUES ('9', '20', 'admin', null, '北京市海淀区', '', '2', 'DEDUCTED', '联想拯救者R720等2件商品', null, '2018-05-22 11:21:46', null, null);
INSERT INTO `ware_order_task` VALUES ('10', '27', 'admin', null, '北京市海淀区', '', '2', 'DEDUCTED', '小米 红米5 Plus 全面屏拍照手机 全网通版 4GB+64GB 金色 移动联通电信4G手机 双卡双待等1件商品', null, '2018-05-22 14:51:29', '1', null);
INSERT INTO `ware_order_task` VALUES ('11', '28', 'admin', null, '北京市海淀区', '', '2', 'DEDUCTED', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待等1件商品', null, '2018-05-22 14:51:29', '2', null);
INSERT INTO `ware_order_task` VALUES ('14', '53', 'atguigu', null, '北京市昌平区', '', '2', 'SPLIT', '支付宝=== 来发钱了！支付宝====付款', null, '2018-07-20 15:56:46', null, null);
INSERT INTO `ware_order_task` VALUES ('15', '54', 'atguigu', null, '北京市昌平区', '', '2', 'DEDUCTED', '小米6X等1件商品', null, '2018-07-20 22:45:17', '1', null);
INSERT INTO `ware_order_task` VALUES ('16', '55', 'atguigu', null, '北京市昌平区', '', '2', 'DEDUCTED', '联想(Lenovo)拯救者R720等1件商品', null, '2018-07-20 22:45:17', '2', null);
INSERT INTO `ware_order_task` VALUES ('17', '58', 'atguigu', null, '北京市昌平区', '', '2', 'DEDUCTED', '小米6X等1件商品', null, '2018-07-21 13:32:54', '1', null);
INSERT INTO `ware_order_task` VALUES ('18', '59', 'atguigu', null, '北京市昌平区', '', '2', 'DEDUCTED', '联想(Lenovo)拯救者R720等1件商品', null, '2018-07-21 13:32:54', '2', null);
INSERT INTO `ware_order_task` VALUES ('19', '60', 'atguigu', null, '北京市昌平区', '', '2', 'DEDUCTED', '小米6X等1件商品', null, '2018-07-21 13:34:34', '1', null);
INSERT INTO `ware_order_task` VALUES ('20', '61', 'atguigu', null, '北京市昌平区', '', '2', 'DEDUCTED', '联想(Lenovo)拯救者R720等1件商品', null, '2018-07-21 13:34:34', '2', null);
INSERT INTO `ware_order_task` VALUES ('21', '64', 'atguigu', null, '北京市昌平区', '', '2', 'DEDUCTED', '支付宝=== 来发钱了！支付宝====付款', null, '2018-07-21 15:39:34', null, null);
INSERT INTO `ware_order_task` VALUES ('22', '65', 'atguigu', null, '北京市昌平区', '', '2', 'DEDUCTED', '支付宝=== 来发钱了！支付宝====付款', null, '2018-07-21 15:39:34', null, null);
INSERT INTO `ware_order_task` VALUES ('23', '68', 'atguigu', null, '北京市昌平区', '', '2', 'DEDUCTED', '支付宝=== 来发钱了！支付宝====付款', null, '2018-07-21 15:41:35', null, null);
INSERT INTO `ware_order_task` VALUES ('24', '69', 'atguigu', null, '北京市昌平区', '', '2', 'DEDUCTED', '支付宝=== 来发钱了！支付宝====付款', null, '2018-07-21 15:41:35', null, null);
INSERT INTO `ware_order_task` VALUES ('25', '75', 'atguigu', null, '北京市昌平区', '', '2', 'DEDUCTED', '小米不错！', null, '2018-08-11 15:46:21', null, null);
INSERT INTO `ware_order_task` VALUES ('26', '76', 'atguigu', null, '北京市昌平区', '', '2', 'DEDUCTED', '小米不错！', null, '2018-08-13 15:49:42', '1', null);
INSERT INTO `ware_order_task` VALUES ('27', '77', 'atguigu', null, '北京市昌平区', '', '2', 'DEDUCTED', '小米不错！', null, '2018-08-13 15:49:42', '2', null);
INSERT INTO `ware_order_task` VALUES ('28', '86', 'atguigu', null, '北京市昌平区', '不错，很好，good，nice', '2', 'DEDUCTED', '发送消息给库存系统，减库存', null, '2018-09-09 15:49:17', null, null);
INSERT INTO `ware_order_task` VALUES ('29', '87', 'atguigu', null, '北京市昌平区', 'admin', '2', 'DEDUCTED', '发送消息给库存系统，减库存', null, '2018-09-10 09:56:24', null, null);
INSERT INTO `ware_order_task` VALUES ('30', '89', 'atguigu', null, '北京市昌平区', '再次测试', '2', 'DEDUCTED', '发送消息给库存系统，减库存', null, '2018-09-10 10:54:06', null, null);
INSERT INTO `ware_order_task` VALUES ('31', '90', 'atguigu', null, '北京市昌平区', '拆单测试', '2', 'SPLIT', '发送消息给库存系统，减库存', null, '2018-09-10 15:33:37', null, null);
INSERT INTO `ware_order_task` VALUES ('32', '91', 'atguigu', null, '北京市昌平区', '拆单测试', '2', 'DEDUCTED', '发送消息给库存系统，减库存', null, '2018-09-10 15:34:05', '1', null);
INSERT INTO `ware_order_task` VALUES ('33', '92', 'atguigu', null, '北京市昌平区', '拆单测试', '2', 'DEDUCTED', '发送消息给库存系统，减库存', null, '2018-09-10 15:34:05', '2', null);
INSERT INTO `ware_order_task` VALUES ('34', '101', 'atguigu', null, '北京市昌平区', '测试2', '2', 'DEDUCTED', '给李国琰', null, '2020-04-29 22:58:09', null, null);
INSERT INTO `ware_order_task` VALUES ('35', '105', 'atguigu', null, '北京市昌平区', '真的', '2', 'PAID', '给李国琰', null, '2020-05-04 23:25:03', null, null);
INSERT INTO `ware_order_task` VALUES ('36', '106', 'atguigu', null, '北京市昌平区', '1', '2', 'PAID', '给李国琰', null, '2020-05-04 23:30:01', null, null);
INSERT INTO `ware_order_task` VALUES ('37', '107', 'atguigu', null, '北京市昌平区', '2', '2', 'PAID', '给李国琰', null, '2020-05-04 23:33:24', null, null);
INSERT INTO `ware_order_task` VALUES ('38', '108', 'atguigu', null, '北京市昌平区', '3', '2', 'SPLIT', '给李国琰', null, '2020-05-04 23:41:41', null, null);
INSERT INTO `ware_order_task` VALUES ('39', '109', 'atguigu', null, '北京市昌平区', '3', '2', 'DEDUCTED', '给李国琰', null, '2020-05-04 23:42:05', '1', null);
INSERT INTO `ware_order_task` VALUES ('40', '110', 'atguigu', null, '北京市昌平区', '3', '2', 'DEDUCTED', '给李国琰', null, '2020-05-04 23:42:05', '2', null);
INSERT INTO `ware_order_task` VALUES ('41', '114', 'atguigu', null, '北京市昌平区', '666', '2', 'SPLIT', '给李国琰', null, '2020-05-04 23:52:08', null, null);
INSERT INTO `ware_order_task` VALUES ('42', '115', 'atguigu', null, '北京市昌平区', '666', '2', 'DEDUCTED', '给李国琰', null, '2020-05-04 23:52:08', '1', null);
INSERT INTO `ware_order_task` VALUES ('43', '116', 'atguigu', null, '北京市昌平区', '666', '2', 'DEDUCTED', '给李国琰', null, '2020-05-04 23:52:08', '2', null);

-- ----------------------------
-- Table structure for `ware_order_task_detail`
-- ----------------------------
DROP TABLE IF EXISTS `ware_order_task_detail`;
CREATE TABLE `ware_order_task_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sku_id` bigint(20) DEFAULT NULL COMMENT 'sku_id',
  `sku_name` varchar(200) DEFAULT NULL COMMENT 'sku名称',
  `sku_num` int(11) DEFAULT NULL COMMENT '购买个数',
  `task_id` bigint(20) DEFAULT NULL COMMENT '工作单编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='库存工作单明细表 库存工作单明细表';

-- ----------------------------
-- Records of ware_order_task_detail
-- ----------------------------
INSERT INTO `ware_order_task_detail` VALUES ('1', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', '6', '1');
INSERT INTO `ware_order_task_detail` VALUES ('2', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', '6', '2');
INSERT INTO `ware_order_task_detail` VALUES ('3', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', '6', '3');
INSERT INTO `ware_order_task_detail` VALUES ('4', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', '6', '4');
INSERT INTO `ware_order_task_detail` VALUES ('5', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', '6', '5');
INSERT INTO `ware_order_task_detail` VALUES ('6', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', '6', '6');
INSERT INTO `ware_order_task_detail` VALUES ('7', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', '6', '7');
INSERT INTO `ware_order_task_detail` VALUES ('8', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', '3', '8');
INSERT INTO `ware_order_task_detail` VALUES ('9', '2', '小米 红米5 Plus 全面屏拍照手机 全网通版 4GB+64GB 金色 移动联通电信4G手机 双卡双待', '3', '8');
INSERT INTO `ware_order_task_detail` VALUES ('10', '6', '联想拯救者R720', '8', '9');
INSERT INTO `ware_order_task_detail` VALUES ('11', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', '6', '9');
INSERT INTO `ware_order_task_detail` VALUES ('12', '2', '小米 红米5 Plus 全面屏拍照手机 全网通版 4GB+64GB 金色 移动联通电信4G手机 双卡双待', '3', '10');
INSERT INTO `ware_order_task_detail` VALUES ('13', '3', '小米 红米5 Plus 全面屏拍照手机 全网通版 3GB+32GB 金色 移动联通电信4G手机 双卡双待', '3', '11');
INSERT INTO `ware_order_task_detail` VALUES ('14', '20', '联想(Lenovo)拯救者R720', '4', '12');
INSERT INTO `ware_order_task_detail` VALUES ('15', '18', '小米6X', '3', '12');
INSERT INTO `ware_order_task_detail` VALUES ('18', '20', '联想(Lenovo)拯救者R720', '4', '14');
INSERT INTO `ware_order_task_detail` VALUES ('19', '18', '小米6X', '3', '14');
INSERT INTO `ware_order_task_detail` VALUES ('20', '18', '小米6X', '3', '15');
INSERT INTO `ware_order_task_detail` VALUES ('21', '20', '联想(Lenovo)拯救者R720', '4', '16');
INSERT INTO `ware_order_task_detail` VALUES ('22', '18', '小米6X', '3', '17');
INSERT INTO `ware_order_task_detail` VALUES ('23', '20', '联想(Lenovo)拯救者R720', '4', '18');
INSERT INTO `ware_order_task_detail` VALUES ('24', '18', '小米6X', '3', '19');
INSERT INTO `ware_order_task_detail` VALUES ('25', '20', '联想(Lenovo)拯救者R720', '4', '20');
INSERT INTO `ware_order_task_detail` VALUES ('26', '18', '小米6X', '3', '21');
INSERT INTO `ware_order_task_detail` VALUES ('27', '20', '联想(Lenovo)拯救者R720', '4', '22');
INSERT INTO `ware_order_task_detail` VALUES ('28', '18', '小米6X', '3', '23');
INSERT INTO `ware_order_task_detail` VALUES ('29', '20', '联想(Lenovo)拯救者R720', '4', '24');
INSERT INTO `ware_order_task_detail` VALUES ('30', '28', '小米77二代', '21', '25');
INSERT INTO `ware_order_task_detail` VALUES ('31', '27', '小米77一代', '3', '25');
INSERT INTO `ware_order_task_detail` VALUES ('32', '18', '小米6X', '3', '26');
INSERT INTO `ware_order_task_detail` VALUES ('33', '20', '联想(Lenovo)拯救者R720', '4', '27');
INSERT INTO `ware_order_task_detail` VALUES ('34', '32', '小米三代', '10', '28');
INSERT INTO `ware_order_task_detail` VALUES ('35', '31', '小米88二代', '20', '28');
INSERT INTO `ware_order_task_detail` VALUES ('36', '32', '小米三代', '1', '29');
INSERT INTO `ware_order_task_detail` VALUES ('37', '31', '小米88二代', '2', '29');
INSERT INTO `ware_order_task_detail` VALUES ('38', '31', '小米88二代', '2', '30');
INSERT INTO `ware_order_task_detail` VALUES ('39', '32', '小米三代', '1', '30');
INSERT INTO `ware_order_task_detail` VALUES ('40', '31', '小米88二代', '2', '31');
INSERT INTO `ware_order_task_detail` VALUES ('41', '32', '小米三代', '1', '31');
INSERT INTO `ware_order_task_detail` VALUES ('42', '32', '小米三代', '1', '32');
INSERT INTO `ware_order_task_detail` VALUES ('43', '31', '小米88二代', '2', '33');
INSERT INTO `ware_order_task_detail` VALUES ('44', '39', '小米3代', '5', '34');
INSERT INTO `ware_order_task_detail` VALUES ('45', '38', '小米手机note2', '6', '34');
INSERT INTO `ware_order_task_detail` VALUES ('46', '39', '小米3代', '7', '35');
INSERT INTO `ware_order_task_detail` VALUES ('47', '38', '小米手机note2', '7', '35');
INSERT INTO `ware_order_task_detail` VALUES ('48', '39', '小米3代', '7', '36');
INSERT INTO `ware_order_task_detail` VALUES ('49', '38', '小米手机note2', '7', '36');
INSERT INTO `ware_order_task_detail` VALUES ('50', '39', '小米3代', '7', '37');
INSERT INTO `ware_order_task_detail` VALUES ('51', '38', '小米手机note2', '7', '37');
INSERT INTO `ware_order_task_detail` VALUES ('52', '39', '小米3代', '7', '38');
INSERT INTO `ware_order_task_detail` VALUES ('53', '38', '小米手机note2', '7', '38');
INSERT INTO `ware_order_task_detail` VALUES ('54', '39', '小米3代', '7', '39');
INSERT INTO `ware_order_task_detail` VALUES ('55', '38', '小米手机note2', '7', '40');
INSERT INTO `ware_order_task_detail` VALUES ('56', '39', '小米3代', '7', '41');
INSERT INTO `ware_order_task_detail` VALUES ('57', '38', '小米手机note2', '7', '41');
INSERT INTO `ware_order_task_detail` VALUES ('58', '39', '小米3代', '7', '42');
INSERT INTO `ware_order_task_detail` VALUES ('59', '38', '小米手机note2', '7', '43');

-- ----------------------------
-- Table structure for `ware_sku`
-- ----------------------------
DROP TABLE IF EXISTS `ware_sku`;
CREATE TABLE `ware_sku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sku_id` bigint(20) DEFAULT NULL COMMENT 'skuid',
  `warehouse_id` bigint(20) DEFAULT NULL COMMENT '仓库id',
  `stock` int(11) DEFAULT NULL COMMENT '库存数',
  `stock_name` varchar(200) DEFAULT NULL COMMENT '存货名称',
  `stock_locked` int(11) DEFAULT NULL COMMENT '锁定库存数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='sku与仓库关联表';

-- ----------------------------
-- Records of ware_sku
-- ----------------------------
INSERT INTO `ware_sku` VALUES ('1', '3', '2', '10000', '小米红米5', '45');
INSERT INTO `ware_sku` VALUES ('2', '2', '1', '10000', '小米红米5另一库', '4');
INSERT INTO `ware_sku` VALUES ('3', '5', '1', '100', '笔记本', null);
INSERT INTO `ware_sku` VALUES ('4', '6', '2', '1000', '笔记本拯救者', '16');
INSERT INTO `ware_sku` VALUES ('5', '19', '1', '100', '苹果手机', null);
INSERT INTO `ware_sku` VALUES ('6', '20', '2', '100', '笔记本电脑', '12');
INSERT INTO `ware_sku` VALUES ('7', '18', '1', '100', '小米', '9');
INSERT INTO `ware_sku` VALUES ('8', '27', '2', '1000', '小米一代', '0');
INSERT INTO `ware_sku` VALUES ('9', '28', '1', '1000', '小米二代', '0');
INSERT INTO `ware_sku` VALUES ('10', '31', '2', '100', '小米88', '8');
INSERT INTO `ware_sku` VALUES ('11', '32', '1', '100', '小米三代', '4');
INSERT INTO `ware_sku` VALUES ('12', '39', '1', '100', '小米3代', '59');
INSERT INTO `ware_sku` VALUES ('13', '38', '2', '100', '小米手机note2', '68');
