/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : spboot03573ftglxt

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-10-22 10:19:23
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '帐号',
  `pwd` varchar(50) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', 'admin', '2020-10-21 22:24:28');

-- ----------------------------
-- Table structure for `caijishuju`
-- ----------------------------
DROP TABLE IF EXISTS `caijishuju`;
CREATE TABLE `caijishuju` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xueshengxinxi` int(10) unsigned NOT NULL COMMENT '学生信息ID',
  `xuehao` varchar(50) NOT NULL COMMENT '学号',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `tiwen` varchar(50) NOT NULL COMMENT '体温',
  `shifoufashao` varchar(255) NOT NULL COMMENT '是否发烧',
  `caijishijian` varchar(25) NOT NULL COMMENT '采集时间',
  `caijididian` varchar(255) NOT NULL COMMENT '采集地点',
  `huanjingrenshu` int(11) NOT NULL COMMENT '环境人数',
  `shiwaiwendu` varchar(50) NOT NULL COMMENT '室外温度',
  `shidu` varchar(50) NOT NULL COMMENT '湿度',
  `beizhu` text NOT NULL COMMENT '备注',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `caijishuju_xueshengxinxi_index` (`xueshengxinxi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caijishuju
-- ----------------------------
INSERT INTO `caijishuju` VALUES ('1', '1', '001', '张三', '36.7', '否', '2020-10-21 23:07:19', '食堂门口', '150', '26', '80%', '已采集的数据', '2020-10-21 23:07:37');
INSERT INTO `caijishuju` VALUES ('2', '2', '002', '李四', '36.8', '否', '2020-10-22 10:09:41', '校园门口1111', '100', '26', '40%', '已采集的数据', '2020-10-22 10:10:22');

-- ----------------------------
-- Table structure for `caipinfenlei`
-- ----------------------------
DROP TABLE IF EXISTS `caipinfenlei`;
CREATE TABLE `caipinfenlei` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(255) NOT NULL COMMENT '分类名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caipinfenlei
-- ----------------------------
INSERT INTO `caipinfenlei` VALUES ('1', '荤菜', '2020-10-22 09:49:13');
INSERT INTO `caipinfenlei` VALUES ('2', '素菜', '2020-10-22 09:49:16');
INSERT INTO `caipinfenlei` VALUES ('3', '小吃', '2020-10-22 09:49:19');

-- ----------------------------
-- Table structure for `caipinxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `caipinxinxi`;
CREATE TABLE `caipinxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caipinbianhao` varchar(50) NOT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(255) NOT NULL COMMENT '菜品名称',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `caipinzhutu` varchar(255) NOT NULL COMMENT '菜品主图',
  `xijiexiangtu` text NOT NULL COMMENT '细节详图',
  `jiage` decimal(18,2) NOT NULL COMMENT '价格',
  `zhekoujia` decimal(18,2) NOT NULL COMMENT '折扣价',
  `kucun` int(11) NOT NULL COMMENT '库存',
  `shoumaichuangkou` varchar(50) NOT NULL COMMENT '售卖窗口',
  `shifouxinpin` varchar(255) NOT NULL COMMENT '是否新品',
  `caipincailiao` text NOT NULL COMMENT '菜品材料',
  `caipinjianjie` longtext NOT NULL COMMENT '菜品简介',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `caipinxinxi_fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caipinxinxi
