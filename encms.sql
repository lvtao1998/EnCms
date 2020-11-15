/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : encms

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-11-15 16:42:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for en_admin
-- ----------------------------
DROP TABLE IF EXISTS `en_admin`;
CREATE TABLE `en_admin` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(20) DEFAULT NULL COMMENT '管理账号',
  `password` varchar(32) DEFAULT NULL COMMENT '管理密码',
  `roleid` tinyint(4) unsigned DEFAULT '0',
  `encrypt` varchar(6) DEFAULT NULL COMMENT '加密因子',
  `nickname` char(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '昵称',
  `last_login_time` int(10) unsigned DEFAULT '0' COMMENT '最后登录时间',
  `last_login_ip` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '最后登录IP',
  `email` varchar(40) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of en_admin
-- ----------------------------
INSERT INTO `en_admin` VALUES ('1', 'admin', '9724b5e6c56b95f5723009ef81961bfe', '1', 'Wo0bAa', '', '1605417615', '127.0.0.1', '530765310@qq.com', '1');

-- ----------------------------
-- Table structure for en_adminlog
-- ----------------------------
DROP TABLE IF EXISTS `en_adminlog`;
CREATE TABLE `en_adminlog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `uid` smallint(3) NOT NULL DEFAULT '0' COMMENT '操作者ID',
  `info` text COMMENT '说明',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '操作IP',
  `get` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=601 DEFAULT CHARSET=utf8 COMMENT='操作日志';

-- ----------------------------
-- Records of en_adminlog
-- ----------------------------
INSERT INTO `en_adminlog` VALUES ('1', '0', '0', '提示语:请先登陆', '1602728849', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('2', '1', '1', '提示语:恭喜您，登陆成功', '1602728860', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('3', '1', '1', '提示语:删除菜单成功！', '1602728956', '127.0.0.1', '/admin/menu/del.html?id=54');
INSERT INTO `en_adminlog` VALUES ('4', '1', '1', '提示语:删除菜单成功！', '1602728958', '127.0.0.1', '/admin/menu/del.html?id=53');
INSERT INTO `en_adminlog` VALUES ('5', '1', '1', '提示语:删除菜单成功！', '1602728959', '127.0.0.1', '/admin/menu/del.html?id=52');
INSERT INTO `en_adminlog` VALUES ('6', '1', '1', '提示语:删除菜单成功！', '1602728961', '127.0.0.1', '/admin/menu/del.html?id=44');
INSERT INTO `en_adminlog` VALUES ('7', '1', '1', '提示语:删除菜单成功！', '1602728962', '127.0.0.1', '/admin/menu/del.html?id=43');
INSERT INTO `en_adminlog` VALUES ('8', '1', '1', '提示语:删除菜单成功！', '1602728964', '127.0.0.1', '/admin/menu/del.html?id=45');
INSERT INTO `en_adminlog` VALUES ('9', '1', '1', '提示语:删除菜单成功！', '1602728966', '127.0.0.1', '/admin/menu/del.html?id=4');
INSERT INTO `en_adminlog` VALUES ('10', '1', '1', '提示语:删除菜单成功！', '1602728970', '127.0.0.1', '/admin/menu/del.html?id=41');
INSERT INTO `en_adminlog` VALUES ('11', '1', '1', '提示语:删除菜单成功！', '1602728973', '127.0.0.1', '/admin/menu/del.html?id=40');
INSERT INTO `en_adminlog` VALUES ('12', '1', '1', '提示语:删除菜单成功！', '1602728976', '127.0.0.1', '/admin/menu/del.html?id=39');
INSERT INTO `en_adminlog` VALUES ('13', '1', '1', '提示语:删除菜单成功！', '1602728978', '127.0.0.1', '/admin/menu/del.html?id=38');
INSERT INTO `en_adminlog` VALUES ('14', '1', '1', '提示语:删除菜单成功！', '1602728979', '127.0.0.1', '/admin/menu/del.html?id=5');
INSERT INTO `en_adminlog` VALUES ('15', '1', '1', '提示语:清理缓存', '1602728985', '127.0.0.1', '/admin/index/cache.html?type=all&_=1602728982588');
INSERT INTO `en_adminlog` VALUES ('16', '1', '1', '提示语:添加成功！', '1602729140', '127.0.0.1', '/admin/menu/add.html');
INSERT INTO `en_adminlog` VALUES ('17', '1', '1', '提示语:操作成功！', '1602729153', '127.0.0.1', '/admin/menu/multi.html');
INSERT INTO `en_adminlog` VALUES ('18', '1', '1', '提示语:清理缓存', '1602729193', '127.0.0.1', '/admin/index/cache.html?type=all&_=1602728987564');
INSERT INTO `en_adminlog` VALUES ('19', '1', '1', '提示语:编辑成功！', '1602729211', '127.0.0.1', '/admin/menu/edit.html?id=55');
INSERT INTO `en_adminlog` VALUES ('20', '1', '1', '提示语:清理缓存', '1602729217', '127.0.0.1', '/admin/index/cache.html?type=all&_=1602729214834');
INSERT INTO `en_adminlog` VALUES ('21', '1', '1', '提示语:添加成功！', '1602729250', '127.0.0.1', '/admin/menu/add.html?parentid=55');
INSERT INTO `en_adminlog` VALUES ('22', '1', '1', '提示语:添加成功！', '1602729287', '127.0.0.1', '/admin/menu/add.html?parentid=56');
INSERT INTO `en_adminlog` VALUES ('23', '1', '1', '提示语:添加成功！', '1602729315', '127.0.0.1', '/admin/menu/add.html?parentid=56');
INSERT INTO `en_adminlog` VALUES ('24', '1', '1', '提示语:添加成功！', '1602729339', '127.0.0.1', '/admin/menu/add.html?parentid=56');
INSERT INTO `en_adminlog` VALUES ('25', '1', '1', '提示语:添加成功！', '1602729367', '127.0.0.1', '/admin/menu/add.html?parentid=56');
INSERT INTO `en_adminlog` VALUES ('26', '0', '1', '提示语:控制器只能是字母', '1602729406', '127.0.0.1', '/admin/menu/add.html?parentid=56');
INSERT INTO `en_adminlog` VALUES ('27', '1', '1', '提示语:添加成功！', '1602729412', '127.0.0.1', '/admin/menu/add.html?parentid=56');
INSERT INTO `en_adminlog` VALUES ('28', '1', '1', '提示语:清理缓存', '1602729422', '127.0.0.1', '/admin/index/cache.html?type=all&_=1602729218561');
INSERT INTO `en_adminlog` VALUES ('29', '0', '1', '提示语:Array', '1602730875', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=checkinfo&value=1');
INSERT INTO `en_adminlog` VALUES ('30', '0', '1', '提示语:Array', '1602730876', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=checkinfo&value=1');
INSERT INTO `en_adminlog` VALUES ('31', '0', '1', '提示语:Array', '1602730877', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=checkinfo&value=1');
INSERT INTO `en_adminlog` VALUES ('32', '0', '1', '提示语:Array', '1602730877', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=checkinfo&value=1');
INSERT INTO `en_adminlog` VALUES ('33', '0', '1', '提示语:Array', '1602730881', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=checkinfo&value=1');
INSERT INTO `en_adminlog` VALUES ('34', '0', '1', '提示语:Array', '1602730882', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=checkinfo&value=1');
INSERT INTO `en_adminlog` VALUES ('35', '0', '1', '提示语:Array', '1602730882', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=checkinfo&value=1');
INSERT INTO `en_adminlog` VALUES ('36', '0', '1', '提示语:Array', '1602730882', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=checkinfo&value=1');
INSERT INTO `en_adminlog` VALUES ('37', '0', '1', '提示语:Array', '1602730901', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=checkinfo&value=1');
INSERT INTO `en_adminlog` VALUES ('38', '0', '1', '提示语:Array', '1602730903', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=checkinfo&value=1');
INSERT INTO `en_adminlog` VALUES ('39', '0', '1', '提示语:checkinfo', '1602731008', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=checkinfo&value=1');
INSERT INTO `en_adminlog` VALUES ('40', '0', '1', '提示语:checkinfo', '1602731010', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=checkinfo&value=1');
INSERT INTO `en_adminlog` VALUES ('41', '0', '1', '提示语:checkinfo', '1602731010', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=checkinfo&value=1');
INSERT INTO `en_adminlog` VALUES ('42', '0', '1', '提示语:true', '1602731014', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('43', '0', '1', '提示语:true', '1602731016', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('44', '0', '1', '提示语:true', '1602731017', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('45', '0', '1', '提示语:true', '1602731017', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('46', '0', '1', '提示语:true', '1602731018', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('47', '0', '1', '提示语:true', '1602731018', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('48', '0', '1', '提示语:true', '1602731018', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('49', '0', '1', '提示语:true', '1602731019', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('50', '0', '1', '提示语:true', '1602731019', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('51', '0', '1', '提示语:true', '1602731019', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('52', '0', '1', '提示语:true', '1602731020', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('53', '0', '1', '提示语:true', '1602731036', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('54', '0', '1', '提示语:true', '1602731037', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('55', '0', '1', '提示语:true', '1602731038', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('56', '0', '1', '提示语:checkinfo', '1602731039', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=checkinfo&value=1');
INSERT INTO `en_adminlog` VALUES ('57', '0', '1', '提示语:checkinfo', '1602731040', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=checkinfo&value=1');
INSERT INTO `en_adminlog` VALUES ('58', '0', '1', '提示语:true', '1602731046', '127.0.0.1', '/admin/infoclass/multi.html?id=4&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('59', '0', '1', '提示语:true', '1602731047', '127.0.0.1', '/admin/infoclass/multi.html?id=4&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('60', '0', '1', '提示语:true', '1602731055', '127.0.0.1', '/admin/infoclass/multi.html?id=5&param=true&value=0');
INSERT INTO `en_adminlog` VALUES ('61', '0', '1', '提示语:true', '1602731056', '127.0.0.1', '/admin/infoclass/multi.html?id=5&param=true&value=0');
INSERT INTO `en_adminlog` VALUES ('62', '0', '1', '提示语:true', '1602731186', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('63', '0', '1', '提示语:true', '1602731187', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('64', '0', '1', '提示语:true', '1602731188', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('65', '0', '1', '提示语:true', '1602731188', '127.0.0.1', '/admin/infoclass/multi.html?id=1&param=true&value=1');
INSERT INTO `en_adminlog` VALUES ('66', '1', '1', '提示语:状态变更成功！', '1602731605', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('67', '1', '1', '提示语:状态变更成功！', '1602731607', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('68', '1', '1', '提示语:状态变更成功！', '1602731608', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('69', '1', '1', '提示语:状态变更成功！', '1602731611', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('70', '1', '1', '提示语:状态变更成功！', '1602731613', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('71', '1', '1', '提示语:状态变更成功！', '1602731634', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('72', '1', '1', '提示语:状态变更成功！', '1602731756', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('73', '1', '1', '提示语:状态变更成功！', '1602731759', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('74', '1', '1', '提示语:状态变更成功！', '1602731772', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('75', '1', '1', '提示语:状态变更成功！', '1602731874', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('76', '1', '1', '提示语:状态变更成功！', '1602731958', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('77', '1', '1', '提示语:状态变更成功！', '1602731962', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('78', '1', '1', '提示语:操作成功！', '1602731968', '127.0.0.1', '/admin/menu/multi.html');
INSERT INTO `en_adminlog` VALUES ('79', '1', '1', '提示语:操作成功！', '1602731971', '127.0.0.1', '/admin/menu/multi.html');
INSERT INTO `en_adminlog` VALUES ('80', '1', '1', '提示语:操作成功！', '1602732006', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('81', '1', '1', '提示语:操作成功！', '1602732008', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('82', '1', '1', '提示语:添加成功！', '1602733783', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('83', '0', '1', '提示语:参数错误！', '1602733801', '127.0.0.1', '/admin/infoclass/del.html?id=14');
INSERT INTO `en_adminlog` VALUES ('84', '0', '0', '提示语:请先登陆', '1602809046', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('85', '1', '1', '提示语:恭喜您，登陆成功', '1602809052', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('86', '1', '1', '提示语:修改成功！', '1602810001', '127.0.0.1', '/admin/infoclass/edit.html?id=14');
INSERT INTO `en_adminlog` VALUES ('87', '1', '1', '提示语:修改成功！', '1602810011', '127.0.0.1', '/admin/infoclass/edit.html?id=14');
INSERT INTO `en_adminlog` VALUES ('88', '1', '1', '提示语:修改成功！', '1602810028', '127.0.0.1', '/admin/infoclass/edit.html?id=14');
INSERT INTO `en_adminlog` VALUES ('89', '1', '1', '提示语:修改成功！', '1602810042', '127.0.0.1', '/admin/infoclass/edit.html?id=14');
INSERT INTO `en_adminlog` VALUES ('90', '1', '1', '提示语:修改成功！', '1602810076', '127.0.0.1', '/admin/infoclass/edit.html?id=14');
INSERT INTO `en_adminlog` VALUES ('91', '0', '1', '提示语:删除失败！', '1602810409', '127.0.0.1', '/admin/infoclass/del.html?id=14');
INSERT INTO `en_adminlog` VALUES ('92', '0', '1', '提示语:参数错误！', '1602810467', '127.0.0.1', '/admin/infoclass/del.html?id=14');
INSERT INTO `en_adminlog` VALUES ('93', '1', '1', '提示语:删除菜单成功！', '1602810731', '127.0.0.1', '/admin/infoclass/del.html?id=14');
INSERT INTO `en_adminlog` VALUES ('94', '0', '1', '提示语:ID错误', '1602810735', '127.0.0.1', '/admin/infoclass/del.html');
INSERT INTO `en_adminlog` VALUES ('95', '1', '1', '提示语:删除菜单成功！', '1602810738', '127.0.0.1', '/admin/infoclass/del.html?id=14');
INSERT INTO `en_adminlog` VALUES ('96', '0', '1', '提示语:栏目名称不能为空', '1602811375', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('97', '0', '1', '提示语:栏目名称不能为空', '1602811378', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('98', '0', '1', '提示语:栏目名称不能为空', '1602811383', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('99', '0', '1', '提示语:classname不能为空', '1602811409', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('100', '0', '1', '提示语:classname不能为空', '1602811411', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('101', '0', '1', '提示语:栏目名称不能大于30个字符！', '1602811561', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('102', '1', '1', '提示语:添加成功！', '1602811572', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('103', '1', '1', '提示语:删除栏目成功！', '1602811579', '127.0.0.1', '/admin/infoclass/del.html?id=15');
INSERT INTO `en_adminlog` VALUES ('104', '1', '1', '提示语:添加成功！', '1602811825', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('105', '1', '1', '提示语:修改成功！', '1602811896', '127.0.0.1', '/admin/infoclass/edit.html?id=16');
INSERT INTO `en_adminlog` VALUES ('106', '1', '1', '提示语:修改成功！', '1602811931', '127.0.0.1', '/admin/infoclass/edit.html?id=16');
INSERT INTO `en_adminlog` VALUES ('107', '1', '1', '提示语:修改成功！', '1602812004', '127.0.0.1', '/admin/infoclass/edit.html?id=16');
INSERT INTO `en_adminlog` VALUES ('108', '1', '1', '提示语:修改成功！', '1602812053', '127.0.0.1', '/admin/infoclass/edit.html?id=16');
INSERT INTO `en_adminlog` VALUES ('109', '1', '1', '提示语:删除栏目成功！', '1602812074', '127.0.0.1', '/admin/infoclass/del.html?id=16');
INSERT INTO `en_adminlog` VALUES ('110', '1', '1', '提示语:修改成功！', '1602813144', '127.0.0.1', '/admin/info/edit.html?id=1');
INSERT INTO `en_adminlog` VALUES ('111', '1', '1', '提示语:修改成功！', '1602813149', '127.0.0.1', '/admin/info/edit.html?id=1');
INSERT INTO `en_adminlog` VALUES ('112', '1', '1', '提示语:修改成功！', '1602813154', '127.0.0.1', '/admin/info/edit.html?id=1');
INSERT INTO `en_adminlog` VALUES ('113', '1', '1', '提示语:修改成功！', '1602813326', '127.0.0.1', '/admin/info/edit.html?id=1');
INSERT INTO `en_adminlog` VALUES ('114', '1', '1', '提示语:修改成功！', '1602816945', '127.0.0.1', '/admin/info/edit.html?id=1');
INSERT INTO `en_adminlog` VALUES ('115', '0', '1', '提示语:该页面不存在！', '1602817192', '127.0.0.1', '/admin/infolist/templates/default/images/imgdata/newsimg.png');
INSERT INTO `en_adminlog` VALUES ('116', '1', '1', '提示语:修改成功！', '1602817194', '127.0.0.1', '/admin/infolist/edit.html?id=19');
INSERT INTO `en_adminlog` VALUES ('117', '0', '1', '提示语:该页面不存在！', '1602817198', '127.0.0.1', '/admin/infolist/templates/default/images/imgdata/newsimg.png');
INSERT INTO `en_adminlog` VALUES ('118', '0', '1', '提示语:该页面不存在！', '1602817397', '127.0.0.1', '/admin/infolist/templates/default/images/imgdata/newsimg.png');
INSERT INTO `en_adminlog` VALUES ('119', '1', '1', '提示语:修改成功！', '1602817399', '127.0.0.1', '/admin/infolist/edit.html?id=19');
INSERT INTO `en_adminlog` VALUES ('120', '1', '1', '提示语:添加成功！', '1602817410', '127.0.0.1', '/admin/infolist/add.html');
INSERT INTO `en_adminlog` VALUES ('121', '1', '1', '提示语:删除成功！', '1602817424', '127.0.0.1', '/admin/infolist/del.html?id=20');
INSERT INTO `en_adminlog` VALUES ('122', '1', '1', '提示语:清理缓存', '1602818174', '127.0.0.1', '/admin/index/cache.html?type=all&_=1602818172448');
INSERT INTO `en_adminlog` VALUES ('123', '0', '1', '提示语:该页面不存在！', '1602818408', '127.0.0.1', '/admin/infolist/templates/default/images/imgdata/newsimg.png');
INSERT INTO `en_adminlog` VALUES ('124', '0', '1', '提示语:该页面不存在！', '1602818777', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('125', '1', '1', '提示语:修改成功！', '1602818779', '127.0.0.1', '/admin/infoimg/edit.html?id=15');
INSERT INTO `en_adminlog` VALUES ('126', '0', '1', '提示语:该页面不存在！', '1602818784', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('127', '0', '1', '提示语:该页面不存在！', '1602818854', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('128', '1', '1', '提示语:添加成功！', '1602818864', '127.0.0.1', '/admin/infoimg/add.html');
INSERT INTO `en_adminlog` VALUES ('129', '1', '1', '提示语:删除成功！', '1602818869', '127.0.0.1', '/admin/infoimg/del.html?id=16');
INSERT INTO `en_adminlog` VALUES ('130', '1', '1', '提示语:操作成功！', '1602819203', '127.0.0.1', '/admin/infolist/multi.html');
INSERT INTO `en_adminlog` VALUES ('131', '1', '1', '提示语:操作成功！', '1602819206', '127.0.0.1', '/admin/infolist/multi.html');
INSERT INTO `en_adminlog` VALUES ('132', '1', '1', '提示语:操作成功！', '1602819312', '127.0.0.1', '/admin/infoimg/multi.html');
INSERT INTO `en_adminlog` VALUES ('133', '1', '1', '提示语:操作成功！', '1602819314', '127.0.0.1', '/admin/infoimg/multi.html');
INSERT INTO `en_adminlog` VALUES ('134', '0', '1', '提示语:该页面不存在！', '1602819612', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('135', '0', '0', '提示语:请先登陆', '1602819743', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('136', '1', '1', '提示语:恭喜您，登陆成功', '1602819841', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('137', '1', '1', '提示语:清理缓存', '1602819966', '127.0.0.1', '/admin/index/cache.html?type=all&_=1602819962787');
INSERT INTO `en_adminlog` VALUES ('138', '0', '0', '提示语:请先登陆', '1602820032', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('139', '1', '1', '提示语:恭喜您，登陆成功', '1602820041', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('140', '0', '1', '提示语:该页面不存在！', '1602820079', '127.0.0.1', '/admin/infolist/templates/default/images/imgdata/newsimg.png');
INSERT INTO `en_adminlog` VALUES ('141', '0', '0', '提示语:请先登陆', '1602891430', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('142', '0', '0', '提示语:请先登陆', '1602891887', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('143', '0', '0', '提示语:验证码输入错误！', '1602891896', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('144', '0', '0', '提示语:验证码输入错误！', '1602891900', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('145', '1', '1', '提示语:恭喜您，登陆成功', '1602891904', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('146', '0', '1', '提示语:栏目不能为空！', '1602892689', '127.0.0.1', '/admin/infolist/add.html');
INSERT INTO `en_adminlog` VALUES ('147', '0', '1', '提示语:栏目不能为空！', '1602892700', '127.0.0.1', '/admin/infolist/add.html');
INSERT INTO `en_adminlog` VALUES ('148', '0', '1', '提示语:该页面不存在！', '1602894474', '127.0.0.1', '/admin/infolist/templates/default/images/imgdata/newsimg.png');
INSERT INTO `en_adminlog` VALUES ('149', '1', '1', '提示语:添加成功！', '1602894490', '127.0.0.1', '/admin/infolist/add.html');
INSERT INTO `en_adminlog` VALUES ('150', '0', '1', '提示语:该页面不存在！', '1602895040', '127.0.0.1', '/admin/infolist/1');
INSERT INTO `en_adminlog` VALUES ('151', '0', '1', '提示语:该页面不存在！', '1602895040', '127.0.0.1', '/admin/infolist/2');
INSERT INTO `en_adminlog` VALUES ('152', '0', '1', '提示语:该页面不存在！', '1602895065', '127.0.0.1', '/admin/infolist/20201017/b6a44380e12970de265d84c0295f93b9.jpg');
INSERT INTO `en_adminlog` VALUES ('153', '0', '1', '提示语:该页面不存在！', '1602895065', '127.0.0.1', '/admin/infolist/20201017/09c50b959d165b2daaa5f96aefd1255f.jpg');
INSERT INTO `en_adminlog` VALUES ('154', '0', '1', '提示语:该页面不存在！', '1602895081', '127.0.0.1', '/admin/infolist/20201017/b6a44380e12970de265d84c0295f93b9.jpg');
INSERT INTO `en_adminlog` VALUES ('155', '0', '1', '提示语:该页面不存在！', '1602895081', '127.0.0.1', '/admin/infolist/20201017/09c50b959d165b2daaa5f96aefd1255f.jpg');
INSERT INTO `en_adminlog` VALUES ('156', '0', '1', '提示语:该页面不存在！', '1602895130', '127.0.0.1', '/admin/infolist/20201017/09c50b959d165b2daaa5f96aefd1255f.jpg');
INSERT INTO `en_adminlog` VALUES ('157', '0', '1', '提示语:该页面不存在！', '1602895130', '127.0.0.1', '/admin/infolist/20201017/b6a44380e12970de265d84c0295f93b9.jpg');
INSERT INTO `en_adminlog` VALUES ('158', '1', '1', '提示语:修改成功！', '1602895169', '127.0.0.1', '/admin/infolist/edit.html?id=21');
INSERT INTO `en_adminlog` VALUES ('159', '0', '1', '提示语:该页面不存在！', '1602895179', '127.0.0.1', '/admin/infolist//public/uploads/image20201017/12f7e03a78d63dd2b7633323bc0bc629.jpg');
INSERT INTO `en_adminlog` VALUES ('160', '1', '1', '提示语:修改成功！', '1602895234', '127.0.0.1', '/admin/infolist/edit.html?id=21');
INSERT INTO `en_adminlog` VALUES ('161', '1', '1', '提示语:修改成功！', '1602895248', '127.0.0.1', '/admin/infolist/edit.html?id=21');
INSERT INTO `en_adminlog` VALUES ('162', '1', '1', '提示语:删除成功！', '1602895302', '127.0.0.1', '/admin/infolist/del.html?id=21');
INSERT INTO `en_adminlog` VALUES ('163', '0', '1', '提示语:该页面不存在！', '1602895587', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('164', '0', '1', '提示语:该页面不存在！', '1602895587', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('165', '0', '1', '提示语:该页面不存在！', '1602895587', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_3.jpg');
INSERT INTO `en_adminlog` VALUES ('166', '0', '1', '提示语:该页面不存在！', '1602895587', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/moto.jpg');
INSERT INTO `en_adminlog` VALUES ('167', '0', '1', '提示语:该页面不存在！', '1602895587', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_2.jpg');
INSERT INTO `en_adminlog` VALUES ('168', '0', '1', '提示语:该页面不存在！', '1602895587', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_1.jpg');
INSERT INTO `en_adminlog` VALUES ('169', '0', '1', '提示语:该页面不存在！', '1602895587', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/I559.jpg');
INSERT INTO `en_adminlog` VALUES ('170', '0', '1', '提示语:该页面不存在！', '1602895587', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/zhonghua.jpg');
INSERT INTO `en_adminlog` VALUES ('171', '0', '1', '提示语:该页面不存在！', '1602895587', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/361du.jpg');
INSERT INTO `en_adminlog` VALUES ('172', '0', '1', '提示语:该页面不存在！', '1602895587', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/iMac.jpg');
INSERT INTO `en_adminlog` VALUES ('173', '1', '1', '提示语:操作成功！', '1602896547', '127.0.0.1', '/admin/infoimg/multi.html');
INSERT INTO `en_adminlog` VALUES ('174', '1', '1', '提示语:操作成功！', '1602896548', '127.0.0.1', '/admin/infoimg/multi.html');
INSERT INTO `en_adminlog` VALUES ('175', '1', '1', '提示语:编辑成功！', '1602898815', '127.0.0.1', '/admin/menu/edit.html?id=61');
INSERT INTO `en_adminlog` VALUES ('176', '1', '1', '提示语:清理缓存', '1602898820', '127.0.0.1', '/admin/index/cache.html?type=all&_=1602898818729');
INSERT INTO `en_adminlog` VALUES ('177', '1', '1', '提示语:编辑成功！', '1602898845', '127.0.0.1', '/admin/menu/edit.html?id=61');
INSERT INTO `en_adminlog` VALUES ('178', '1', '1', '提示语:清理缓存', '1602898847', '127.0.0.1', '/admin/index/cache.html?type=all&_=1602898822391');
INSERT INTO `en_adminlog` VALUES ('179', '1', '1', '提示语:操作成功！', '1602898894', '127.0.0.1', '/admin/soft/multi.html');
INSERT INTO `en_adminlog` VALUES ('180', '1', '1', '提示语:操作成功！', '1602898895', '127.0.0.1', '/admin/soft/multi.html');
INSERT INTO `en_adminlog` VALUES ('181', '0', '1', '提示语:该页面不存在！', '1602898899', '127.0.0.1', '/admin/soft/templates/default/images/imgdata/mobliebaidulogo.jpg');
INSERT INTO `en_adminlog` VALUES ('182', '0', '1', '提示语:该页面不存在！', '1602899512', '127.0.0.1', '/admin/soft/templates/default/images/imgdata/mobliebaidulogo.jpg');
INSERT INTO `en_adminlog` VALUES ('183', '0', '1', '提示语:该页面不存在！', '1602900699', '127.0.0.1', '/admin/soft/templates/default/images/imgdata/mobliebaidulogo.jpg');
INSERT INTO `en_adminlog` VALUES ('184', '1', '1', '提示语:操作成功！', '1602900726', '127.0.0.1', '/admin/soft/multi.html');
INSERT INTO `en_adminlog` VALUES ('185', '1', '1', '提示语:操作成功！', '1602900729', '127.0.0.1', '/admin/soft/multi.html');
INSERT INTO `en_adminlog` VALUES ('186', '0', '1', '提示语:该页面不存在！', '1602900770', '127.0.0.1', '/admin/soft/templates/default/images/imgdata/mobliebaidulogo.jpg');
INSERT INTO `en_adminlog` VALUES ('187', '1', '1', '提示语:修改成功！', '1602900774', '127.0.0.1', '/admin/soft/edit.html?id=2');
INSERT INTO `en_adminlog` VALUES ('188', '0', '1', '提示语:该页面不存在！', '1602900778', '127.0.0.1', '/admin/soft/templates/default/images/imgdata/mobliebaidulogo.jpg');
INSERT INTO `en_adminlog` VALUES ('189', '1', '1', '提示语:修改成功！', '1602900781', '127.0.0.1', '/admin/soft/edit.html?id=2');
INSERT INTO `en_adminlog` VALUES ('190', '0', '1', '提示语:该页面不存在！', '1602900784', '127.0.0.1', '/admin/soft/templates/default/images/imgdata/mobliebaidulogo.jpg');
INSERT INTO `en_adminlog` VALUES ('191', '0', '1', '提示语:名称只能是汉字、字母和数字', '1602900847', '127.0.0.1', '/admin/menu/add.html?parentid=55');
INSERT INTO `en_adminlog` VALUES ('192', '0', '1', '提示语:名称只能是汉字、字母和数字', '1602900854', '127.0.0.1', '/admin/menu/add.html?parentid=55');
INSERT INTO `en_adminlog` VALUES ('193', '1', '1', '提示语:添加成功！', '1602900860', '127.0.0.1', '/admin/menu/add.html?parentid=55');
INSERT INTO `en_adminlog` VALUES ('194', '1', '1', '提示语:添加成功！', '1602900937', '127.0.0.1', '/admin/menu/add.html?parentid=62');
INSERT INTO `en_adminlog` VALUES ('195', '1', '1', '提示语:清理缓存', '1602900945', '127.0.0.1', '/admin/index/cache.html?type=all&_=1602898849933');
INSERT INTO `en_adminlog` VALUES ('196', '1', '1', '提示语:删除菜单成功！', '1602901223', '127.0.0.1', '/admin/menu/del.html?id=63');
INSERT INTO `en_adminlog` VALUES ('197', '1', '1', '提示语:清理缓存', '1602901225', '127.0.0.1', '/admin/index/cache.html?type=all&_=1602900947426');
INSERT INTO `en_adminlog` VALUES ('198', '1', '1', '提示语:添加成功！', '1602901256', '127.0.0.1', '/admin/menu/add.html?parentid=62');
INSERT INTO `en_adminlog` VALUES ('199', '1', '1', '提示语:清理缓存', '1602901266', '127.0.0.1', '/admin/index/cache.html?type=all&_=1602901226871');
INSERT INTO `en_adminlog` VALUES ('200', '0', '1', '提示语:Param参数不能为空', '1602901792', '127.0.0.1', '/admin/message/multi.html');
INSERT INTO `en_adminlog` VALUES ('201', '0', '1', '提示语:Param参数不能为空', '1602901793', '127.0.0.1', '/admin/message/multi.html');
INSERT INTO `en_adminlog` VALUES ('202', '1', '1', '提示语:操作成功！', '1602901841', '127.0.0.1', '/admin/message/multi.html');
INSERT INTO `en_adminlog` VALUES ('203', '1', '1', '提示语:操作成功！', '1602901842', '127.0.0.1', '/admin/message/multi.html');
INSERT INTO `en_adminlog` VALUES ('204', '1', '1', '提示语:添加成功！', '1602902664', '127.0.0.1', '/admin/message/add.html');
INSERT INTO `en_adminlog` VALUES ('205', '1', '1', '提示语:修改成功！', '1602903921', '127.0.0.1', '/admin/message/edit.html?id=1');
INSERT INTO `en_adminlog` VALUES ('206', '1', '1', '提示语:修改成功！', '1602903930', '127.0.0.1', '/admin/message/edit.html?id=1');
INSERT INTO `en_adminlog` VALUES ('207', '1', '1', '提示语:添加成功！', '1602904078', '127.0.0.1', '/admin/menu/add.html?parentid=62');
INSERT INTO `en_adminlog` VALUES ('208', '1', '1', '提示语:清理缓存', '1602904091', '127.0.0.1', '/admin/index/cache.html?type=all&_=1602903740097');
INSERT INTO `en_adminlog` VALUES ('209', '1', '1', '提示语:操作成功！', '1602904885', '127.0.0.1', '/admin/weblink/multi.html');
INSERT INTO `en_adminlog` VALUES ('210', '1', '1', '提示语:操作成功！', '1602904886', '127.0.0.1', '/admin/weblink/multi.html');
INSERT INTO `en_adminlog` VALUES ('211', '1', '1', '提示语:添加成功！', '1602905430', '127.0.0.1', '/admin/weblink/add.html');
INSERT INTO `en_adminlog` VALUES ('212', '1', '1', '提示语:修改成功！', '1602905440', '127.0.0.1', '/admin/weblink/edit.html?id=4');
INSERT INTO `en_adminlog` VALUES ('213', '1', '1', '提示语:删除成功！', '1602905444', '127.0.0.1', '/admin/weblink/del.html?id=4');
INSERT INTO `en_adminlog` VALUES ('214', '1', '1', '提示语:操作成功！', '1602905457', '127.0.0.1', '/admin/weblink/multi.html');
INSERT INTO `en_adminlog` VALUES ('215', '1', '1', '提示语:操作成功！', '1602905459', '127.0.0.1', '/admin/weblink/multi.html');
INSERT INTO `en_adminlog` VALUES ('216', '1', '1', '提示语:操作成功！', '1602905533', '127.0.0.1', '/admin/weblink/multi.html');
INSERT INTO `en_adminlog` VALUES ('217', '1', '1', '提示语:操作成功！', '1602905534', '127.0.0.1', '/admin/weblink/multi.html');
INSERT INTO `en_adminlog` VALUES ('218', '1', '1', '提示语:修改成功！', '1602906085', '127.0.0.1', '/admin/manager/edit.html?id=1');
INSERT INTO `en_adminlog` VALUES ('219', '1', '1', '提示语:删除成功！', '1602906099', '127.0.0.1', '/admin/auth_manager/deletegroup.html?id=2');
INSERT INTO `en_adminlog` VALUES ('220', '1', '1', '提示语:删除日志成功！', '1602906103', '127.0.0.1', '/admin/adminlog/deletelog.html');
INSERT INTO `en_adminlog` VALUES ('221', '1', '1', '提示语:删除日志成功！', '1602906107', '127.0.0.1', '/admin/adminlog/deletelog.html');
INSERT INTO `en_adminlog` VALUES ('222', '0', '0', '提示语:请先登陆', '1603068853', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('223', '0', '0', '提示语:验证码输入错误！', '1603068861', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('224', '1', '1', '提示语:恭喜您，登陆成功', '1603068867', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('225', '1', '1', '提示语:修改成功！', '1603068877', '127.0.0.1', '/admin/info/edit.html?id=1');
INSERT INTO `en_adminlog` VALUES ('226', '0', '1', '提示语:该页面不存在！', '1603068883', '127.0.0.1', '/admin/infolist/templates/default/images/imgdata/newsimg.png');
INSERT INTO `en_adminlog` VALUES ('227', '1', '1', '提示语:修改成功！', '1603068885', '127.0.0.1', '/admin/infolist/edit.html?id=19');
INSERT INTO `en_adminlog` VALUES ('228', '1', '1', '提示语:删除成功！', '1603068901', '127.0.0.1', '/admin/message/del.html?id=2');
INSERT INTO `en_adminlog` VALUES ('229', '1', '1', '提示语:删除成功！', '1603068919', '127.0.0.1', '/admin/weblink/del.html?id=3');
INSERT INTO `en_adminlog` VALUES ('230', '1', '1', '提示语:添加成功！', '1603069475', '127.0.0.1', '/admin/menu/add.html?parentid=62');
INSERT INTO `en_adminlog` VALUES ('231', '1', '1', '提示语:编辑成功！', '1603069533', '127.0.0.1', '/admin/menu/edit.html?id=66');
INSERT INTO `en_adminlog` VALUES ('232', '1', '1', '提示语:清理缓存', '1603069540', '127.0.0.1', '/admin/index/cache.html?type=all&_=1603068868692');
INSERT INTO `en_adminlog` VALUES ('233', '1', '1', '提示语:操作成功！', '1603069555', '127.0.0.1', '/admin/menu/multi.html');
INSERT INTO `en_adminlog` VALUES ('234', '1', '1', '提示语:操作成功！', '1603069556', '127.0.0.1', '/admin/menu/multi.html');
INSERT INTO `en_adminlog` VALUES ('235', '1', '1', '提示语:操作成功！', '1603069558', '127.0.0.1', '/admin/menu/multi.html');
INSERT INTO `en_adminlog` VALUES ('236', '1', '1', '提示语:清理缓存', '1603069566', '127.0.0.1', '/admin/index/cache.html?type=all&_=1603069541779');
INSERT INTO `en_adminlog` VALUES ('237', '1', '1', '提示语:注册成功！', '1603073276', '127.0.0.1', '/admin/member/add.html');
INSERT INTO `en_adminlog` VALUES ('238', '1', '1', '提示语:注册成功！', '1603073417', '127.0.0.1', '/admin/member/add.html');
INSERT INTO `en_adminlog` VALUES ('239', '1', '1', '提示语:删除成功！', '1603073603', '127.0.0.1', '/admin/member/del.html?id=1');
INSERT INTO `en_adminlog` VALUES ('240', '1', '1', '提示语:注册成功！', '1603073638', '127.0.0.1', '/admin/member/add.html');
INSERT INTO `en_adminlog` VALUES ('241', '1', '1', '提示语:修改成功！', '1603073741', '127.0.0.1', '/admin/member/edit.html?id=4');
INSERT INTO `en_adminlog` VALUES ('242', '1', '1', '提示语:修改成功！', '1603074059', '127.0.0.1', '/admin/member/edit.html?id=4');
INSERT INTO `en_adminlog` VALUES ('243', '1', '1', '提示语:修改成功！', '1603074335', '127.0.0.1', '/admin/member/edit.html?id=4');
INSERT INTO `en_adminlog` VALUES ('244', '0', '1', '提示语:该页面不存在！', '1603075073', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('245', '0', '1', '提示语:文章标题不能大于30个字符！', '1603075075', '127.0.0.1', '/admin/infoimg/edit.html?id=15');
INSERT INTO `en_adminlog` VALUES ('246', '0', '1', '提示语:该页面不存在！', '1603075078', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('247', '0', '1', '提示语:该页面不存在！', '1603075135', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('248', '0', '1', '提示语:该页面不存在！', '1603075190', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('249', '0', '1', '提示语:该页面不存在！', '1603075211', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('250', '0', '1', '提示语:该页面不存在！', '1603075223', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('251', '0', '1', '提示语:该页面不存在！', '1603075279', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('252', '0', '1', '提示语:该页面不存在！', '1603075353', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('253', '0', '1', '提示语:该页面不存在！', '1603075381', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('254', '0', '1', '提示语:该页面不存在！', '1603075453', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('255', '0', '1', '提示语:该页面不存在！', '1603075505', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('256', '0', '1', '提示语:该页面不存在！', '1603075819', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('257', '0', '1', '提示语:该页面不存在！', '1603075889', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('258', '0', '1', '提示语:该页面不存在！', '1603075942', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('259', '0', '1', '提示语:该页面不存在！', '1603075979', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('260', '0', '1', '提示语:该页面不存在！', '1603076005', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('261', '0', '1', '提示语:该页面不存在！', '1603076027', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_5.jpg');
INSERT INTO `en_adminlog` VALUES ('262', '1', '1', '提示语:修改成功！', '1603076032', '127.0.0.1', '/admin/infoimg/edit.html?id=15');
INSERT INTO `en_adminlog` VALUES ('263', '1', '1', '提示语:修改成功！', '1603076076', '127.0.0.1', '/admin/infoimg/edit.html?id=15');
INSERT INTO `en_adminlog` VALUES ('264', '1', '1', '提示语:修改成功！', '1603076090', '127.0.0.1', '/admin/infoimg/edit.html?id=15');
INSERT INTO `en_adminlog` VALUES ('265', '1', '1', '提示语:修改成功！', '1603076124', '127.0.0.1', '/admin/infoimg/edit.html?id=15');
INSERT INTO `en_adminlog` VALUES ('266', '1', '1', '提示语:修改成功！', '1603076132', '127.0.0.1', '/admin/infoimg/edit.html?id=15');
INSERT INTO `en_adminlog` VALUES ('267', '1', '1', '提示语:修改成功！', '1603076463', '127.0.0.1', '/admin/infoimg/edit.html?id=15');
INSERT INTO `en_adminlog` VALUES ('268', '1', '1', '提示语:修改成功！', '1603076512', '127.0.0.1', '/admin/member/edit.html?id=4');
INSERT INTO `en_adminlog` VALUES ('269', '0', '0', '提示语:请先登陆', '1603155471', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('270', '0', '0', '提示语:验证码输入错误！', '1603155539', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('271', '0', '0', '提示语:用户名或者密码错误，登陆失败！', '1603155544', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('272', '0', '0', '提示语:验证码输入错误！', '1603155700', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('273', '0', '0', '提示语:验证码输入错误！', '1603155704', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('274', '0', '0', '提示语:用户名或者密码错误，登陆失败！', '1603155710', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('275', '0', '0', '提示语:用户名或者密码错误，登陆失败！', '1603156060', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('276', '0', '0', '提示语:登录过多！请等5分钟后再试！', '1603156126', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('277', '0', '0', '提示语:验证码输入错误！', '1603156161', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('278', '1', '1', '提示语:恭喜您，登陆成功', '1603156544', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('279', '1', '0', '提示语:注销成功！', '1603156589', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('280', '0', '0', '提示语:验证码输入错误！', '1603156671', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('281', '0', '0', '提示语:密码错误过多！请等5分钟后再试!', '1603156676', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('282', '0', '0', '提示语:您的账号密码连续多次输入错误，为了保证账号安全请20分钟后再登录', '1603157077', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('283', '0', '0', '提示语:验证码输入错误！', '1603157116', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('284', '0', '0', '提示语:您的账号密码连续多次输入错误，为了保证账号安全请5分钟后再登录', '1603157119', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('285', '1', '1', '提示语:恭喜您，登陆成功', '1603157148', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('286', '1', '0', '提示语:注销成功！', '1603157154', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('287', '0', '0', '提示语:用户名或者密码错误，登陆失败！', '1603157163', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('288', '0', '0', '提示语:用户名或者密码错误，登陆失败！', '1603157167', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('289', '0', '0', '提示语:用户名或者密码错误，登陆失败！', '1603157172', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('290', '0', '0', '提示语:用户名或者密码错误，登陆失败！', '1603157177', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('291', '0', '0', '提示语:用户名或者密码错误，登陆失败！', '1603157183', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('292', '0', '0', '提示语:您的账号密码连续多次输入错误，为了保证账号安全请5分钟后再登录', '1603157190', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('293', '0', '0', '提示语:请先登陆', '1603157542', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('294', '0', '0', '提示语:请先登陆', '1603157555', '127.0.0.1', '/admin/index/login.html/install');
INSERT INTO `en_adminlog` VALUES ('295', '0', '0', '提示语:请先登陆', '1603166214', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('296', '1', '0', '提示语:注销成功！', '1603166284', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('297', '0', '0', '提示语:验证码输入错误！', '1603166290', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('298', '0', '0', '提示语:验证码输入错误！', '1603166291', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('299', '1', '0', '提示语:注销成功！', '1603166323', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('300', '1', '0', '提示语:注销成功！', '1603166324', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('301', '1', '1', '提示语:恭喜您，登陆成功', '1603166330', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('302', '1', '0', '提示语:注销成功！', '1603166369', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('303', '1', '0', '提示语:注销成功！', '1603166410', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('304', '1', '0', '提示语:注销成功！', '1603166428', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('305', '1', '1', '提示语:恭喜您，登陆成功', '1603166438', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('306', '1', '0', '提示语:注销成功！', '1603166447', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('307', '1', '0', '提示语:注销成功！', '1603166487', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('308', '1', '0', '提示语:注销成功！', '1603166626', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('309', '1', '0', '提示语:注销成功！', '1603166627', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('310', '0', '0', '提示语:验证码输入错误！', '1603166632', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('311', '1', '1', '提示语:恭喜您，登陆成功', '1603166638', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('312', '1', '1', '提示语:操作成功！', '1603166717', '127.0.0.1', '/admin/menu/multi.html?id=23&param=status&value=0');
INSERT INTO `en_adminlog` VALUES ('313', '1', '1', '提示语:清理缓存', '1603166720', '127.0.0.1', '/admin/index/cache.html?type=all&_=1603166639395');
INSERT INTO `en_adminlog` VALUES ('314', '0', '0', '提示语:请先登陆', '1603328188', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('315', '0', '0', '提示语:验证码输入错误！', '1603328194', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('316', '1', '1', '提示语:恭喜您，登陆成功', '1603328199', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('317', '0', '0', '提示语:请先登陆', '1603332792', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('318', '0', '0', '提示语:验证码输入错误！', '1603332800', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('319', '1', '1', '提示语:恭喜您，登陆成功', '1603332803', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('320', '0', '0', '提示语:请先登陆', '1603334468', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('321', '1', '1', '提示语:恭喜您，登陆成功', '1603334473', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('322', '0', '0', '提示语:请先登陆', '1603413193', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('323', '0', '0', '提示语:请先登陆', '1603421201', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('324', '1', '1', '提示语:恭喜您，登陆成功', '1603421207', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('325', '0', '0', '提示语:请先登陆', '1603421646', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('326', '1', '1', '提示语:恭喜您，登陆成功', '1603421653', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('327', '1', '0', '提示语:注销成功！', '1603421838', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('328', '0', '0', '提示语:验证码输入错误！', '1603421847', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('329', '0', '0', '提示语:用户名或者密码错误，登陆失败！', '1603421853', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('330', '0', '0', '提示语:验证码输入错误！', '1603421854', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('331', '0', '0', '提示语:用户名或者密码错误，登陆失败！', '1603421859', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('332', '0', '0', '提示语:验证码输入错误！', '1603421867', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('333', '0', '0', '提示语:验证码输入错误！', '1603421870', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('334', '1', '1', '提示语:恭喜您，登陆成功', '1603421875', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('335', '1', '0', '提示语:注销成功！', '1603422805', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('336', '0', '0', '提示语:请先登陆', '1603422809', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('337', '0', '0', '提示语:请先登陆', '1603423405', '127.0.0.1', '/admin/index/06.png');
INSERT INTO `en_adminlog` VALUES ('338', '0', '0', '提示语:请先登陆', '1603423423', '127.0.0.1', '/admin/index/06.png');
INSERT INTO `en_adminlog` VALUES ('339', '0', '0', '提示语:请先登陆', '1603423447', '127.0.0.1', '/admin/index/06.png');
INSERT INTO `en_adminlog` VALUES ('340', '0', '0', '提示语:请先登陆', '1603423470', '127.0.0.1', '/admin/index/06.png');
INSERT INTO `en_adminlog` VALUES ('341', '0', '0', '提示语:请先登陆', '1603423481', '127.0.0.1', '/admin/index/06.png');
INSERT INTO `en_adminlog` VALUES ('342', '0', '0', '提示语:请先登陆', '1603423545', '127.0.0.1', '/admin/index/06.png');
INSERT INTO `en_adminlog` VALUES ('343', '1', '1', '提示语:恭喜您，登陆成功', '1603423558', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('344', '1', '0', '提示语:注销成功！', '1603423600', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('345', '0', '0', '提示语:请先登陆', '1603423602', '127.0.0.1', '/admin/index/06.png');
INSERT INTO `en_adminlog` VALUES ('346', '0', '0', '提示语:请先登陆', '1603423603', '127.0.0.1', '/admin/index/06.png');
INSERT INTO `en_adminlog` VALUES ('347', '0', '0', '提示语:请先登陆', '1603423610', '127.0.0.1', '/admin/index/06.png');
INSERT INTO `en_adminlog` VALUES ('348', '0', '0', '提示语:请先登陆', '1603423624', '127.0.0.1', '/admin/index/06.png');
INSERT INTO `en_adminlog` VALUES ('349', '0', '0', '提示语:请先登陆', '1603423651', '127.0.0.1', '/admin/index/06.png');
INSERT INTO `en_adminlog` VALUES ('350', '0', '0', '提示语:请先登陆', '1603423665', '127.0.0.1', '/admin/index/06.png');
INSERT INTO `en_adminlog` VALUES ('351', '0', '0', '提示语:请先登陆', '1603423670', '127.0.0.1', '/admin/index/06.png');
INSERT INTO `en_adminlog` VALUES ('352', '1', '1', '提示语:恭喜您，登陆成功', '1603423693', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('353', '1', '0', '提示语:注销成功！', '1603423700', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('354', '0', '0', '提示语:请先登陆', '1603496257', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('355', '1', '1', '提示语:恭喜您，登陆成功', '1603496267', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('356', '0', '0', '提示语:请先登陆', '1603504158', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('357', '0', '0', '提示语:请先登陆', '1603519218', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('358', '0', '0', '提示语:请先登陆', '1603522664', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('359', '0', '0', '提示语:请先登陆', '1603522857', '127.0.0.1', '/admin/index/06.png');
INSERT INTO `en_adminlog` VALUES ('360', '0', '0', '提示语:请先登陆', '1603522879', '127.0.0.1', '/admin/index/06.png');
INSERT INTO `en_adminlog` VALUES ('361', '0', '0', '提示语:请先登陆', '1603522956', '127.0.0.1', '/admin/index/06.png');
INSERT INTO `en_adminlog` VALUES ('362', '0', '0', '提示语:验证码输入错误！', '1603522963', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('363', '0', '0', '提示语:验证码输入错误！', '1603522969', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('364', '0', '0', '提示语:验证码输入错误！', '1603522973', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('365', '0', '0', '提示语:请先登陆', '1603523007', '127.0.0.1', '/admin/index/06.png');
INSERT INTO `en_adminlog` VALUES ('366', '1', '1', '提示语:恭喜您，登陆成功', '1603523013', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('367', '1', '0', '提示语:注销成功！', '1603523019', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('368', '0', '0', '提示语:请先登陆', '1603523021', '127.0.0.1', '/admin/index/06.png');
INSERT INTO `en_adminlog` VALUES ('369', '0', '0', '提示语:验证码输入错误！', '1603523185', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('370', '1', '1', '提示语:恭喜您，登陆成功', '1603523195', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('371', '1', '0', '提示语:注销成功！', '1603523207', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('372', '0', '0', '提示语:验证码输入错误！', '1603523216', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('373', '0', '0', '提示语:请先登陆', '1603523885', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('374', '0', '0', '提示语:请先登陆', '1603674809', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('375', '1', '1', '提示语:恭喜您，登陆成功', '1603674816', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('376', '1', '0', '提示语:注销成功！', '1603676479', '127.0.0.1', '/admin/index/logout.html');
INSERT INTO `en_adminlog` VALUES ('377', '0', '0', '提示语:请先登陆', '1603679313', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('378', '0', '0', '提示语:请先登陆', '1603766708', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('379', '1', '1', '提示语:恭喜您，登陆成功', '1603766715', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('380', '0', '0', '提示语:请先登陆', '1603845774', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('381', '1', '1', '提示语:恭喜您，登陆成功', '1603845783', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('382', '0', '0', '提示语:请先登陆', '1604370034', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('383', '1', '1', '提示语:恭喜您，登陆成功', '1604370044', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('384', '0', '1', '提示语:该页面不存在！', '1604370148', '127.0.0.1', '/admin/soft/templates/default/images/imgdata/mobliebaidulogo.jpg');
INSERT INTO `en_adminlog` VALUES ('385', '0', '1', '提示语:该页面不存在！', '1604370170', '127.0.0.1', '/admin/soft/templates/default/images/imgdata/mobliebaidulogo.jpg');
INSERT INTO `en_adminlog` VALUES ('386', '1', '1', '提示语:操作成功！', '1604370232', '127.0.0.1', '/admin/message/multi.html');
INSERT INTO `en_adminlog` VALUES ('387', '1', '1', '提示语:操作成功！', '1604370232', '127.0.0.1', '/admin/message/multi.html');
INSERT INTO `en_adminlog` VALUES ('388', '0', '0', '提示语:请先登陆', '1604536175', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('389', '0', '0', '提示语:验证码输入错误！', '1604536182', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('390', '1', '1', '提示语:恭喜您，登陆成功', '1604536189', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('391', '0', '0', '提示语:请先登陆', '1604538156', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('392', '1', '1', '提示语:恭喜您，登陆成功', '1604538196', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('393', '0', '0', '提示语:请先登陆', '1605001452', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('394', '1', '1', '提示语:恭喜您，登陆成功', '1605001460', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('395', '0', '1', '提示语:该页面不存在！', '1605004354', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('396', '0', '0', '提示语:请先登陆', '1605016392', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('397', '1', '1', '提示语:恭喜您，登陆成功', '1605016399', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('398', '0', '1', '提示语:该页面不存在！', '1605016429', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('399', '0', '1', '提示语:该页面不存在！', '1605016431', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('400', '0', '1', '提示语:该页面不存在！', '1605016455', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('401', '0', '1', '提示语:该页面不存在！', '1605016713', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('402', '0', '1', '提示语:该页面不存在！', '1605016776', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('403', '0', '1', '提示语:该页面不存在！', '1605016980', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('404', '0', '0', '提示语:请先登陆', '1605052002', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('405', '1', '1', '提示语:恭喜您，登陆成功', '1605052010', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('406', '0', '1', '提示语:该页面不存在！', '1605052018', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('407', '0', '1', '提示语:该页面不存在！', '1605052084', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('408', '0', '1', '提示语:该页面不存在！', '1605052192', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('409', '0', '1', '提示语:该页面不存在！', '1605052203', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('410', '0', '1', '提示语:该页面不存在！', '1605052295', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('411', '0', '1', '提示语:该页面不存在！', '1605052637', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('412', '0', '1', '提示语:该页面不存在！', '1605052688', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('413', '0', '1', '提示语:该页面不存在！', '1605052698', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('414', '0', '1', '提示语:该页面不存在！', '1605052716', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('415', '0', '1', '提示语:该页面不存在！', '1605052744', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('416', '0', '1', '提示语:该页面不存在！', '1605052757', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('417', '0', '1', '提示语:该页面不存在！', '1605052782', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('418', '0', '1', '提示语:该页面不存在！', '1605052827', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('419', '0', '1', '提示语:该页面不存在！', '1605052891', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('420', '0', '1', '提示语:该页面不存在！', '1605052912', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('421', '0', '1', '提示语:该页面不存在！', '1605052918', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('422', '0', '1', '提示语:该页面不存在！', '1605052933', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('423', '0', '1', '提示语:该页面不存在！', '1605053003', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('424', '0', '1', '提示语:该页面不存在！', '1605053036', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('425', '0', '1', '提示语:该页面不存在！', '1605053053', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('426', '0', '1', '提示语:该页面不存在！', '1605053072', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('427', '0', '1', '提示语:该页面不存在！', '1605053284', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('428', '0', '1', '提示语:该页面不存在！', '1605053340', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('429', '0', '1', '提示语:该页面不存在！', '1605053626', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('430', '0', '1', '提示语:该页面不存在！', '1605053707', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('431', '0', '1', '提示语:该页面不存在！', '1605053736', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('432', '0', '1', '提示语:该页面不存在！', '1605054068', '127.0.0.1', '/admin/infolist/templates/default/images/imgdata/newsimg.png');
INSERT INTO `en_adminlog` VALUES ('433', '0', '1', '提示语:该页面不存在！', '1605054141', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('434', '0', '1', '提示语:该页面不存在！', '1605054595', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('435', '0', '1', '提示语:该页面不存在！', '1605055034', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('436', '0', '1', '提示语:该页面不存在！', '1605058337', '127.0.0.1', '/admin/infolist/templates/default/images/imgdata/newsimg.png');
INSERT INTO `en_adminlog` VALUES ('437', '0', '1', '提示语:该页面不存在！', '1605058415', '127.0.0.1', '/admin/infolist/templates/default/images/imgdata/newsimg.png');
INSERT INTO `en_adminlog` VALUES ('438', '0', '0', '提示语:请先登陆', '1605094474', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('439', '0', '0', '提示语:验证码输入错误！', '1605094480', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('440', '1', '1', '提示语:恭喜您，登陆成功', '1605094486', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('441', '1', '1', '提示语:注册成功！', '1605096581', '127.0.0.1', '/admin/member/add.html');
INSERT INTO `en_adminlog` VALUES ('442', '1', '1', '提示语:删除成功！', '1605096608', '127.0.0.1', '/admin/member/del.html?id=5');
INSERT INTO `en_adminlog` VALUES ('443', '1', '1', '提示语:注册成功！', '1605096690', '127.0.0.1', '/admin/member/add.html');
INSERT INTO `en_adminlog` VALUES ('444', '1', '1', '提示语:删除成功！', '1605096696', '127.0.0.1', '/admin/member/del.html?id=6');
INSERT INTO `en_adminlog` VALUES ('445', '0', '1', '提示语:该页面不存在！', '1605097186', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('446', '0', '1', '提示语:该页面不存在！', '1605097196', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('447', '0', '1', '提示语:该页面不存在！', '1605097231', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('448', '0', '1', '提示语:该页面不存在！', '1605097389', '127.0.0.1', '/admin/infolist/templates/default/images/imgdata/newsimg.png');
INSERT INTO `en_adminlog` VALUES ('449', '1', '1', '提示语:清理缓存', '1605097808', '127.0.0.1', '/admin/index/cache.html?type=all&_=1605097806656');
INSERT INTO `en_adminlog` VALUES ('450', '1', '1', '提示语:修改成功！', '1605098351', '127.0.0.1', '/admin/infoimg/edit.html?id=15');
INSERT INTO `en_adminlog` VALUES ('451', '1', '1', '提示语:修改成功！', '1605098358', '127.0.0.1', '/admin/infoimg/edit.html?id=15');
INSERT INTO `en_adminlog` VALUES ('452', '1', '1', '提示语:修改成功！', '1605098733', '127.0.0.1', '/admin/infoimg/edit.html?id=15');
INSERT INTO `en_adminlog` VALUES ('453', '1', '1', '提示语:修改成功！', '1605098740', '127.0.0.1', '/admin/infoimg/edit.html?id=15');
INSERT INTO `en_adminlog` VALUES ('454', '1', '1', '提示语:修改成功！', '1605098933', '127.0.0.1', '/admin/infoimg/edit.html?id=15');
INSERT INTO `en_adminlog` VALUES ('455', '1', '1', '提示语:添加成功！', '1605099065', '127.0.0.1', '/admin/infoimg/add.html');
INSERT INTO `en_adminlog` VALUES ('456', '1', '1', '提示语:修改成功！', '1605099165', '127.0.0.1', '/admin/infoimg/edit.html?id=15');
INSERT INTO `en_adminlog` VALUES ('457', '0', '1', '提示语:该页面不存在！', '1605099199', '127.0.0.1', '/admin/soft/templates/default/images/imgdata/mobliebaidulogo.jpg');
INSERT INTO `en_adminlog` VALUES ('458', '0', '1', '提示语:该页面不存在！', '1605099648', '127.0.0.1', '/admin/soft/templates/default/images/imgdata/mobliebaidulogo.jpg');
INSERT INTO `en_adminlog` VALUES ('459', '0', '1', '提示语:该页面不存在！', '1605099947', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('460', '0', '1', '提示语:该页面不存在！', '1605099952', '127.0.0.1', '/admin/infoimg/templates/default/images/imgdata/slideimg_4.jpg');
INSERT INTO `en_adminlog` VALUES ('461', '1', '1', '提示语:修改成功！', '1605099961', '127.0.0.1', '/admin/infoimg/edit.html?id=14');
INSERT INTO `en_adminlog` VALUES ('462', '0', '0', '提示语:请先登陆', '1605143748', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('463', '0', '0', '提示语:验证码输入错误！', '1605143754', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('464', '1', '1', '提示语:恭喜您，登陆成功', '1605143761', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('465', '0', '0', '提示语:请先登陆', '1605143831', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('466', '1', '1', '提示语:恭喜您，登陆成功', '1605143836', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('467', '0', '0', '提示语:请先登陆', '1605313406', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('468', '1', '1', '提示语:恭喜您，登陆成功', '1605313414', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('469', '0', '1', '提示语:栏目名称不能重复！', '1605313607', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('470', '1', '1', '提示语:添加成功！', '1605313636', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('471', '1', '1', '提示语:添加成功！', '1605313721', '127.0.0.1', '/admin/infoimg/add.html');
INSERT INTO `en_adminlog` VALUES ('472', '1', '1', '提示语:添加成功！', '1605313749', '127.0.0.1', '/admin/infoimg/add.html');
INSERT INTO `en_adminlog` VALUES ('473', '1', '1', '提示语:添加成功！', '1605313763', '127.0.0.1', '/admin/infoimg/add.html');
INSERT INTO `en_adminlog` VALUES ('474', '1', '1', '提示语:添加成功！', '1605313779', '127.0.0.1', '/admin/infoimg/add.html');
INSERT INTO `en_adminlog` VALUES ('475', '1', '1', '提示语:添加成功！', '1605313798', '127.0.0.1', '/admin/infoimg/add.html');
INSERT INTO `en_adminlog` VALUES ('476', '0', '1', '提示语:栏目名称不能重复！', '1605314022', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('477', '1', '1', '提示语:修改成功！', '1605314107', '127.0.0.1', '/admin/infoclass/edit.html?id=3');
INSERT INTO `en_adminlog` VALUES ('478', '1', '1', '提示语:修改成功！', '1605314131', '127.0.0.1', '/admin/infoclass/edit.html?id=3');
INSERT INTO `en_adminlog` VALUES ('479', '0', '1', '提示语:含有子栏目，无法删除！', '1605314316', '127.0.0.1', '/admin/infoclass/del.html?id=4');
INSERT INTO `en_adminlog` VALUES ('480', '0', '1', '提示语:含有子栏目，无法删除！', '1605314320', '127.0.0.1', '/admin/infoclass/del.html?id=4');
INSERT INTO `en_adminlog` VALUES ('481', '1', '1', '提示语:删除栏目成功！', '1605314384', '127.0.0.1', '/admin/infoclass/del.html?id=4');
INSERT INTO `en_adminlog` VALUES ('482', '1', '1', '提示语:删除栏目成功！', '1605314451', '127.0.0.1', '/admin/infoclass/del.html?id=1');
INSERT INTO `en_adminlog` VALUES ('483', '1', '1', '提示语:删除栏目成功！', '1605314456', '127.0.0.1', '/admin/infoclass/del.html?id=3');
INSERT INTO `en_adminlog` VALUES ('484', '1', '1', '提示语:删除成功！', '1605314489', '127.0.0.1', '/admin/infoimg/del.html?id=5');
INSERT INTO `en_adminlog` VALUES ('485', '0', '1', '提示语:栏目名称不能重复！', '1605314628', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('486', '1', '1', '提示语:删除栏目成功！', '1605314693', '127.0.0.1', '/admin/infoclass/del.html?id=5');
INSERT INTO `en_adminlog` VALUES ('487', '1', '1', '提示语:删除栏目成功！', '1605314728', '127.0.0.1', '/admin/infoclass/del.html?id=6');
INSERT INTO `en_adminlog` VALUES ('488', '0', '1', '提示语:栏目名称不能重复！', '1605314854', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('489', '1', '1', '提示语:删除栏目成功！', '1605314860', '127.0.0.1', '/admin/infoclass/del.html?id=7');
INSERT INTO `en_adminlog` VALUES ('490', '1', '1', '提示语:删除栏目成功！', '1605314927', '127.0.0.1', '/admin/infoclass/del.html?id=8');
INSERT INTO `en_adminlog` VALUES ('491', '1', '1', '提示语:添加成功！', '1605314990', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('492', '1', '1', '提示语:添加成功！', '1605315027', '127.0.0.1', '/admin/infoimg/add.html');
INSERT INTO `en_adminlog` VALUES ('493', '1', '1', '提示语:添加成功！', '1605315099', '127.0.0.1', '/admin/infoimg/add.html');
INSERT INTO `en_adminlog` VALUES ('494', '1', '1', '提示语:添加成功！', '1605315144', '127.0.0.1', '/admin/infoimg/add.html');
INSERT INTO `en_adminlog` VALUES ('495', '1', '1', '提示语:添加成功！', '1605315173', '127.0.0.1', '/admin/infoimg/add.html');
INSERT INTO `en_adminlog` VALUES ('496', '1', '1', '提示语:添加成功！', '1605315196', '127.0.0.1', '/admin/infoimg/add.html');
INSERT INTO `en_adminlog` VALUES ('497', '1', '1', '提示语:添加成功！', '1605315236', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('498', '1', '1', '提示语:添加成功！', '1605315268', '127.0.0.1', '/admin/infoimg/add.html');
INSERT INTO `en_adminlog` VALUES ('499', '1', '1', '提示语:添加成功！', '1605315296', '127.0.0.1', '/admin/infoimg/add.html');
INSERT INTO `en_adminlog` VALUES ('500', '1', '1', '提示语:修改成功！', '1605315393', '127.0.0.1', '/admin/infoimg/edit.html?id=11');
INSERT INTO `en_adminlog` VALUES ('501', '1', '1', '提示语:修改成功！', '1605315404', '127.0.0.1', '/admin/infoimg/edit.html?id=12');
INSERT INTO `en_adminlog` VALUES ('502', '1', '1', '提示语:删除成功！', '1605315583', '127.0.0.1', '/admin/infoimg/del.html?id=12');
INSERT INTO `en_adminlog` VALUES ('503', '1', '1', '提示语:删除成功！', '1605315585', '127.0.0.1', '/admin/infoimg/del.html?id=11');
INSERT INTO `en_adminlog` VALUES ('504', '1', '1', '提示语:删除成功！', '1605315753', '127.0.0.1', '/admin/infoimg/del.html?id=10');
INSERT INTO `en_adminlog` VALUES ('505', '1', '1', '提示语:删除成功！', '1605315754', '127.0.0.1', '/admin/infoimg/del.html?id=7');
INSERT INTO `en_adminlog` VALUES ('506', '1', '1', '提示语:删除成功！', '1605315756', '127.0.0.1', '/admin/infoimg/del.html?id=8');
INSERT INTO `en_adminlog` VALUES ('507', '1', '1', '提示语:删除成功！', '1605315757', '127.0.0.1', '/admin/infoimg/del.html?id=9');
INSERT INTO `en_adminlog` VALUES ('508', '1', '1', '提示语:修改成功！', '1605315790', '127.0.0.1', '/admin/infoimg/edit.html?id=6');
INSERT INTO `en_adminlog` VALUES ('509', '1', '1', '提示语:删除成功！', '1605315804', '127.0.0.1', '/admin/infoimg/del.html?id=6');
INSERT INTO `en_adminlog` VALUES ('510', '1', '1', '提示语:添加成功！', '1605315829', '127.0.0.1', '/admin/infoimg/add.html');
INSERT INTO `en_adminlog` VALUES ('511', '1', '1', '提示语:添加成功！', '1605315912', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('512', '1', '1', '提示语:添加成功！', '1605316072', '127.0.0.1', '/admin/infoclass/add.html?parentid=11');
INSERT INTO `en_adminlog` VALUES ('513', '1', '1', '提示语:添加成功！', '1605316084', '127.0.0.1', '/admin/infoclass/add.html?parentid=11');
INSERT INTO `en_adminlog` VALUES ('514', '1', '1', '提示语:添加成功！', '1605316099', '127.0.0.1', '/admin/infoclass/add.html?parentid=11');
INSERT INTO `en_adminlog` VALUES ('515', '1', '1', '提示语:添加成功！', '1605316114', '127.0.0.1', '/admin/infoclass/add.html?parentid=11');
INSERT INTO `en_adminlog` VALUES ('516', '1', '1', '提示语:添加成功！', '1605316125', '127.0.0.1', '/admin/infoclass/add.html?parentid=11');
INSERT INTO `en_adminlog` VALUES ('517', '1', '1', '提示语:添加成功！', '1605316132', '127.0.0.1', '/admin/infoclass/add.html?parentid=11');
INSERT INTO `en_adminlog` VALUES ('518', '1', '1', '提示语:添加成功！', '1605316138', '127.0.0.1', '/admin/infoclass/add.html?parentid=11');
INSERT INTO `en_adminlog` VALUES ('519', '1', '1', '提示语:添加成功！', '1605316286', '127.0.0.1', '/admin/infolist/add.html');
INSERT INTO `en_adminlog` VALUES ('520', '1', '1', '提示语:添加成功！', '1605316295', '127.0.0.1', '/admin/infolist/add.html');
INSERT INTO `en_adminlog` VALUES ('521', '1', '1', '提示语:删除成功！', '1605316305', '127.0.0.1', '/admin/infolist/del.html?id=2');
INSERT INTO `en_adminlog` VALUES ('522', '1', '1', '提示语:删除成功！', '1605316307', '127.0.0.1', '/admin/infolist/del.html?id=1');
INSERT INTO `en_adminlog` VALUES ('523', '1', '1', '提示语:修改成功！', '1605316340', '127.0.0.1', '/admin/infoclass/edit.html?id=12');
INSERT INTO `en_adminlog` VALUES ('524', '1', '1', '提示语:添加成功！', '1605316356', '127.0.0.1', '/admin/infoclass/add.html?parentid=12');
INSERT INTO `en_adminlog` VALUES ('525', '1', '1', '提示语:修改成功！', '1605316366', '127.0.0.1', '/admin/infoclass/edit.html?id=13');
INSERT INTO `en_adminlog` VALUES ('526', '1', '1', '提示语:添加成功！', '1605316380', '127.0.0.1', '/admin/infoclass/add.html?parentid=13');
INSERT INTO `en_adminlog` VALUES ('527', '1', '1', '提示语:添加成功！', '1605316402', '127.0.0.1', '/admin/infoclass/add.html?parentid=13');
INSERT INTO `en_adminlog` VALUES ('528', '1', '1', '提示语:添加成功！', '1605316410', '127.0.0.1', '/admin/infoclass/add.html?parentid=13');
INSERT INTO `en_adminlog` VALUES ('529', '1', '1', '提示语:添加成功！', '1605316415', '127.0.0.1', '/admin/infoclass/add.html?parentid=13');
INSERT INTO `en_adminlog` VALUES ('530', '1', '1', '提示语:添加成功！', '1605316423', '127.0.0.1', '/admin/infoclass/add.html?parentid=13');
INSERT INTO `en_adminlog` VALUES ('531', '1', '1', '提示语:添加成功！', '1605316429', '127.0.0.1', '/admin/infoclass/add.html?parentid=13');
INSERT INTO `en_adminlog` VALUES ('532', '1', '1', '提示语:修改成功！', '1605316438', '127.0.0.1', '/admin/infoclass/edit.html?id=13');
INSERT INTO `en_adminlog` VALUES ('533', '1', '1', '提示语:修改成功！', '1605316455', '127.0.0.1', '/admin/infoclass/edit.html?id=14');
INSERT INTO `en_adminlog` VALUES ('534', '1', '1', '提示语:添加成功！', '1605316481', '127.0.0.1', '/admin/infoclass/add.html?parentid=14');
INSERT INTO `en_adminlog` VALUES ('535', '1', '1', '提示语:添加成功！', '1605316493', '127.0.0.1', '/admin/infoclass/add.html?parentid=14');
INSERT INTO `en_adminlog` VALUES ('536', '1', '1', '提示语:添加成功！', '1605316505', '127.0.0.1', '/admin/infoclass/add.html?parentid=14');
INSERT INTO `en_adminlog` VALUES ('537', '1', '1', '提示语:添加成功！', '1605316512', '127.0.0.1', '/admin/infoclass/add.html?parentid=14');
INSERT INTO `en_adminlog` VALUES ('538', '1', '1', '提示语:修改成功！', '1605316525', '127.0.0.1', '/admin/infoclass/edit.html?id=15');
INSERT INTO `en_adminlog` VALUES ('539', '1', '1', '提示语:添加成功！', '1605316536', '127.0.0.1', '/admin/infoclass/add.html?parentid=15');
INSERT INTO `en_adminlog` VALUES ('540', '1', '1', '提示语:添加成功！', '1605316544', '127.0.0.1', '/admin/infoclass/add.html?parentid=15');
INSERT INTO `en_adminlog` VALUES ('541', '1', '1', '提示语:添加成功！', '1605316552', '127.0.0.1', '/admin/infoclass/add.html?parentid=15');
INSERT INTO `en_adminlog` VALUES ('542', '1', '1', '提示语:添加成功！', '1605316560', '127.0.0.1', '/admin/infoclass/add.html?parentid=15');
INSERT INTO `en_adminlog` VALUES ('543', '1', '1', '提示语:添加成功！', '1605316567', '127.0.0.1', '/admin/infoclass/add.html?parentid=15');
INSERT INTO `en_adminlog` VALUES ('544', '1', '1', '提示语:添加成功！', '1605316574', '127.0.0.1', '/admin/infoclass/add.html?parentid=15');
INSERT INTO `en_adminlog` VALUES ('545', '1', '1', '提示语:修改成功！', '1605316587', '127.0.0.1', '/admin/infoclass/edit.html?id=16');
INSERT INTO `en_adminlog` VALUES ('546', '1', '1', '提示语:添加成功！', '1605316599', '127.0.0.1', '/admin/infoclass/add.html?parentid=16');
INSERT INTO `en_adminlog` VALUES ('547', '1', '1', '提示语:添加成功！', '1605316607', '127.0.0.1', '/admin/infoclass/add.html?parentid=16');
INSERT INTO `en_adminlog` VALUES ('548', '1', '1', '提示语:添加成功！', '1605316614', '127.0.0.1', '/admin/infoclass/add.html?parentid=16');
INSERT INTO `en_adminlog` VALUES ('549', '1', '1', '提示语:添加成功！', '1605316620', '127.0.0.1', '/admin/infoclass/add.html?parentid=16');
INSERT INTO `en_adminlog` VALUES ('550', '1', '1', '提示语:添加成功！', '1605316627', '127.0.0.1', '/admin/infoclass/add.html?parentid=16');
INSERT INTO `en_adminlog` VALUES ('551', '1', '1', '提示语:修改成功！', '1605316634', '127.0.0.1', '/admin/infoclass/edit.html?id=17');
INSERT INTO `en_adminlog` VALUES ('552', '1', '1', '提示语:添加成功！', '1605316644', '127.0.0.1', '/admin/infoclass/add.html?parentid=17');
INSERT INTO `en_adminlog` VALUES ('553', '1', '1', '提示语:修改成功！', '1605316654', '127.0.0.1', '/admin/infoclass/edit.html?id=18');
INSERT INTO `en_adminlog` VALUES ('554', '1', '1', '提示语:修改成功！', '1605319898', '127.0.0.1', '/admin/infoclass/edit.html?id=13');
INSERT INTO `en_adminlog` VALUES ('555', '1', '1', '提示语:添加成功！', '1605322014', '127.0.0.1', '/admin/infolist/add.html');
INSERT INTO `en_adminlog` VALUES ('556', '1', '1', '提示语:添加成功！', '1605322052', '127.0.0.1', '/admin/infolist/add.html');
INSERT INTO `en_adminlog` VALUES ('557', '1', '1', '提示语:添加成功！', '1605322086', '127.0.0.1', '/admin/infolist/add.html');
INSERT INTO `en_adminlog` VALUES ('558', '1', '1', '提示语:修改成功！', '1605322325', '127.0.0.1', '/admin/infoclass/edit.html?id=26');
INSERT INTO `en_adminlog` VALUES ('559', '1', '1', '提示语:修改成功！', '1605325008', '127.0.0.1', '/admin/info/edit.html?id=7');
INSERT INTO `en_adminlog` VALUES ('560', '0', '1', '提示语:该页面不存在！', '1605325012', '127.0.0.1', '/admin/info/images/1-16012921250X23-lp.png');
INSERT INTO `en_adminlog` VALUES ('561', '1', '1', '提示语:修改成功！', '1605325050', '127.0.0.1', '/admin/info/edit.html?id=7');
INSERT INTO `en_adminlog` VALUES ('562', '0', '0', '提示语:请先登陆', '1605417609', '127.0.0.1', '/admin');
INSERT INTO `en_adminlog` VALUES ('563', '1', '1', '提示语:恭喜您，登陆成功', '1605417615', '127.0.0.1', '/admin/index/login.html');
INSERT INTO `en_adminlog` VALUES ('564', '1', '1', '提示语:操作成功！', '1605419522', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('565', '1', '1', '提示语:操作成功！', '1605419522', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('566', '1', '1', '提示语:操作成功！', '1605419523', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('567', '1', '1', '提示语:操作成功！', '1605419523', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('568', '1', '1', '提示语:操作成功！', '1605419526', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('569', '1', '1', '提示语:操作成功！', '1605419526', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('570', '1', '1', '提示语:操作成功！', '1605419526', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('571', '1', '1', '提示语:操作成功！', '1605419527', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('572', '1', '1', '提示语:操作成功！', '1605419527', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('573', '1', '1', '提示语:操作成功！', '1605419530', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('574', '1', '1', '提示语:操作成功！', '1605419530', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('575', '1', '1', '提示语:操作成功！', '1605419530', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('576', '1', '1', '提示语:操作成功！', '1605419531', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('577', '1', '1', '提示语:操作成功！', '1605419531', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('578', '1', '1', '提示语:添加成功！', '1605419555', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('579', '1', '1', '提示语:操作成功！', '1605419562', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('580', '1', '1', '提示语:添加成功！', '1605419573', '127.0.0.1', '/admin/infoclass/add.html?parentid=42');
INSERT INTO `en_adminlog` VALUES ('581', '1', '1', '提示语:修改成功！', '1605419600', '127.0.0.1', '/admin/info/edit.html?id=10');
INSERT INTO `en_adminlog` VALUES ('582', '0', '1', '提示语:该页面不存在！', '1605419604', '127.0.0.1', '/admin/info/images/email.gif');
INSERT INTO `en_adminlog` VALUES ('583', '1', '1', '提示语:操作成功！', '1605420538', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('584', '1', '1', '提示语:添加成功！', '1605420550', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('585', '1', '1', '提示语:修改成功！', '1605420562', '127.0.0.1', '/admin/info/edit.html?id=11');
INSERT INTO `en_adminlog` VALUES ('586', '0', '1', '提示语:该页面不存在！', '1605420590', '127.0.0.1', '/admin/info/__STATIC__/index/images/beian.png');
INSERT INTO `en_adminlog` VALUES ('587', '0', '1', '提示语:该页面不存在！', '1605420629', '127.0.0.1', '/admin/info/__STATIC__/index/images/beian.png');
INSERT INTO `en_adminlog` VALUES ('588', '1', '1', '提示语:清理缓存', '1605420634', '127.0.0.1', '/admin/index/cache.html?type=all&_=1605417617840');
INSERT INTO `en_adminlog` VALUES ('589', '1', '1', '提示语:操作成功！', '1605423589', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('590', '1', '1', '提示语:操作成功！', '1605423614', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('591', '1', '1', '提示语:配置添加成功~', '1605425688', '127.0.0.1', '/admin/config/add.html');
INSERT INTO `en_adminlog` VALUES ('592', '1', '1', '提示语:设置更新成功', '1605425699', '127.0.0.1', '/admin/config/setting/menuid/13.html');
INSERT INTO `en_adminlog` VALUES ('593', '1', '1', '提示语:添加成功！', '1605426094', '127.0.0.1', '/admin/infoclass/add.html');
INSERT INTO `en_adminlog` VALUES ('594', '1', '1', '提示语:操作成功！', '1605426100', '127.0.0.1', '/admin/infoclass/multi.html');
INSERT INTO `en_adminlog` VALUES ('595', '1', '1', '提示语:删除栏目成功！', '1605426123', '127.0.0.1', '/admin/infoclass/del.html?id=9');
INSERT INTO `en_adminlog` VALUES ('596', '1', '1', '提示语:删除栏目成功！', '1605426124', '127.0.0.1', '/admin/infoclass/del.html?id=10');
INSERT INTO `en_adminlog` VALUES ('597', '1', '1', '提示语:添加成功！', '1605426169', '127.0.0.1', '/admin/infoimg/add.html');
INSERT INTO `en_adminlog` VALUES ('598', '1', '1', '提示语:添加成功！', '1605426195', '127.0.0.1', '/admin/infoimg/add.html');
INSERT INTO `en_adminlog` VALUES ('599', '1', '1', '提示语:添加成功！', '1605426218', '127.0.0.1', '/admin/infoimg/add.html');
INSERT INTO `en_adminlog` VALUES ('600', '1', '1', '提示语:添加成功！', '1605426242', '127.0.0.1', '/admin/infoimg/add.html');

-- ----------------------------
-- Table structure for en_attachment
-- ----------------------------
DROP TABLE IF EXISTS `en_attachment`;
CREATE TABLE `en_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `aid` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '管理员id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` char(50) NOT NULL DEFAULT '' COMMENT '文件名',
  `module` char(15) NOT NULL DEFAULT '' COMMENT '模块名，由哪个模块上传的',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '文件链接',
  `mime` varchar(100) NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `ext` char(4) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT 'sha1 散列值',
  `driver` varchar(16) NOT NULL DEFAULT 'local' COMMENT '上传驱动',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorders` int(5) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of en_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for en_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `en_auth_group`;
CREATE TABLE `en_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `parentid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `module` varchar(20) NOT NULL COMMENT '用户组所属模块',
  `type` tinyint(4) NOT NULL COMMENT '组类型',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `description` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='权限组表';

-- ----------------------------
-- Records of en_auth_group
-- ----------------------------
INSERT INTO `en_auth_group` VALUES ('1', '0', 'admin', '1', '超级管理员', '拥有所有权限', '*', '1');

-- ----------------------------
-- Table structure for en_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `en_auth_rule`;
CREATE TABLE `en_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1-url;2-主菜单',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='规则表';

-- ----------------------------
-- Records of en_auth_rule
-- ----------------------------
INSERT INTO `en_auth_rule` VALUES ('1', 'admin', '2', 'admin/setting/index', '设置', '', '1');
INSERT INTO `en_auth_rule` VALUES ('2', 'admin', '1', 'admin/config/index1', '系统配置', '', '1');
INSERT INTO `en_auth_rule` VALUES ('3', 'admin', '1', 'admin/config/index', '配置管理', '', '1');
INSERT INTO `en_auth_rule` VALUES ('4', 'admin', '1', 'admin/adminlog/deletelog', '删除日志', '', '1');
INSERT INTO `en_auth_rule` VALUES ('5', 'admin', '1', 'admin/config/setting', '网站设置', '', '1');
INSERT INTO `en_auth_rule` VALUES ('6', 'admin', '1', 'admin/menu/index', '菜单管理', '', '1');
INSERT INTO `en_auth_rule` VALUES ('7', 'admin', '1', 'admin/manager/index1', '权限管理', '', '1');
INSERT INTO `en_auth_rule` VALUES ('8', 'admin', '1', 'admin/manager/index', '管理员管理', '', '1');
INSERT INTO `en_auth_rule` VALUES ('9', 'admin', '1', 'admin/authManager/index', '角色管理', '', '1');
INSERT INTO `en_auth_rule` VALUES ('10', 'admin', '1', 'admin/manager/add', '添加管理员', '', '1');
INSERT INTO `en_auth_rule` VALUES ('11', 'admin', '1', 'admin/manager/edit', '编辑管理员', '', '1');
INSERT INTO `en_auth_rule` VALUES ('12', 'admin', '1', 'admin/adminlog/index', '管理日志', '', '1');
INSERT INTO `en_auth_rule` VALUES ('13', 'admin', '1', 'admin/manager/del', '删除管理员', '', '1');
INSERT INTO `en_auth_rule` VALUES ('14', 'admin', '1', 'admin/authManager/createGroup', '添加角色', '', '1');
INSERT INTO `en_auth_rule` VALUES ('15', 'admin', '1', 'admin/config/multi', '批量更新', '', '1');
INSERT INTO `en_auth_rule` VALUES ('16', 'admin', '1', 'admin/menu/add', '新增菜单', '', '1');
INSERT INTO `en_auth_rule` VALUES ('17', 'admin', '1', 'admin/menu/edit', '编辑菜单', '', '1');
INSERT INTO `en_auth_rule` VALUES ('18', 'admin', '1', 'admin/menu/del', '删除菜单', '', '1');
INSERT INTO `en_auth_rule` VALUES ('19', 'admin', '1', 'admin/menu/multi', '批量更新', '', '1');
INSERT INTO `en_auth_rule` VALUES ('20', 'attachment', '1', 'attachment/attachments/upload', '附件上传', '', '1');
INSERT INTO `en_auth_rule` VALUES ('21', 'attachment', '1', 'attachment/attachments/del', '附件删除', '', '1');
INSERT INTO `en_auth_rule` VALUES ('22', 'attachment', '1', 'attachment/ueditor/run', '编辑器附件', '', '1');
INSERT INTO `en_auth_rule` VALUES ('23', 'attachment', '1', 'attachment/attachments/showFileLis', '图片列表', '', '1');
INSERT INTO `en_auth_rule` VALUES ('24', 'attachment', '1', 'attachment/attachments/getUrlFile', '图片本地化', '', '1');
INSERT INTO `en_auth_rule` VALUES ('25', 'attachment', '1', 'attachment/attachments/select', '图片选择', '', '1');
INSERT INTO `en_auth_rule` VALUES ('26', 'admin', '1', 'admin/authManager/editGroup', '编辑角色', '', '1');
INSERT INTO `en_auth_rule` VALUES ('27', 'admin', '1', 'admin/authManager/deleteGroup', '删除角色', '', '1');
INSERT INTO `en_auth_rule` VALUES ('28', 'admin', '1', 'admin/authManager/access', '访问授权', '', '1');
INSERT INTO `en_auth_rule` VALUES ('29', 'admin', '1', 'admin/authManager/writeGroup', '角色授权', '', '1');
INSERT INTO `en_auth_rule` VALUES ('30', 'admin', '1', 'admin/admin/admin', '模块扩展管理', '', '1');
INSERT INTO `en_auth_rule` VALUES ('31', 'admin', '1', 'admin/Infoclass/index', '栏目管理', '', '1');
INSERT INTO `en_auth_rule` VALUES ('32', 'admin', '1', 'admin/info/index', '单页信息管理', '', '1');
INSERT INTO `en_auth_rule` VALUES ('33', 'admin', '1', 'admin/Infolist/index', '列表信息管理', '', '1');
INSERT INTO `en_auth_rule` VALUES ('34', 'admin', '1', 'admin/Infoimg/index', '图片信息管理', '', '1');
INSERT INTO `en_auth_rule` VALUES ('35', 'admin', '1', 'admin/Soft/index', '软件下载管理', '', '1');
INSERT INTO `en_auth_rule` VALUES ('36', 'attachment', '1', 'attachment/attachments/index', '附件管理', '', '1');
INSERT INTO `en_auth_rule` VALUES ('37', 'admin', '1', 'admin/config/add', '新增配置', '', '1');
INSERT INTO `en_auth_rule` VALUES ('38', 'admin', '2', 'admin/admin/admin', 'cms管理', '', '1');
INSERT INTO `en_auth_rule` VALUES ('39', 'admin', '1', 'admin/Member/index', '用户管理', '', '1');
INSERT INTO `en_auth_rule` VALUES ('40', 'admin', '1', 'admin/config/edit', '编辑配置', '', '1');
INSERT INTO `en_auth_rule` VALUES ('41', 'admin', '1', 'admin/Weblink/index', '友情链接管理', '', '1');
INSERT INTO `en_auth_rule` VALUES ('42', 'admin', '1', 'admin/config/del', '删除配置', '', '1');
INSERT INTO `en_auth_rule` VALUES ('43', 'admin', '1', 'admin/message/index', '留言模块管理', '', '1');

-- ----------------------------
-- Table structure for en_cache
-- ----------------------------
DROP TABLE IF EXISTS `en_cache`;
CREATE TABLE `en_cache` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `key` char(100) NOT NULL DEFAULT '' COMMENT '缓存KEY值',
  `name` char(100) NOT NULL DEFAULT '' COMMENT '名称',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模块名称',
  `model` char(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `action` char(30) NOT NULL DEFAULT '' COMMENT '方法名',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  PRIMARY KEY (`id`),
  KEY `ckey` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='缓存列队表';

-- ----------------------------
-- Records of en_cache
-- ----------------------------
INSERT INTO `en_cache` VALUES ('1', 'Config', '网站配置', 'admin', 'Config', 'config_cache', '1');
INSERT INTO `en_cache` VALUES ('2', 'Menu', '后台菜单', 'admin', 'Menu', 'menu_cache', '1');
INSERT INTO `en_cache` VALUES ('3', 'Module', '可用模块列表', 'admin', 'Module', 'module_cache', '1');
INSERT INTO `en_cache` VALUES ('4', 'Model', '模型列表', 'admin', 'Models', 'model_cache', '1');
INSERT INTO `en_cache` VALUES ('5', 'ModelField', '模型字段', 'admin', 'ModelField', 'model_field_cache', '1');

-- ----------------------------
-- Table structure for en_config
-- ----------------------------
DROP TABLE IF EXISTS `en_config`;
CREATE TABLE `en_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '配置类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置说明',
  `group` varchar(32) NOT NULL DEFAULT '' COMMENT '配置分组',
  `options` varchar(255) NOT NULL DEFAULT '' COMMENT '配置项',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '配置说明',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `value` text COMMENT '配置值',
  `listorder` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`),
  KEY `type` (`type`),
  KEY `group` (`group`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='网站配置';

-- ----------------------------
-- Records of en_config
-- ----------------------------
INSERT INTO `en_config` VALUES ('1', 'web_site_icp', 'text', '备案信息', 'base', '', '', '1551244923', '1551244971', '1', '', '1');
INSERT INTO `en_config` VALUES ('2', 'web_site_statistics', 'textarea', '站点代码', 'base', '', '', '1551244957', '1551244957', '1', '', '100');
INSERT INTO `en_config` VALUES ('3', 'mail_type', 'radio', '邮件发送模式', 'email', '1:SMTP\r\n2:Mail', '', '1553652833', '1553652915', '1', '1', '1');
INSERT INTO `en_config` VALUES ('4', 'mail_smtp_host', 'text', '邮件服务器', 'email', '', '错误的配置发送邮件会导致服务器超时', '1553652889', '1553652917', '1', 'smtp.163.com', '2');
INSERT INTO `en_config` VALUES ('5', 'mail_smtp_port', 'text', '邮件发送端口', 'email', '', '不加密默认25,SSL默认465,TLS默认587', '1553653165', '1553653292', '1', '465', '3');
INSERT INTO `en_config` VALUES ('6', 'mail_auth', 'radio', '身份认证', 'email', '0:关闭\r\n1:开启', '', '1553658375', '1553658392', '1', '1', '4');
INSERT INTO `en_config` VALUES ('7', 'mail_smtp_user', 'text', '用户名', 'email', '', '', '1553653267', '1553658393', '1', '', '5');
INSERT INTO `en_config` VALUES ('8', 'mail_smtp_pass', 'text', '密码', 'email', '', '', '1553653344', '1553658394', '1', '', '6');
INSERT INTO `en_config` VALUES ('9', 'mail_verify_type', 'radio', '验证方式', 'email', '1:TLS\r\n2:SSL', '', '1553653426', '1553658395', '1', '2', '7');
INSERT INTO `en_config` VALUES ('10', 'mail_from', 'text', '发件人邮箱', 'email', '', '', '1553653500', '1553658397', '1', '', '8');
INSERT INTO `en_config` VALUES ('11', 'config_group', 'array', '配置分组', 'system', '', '', '1494408414', '1494408414', '1', '{\"base\":\"基础\",\"email\":\"邮箱\",\"system\":\"系统\",\"upload\":\"上传\",\"develop\":\"开发\"}', '0');
INSERT INTO `en_config` VALUES ('12', 'theme', 'text', '主题风格', 'system', '', '', '1541752781', '1541756888', '1', 'default', '1');
INSERT INTO `en_config` VALUES ('13', 'admin_forbid_ip', 'textarea', '后台禁止访问IP', 'system', '', '匹配IP段用\"*\"占位，如192.168.*.*，多个IP地址请用英文逗号\",\"分割', '1551244957', '1551244957', '1', '', '2');
INSERT INTO `en_config` VALUES ('14', 'upload_image_size', 'text', '图片上传大小限制', 'upload', '', '0为不限制大小，单位：kb', '1540457656', '1552436075', '1', '0', '2');
INSERT INTO `en_config` VALUES ('15', 'upload_image_ext', 'text', '允许上传的图片后缀', 'upload', '', '多个后缀用逗号隔开，不填写则不限制类型', '1540457657', '1552436074', '1', 'gif,jpg,jpeg,bmp,png', '1');
INSERT INTO `en_config` VALUES ('16', 'upload_file_size', 'text', '文件上传大小限制', 'upload', '', '0为不限制大小，单位：kb', '1540457658', '1552436078', '1', '0', '3');
INSERT INTO `en_config` VALUES ('17', 'upload_file_ext', 'text', '允许上传的文件后缀', 'upload', '', '多个后缀用逗号隔开，不填写则不限制类型', '1540457659', '1552436080', '1', 'doc,docx,xls,xlsx,ppt,pptx,pdf,wps,txt,rar,zip,gz,bz2,7z', '4');
INSERT INTO `en_config` VALUES ('18', 'upload_driver', 'radio', '上传驱动', 'upload', 'local:本地', '图片或文件上传驱动', '1541752781', '1552436085', '1', 'local', '9');
INSERT INTO `en_config` VALUES ('19', 'upload_thumb_water', 'switch', '添加水印', 'upload', '', '', '1552435063', '1552436080', '1', '0', '5');
INSERT INTO `en_config` VALUES ('20', 'upload_thumb_water_pic', 'image', '水印图片', 'upload', '', '只有开启水印功能才生效', '1552435183', '1552436081', '1', '', '6');
INSERT INTO `en_config` VALUES ('21', 'upload_thumb_water_position', 'radio', '水印位置', 'upload', '1:左上角\r\n2:上居中\r\n3:右上角\r\n4:左居中\r\n5:居中\r\n6:右居中\r\n7:左下角\r\n8:下居中\r\n9:右下角', '只有开启水印功能才生效', '1552435257', '1552436082', '1', '9', '7');
INSERT INTO `en_config` VALUES ('22', 'upload_thumb_water_alpha', 'text', '水印透明度', 'upload', '', '请输入0~100之间的数字，数字越小，透明度越高', '1552435299', '1552436083', '1', '50', '8');
INSERT INTO `en_config` VALUES ('23', 'web_xin_title', 'text', '网站标题', 'base', '', '', '1605425688', '1605425688', '1', '齐齐哈尔信息工程学校', '100');

-- ----------------------------
-- Table structure for en_ems
-- ----------------------------
DROP TABLE IF EXISTS `en_ems`;
CREATE TABLE `en_ems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '操作IP',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮箱验证码表';

-- ----------------------------
-- Records of en_ems
-- ----------------------------

-- ----------------------------
-- Table structure for en_field_type
-- ----------------------------
DROP TABLE IF EXISTS `en_field_type`;
CREATE TABLE `en_field_type` (
  `name` varchar(32) NOT NULL COMMENT '字段类型',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '中文类型名',
  `listorder` int(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `default_define` varchar(128) NOT NULL DEFAULT '' COMMENT '默认定义',
  `ifoption` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要设置选项',
  `ifstring` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否自由字符',
  `vrule` varchar(256) NOT NULL DEFAULT '' COMMENT '验证规则',
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='字段类型表';

-- ----------------------------
-- Records of en_field_type
-- ----------------------------
INSERT INTO `en_field_type` VALUES ('text', '输入框', '1', 'varchar(255) NOT NULL DEFAULT \'\'', '0', '1', '');
INSERT INTO `en_field_type` VALUES ('checkbox', '复选框', '2', 'varchar(32) NOT NULL DEFAULT \'\'', '1', '0', '');
INSERT INTO `en_field_type` VALUES ('textarea', '多行文本', '3', 'varchar(255) NOT NULL DEFAULT \'\'', '0', '1', '');
INSERT INTO `en_field_type` VALUES ('radio', '单选按钮', '4', 'char(10) NOT NULL DEFAULT \'\'', '1', '0', '');
INSERT INTO `en_field_type` VALUES ('switch', '开关', '5', 'tinyint(2) UNSIGNED NOT NULL DEFAULT \'0\'', '0', '0', 'isBool');
INSERT INTO `en_field_type` VALUES ('array', '数组', '6', 'varchar(512) NOT NULL DEFAULT \'\'', '0', '0', '');
INSERT INTO `en_field_type` VALUES ('select', '下拉框', '7', 'char(10) NOT NULL DEFAULT \'\'', '1', '0', '');
INSERT INTO `en_field_type` VALUES ('selects', '下拉框(多选)', '8', 'varchar(32) NOT NULL DEFAULT \'\'', '1', '0', '');
INSERT INTO `en_field_type` VALUES ('selectpage', '高级下拉框', '9', 'varchar(32) NOT NULL DEFAULT \'\'', '1', '0', '');
INSERT INTO `en_field_type` VALUES ('image', '单张图', '10', 'int(5) UNSIGNED NOT NULL DEFAULT \'0\'', '0', '0', 'isNumber');
INSERT INTO `en_field_type` VALUES ('images', '多张图', '11', 'varchar(256) NOT NULL DEFAULT \'\'', '0', '0', '');
INSERT INTO `en_field_type` VALUES ('tags', '标签', '12', 'varchar(255) NOT NULL DEFAULT \'\'', '0', '1', '');
INSERT INTO `en_field_type` VALUES ('number', '数字', '13', 'int(10) UNSIGNED NOT NULL DEFAULT \'0\'', '0', '0', 'isNumber');
INSERT INTO `en_field_type` VALUES ('datetime', '日期和时间', '14', 'int(10) UNSIGNED NOT NULL DEFAULT \'0\'', '0', '0', '');
INSERT INTO `en_field_type` VALUES ('Ueditor', '百度编辑器', '15', 'text NOT NULL', '0', '1', '');
INSERT INTO `en_field_type` VALUES ('markdown', 'markdown编辑器', '16', 'text NOT NULL', '0', '1', '');
INSERT INTO `en_field_type` VALUES ('files', '多文件', '17', 'varchar(255) NOT NULL DEFAULT \'\'', '0', '0', '');
INSERT INTO `en_field_type` VALUES ('file', '单文件', '18', 'int(5) UNSIGNED NOT NULL DEFAULT \'0\'', '0', '0', 'isNumber');
INSERT INTO `en_field_type` VALUES ('color', '颜色值', '19', 'varchar(7) NOT NULL DEFAULT \'\'', '0', '0', '');

-- ----------------------------
-- Table structure for en_hooks
-- ----------------------------
DROP TABLE IF EXISTS `en_hooks`;
CREATE TABLE `en_hooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `description` text NOT NULL COMMENT '描述',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '类型',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `addons` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子挂载的插件 ''，''分割',
  `modules` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子挂载的模块 ''，''分割',
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否系统',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='插件和模块钩子';

-- ----------------------------
-- Records of en_hooks
-- ----------------------------
INSERT INTO `en_hooks` VALUES ('1', 'app_init', '应用初始化标签位', '2', '1509174020', '', '', '1', '1');
INSERT INTO `en_hooks` VALUES ('2', 'page_header', '页面header钩子，一般用于加载插件CSS文件和代码', '1', '1509174020', '', '', '1', '1');
INSERT INTO `en_hooks` VALUES ('3', 'page_footer', '页面footer钩子，一般用于加载插件JS文件和JS代码', '1', '1509174020', '', '', '1', '1');
INSERT INTO `en_hooks` VALUES ('4', 'sms_get', '短信获取行为', '2', '1509174020', '', '', '1', '1');
INSERT INTO `en_hooks` VALUES ('5', 'sms_send', '短信发送行为', '2', '1509174020', '', '', '1', '1');
INSERT INTO `en_hooks` VALUES ('6', 'sms_notice', '短信发送通知', '2', '1509174020', '', '', '1', '1');
INSERT INTO `en_hooks` VALUES ('7', 'sms_check', '检测短信验证是否正确', '2', '1509174020', '', '', '1', '1');
INSERT INTO `en_hooks` VALUES ('8', 'sms_flush', '清空短信验证行为', '2', '1509174020', '', '', '1', '1');
INSERT INTO `en_hooks` VALUES ('9', 'ems_get', '邮件获取行为', '2', '1509174020', '', '', '1', '1');
INSERT INTO `en_hooks` VALUES ('10', 'ems_send', '邮件发送行为', '2', '1509174020', '', '', '1', '1');
INSERT INTO `en_hooks` VALUES ('11', 'ems_notice', '邮件发送通知', '2', '1509174020', '', '', '1', '1');
INSERT INTO `en_hooks` VALUES ('12', 'ems_check', '检测邮件验证是否正确', '2', '1509174020', '', '', '1', '1');
INSERT INTO `en_hooks` VALUES ('13', 'ems_flush', '清空邮件验证行为', '2', '1509174020', '', '', '1', '1');
INSERT INTO `en_hooks` VALUES ('14', 'upload_after', '第三方附件上传钩子', '2', '1509174020', '', '', '1', '1');
INSERT INTO `en_hooks` VALUES ('15', 'upload_delete', '第三方附件删除钩子', '2', '1509174020', '', '', '1', '1');
INSERT INTO `en_hooks` VALUES ('16', 'sync_login', '第三方登陆位置', '2', '1509174020', '', '', '1', '1');
INSERT INTO `en_hooks` VALUES ('17', 'user_config', '用户配置页面钩子', '2', '1509174020', '', '', '1', '1');
INSERT INTO `en_hooks` VALUES ('18', 'baidupush', '百度熊掌号+百度站长推送', '2', '1509174020', '', '', '1', '1');
INSERT INTO `en_hooks` VALUES ('19', 'markdown', 'markdown编辑器', '2', '1509174020', '', '', '1', '1');

-- ----------------------------
-- Table structure for en_info
-- ----------------------------
DROP TABLE IF EXISTS `en_info`;
CREATE TABLE `en_info` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '单页id',
  `classid` smallint(5) unsigned DEFAULT NULL COMMENT '所属栏目id',
  `mainid` smallint(5) DEFAULT '-1' COMMENT '二级类别id',
  `picurl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '缩略图片',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '内容',
  `posttime` int(10) unsigned DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_info
-- ----------------------------

-- ----------------------------
-- Table structure for en_infoclass
-- ----------------------------
DROP TABLE IF EXISTS `en_infoclass`;
CREATE TABLE `en_infoclass` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目id',
  `siteid` smallint(5) unsigned DEFAULT '1' COMMENT '站点id',
  `parentid` smallint(5) unsigned DEFAULT NULL COMMENT '栏目上级id',
  `parentstr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '栏目上级id字符串',
  `infotype` tinyint(1) unsigned DEFAULT NULL COMMENT '栏目类型',
  `classname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '栏目名称',
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '跳转链接',
  `widths` varchar(11) DEFAULT NULL,
  `heights` varchar(11) DEFAULT NULL,
  `picurl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '缩略图片',
  `picwidth` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '缩略图宽度',
  `picheight` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '缩略图高度',
  `seotitle` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'SEO标题',
  `keywords` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  `orderid` smallint(5) unsigned DEFAULT NULL COMMENT '排列排序',
  `checkinfo` enum('true','false') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_infoclass
-- ----------------------------

-- ----------------------------
-- Table structure for en_infoimg
-- ----------------------------
DROP TABLE IF EXISTS `en_infoimg`;
CREATE TABLE `en_infoimg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '图片信息id',
  `siteid` smallint(5) unsigned DEFAULT '1' COMMENT '站点id',
  `classid` smallint(5) unsigned DEFAULT NULL COMMENT '所属栏目id',
  `parentid` smallint(5) unsigned DEFAULT NULL COMMENT '所属栏目上级id',
  `parentstr` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所属栏目上级id字符串',
  `mainid` smallint(5) DEFAULT NULL COMMENT '二级类别id',
  `mainpid` smallint(5) DEFAULT NULL COMMENT '二级类别父id',
  `mainpstr` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '二级累呗父id字符串',
  `title` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `colorval` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字体颜色',
  `boldval` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字体加粗',
  `flag` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '属性',
  `source` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文章来源',
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '作者编辑',
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '跳转链接',
  `keywords` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '摘要',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '详细内容',
  `widths` varchar(11) DEFAULT NULL,
  `heights` varchar(11) DEFAULT NULL,
  `picurl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '缩略图片',
  `picarr` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '组图',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '点击次数',
  `orderid` int(10) unsigned DEFAULT NULL COMMENT '排列排序',
  `posttime` int(10) DEFAULT NULL COMMENT '更新时间',
  `checkinfo` enum('true','false') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核状态',
  `delstate` set('true') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '删除状态',
  `deltime` int(10) unsigned DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_infoimg
-- ----------------------------

-- ----------------------------
-- Table structure for en_infolist
-- ----------------------------
DROP TABLE IF EXISTS `en_infolist`;
CREATE TABLE `en_infolist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '列表信息id',
  `siteid` smallint(5) unsigned DEFAULT '1' COMMENT '站点id',
  `classid` smallint(5) unsigned DEFAULT NULL COMMENT '所属栏目id',
  `parentid` smallint(5) unsigned DEFAULT NULL COMMENT '所属栏目上级id',
  `parentstr` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所属栏目上级id字符串',
  `mainid` smallint(5) DEFAULT NULL COMMENT '二级类别id',
  `mainpid` smallint(5) DEFAULT NULL COMMENT '二级类别上级id',
  `mainpstr` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '二级类别上级id字符串',
  `title` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `colorval` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字体颜色',
  `boldval` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字体加粗',
  `flag` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '属性',
  `source` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文章来源',
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '作者编辑',
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '跳转链接',
  `keywords` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '摘要',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '详细内容',
  `widths` varchar(11) DEFAULT NULL,
  `heights` varchar(11) DEFAULT NULL,
  `picurl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '缩略图片',
  `picarr` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '组图',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '点击次数',
  `orderid` int(10) unsigned DEFAULT NULL COMMENT '排列排序',
  `posttime` int(10) DEFAULT NULL COMMENT '更新时间',
  `checkinfo` enum('true','false') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核状态',
  `delstate` set('true') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '删除状态',
  `deltime` int(10) unsigned DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_infolist
-- ----------------------------

-- ----------------------------
-- Table structure for en_loginif
-- ----------------------------
DROP TABLE IF EXISTS `en_loginif`;
CREATE TABLE `en_loginif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_loginif
-- ----------------------------

-- ----------------------------
-- Table structure for en_member
-- ----------------------------
DROP TABLE IF EXISTS `en_member`;
CREATE TABLE `en_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `question` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '提问',
  `answer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '回答',
  `cnname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `enname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '英文名',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `sex` tinyint(1) unsigned DEFAULT NULL COMMENT '性别',
  `birth` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生日',
  `astro` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '星座',
  `cardtype` tinyint(2) DEFAULT NULL COMMENT '证件类型',
  `cardnum` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '证件号码',
  `intro` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '个人说明',
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电子邮件',
  `qqnum` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'QQ号码',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机',
  `enteruser` set('1') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '认证',
  `expval` int(10) DEFAULT NULL COMMENT '经验值',
  `integral` int(10) unsigned DEFAULT NULL COMMENT '积分',
  `regtime` int(10) unsigned DEFAULT NULL COMMENT '注册时间',
  `regip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '注册IP',
  `logintime` int(10) unsigned DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '登录IP',
  `qqid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '绑定QQ',
  `weiboid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '绑定微博',
  `widths` varchar(11) DEFAULT NULL,
  `heights` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_member
-- ----------------------------
INSERT INTO `en_member` VALUES ('4', 'user', '855da6104bd02536b392f6c3b5cf4268', '0', '', '123', '', '\\public\\uploads\\image\\20201019\\b647bd6232586d8fe3f3242a065a1594.jpg', '0', '2020-10-19', '2', '0', '123', '', '', '', '', '1', '1000', '12', '1603073605', '127.0.0.1', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for en_menu
-- ----------------------------
DROP TABLE IF EXISTS `en_menu`;
CREATE TABLE `en_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `app` char(20) NOT NULL DEFAULT '' COMMENT '应用标识',
  `controller` char(20) NOT NULL DEFAULT '' COMMENT '控制器标识',
  `action` char(20) NOT NULL DEFAULT '' COMMENT '方法标识',
  `parameter` char(255) NOT NULL DEFAULT '' COMMENT '附加参数',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `tip` varchar(255) NOT NULL DEFAULT '' COMMENT '提示',
  `is_dev` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否开发者可见',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `pid` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of en_menu
-- ----------------------------
INSERT INTO `en_menu` VALUES ('3', '设置', 'icon-setup', '0', 'admin', 'setting', 'index', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('61', '软件下载管理', 'icon-tiaoshi', '56', 'admin', 'Soft', 'index', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('55', 'cms管理', 'icon-shiyongwendang', '0', 'admin', 'admin', 'admin', '', '1', '', '0', '1');
INSERT INTO `en_menu` VALUES ('10', '系统配置', 'icon-zidongxiufu', '3', 'admin', 'config', 'index1', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('11', '配置管理', 'icon-apartment', '10', 'admin', 'config', 'index', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('12', '删除日志', '', '20', 'admin', 'adminlog', 'deletelog', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('13', '网站设置', 'icon-setup', '10', 'admin', 'config', 'setting', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('14', '菜单管理', 'icon-other', '10', 'admin', 'menu', 'index', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('15', '权限管理', 'icon-guanliyuan', '3', 'admin', 'manager', 'index1', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('16', '管理员管理', 'icon-guanliyuan', '15', 'admin', 'manager', 'index', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('17', '角色管理', 'icon-group', '15', 'admin', 'authManager', 'index', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('18', '添加管理员', '', '16', 'admin', 'manager', 'add', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('19', '编辑管理员', '', '16', 'admin', 'manager', 'edit', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('20', '管理日志', 'icon-rizhi', '15', 'admin', 'adminlog', 'index', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('21', '删除管理员', '', '16', 'admin', 'manager', 'del', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('22', '添加角色', '', '17', 'admin', 'authManager', 'createGroup', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('23', '附件管理', 'icon-accessory', '10', 'attachment', 'attachments', 'index', '', '0', '', '0', '1');
INSERT INTO `en_menu` VALUES ('24', '新增配置', '', '11', 'admin', 'config', 'add', '', '1', '', '0', '1');
INSERT INTO `en_menu` VALUES ('25', '编辑配置', '', '11', 'admin', 'config', 'edit', '', '1', '', '0', '2');
INSERT INTO `en_menu` VALUES ('26', '删除配置', '', '11', 'admin', 'config', 'del', '', '1', '', '0', '3');
INSERT INTO `en_menu` VALUES ('27', '批量更新', '', '11', 'admin', 'config', 'multi', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('28', '新增菜单', '', '14', 'admin', 'menu', 'add', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('29', '编辑菜单', '', '14', 'admin', 'menu', 'edit', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('30', '删除菜单', '', '14', 'admin', 'menu', 'del', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('31', '批量更新', '', '14', 'admin', 'menu', 'multi', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('32', '附件上传', '', '23', 'attachment', 'attachments', 'upload', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('33', '附件删除', '', '23', 'attachment', 'attachments', 'del', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('34', '编辑器附件', '', '23', 'attachment', 'ueditor', 'run', '', '0', '', '0', '0');
INSERT INTO `en_menu` VALUES ('35', '图片列表', '', '23', 'attachment', 'attachments', 'showFileLis', '', '0', '', '0', '0');
INSERT INTO `en_menu` VALUES ('36', '图片本地化', '', '23', 'attachment', 'attachments', 'getUrlFile', '', '0', '', '0', '0');
INSERT INTO `en_menu` VALUES ('37', '图片选择', '', '23', 'attachment', 'attachments', 'select', '', '0', '', '0', '0');
INSERT INTO `en_menu` VALUES ('56', '栏目内容管理', 'icon-shiyongwendang', '55', 'admin', 'admin', 'admin', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('57', '栏目管理', 'icon-shiyongwendang', '56', 'admin', 'Infoclass', 'index', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('58', '单页信息管理', 'icon-shiyongwendang', '56', 'admin', 'info', 'index', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('59', '列表信息管理', 'icon-shiyongwendang', '56', 'admin', 'Infolist', 'index', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('60', '图片信息管理', 'icon-picture', '56', 'admin', 'Infoimg', 'index', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('48', '编辑角色', '', '17', 'admin', 'authManager', 'editGroup', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('49', '删除角色', '', '17', 'admin', 'authManager', 'deleteGroup', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('50', '访问授权', '', '17', 'admin', 'authManager', 'access', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('51', '角色授权', '', '17', 'admin', 'authManager', 'writeGroup', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('62', '模块扩展管理', 'icon-tiaoshi', '55', 'admin', 'admin', 'admin', '', '1', '', '0', '0');
INSERT INTO `en_menu` VALUES ('64', '留言模块管理', 'icon-createtask', '62', 'admin', 'message', 'index', '', '1', '', '0', '3');
INSERT INTO `en_menu` VALUES ('65', '友情链接管理', 'icon-huiyuan2', '62', 'admin', 'Weblink', 'index', '', '1', '', '0', '2');
INSERT INTO `en_menu` VALUES ('66', '用户管理', 'icon-vip', '62', 'admin', 'Member', 'index', '', '1', '', '0', '1');

-- ----------------------------
-- Table structure for en_message
-- ----------------------------
DROP TABLE IF EXISTS `en_message`;
CREATE TABLE `en_message` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '留言id',
  `siteid` smallint(5) unsigned DEFAULT '1' COMMENT '站点id',
  `nickname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '昵称',
  `contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系方式',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '留言内容',
  `htop` set('true') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '置顶',
  `rtop` set('true') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '推荐',
  `ip` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '留言IP',
  `recont` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '回复内容',
  `retime` int(10) unsigned DEFAULT NULL COMMENT '回复时间',
  `orderid` mediumint(8) unsigned DEFAULT NULL COMMENT '排列排序',
  `posttime` int(10) unsigned DEFAULT NULL COMMENT '更新时间',
  `checkinfo` enum('true','false') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_message
-- ----------------------------
INSERT INTO `en_message` VALUES ('1', '1', '游客', 'QQ：10000', '站点很好很漂亮，超喜欢，赞！', '', 'true', '127.0.0.1', '感谢您的留言！', '1602903930', '1', '1602903926', 'true');

-- ----------------------------
-- Table structure for en_sms
-- ----------------------------
DROP TABLE IF EXISTS `en_sms`;
CREATE TABLE `en_sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '操作IP',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短信验证码表';

-- ----------------------------
-- Records of en_sms
-- ----------------------------

-- ----------------------------
-- Table structure for en_soft
-- ----------------------------
DROP TABLE IF EXISTS `en_soft`;
CREATE TABLE `en_soft` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '软件信息id',
  `siteid` smallint(5) unsigned DEFAULT '1' COMMENT '站点id',
  `classid` smallint(5) unsigned DEFAULT NULL COMMENT '所属栏目id',
  `parentid` smallint(5) unsigned DEFAULT NULL COMMENT '所属栏目上级id',
  `parentstr` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所属栏目上级id字符串',
  `mainid` smallint(5) DEFAULT NULL COMMENT '二级类别id',
  `mainpid` smallint(5) DEFAULT NULL COMMENT '二级类别父id',
  `mainpstr` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '二级累呗父id字符串',
  `title` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `colorval` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字体颜色',
  `boldval` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字体加粗',
  `flag` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '属性',
  `filetype` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件类型',
  `softtype` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '软件类型',
  `language` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '界面语言',
  `accredit` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '授权方式',
  `softsize` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '软件大小',
  `unit` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '软件大小单位',
  `runos` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '运行环境',
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '官方网站',
  `demourl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '演示地址',
  `dlurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '下载地址',
  `source` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文章来源',
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '作者编辑',
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '跳转链接',
  `keywords` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '内容',
  `widths` varchar(11) DEFAULT NULL,
  `heights` varchar(11) DEFAULT NULL,
  `picurl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '缩略图片',
  `picarr` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '组图',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '点击次数',
  `orderid` int(10) unsigned DEFAULT NULL COMMENT '排列排序',
  `posttime` int(10) DEFAULT NULL COMMENT '更新时间',
  `checkinfo` enum('true','false') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核状态',
  `delstate` set('true') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '删除状态',
  `deltime` int(10) unsigned DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_soft
-- ----------------------------

-- ----------------------------
-- Table structure for en_terms
-- ----------------------------
DROP TABLE IF EXISTS `en_terms`;
CREATE TABLE `en_terms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `parentid` smallint(5) NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '分类名称',
  `module` varchar(15) NOT NULL DEFAULT '' COMMENT '所属模块',
  `setting` mediumtext COMMENT '相关配置信息',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of en_terms
-- ----------------------------

-- ----------------------------
-- Table structure for en_weblink
-- ----------------------------
DROP TABLE IF EXISTS `en_weblink`;
CREATE TABLE `en_weblink` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情链接id',
  `siteid` smallint(5) unsigned DEFAULT '1' COMMENT '站点id',
  `webname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '网站名称',
  `webnote` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '网站描述',
  `picurl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '缩略图片',
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '跳转链接',
  `widths` varchar(11) DEFAULT NULL,
  `heights` varchar(11) DEFAULT NULL,
  `orderid` smallint(5) unsigned DEFAULT NULL COMMENT '排列排序',
  `posttime` int(10) unsigned DEFAULT NULL COMMENT '更新时间',
  `checkinfo` enum('true','false') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_weblink
-- ----------------------------