-- ----------------------------
INSERT INTO `caipinxinxi` VALUES ('1', '10220949238078', '红烧排骨', '1', 'upload/20201022/860eec95-ba7b-4a66-ae03-c8453b1a11a5.png', 'upload/20201022/5d6f05bc-ae34-4b37-ba5f-6b2093c5526f.png,upload/20201022/727416c8-6289-4fef-a0de-3036ea67fd0e.png,upload/20201022/e860ef7f-5cc6-4f99-b805-17c3585e5056.png,upload/20201022/a108dbd9-8311-4f35-b5db-9bf217941f67.png', '30.00', '25.00', '100', 'A12', '是', '排骨(适量)\r\n杏鲍菇(适量)\r\n干辣椒(适量)\r\n花椒(适量)\r\n八角(适量)\r\n丁香(适量)\r\n姜片(适量)\r\n盐(适量)\r\n老抽(适量)\r\n生抽(适量)\r\n料酒(适量)\r\n冰糖(适量)\r\n十三香(适量)', '<div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\"><span style=\"color:#000000\">1、锅内放水烧开，放入斩件排骨<span style=\"\">氽烫</span>至出血水，捞起洗净后沥净水备用。</span></div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\"><span style=\"color:#000000\">2、锅内放油，烧至六成热时爆香姜片，放入排骨煸炒到金黄微焦。</span></div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\"><span style=\"color:#000000\">3、依次放入1汤匙花雕酒、2汤勺草菇老抽、1勺生抽、1汤勺白糖，炒匀，放入八角、桂皮，再倒入能没过排骨的开水，调中火焖15分钟，放入盐炒匀。</span></div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\"><span style=\"color:#000000\">4、开大火收汁，收到汤汁将干时，出锅摆盘撒上葱花即可。</span></div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\"><span style=\"font-weight: 700;color:#000000\">做法二：</span></div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\"><span style=\"color:#000000\"><span style=\"font-weight: 700;\">原料</span>：排骨，姜，葱，香料（八角，茴香，山奈，桂皮，草果，丁香，香叶），花椒（少许），盐，味精，白糖，料酒，酱油（老抽）。</span></div><p><br/></p>', '2020-10-22 09:51:39');
INSERT INTO `caipinxinxi` VALUES ('2', '10220952119134', '手撕包菜', '2', 'upload/20201022/f31093cd-abec-45b6-b503-64363726a5a1.png', 'upload/20201022/527fec2c-d0c5-405c-9930-1b04a0200eb8.png,upload/20201022/b3200904-3118-4aac-80e0-b703abf25667.png,upload/20201022/a007f4da-3472-4306-88bd-9757036ab483.png,upload/20201022/8d3d6025-eedc-4ee1-b40d-cea04fa67061.png', '15.00', '12.00', '100', 'A13', '是', '包菜250克、五花肉100克、干辣椒4个、蒜片3克、香醋1茶匙、酱油2茶匙、盐和生粉各1茶匙、油2茶匙、料酒1茶匙', '<div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">1. 整棵包菜放入清水中冲洗干净，去掉包菜根茎后将菜叶手撕成大约1/3手掌大小的片状,将手撕菜叶放入盆中，用流动清水再次清洗后稍加浸泡,蒜瓣去皮切片，花椒粒用温水稍加浸泡后控水备用;</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">2. 炒锅烧热将猪油下锅，猪油慢慢融化。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">3. 油温升至三、四成热度时将花椒粒下锅煸香，将蒜片下锅煸香，将干红椒丝撒入锅中炝锅;</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">4. 将控干水的包菜叶倒入锅中急火快炒。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">5. 沿锅边浇淋一圈米醋，快速炒匀，依次往锅中添加鲜味酱油1汤匙，白糖1/4茶匙，精盐1/2茶匙炒匀;大火将包菜叶炒香炒脆后，沿锅边再次浇淋一汤匙米醋，淋少许香麻油即起锅装盘。</div><p><br/></p>', '2020-10-22 09:53:53');
INSERT INTO `caipinxinxi` VALUES ('3', '10220954261424', '小鸡炖蘑菇', '1', 'upload/20201022/398a0a60-8979-42c5-827a-31f25ef001ff.png', 'upload/20201022/15d4a337-81d2-412a-b200-dba4ce5cf450.png,upload/20201022/34f39114-8907-4d6b-a169-c37a1e7cc134.png,upload/20201022/ef20f941-8f1c-4381-b76e-bb0d96f6b2e6.png', '30.00', '28.80', '100', 'A12', '是', '散养小鸡750g，干榛蘑150g，植物油、精盐、生姜、小葱、八角、桂皮、香叶、老抽适量。', '<div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">1.干榛蘑用清水泡发，后洗净。小鸡宰杀后洗净，用刀斩成大块。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">2.锅里倒入清水，放入鸡肉煮开焯水后捞出。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">3.炒锅里倒入植物油，油热后放入姜片、葱段、桂皮、八角，香叶炒出香味。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">4.倒入焯过水的鸡肉，小火翻炒。炒至鸡肉微黄，油亮。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">5.调入老抽，翻炒上色。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">6.倒入开水（倒入的开始开水量要没过鸡肉），大火煮开。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">7.倒入压力锅，倒入榛蘑。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">8.盖上压力锅锅盖，按下中间按钮锁定锅盖，开大火。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">9.待锅上汽后，压8分钟。等快锅的压力提示点落下去，泄压完成。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">10.打开锅盖，调入精盐。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">11.敞开锅，开大火收汁。等汤汁粘稠时即可。</div><p><br/></p>', '2020-10-22 09:56:10');
INSERT INTO `caipinxinxi` VALUES ('4', '10220957422046', '蛋挞', '3', 'upload/20201022/33bda7c4-0d61-4d07-a035-c98da4afc3e6.png', 'upload/20201022/9320d1a9-9323-4cbc-a5e4-b9b6711502f3.png,upload/20201022/03478aa0-c5c4-4ae6-94e4-f3690293204c.png,upload/20201022/150b24de-8709-49f6-b977-a32bfb116c5c.png,upload/20201022/7d626d2c-d9ae-41d9-a839-81d2e279f7ce.png', '5.00', '3.50', '100', 'A13', '否', '蛋挞皮（9个）\r\n低筋面粉 6g\r\n淡奶油 85g\r\n牛奶 70g\r\n蛋黄 2个\r\n糖25g', '<div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">①将牛油、白糖、小麦草粉，面粉倒进食物搅拌机中，以低速混合均匀；</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">②接着加入鸡蛋，把所有混合物搅打成面团；</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">③将面团放入模型中，压出多个圆模面团，待用。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">馅做法：</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">①先将水和白糖一起煮滚，熄火后，加入青色素及小麦草汁，拌匀，待凉；</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">②轻轻地将鸡蛋打散，加入<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%B2%9C%E5%A5%B6\" style=\"color: rgb(19, 110, 194);\">鲜奶</a>，搅打均匀，再加入已凉了的小麦草汁，拌匀，过滤后，放进冰箱中冷却；</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">③将冷却了的小麦草混合物倒入已备好的圆模面团中，以200℃烘30分钟即成。</div><p><br/></p>', '2020-10-22 09:59:50');

-- ----------------------------
-- Table structure for `shangpinleimu`
-- ----------------------------
DROP TABLE IF EXISTS `shangpinleimu`;
CREATE TABLE `shangpinleimu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `leimumingcheng` varchar(255) NOT NULL COMMENT '类目名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shangpinleimu
-- ----------------------------
INSERT INTO `shangpinleimu` VALUES ('1', '零食', '2020-10-22 09:26:52');
INSERT INTO `shangpinleimu` VALUES ('2', '饮料', '2020-10-22 09:26:55');
INSERT INTO `shangpinleimu` VALUES ('3', '生活用品', '2020-10-22 09:27:03');

-- ----------------------------
-- Table structure for `shangpinxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE `shangpinxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shangpinbianhao` varchar(50) NOT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(255) NOT NULL COMMENT '商品名称',
  `shangpinbiaoti` varchar(255) NOT NULL COMMENT '商品标题',
  `leimu` int(10) unsigned NOT NULL COMMENT '类目',
  `shangpinzhutu` varchar(255) NOT NULL COMMENT '商品主图',
  `shangpinxiangce` text NOT NULL COMMENT '商品相册',
  `shichangjia` decimal(18,2) NOT NULL COMMENT '市场价',
  `shoujia` decimal(18,2) NOT NULL COMMENT '售价',
  `gonghuojia` decimal(18,2) NOT NULL COMMENT '供货价',
  `chanpinxinghao` varchar(50) NOT NULL COMMENT '产品型号',
  `chanpinguige` varchar(255) NOT NULL COMMENT '产品规格',
  `baozhiqi` varchar(25) NOT NULL COMMENT '保质期',
  `shangpinkucun` int(11) NOT NULL COMMENT '商品库存',
  `shangpinzhuangtai` varchar(255) NOT NULL COMMENT '商品状态',
  `shangpincanshu` text NOT NULL COMMENT '商品参数',
  `shangpinxiangqing` longtext NOT NULL COMMENT '商品详情',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `shangpinxinxi_leimu_index` (`leimu`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shangpinxinxi
-- ----------------------------
INSERT INTO `shangpinxinxi` VALUES ('1', '10220927181334', '猪肉干肉铺肉', '零食休闲网红小吃', '1', 'upload/20201022/3c3c2566-3f65-4f89-9d83-29caf5cbf851.png', 'upload/20201022/5390f0c9-4f7f-46bb-a7d0-27db50bda683.png,upload/20201022/187942db-3cd3-421d-88fe-e0830f217bd1.png,upload/20201022/b01614a4-0e48-4a27-bfe6-946056463593.png,upload/20201022/fd97ac32-4b87-474d-967f-6e957679b563.png,upload/20201022/dafce1a4-36b6-4469-ae54-70c28909a238.png', '30.00', '28.90', '26.00', '小袋装', '112g,156g', '2021-05-22', '100', '上架', '品牌： 良品铺子\r\n商品名称：良品铺子猪肉脯商品编号：1876978商品毛重：120.00g商品产地：江苏省泰州市包装：袋装口味：原味类别：猪肉脯规格：200g以下', '<p><img src=\"upload/20201022/60771603330433145.png\" _src=\"upload/20201022/60771603330433145.png\"/></p>', '2020-10-22 09:33:54');
INSERT INTO `shangpinxinxi` VALUES ('2', '10220935461397', '迷你香肠碳烤味', '零食肉干肉脯网红零食', '3', 'upload/20201022/5e833f61-8f16-4965-af23-cde52825ae28.png', 'upload/20201022/547abfe6-0937-47d9-807a-83187db68980.png,upload/20201022/dde168d2-5a8d-45a1-b35a-5cdf9d7ad6ef.png,upload/20201022/7bbcd9bf-3777-4d00-bd05-5638f8d6afe8.png,upload/20201022/a3ee7a16-a52d-46ee-b15a-9ec309afe65e.png', '42.00', '39.90', '35.00', '123123', '200g,180g', '2021-10-22', '100', '上架', '品牌： 良品铺子\r\n商品名称：良品铺子烤肠商品编号：100005660322商品毛重：175.00g商品产地：福建漳州包装：袋装口味：其它类别：猪肉肠规格：200g以下', '<p><img src=\"upload/20201022/67911603330902286.png\" _src=\"upload/20201022/67911603330902286.png\"/></p>', '2020-10-22 09:41:43');
INSERT INTO `shangpinxinxi` VALUES ('3', '10220941431485', '维他柠檬茶饮料', '斗罗大陆动画联名款 随机发货', '2', 'upload/20201022/8f2fdc80-72ae-4fd4-8e85-b98642a19296.png', 'upload/20201022/56c5ed5a-9aca-4cbe-b927-d381ee71f1ec.png,upload/20201022/dcc8407d-300b-4ad3-affc-b07457ad6189.png,upload/20201022/ac8d0111-9ca1-41c1-ba3f-e74a3ab8ef22.png,upload/20201022/6d2854d2-3fd2-423e-930d-854a72f2f8b3.png', '60.00', '54.90', '50.00', '整箱装', '400mL', '2021-10-22', '100', '上架', '品牌： 维他奶（vitasoy）\r\n商品名称：维他奶柠檬茶商品编号：1234967商品毛重：6.75kg商品产地：中国大陆是否添加糖：添加糖规格：400mL以下类别：其它包装：整箱装', '<p><img src=\"upload/20201022/4441603331150250.png\" _src=\"upload/20201022/4441603331150250.png\"/></p>', '2020-10-22 09:45:50');
INSERT INTO `shangpinxinxi` VALUES ('4', '10220946372659', '可口可乐', '汽水 碳酸饮料 300ml*24瓶', '2', 'upload/20201022/b1dc587c-20af-4d57-8cc0-7f2de5c60d55.png', 'upload/20201022/932458b9-c4e3-464f-98dc-b0a654011643.png,upload/20201022/9455dea1-8bdc-4d7d-a449-cbbaffa06053.png,upload/20201022/99abece2-94d9-4a55-821b-a1ae20630098.png', '40.00', '38.90', '35.00', '300ml*24瓶', '400mL以下', '2021-10-22', '100', '上架', '品牌： 可口可乐（Coca-Cola）\r\n商品名称：可口可乐可口可乐商品编号：3895761商品毛重：8.16kg商品产地：中国大陆包装：整箱装规格：400mL以下类别：可乐', '<p><img src=\"upload/20201022/51551603331293643.png\" _src=\"upload/20201022/51551603331293643.png\"/></p>', '2020-10-22 09:48:18');

-- ----------------------------
-- Table structure for `xuesheng`
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE `xuesheng` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xuehao` varchar(50) NOT NULL COMMENT '学号',
  `mima` varchar(50) NOT NULL COMMENT '密码',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `xingbie` varchar(255) NOT NULL COMMENT '性别',
  `chushengnianyue` varchar(25) NOT NULL COMMENT '出生年月',
  `xiaoqu` varchar(50) NOT NULL COMMENT '校区',
  `shouji` varchar(50) NOT NULL COMMENT '手机',
  `youxiang` varchar(50) NOT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(50) NOT NULL COMMENT '身份证',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES ('1', '001', '001', '张三', '男', '2020-10-21', '新校区', '13800138111', '123456@qq.com', '132456789123456789', '2020-10-21 23:03:53');
INSERT INTO `xuesheng` VALUES ('2', '002', '002', '李四', '男', '1995-10-22', '老校区', '13800138000', '123456@qq.com', '132456789123456789', '2020-10-22 10:05:52');
INSERT INTO `xuesheng` VALUES ('3', '003', '003', '王五', '男', '2000-10-22', 'XX校区', '13600136000', '12345678@qq.com', '132456789123456789', '2020-10-22 10:06:16');
