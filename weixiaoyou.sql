/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : weixiaoyou

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2014-02-11 21:38:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ai9me_areply`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_areply`;
CREATE TABLE `ai9me_areply` (
  `id` int(11) NOT NULL auto_increment,
  `keyword` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `token` char(30) NOT NULL,
  `home` varchar(1) NOT NULL default '0',
  `is_home` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_areply
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_case`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_case`;
CREATE TABLE `ai9me_case` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `img` char(200) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_case
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_classify`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_classify`;
CREATE TABLE `ai9me_classify` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  `info` varchar(90) NOT NULL COMMENT '分类描述',
  `sorts` varchar(6) NOT NULL COMMENT '显示顺序',
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `token` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_classify
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_diymen_class`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_diymen_class`;
CREATE TABLE `ai9me_diymen_class` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `url` varchar(255) default NULL,
  `type` varchar(30) NOT NULL default 'click',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_diymen_class
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_diymen_set`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_diymen_set`;
CREATE TABLE `ai9me_diymen_set` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `appid` varchar(18) NOT NULL,
  `appsecret` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_diymen_set
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_dream`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_dream`;
CREATE TABLE `ai9me_dream` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(20) NOT NULL,
  `content` varchar(1024) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_dream
-- ----------------------------
INSERT INTO `ai9me_dream` VALUES ('1', '梦见父母', '梦见自己成了幼儿与父母相处  幸运的事情即将发生。可以尝到美昧可口的咖啡、得到电影招待券等等。你将不觉莞尔一笑。梦见和父母快乐地有说有笑  家中将起波澜。对父母将感觉厌烦，会有离家出走的行为。你还未成年，不要因轻率急躁而遗恨终身，要多多自重。梦见父母离婚  朋友运不如意。你无心的一句话，将引起误解。如果置之不理，朋友将离你而去，要设法解释清楚才好。梦见受母亲疼爱  在爱情方面将有乐事。约会的地方最好尽量选择幽静的地方，诸如图书馆、博物馆、黄昏的公园等等。梦见被父亲大骂一顿  健康方面有不良征兆。尤其要注意的是意外事故，在上下车、横穿车道时要特别小心哪。梦见离开父母而成孤苦伶仃  爱情方面将有很大的幸运。如果有意中人，不必迟疑可以进攻，绝对不会被封杀出局。因为这是梦中注定的');
INSERT INTO `ai9me_dream` VALUES ('2', '梦见护士', ' 已婚女子梦见护士  不久会怀孕，得贵子。 少女梦见有一群美貌的护士  很快要出嫁。 少女梦见和护士争吵  婚事不顺利，迟迟不能出嫁。 病人梦见护士  痛苦很快要过去。');
INSERT INTO `ai9me_dream` VALUES ('3', '梦见老师', ' 梦见受老师称赞  在学业方面乌云密布。由于连日的熬夜，在课堂上竟开始打陀结果受到老师批评。这就是所谓反梦。 梦见受老师责骂  家人关系极佳。对双亲能克尽孝道，你将令人刮目相看。也许每个月的零用钱会大幅度增加呢。 梦见到老师家里拜访  人际关系的运势衰退的预兆。头顶上有一颗争执之星，要注意你的言行举止，防止争执，尤其脾气不可暴躁。 梦见正在上课  读书运渐入佳境。将有指点迷津的同学出现，以此为契机，你的读书欲将大增。也就是说，你将会有很大的干劲。要努力喔! 梦见遇见校长  这是上学恐惧症。不要一天到晚抱着书本，过分拘泥于成绩，有时也要放松心情，尽量参加其他活动。否则你的神经将很快衰弱。 梦见异性老师向你亲密攀谈  爱情运将下降，情人之间的感情开始变得索然无味，最好改变一下约会的方式');
INSERT INTO `ai9me_dream` VALUES ('4', '梦见男孩', '梦见男孩，是祥兆。女人梦见男孩，会生病。梦见漂亮的男孩，朋友会忘恩负义。梦见生男孩，生活会幸福、恬适。梦见男孩夭亡，大难将降临。女人梦见自己将要生一个男孩，意味着会过上幸福舒畅的生活');
INSERT INTO `ai9me_dream` VALUES ('5', '梦见皇后', ' 男人梦见皇后  会经济受损。 女人梦见皇后  丈夫会心情愉快。 囚犯梦见皇后  很快能恢复自由。 叛国者梦见皇后  不久会成为国家领导人的宠儿。 商人梦见皇后  出国做生意能发大财。 已婚女人梦见自己成了皇后  很快会与丈夫分离，或孩子生病，或者由于丈夫失业，左支右绌。 未婚女子梦见自己当了皇后  嫁到一个有名望富有的家庭。 男人梦见同皇后握手  会受到国家尊重，官运亨通。 男人梦见同皇后握手  会娶富人家的小姐为妻。 已婚女人梦见和皇后握手  会身居高位。 未婚女子梦见和皇后握手  想与意中人结为伴侣，但却会遭到父母的阻拦。 梦见和皇后争吵  能发大财');
INSERT INTO `ai9me_dream` VALUES ('6', '梦见朋友', ' 梦见大伙儿一起去旅行  最近，很可能发生快乐的事。如亲友参加电视猜谜得奖；老师临时有事，自习时间增加等等。 梦见与朋友一起挨老师责骂  考试运极度好转。考试前所看的复习题，全部出现在试卷中，必将获得近于满分的成绩。 梦见与朋友一起旷课到处游荡  在健康方面乌云密布。放学途中买东西吃，将食物中毒；咬紧牙关熬夜，眼睛将出毛病、只好去看医生，不料医生临时休业真是霉运当头! 梦见有朋友来玩  异性运上升。将有新的浪漫史产生。爱情战的武器，不外乎是电话。最幸运的黄金时段将是晚上八点到九点。 梦见与朋友一起又吃又喝  在金钱方面要多加小心。不要花无谓的钱，搞得囊空如洗。 梦见与朋友并排读书  进行新尝试的最好时机。参加社团、练技习艺，只要是日常想做的事，立刻开始行动吧。 梦见与朋友一起工作  人际关系好。没有钱的时候；有事情必须要别人帮忙时候，朋友一定会伸出援助的手。 梦见朋友与异性很要好  爱情运将停滞。与情人之间总是格格不入，波折迭起。选一处喝咖啡的地方，也争执不休。 梦见与朋友玩笑嬉戏  在异性方面将有问题出现。对性的诱惑千万要小心，要保持清醒与理智。 梦见一群好友反目而分裂  人际关系将不如意。无意间发觉最信赖的朋友在背后说你，因此受到莫大的打击。要治愈这心里的创伤，要一段很长的时间');
INSERT INTO `ai9me_dream` VALUES ('7', '梦见守财奴', ' 梦见一毛不拔的人  朋友会吵嘴。 梦见与吝啬鬼交朋友  要遭不幸。 男人梦见自己成了铁公鸡  一毛不拔，生意能赚大钱。 已婚女人梦见自己小气  婆婆家的处境会很令人担忧。 梦见和吝啬人吵架  预示要交新朋友。 梦见偷拿守财奴的东西  会身居高位。 梦见铁公鸡送钱给自己家  会被偷窃');
INSERT INTO `ai9me_dream` VALUES ('8', '梦见尼姑', ' 男人梦见女出家人  无数的灾难会临头。 女人梦见与出家人交谈  丈夫家的人能和睦相处，生活愉快。 少女梦见与女出家人发生争吵  是凶兆，亲人会受辱。');
INSERT INTO `ai9me_dream` VALUES ('9', '梦见小孩', ' 梦见抱起婴儿  财运相当顺利的象征。你的存款将大幅度增加，但绝对不可借给别人，因为要不回来的可能性很大。 梦见欺负小孩儿  人际关系有阴影。你的隐私将被周围的人发觉。必须小心加以防范，别忘了隔墙有耳! 梦见与儿童一起游戏  学校里将发生快乐的事。新近成为会员的后生小辈，竟是英俊无比的异性每天都盼望快点下课');
INSERT INTO `ai9me_dream` VALUES ('10', '梦见人群', ' 梦见许多穿着华贵服装的人聚集在一起  未婚者将会喜结良缘。 梦到穿脏衣服的人聚集在一起  做梦人的亲属会有人与世长辞');
INSERT INTO `ai9me_dream` VALUES ('11', '梦见疯子', ' 少女梦见与女出家人发生争吵  是凶兆，亲人会受辱。 姑娘梦见疯子  会嫁给一个富有、如意的男子。 跛子梦见疯子  会找到忠诚的仆人。 梦见妻子疯了  她会把家安排得井井有条');
INSERT INTO `ai9me_dream` VALUES ('12', '梦见兄弟姊妹', ' 梦见受兄或姊欺负而心有不甘  兄弟运蕴酿着波折。仅仅为了一支铅笔、或一块橡皮，就要起一场争执。这时，最好由父母出面做公道人。 梦见兄弟或妹妹将出去游玩  在人际关系中将有幸运来临。可能由于趣味相投，将结识新朋友。只要坦诚相待，必然可以成为心腹之交。 梦见兄弟吵架  比赛运衰减。围棋、象棋、电视娱乐比赛不管参加任何一种比赛，准输无疑。这种状态将持续半年，要有心理准备! 梦见与兄弟姊妹合力做些事情  学业方面将有进步。以往难缠的科目，也将全部都有好分数。有可能得到老师当众表扬，使你神采飞扬。 梦见与兄弟或姊妹远离  在异性方面将有幸运。可能接到某同学写的热情洋溢的情书。这时将如何应付?这是你个人的事。 梦见与兄弟姊妹同盖一床被子  雨过天睛，健康运上升。今后一个月，虽然有一点不如意，但过后将精力充沛，可以过一段无病无痛的日子');
INSERT INTO `ai9me_dream` VALUES ('13', '梦见军队', '梦见军队开来或军队处于立定姿势，这是好的征兆。梦见军队离去，意味着将遭不幸。梦见军队打败了，倒霉的日子将要到来。梦见军队胜利了，寓意着要交好运。');
INSERT INTO `ai9me_dream` VALUES ('14', '梦见清道夫', ' 梦见清洁夫  要遭厄运。 女人梦见清扫人  会忍受丈夫分离的痛苦。 梦见当了清道夫  前途无量。 商人梦见做清道夫的工作  生意会兴旺，能发大财。 梦见与清扫工吵架  会臭名远扬。 梦见和清洁工交朋友  会名声大噪，得财进宝');
INSERT INTO `ai9me_dream` VALUES ('15', '梦见祖父母', ' 梦见祖父母给你零用钱  将有极佳的金钱运。但仍有浪费的倾向，所以出去逛街购物时要有节制。 梦见祖父母责骂母亲  健康方面亮起红灯。虽有强健的身体，也不可过信自己的体力。 必须保持良好的生活规律，要经常运动，加上充分的营养及休息才可保持健康。 梦见帮祖父母捶背  技能方面将进步。这将是练习弹奏吉他的良机，每天加紧练习吧! 梦见祖父母躺在病床上  家中可能发生纠葛。你与双亲及兄弟强能发生争执，注意不要任性。');
INSERT INTO `ai9me_dream` VALUES ('16', '梦见婴儿', ' 孕妇梦见婴儿，则无象征意义。 梦见抱着婴儿，象征着梦者将会有所收获，不久之后将会得到对于来说很重要的东西。 梦见婴儿笑，象征着人际关系的良好，您能以诚待人，且身边会有很多。 梦见婴儿长牙，象征着计划的顺利实施，您能得到贵人的帮助，不久之后就会有好消息。 梦见婴儿说话，可能是在提醒您最近您会遇到麻烦，总有人从中做怪，也就是犯小人。 梦见婴儿死了，是不详之梦，表明自己计划和希望的破灭，您已经或者将要失去对自己来说很重要的东西。 梦见婴儿哭，表示当前有些压抑的情绪，使得自己心烦意乱，这时候最好静下心来，不要主动出击，做事低调些。');
INSERT INTO `ai9me_dream` VALUES ('17', '梦见野蛮人', '男人梦见野蛮人，小心啊女人梦见野蛮人，丈夫家里会发生吵架。梦见与野蛮人打斗，是不祥之兆，灾祸会降临。商人梦见会见未开化的人，不久要出国，能发大财。受指控的人梦见未开化的人，会被驱逐出境。旅游者梦见野蛮人，旅行会愉快');
INSERT INTO `ai9me_dream` VALUES ('18', '梦见邻居', '梦见邻人出现，有火难之灾。火灾固然要小心，也要注意开水、火柴等烫伤。但所梦见的如果是隔壁的邻居，就不会有危险，尽可放心。梦见与邻居同辈的异性，爱情将有新局面。表示你对爱情已有美好憧憬，一定会对某一个人产生爱情。');
INSERT INTO `ai9me_dream` VALUES ('19', '梦见王子公主', ' 一般梦中的王子、公主多代表着自己或兄弟姐妹。而梦中的国王、女王则代表你的双亲。 梦见王子或公主，则象征着这些日子，也许会与善意的人吵架');
INSERT INTO `ai9me_dream` VALUES ('20', '梦见小贩', ' 男人梦见小贩  会与朋友分道扬镳。 已婚女人梦见小贩  会与丈夫家的人分开另过，独自操持家务。 梦见与小贩交谈  是好的征兆，丈夫会勤俭持家。 女人梦见与小贩交谈  会有一个装饰豪华具有现代化的住宅、华贵的服装、舒适的生活，一切应有尽有。 梦见与小贩吵架  陌生人会骗走自己的财产。 梦见和小贩交朋友  生意会好转，发大财。 官员梦见自己成了小贩  会被降职，最后只好提出辞职。 商人梦见自己成了小贩  生意会萧条，有可能倒闭。 病人梦见自己成了小贩  要遭厄运，尽管请西医大夫和中医治疗，但病情仍不见好转。 大学教师梦见自己成了小贩  是祥兆，会扬名天下，世界许多国家会邀请他发表演说。失业者梦见自己成了小贩  会接到好几个机构的聘书，但是都难以胜任');
INSERT INTO `ai9me_dream` VALUES ('21', '梦见医生', ' 梦见医生  亲人会卧床不起。 病人和久病痊愈的人梦见医生  病情会加重，或突然病倒。 梦见与医生交谈，或向医生咨询  会身体健康，延年益寿。 病人梦见和医生谈话，或请教医生  不久病情会好转。 梦见与医生争吵，是不祥之兆  要遭受重大损失。 梦见自己当了医生或西医大夫  不久会被辞退，或生意受到冲击。 梦见去请医生  会与德高望众、受人民尊重的人建立友好关系。 梦见与医生交朋友  不用求人送礼，就能发财。 女人梦见丈夫当了医生  会患子宫病。 梦见侍候医护人员  生意会起伏不定，生活动荡不安');
INSERT INTO `ai9me_dream` VALUES ('22', '梦见丈夫', ' 梦见担心丈夫头发掉落变成秃顶，这是用梦境体现了对 丈夫 的无能、软弱的嫌恶和怨恨。 梦见丈夫有第三者,可能是你对你们的婚姻在潜意识中总觉得有压力。也许是你的丈夫很优秀，也许是你总是看低自己的魅力，所以你在内心深处总会有危机感，总有着隐隐约约的压力和担心。梦仅仅是现实在我们脑海中扭曲的反映，梦反映什么不重要，重要的是通过梦境我们可以更多地了解自己的内心，更好的改进自己心理状况。 梦见丈夫睡在别人的床上,有这样的梦,实质上说明的情况是你爱老公的程度比不了他爱你的程度. 另外,你已经很习惯有他的日子了,但有的时候,他说不定比你还喜欢吃醋.......呵呵.既然这样,梦见这个,就不是坏事,好好珍惜这份感情吧.');
INSERT INTO `ai9me_dream` VALUES ('23', '梦见烈士', ' 梦见烈士  会受到人们的尊重，不断进步。 梦见女烈士  要发大财。 梦见受到烈士的责骂  处境对自己极为不利。 梦见自己成了烈士  会灾难临头');
INSERT INTO `ai9me_dream` VALUES ('24', '梦见警察', ' 梦见警察站着  是危险的兆头。 梦见自己被逮捕  会成为政府官员所喜欢的人物。 惯犯梦见警察抓人  多次作案，能发大财。梦见与警察交谈  会被提升。 女人梦见与警察交谈  丈夫的保镖会受伤。 囚犯梦见与警察谈话  很快会被释放。 商人梦见与警察交谈  要提防竞争对手。 领导人梦见与警察交谈  政府和警察会非常尊重自己。 梦见与警察吵架  是凶兆，预示仇人和强盗在威胁着自己。 未婚男子梦见与警察争吵  会带着自己的情侣逃跑。 男人梦见请求援助  作梦人会幸福安全。 女人梦见求助于警察帮助  很快要出狱。 梦见挨警察的打  会贪污公款，损失惨重。 梦见自己当了警察  会威信扫地。梦见自己穿着警服  会受到刑事案件的牵连');
INSERT INTO `ai9me_dream` VALUES ('25', '梦见导师', ' 男人梦见自己的 导师 ，一切都会顺心如意。 女人梦见自己的 导师 ，要遭欺辱。梦见新的 导师 ，会遭受损失。 老叟梦见与自己的 导师 交谈，不久要与世长辞。 商人梦见和自己的 导师 谈话，吸收新的合股人，能发大财。 梦见与 导师 吵架，会家破人亡。 学生梦见和 导师 交谈，会因生活困难。中途辍学');
INSERT INTO `ai9me_dream` VALUES ('26', '梦见队伍', ' 梦见迎亲的队伍  家里要死人。 女人梦见迎亲队伍  丈夫家里要吵架。 已婚男人梦见参加迎亲队伍  会身居高位，人们都有求于自己。 已婚女人梦见参加迎亲队伍  不久会怀孕，能生一个漂亮的男孩。 未婚男女梦见迎亲队伍  会喜结良缘。 未婚男子梦见参加迎亲队伍  会与恋人各奔东西。 囚犯梦见加入迎亲队伍  很快会获得自由。 病人梦见参加迎亲队伍  病情会恶化。 梦见参加政治或宗教游行  会有好消息。 政治领导人梦见加入政治或宗教游行  会受到国家领导人的尊重。旅游者梦见参加政治或宗教游行  会发生车祸');
INSERT INTO `ai9me_dream` VALUES ('27', '梦见名人', ' 梦见接到喜欢的朋友来信  在异性关系上，将有快乐事发生。在朋友的生日派对中，被介绍认识几个异性，其中也许有上个喜欢你的人。爱情可能就此萌芽 梦见受著名的运动选手指导  健康方面将有不韦。尤其社团活动时，发生事故或受伤的可能性很大。 这个时候，最好避免练球练得太晚。 梦见与最喜欢的明星亲密相处  财运将大幅度好转。多余的支出减少，零用钱到了月底还有很多。借给朋友的钱，也一定可以收回。 梦见与外国电影明星交谈  朋友运上升的前兆。这时可以和几个要好的朋友计划郊游。这段快乐的时光将可以增强你与朋友之间的友谊。 梦见与首相握手  遭受意外事故的可能性极大。譬如向摇着尾巴走来的狗伸出友谊的手，却被咬等倒霉到了极点。 梦见与历史上的名人会见  亲友将遭受病难的预兆。要给予病痛缠身或体弱多病的朋友婉转的安慰');
INSERT INTO `ai9me_dream` VALUES ('28', '梦见同学', ' 梦见同性的同学反映你现在人际关系上出现了问题。 梦见异性同学则表示你对朋友有不满的态度，反映了你现在被孤立而寂寞的心态。 梦见与同学打架，人际关系运上升。你跟任何人都可以大胆而积极地交往，周围的人对你也必然坦诚相待，绝不会发生冲突');
INSERT INTO `ai9me_dream` VALUES ('29', '梦见英雄', ' 中年人梦见自己成了英雄  是身强力壮的兆头。 老年人梦见自己成英雄  会溘然而逝。应该尽早立遗嘱，分家产。 病人梦见自己成了英雄  病情会恶化，如果他的八字好，会得救');
INSERT INTO `ai9me_dream` VALUES ('30', '梦见上司', '梦见上司，现实生活中想发挥自己的能力但受到阻挠。梦到这个梦时还要注意工作上可能将会惹麻烦梦见上司不批准自已请求，预示工作或工作环境有小麻烦。梦见与上司同行就是与麻烦同行。梦见上司生病，预示麻烦会没有。梦见上司来访，表示缺乏自信。');
INSERT INTO `ai9me_dream` VALUES ('31', '梦见同事', '梦见和工作伙伴商讨事情，暗示计画可能受到阻挠或是会停滞不前。梦见商讨或交涉成功的话，表示你现实生活中将遭遇困难');
INSERT INTO `ai9me_dream` VALUES ('32', '梦见小偷', '原版周公解梦内与小偷相关的内容：赶贼入市不出凶；强贼入宅主家破；与贼同行大吉利；赶贼行见者大吉。现代释梦：梦见小偷，暗示你最近情绪不太稳定，财运有起落。但是商人梦见小偷，预示生意兴隆。梦见自己成了小偷，预示有财运，钱财上会有意想不到的收获。梦见发现小偷偷东西，表示你可能正一步步制订某项计划，接近某个目标。另外，梦见小偷，还可能表示你有不正当的性行为。梦见自己和小偷同行，预示你将发财。梦见你是个小偷并被警察追赶，预示你进行的事业将陷入困境，你开展的社交关系也将陷入僵局。梦见你追赶或抓获一个小偷，意味着你将最终在较量中赢得对手的尊重。梦见自己认识的某个人成了小偷，则表示潜意识中你不信任那个人，虽然在生活中，你可能并未家常到这一点。梦见有小偷到自己家入室行窃，提醒你近期一定要小心谨慎，家里可能有会遇到祸事。梦见小偷入室窥视，环视屋内，表示你对性的好奇心很重，有偷窥欲。如果小偷没有发现你就离开了，表示你曾有一段不为人知的秘密性关系。如果小偷发现了你并攻击你，则暗示你最近有强烈的欲望。');
INSERT INTO `ai9me_dream` VALUES ('33', '梦见孤儿', '梦中的孤儿，是人性脆弱一面的代表，往往表示你内心孤独渴望被关爱。如果梦见自己变成了孤儿，这是提醒做梦人必须要摆脱内心的依赖，独立自主，自力更生。如果梦见自己在照顾孤儿，预示你可能会得到他人的帮助。如果梦里看见街边的流浪儿，意味着工作上会有困难。梦见慰问孤儿，预示他人的忧虑将触动你的同情心，并将最终促使你牺牲掉个人的享乐。梦见与你有关的孤儿，预示你的生活将增添新的责任，并将由此导致你与某个朋友或某个爱好相同的人之间产生疏远。');
INSERT INTO `ai9me_dream` VALUES ('34', '梦见妻子', '梦见拥抱妻子，是不祥之兆，会与妻子分居。梦见与妻子拌嘴，夫妻恩爱，生活幸福、美满。囚犯梦见与妻吵架，很快能见到妻子。梦见和妻分离，会更加宠爱妻子。梦见找了一位好吵闹的妻子，生活会幸福、舒适。梦见妻子疯了，寓意着妻子会把家安排得井井有条。梦见妻子十分疲乏，会与妻子分离。丈夫梦见妻子年青了许多，预示家庭幸福、美满。丈夫梦见援助妻子，夫妻生活会很幸福美满。梦见受到妻子的表扬，妻子会行为不轨，令人厌恶。');
INSERT INTO `ai9me_dream` VALUES ('35', '梦见和尚', '梦见僧人或和尚，吉兆，会有好运。梦见僧侣念经，是死亡的暗示。梦到自己出家，表示重生或疾病可好转。遇高僧说教，表示将开拓人生大道。梦见出家人的画，生活富裕安逸。梦见听和尚或僧人说教，自己的事业会走上正轨。');
INSERT INTO `ai9me_dream` VALUES ('36', '梦见军人', '梦见自己成为军人，预示梦者生活会出现新的转机。梦见别人成为军人，意味着梦者事业征途上一切井然有序。梦见军人在站岗，意味着梦者在未来的工作中需要提高警惕，防止小人捣乱。梦见军人休假，表示梦者已完全处于一种安全和谐的环境之中。女人梦见军人，表示潜意识内对婚姻的担忧。');
INSERT INTO `ai9me_dream` VALUES ('37', '梦见病人', '梦见自己成了病人，预示计划被延迟，或你会得到别人的帮助。梦见别人是病人，表示你会有机会寻求朋友、长辈的帮助。梦见家里有麻疯病病人来访，意味着将会有人登门拜访贵府，向你进行宣传。梦见自己成为精病患者，将跨过障碍和难关，生活越来越安定、富裕的征兆。梦见病人逐渐恢复健康，暗示梦者进行中的事情或计划的事情一帆顺的祥梦。梦见病人在歌唱，这是家里发生等不吉利的事情的征兆。梦见患上传染病的人吃后痊愈，这是将脱离某种组织或团体的意思。梦见精神病病人查看自己的，这是患病或诸事不顺的征兆。梦见病人出院回家，这是暗示梦者祈求一切安好，身体健康的梦。梦见去探望某个病人，梦中的病人即将获得痊愈的征兆。');
INSERT INTO `ai9me_dream` VALUES ('38', '梦见婴儿', '梦见婴儿，一方面，暗示了你自己内心中脆弱、渴望被爱的一面；另一方面，则预示你的自我发展，生活进展中将会转运，得到新机会和好运，之前的辛勤有回报等等。梦见漂亮可爱的婴儿，预示你会有好运气。梦见非常难看的婴儿，则象征可能会有信任的人捣鬼欺骗你。梦见自己抱起婴儿，象征着梦者将会有所收获，不久之后将会得到对于自己来说很重要的东西。梦见婴儿笑，象征着人际关系的良好，您能以诚待人，且身边会有很多。梦见婴儿长牙，象征着计划的顺利实施，您能得到贵人的帮助，不久之后就会有好消息。梦见婴儿说话，可能是在提醒您最近您会遇到麻烦，总有人从中做怪，也就是犯小人.梦见婴儿死亡的梦境，是不详之梦，表明自己计划和希望的破灭，您已经或者将要失去对自己来说很重要的东西。梦见婴儿哭，表示当前有些压抑的情绪，使得自己心烦意乱，这时候最好静下心来，不要主动出击，做事低调些。梦见婴儿哭，并且导致梦者心烦意乱，则预示将有不愉快的事情发生，也可能是你最近身体欠佳。梦见刚出生的孩子就开始直立行走，预示你的工作成绩，将得到赞誉好评。梦见生病的婴儿，表示你在工作或恋爱中可能会遭受挫折。如果梦见小孩丢失，则表示你现在遇到的麻烦或者担心，将会消除，心绪将重获安定，走上逐渐发展的正轨。梦见刚出生的婴儿在大小便，预示可能会遇到不吉利的事，也可能你信赖的人，会令你陷入尴尬境地。已婚但还没有孩子的人来说，梦见婴儿，有时则可能仅仅是表示心中想要孩子的愿望。初为父母的人，梦见婴儿要窒息或在危险中，通常表示了对孩子的强烈关心。孕妇梦见婴儿，则无象征意义。梦见自己的孩子出生，是将要怀孕，或发财、有丰厚进项的预兆。梦见有陌生人抚摩婴儿，暗示你近期运气不佳，会遇到倒霉事儿。');
INSERT INTO `ai9me_dream` VALUES ('39', '梦见姐姐', '男人梦见自己的姐姐，是祥兆，能长寿；女人梦见未婚的姐姐，额外开销会突然增多。女人梦见已婚的姐姐，会与丈夫家的一个女性发生争吵。梦见给姐姐礼物，侵吞公款，会破财。梦见与姐姐吵嘴，会越来越富。梦见去姐姐的家，贵客会登门。梦见与姐姐交谈，会有好消息。梦见姐姐去世，她会长寿。梦见死去的姐姐，会有好运气，家庭和睦。');
INSERT INTO `ai9me_dream` VALUES ('40', '梦见陌生人', '梦见陌生人或者不认识的人是一种好的暗示，如果你梦到从未见过的人的话，这暗示着在最近的将来，你将有恋爱的机会。(但是婴儿则例外)梦见陌生小男孩，或许会有一见钟情发生，但可惜的是和他似乎无法顺利发展。梦见陌生小女孩，会有你喜欢的人已有恋人的传言。但单纯为误传的可能性很高，所以请仔细去确认两者事实上的关系。梦见陌生年轻男孩，会有花花公子型的男孩接近你。但是如果你答应的话，将来可能会后悔。梦见陌生年轻女孩，似乎会在街上巧遇喜欢的男孩。外出时，请打扮得漂亮一点。梦见陌生男性中年，经由朋友的介绍，似乎会有发展成美丽恋情的机遇。梦见陌生女性中年，会得到自己所喜欢的男孩的消息。若能把握机会展开攻势的话，会有好结果产生。梦见陌生男性老年，似乎会得到从未和他讲过话、意想不到的男孩的青睐。梦见陌生女性老年，和不怎么样的男孩的关系，似乎会引起谣传。要控制自己容易招惹误会的言行举止。梦见请求陌生人原谅，预示将经历悲伤，遭受挫折。梦见陌生人表扬自己，寓意着会受到侮辱。梦见陌生人皱眉，预示你可能会结交新朋友。梦见躺在陌生人的床上，夫妻将要离婚。');
INSERT INTO `ai9me_dream` VALUES ('41', '梦见舅舅', '梦见舅舅，会受到人们的尊重。女孩梦见舅舅，会陷入困境。犯人梦见舅舅，很快会获得自由');
INSERT INTO `ai9me_dream` VALUES ('42', '梦见裁缝', '裁缝代表了辛勤劳作与生活转机，是好的预示，梦见裁缝通常表示前一段的时间的努力会有所回报或者有好事即将发生。男人梦见裁缝，预示将发财致富，事业会上个新台阶。女人梦见裁缝，预示娘家或夫家会有大办婚礼这样的喜事。梦见自己成了裁缝，预示收入增加，经济条件转好。梦见请裁缝做新衬衣，预示家里可能将举行婚礼。梦见把裁缝叫到家里，预示子女将独立，长大成人，成家立业。梦见和裁缝交朋友，预示家里会增加额外的开销。梦见自己和裁缝吵架，预示经济上可能会承担损失。梦见与裁缝发生误会，表示你将对某项计划的结果感到不满与失望。梦见裁缝给你量尺寸，预示你将会因某事与他人发生争吵，从而使你们的关系趋于紧张。');
INSERT INTO `ai9me_dream` VALUES ('43', '梦见双胞胎', '梦见双胞胎，反映做梦人互相对立的个性以及矛盾的心理；梦见双胞胎在打架，表示内心中有强烈对立的自我。梦见双胞胎一起快乐地玩耍，表示你的内心中，虽然有不同的自我，但不同自我之间相处都很和谐。梦中的双胞胎身体瘦弱，表示你将亲临失望和痛苦的第一线。梦见四胞胎，则预示你可能要承受困难，但依然充满希望。男子梦见双胞胎，通常表示经过思虑和内心的斗争后，成家立业，事业成功。商人梦见双胞胎，预示最终会财源广进。病人梦见双胞胎，预示身体正慢慢恢复健康。');
INSERT INTO `ai9me_dream` VALUES ('44', '梦见寡妇', '梦见寡妇，通常预示你会有损失或内心悲伤。女人梦见寡妇，暗示自己对目前的生活状况表示担忧，对未来没有信心。男人梦见寡妇，表现了对女性的渴望，同时又想得到一位独立自主的女性青睐，能在事业上帮助自己。男子梦见和寡妇交谈，要小心有人造谣中伤你。梦见自己给寡妇钱，或帮助寡妇，预示你会有好运气，或者得到意外的回报。梦见和寡妇吵架，预示你会倒霉。如果梦见了披麻戴孝的寡妇，则象征你自己心中对死亡的恐惧。');
INSERT INTO `ai9me_dream` VALUES ('45', '梦见警察', '警察是具有典型男性特征的形象，有权威、规范、良心的含义。梦见警察站着，是危险的兆头。梦见与警察吵架，要多加小心，预示你会有强盗或仇人威胁你。梦见挨警察的打，预示你可能会发生营私舞弊，贪污渎职的事情，造成严重损失。梦见自己当了警察，或是当侦探去调查案件，预示你在人际关系方面将遇到挫折，可能会受到别人的造谣中伤，名誉受损，或威信扫地，陷入困境，要细致冷静地应付。梦见自己穿着警服，会受到刑事案件的牵连梦见被警察追捕，表示你可能有有些想法和冲动，在内心深处感觉是道德准则或社会规范所反对的，会受到责备，因此感到不安。这个时候的警察是超我的象征，也就是良心的化身。也有可能表示你内心中一直压抑的，少年时代对生活中那个独裁专制的父亲的怨恨。梦见和警察交谈，暗示你会得到重视和提升。梦见接受警察的盘问或问讯，提醒你要提防自己的身体健康，你可能会患病。尤其要注意饮食，对食物中毒、痢疾、便秘等消化疾病更要格外当心。梦见向警察求助，预示你会安全幸福，克服困难。梦见自己被警察抓住，预示工作将取得显着成绩，或是学习成绩进步惊人，会受到领导、上司、老师的重视，令人刮目相看。梦见犯了罪被警察抓住，读书运最好的时刻。在全班的成绩普遍低的情况下，只有你一个人是九十分以上的好成绩，必能一鸣惊人。未婚男子梦见与警察争吵，会带着自己的情侣逃跑。男人梦见请求援助，作梦人会幸福安全。女人梦见求助于警察帮助，很快要出狱。女人梦见与警察交谈，丈夫的保镖会受伤。妻子梦见和警察谈话，可能表示丈夫将遇到危险。商人梦见和警察谈话，警告你要小心提防竞争对手。官员梦见和警察谈话，预示会得到政府和警察的尊重。囚犯梦见与警察谈话，很快会被释放。惯犯梦见警察抓人，多次作案，能发大财。');
INSERT INTO `ai9me_dream` VALUES ('46', '梦见哑巴', '梦见自己成为哑巴，不祥之兆，要提防小人。梦见自己突然变成哑巴，想要张嘴却说不出话来，暗示可能有小人中伤你，你却找不出原因，让你举步艰难。梦见自己成为哑巴然后又好了，预示着自己最终战胜小人。');
INSERT INTO `ai9me_dream` VALUES ('47', '梦见明星', '名歌星出现于梦中时，则暗示与朋友有口角之争，人际关系亦将有麻烦产生。要多留意朋友嫉妒、吃醋的心理。');
INSERT INTO `ai9me_dream` VALUES ('48', '梦见弓箭手', '梦中的弓箭手，是恋爱与婚姻的代表。梦见弓弩手/弓箭手，预示你即将找到生命中的另一半，要好好珍惜。已婚人士梦见弓箭手，预示你的婚姻幸福美满，将与你的伴侣携手走过人生。');
INSERT INTO `ai9me_dream` VALUES ('49', '梦见孕妇', '预示着梦者所进行的事情非常顺利，而且金钱上会有好的运气。 　　未婚女人梦见孕妇，预示难以出嫁，或出嫁后婚姻会出现问题，如争吵分歧等，让家庭不和。');
INSERT INTO `ai9me_dream` VALUES ('50', '梦见妓女', '梦见自己是妓女，预示你将因自己表现恶劣，让正直的朋友看不起你。年轻女子梦见妓女，预示她会欺骗她心爱的人，让其相信自己是纯洁的，坦诚的。对于已婚女人，此梦过后，她将开始怀疑丈夫，因此不断地争吵。梦见与妓女相殴，梦主得情助势，门户昌荣气象之兆。技艺之人争长夺色。老者梦此，主有虚症，不祥。梦见与妓女为夫妻，大吉，梦此者夫妻昌吉也。未配者主得技艺美色之妻。如素爱烟花之人，为与妓女合心。梦见与妓女相别，吉，此梦阴事之非远离之象。凡事得理，疾病脱身。其占为浪子回头，花凋蝶散。');
INSERT INTO `ai9me_dream` VALUES ('51', '梦见已故的祖父母', '梦见已故的祖父带着农具去种地，父亲或家里的其他人会调动工作岗位或搬家。梦见已故的祖父赶着一头母牛来到院里或将牛栓在牛棚，预示即将迎来儿媳、家庭主妇或妻子，或者得到意外的财物。梦见已故的祖父抚摸孙子，在现实中里的孙子会患病。梦见已故的祖父背着孙子或领到屋外，预示近期内孙子会死亡。梦见已故的祖父母欲向自己说什么话，这是预示有事情将发生，需要倍加小心。梦见已故的祖父母再世后准备带着自己外出，这是警告你有可能由于意外的事故或疾病而死亡，又或者面临严重的忧患。');
INSERT INTO `ai9me_dream` VALUES ('52', '梦见坏人', '梦见坏人预示者你似乎正向往着危险的恋爱。例如想抢夺朋友的男友，或是想和有妇之夫的他度过危险偷情的一夜等等。如果你已有男朋友的话，梦见坏人预示着是否浮动的心正开始萌芽。');
INSERT INTO `ai9me_dream` VALUES ('53', '梦见犯人', '梦见与犯人交谈，要遭厄运，要提高警惕，避免灾祸。梦见与犯人交朋友，暗示你可能会结交品行不良的朋友，给你造成严重损失。梦见与囚犯吵架，烦恼和灾祸会过去，将要过上称心如意的日子。梦见犯人逃走，病患即将好转。犯人梦见获得大赦或无罪释放，家里的房屋有危险');
INSERT INTO `ai9me_dream` VALUES ('54', '梦见帅哥', '梦见一帅哥被我打了，这是你潜意识的作用，在现实上，你可能比较在意这样的帅哥，有想接近的冲动，但你把这种冲动压抑在内心深处它，然后在梦中把压抑释放了出来，成一个暴力动作。梦中知道对方是个帅哥，但模模糊糊地看不清样子，好幸福的感觉。代表你的内心深处已经厌倦了你男朋友。哎！解铃还需系铃人，是因为你的男朋友和你太少的接触，所以你会在梦里面梦不到他。你们要是天天都在一起做一些有意义的事。做一些比较开心的事。我想你晚上也能梦到他的。女人若梦见帅哥的话一般意味着以后可能会被人追求或代表着你希望有人来爱你，真诚对待你。');
INSERT INTO `ai9me_dream` VALUES ('55', '梦见日本人', '梦见日本人，预示能从敌人的魔爪中逃跑出来。未婚者梦见日本人，预兆您的爱情可成功。但双方不可我行我素。待业者梦见日本人，说明您的财运不顺，需待时机。');
INSERT INTO `ai9me_dream` VALUES ('56', '梦见处女', '梦见处女，预示你的事业将会福星高照。已婚女人梦见自己仍是处女，表示她会对自己曾经做过的某些事情感到羞愧和后悔，但悔过的心并不会给她带来好运。一个年轻女子梦见自己已不再是处女，预示她与男性之间行为的不失检点会损及自己的名誉。男人梦见和一个处女保持不正当关系，预示他不管如何努力也将无法完成原定的某项计划，别人的行为倒会给他带来很多麻烦；或预示他的理想会由于合作缺乏保障而无法实现。');
INSERT INTO `ai9me_dream` VALUES ('57', '梦见老情人', '很多人都会梦到老情人，(即过去的男女朋友或自己曾爱慕的对象)首先说明你在心中还留有他的位置，不管这个位置是好是坏，至少他还占着一点分量。梦见老情人，表示一些消极的态度，和令你困扰的人际关系。梦见和对方关系很差，代表你的人际关系会转好，还有你和对方的关系有可能以另一种形式出现。梦见和对方关系很好、相处得很开心，是反映了你现在寂寞的心态。梦见和对方结婚，则代表你和他的关系已经划清界线，你是完全决绝的了。已有伴侣的朋友梦见老情人，往往显示梦者对身边伴侣有所不满，而伴侣无意作出迁就。梦者在现实生活中已有异心，但未找到可以取代伴侣的人，因而令脑海产生找寻旧档案的讯息。一些从前曾经爱慕而无结果的爱情，成为暂代品。但这却不足以表示你们即将分手，相反等你醒来好好考虑一下现实情况，会更加珍惜身边人，为对方做出改变。经常梦见老情人，这时就该检讨与爱侣的感情，若让情况持续，梦者一旦在现实生活遇到投缘的异性，多会不能自制，出现三角关系。梦见老情人再次伤害或背叛你，让你在梦中痛不欲生，这或许则是在提醒你，不要在感情上再犯相同的愚蠢错误，小心审视身边伴侣。单身的朋友梦见老情人，或许你真的觉得寂寞了，很想渴望爱情的到来。而在没有具体想象对象的时候，老情人就出现在梦中。这时候你就该好好调整下自己的状态，时刻准备着，抓住任何爱情的机会哦。');
INSERT INTO `ai9me_dream` VALUES ('58', '梦见第三者', '梦见第三者，吉兆，预示着爱情会很甜蜜。');
INSERT INTO `ai9me_dream` VALUES ('59', '梦见白马王子', '女人梦见白马王子，说明心里极度缺乏爱的感觉，有滥交的可能性。少女梦见白马王子，即将要交到男朋友，但一定不是自己称心如意或者能过一辈子的那种。未婚女子梦见白马王子，将和男朋友分手，婚姻大事将会无限期拖延。已婚女子梦见白马王子，家庭关系要出现危机，和丈夫将有离婚的危险，有外遇的可能性大于百分之六十。');
INSERT INTO `ai9me_dream` VALUES ('60', '梦见仇人', '梦见仇人，预示你将取得成就，困难将过去，未来会有好运，值得期待。梦见和仇人交朋友，预示你将结交很多新朋友，帮助你获得成功。梦见和仇人争吵，则预示你会遭受损失。梦见仇人难过，预示你会打赢官司，或是战胜敌手。梦见收到了仇人死亡的消息，预示你会有宽容又忠实可靠的朋友。商人梦见仇人，预示你能打败对手占领市场。商人梦见仇人攻击自己，预示生意上会遇到挫折。女人梦见丈夫的情妇，预示你将赢得丈夫。');
INSERT INTO `ai9me_dream` VALUES ('61', '梦见美女', '梦见与美貌女子交往，为破财之兆。 　　梦见跟一个陌生的同龄美女长成了好朋友，说明交朋友，希望自己的快乐苦恼能和别人分享和承担，可能现实中缺少这种朋友关系，有什么事情都是自己扛。');
INSERT INTO `ai9me_dream` VALUES ('62', '梦见喜欢的人', '');
INSERT INTO `ai9me_dream` VALUES ('63', '梦见外星人', '梦见外星人就在自己眼前，预示你有好运气，可能会有意想不到的收获。梦见外星人可能暗示着生活被某种外来因素所左右，或者对自己所处的环境还不太了解。');
INSERT INTO `ai9me_dream` VALUES ('64', '梦见毛主席', '梦见毛主席，朋友运好转。与朋友将有顺利的交往；与双亲和兄弟之间的关系也将非常好。梦见和毛主席握手，表示健康良好，将会变得越来越健康。二，三天连续熬夜看手也无所谓，加油吧!未婚的人梦见和毛主席握手，您的恋情性急则不成，耐心则成功。未婚男女梦见毛主席，您的恋情问题会有，但要主动去解决，好运才会来。老人梦见毛主席预示出远门，佳，可获得利益。生意人梦见毛主席，说明您的财运可聚财。求学者梦见和毛主席握手，说明考试成绩一般。病人梦见和毛主席握手，说明这段时间您的运气：外表美观而内在空虚，所以要先充实内在，才有好运气。要提防小人诽谤。');
INSERT INTO `ai9me_dream` VALUES ('65', '梦见陆军 ', '梦见整齐的陆军队列向你开来或立在原地，暗示你有勇往直前积极进取的精神，并会踏踏实实，稳步追求事业的发展。梦见壮观的陆军队列，或挺拔的陆军战士，有时也可能仅仅表示你对军人阳刚气质的向往，或是过去有过参军的愿望。男人梦见陆军，预示事业要大步向前，稳定发展。女人梦见陆军，预示生活舒适，生活质量稳步提高。');
INSERT INTO `ai9me_dream` VALUES ('66', '梦见风骚女子', '梦见看到一位风骚的女子，表示你有狡猾的敌人需要你去征服。梦见你杀死一名风骚女子，意味着你的欲望会实现。年轻女性梦见风骚女人，梦到她的行径快要比得上风骚女子的行径了，意味着她需要男人的保护。');
INSERT INTO `ai9me_dream` VALUES ('67', '梦见久未见面的人', '梦见久未见面的人时，寓意着此人将会很快归来。');
INSERT INTO `ai9me_dream` VALUES ('68', '梦见工人', '通常来说梦中的男建筑工人，有父亲的意味，充满力量，搭建遮风避雨的房屋。梦见有一个建筑工或维修工修理你的房子，预示你将反思出你生活中的问题，并对它加以解决。梦中的房子象征自我。梦见一个工人在疏通管道，预示你将解决情感积郁的问题。梦见技工，或技工面对着一堆拆零的零件，象征自己面对着生活中一摊乱麻般的局面，并为要理清头绪，解决现状，感到异常苦恼。梦见井下作业的矿工，则有可能暗示你正在探索自己幽暗的内心深处。梦见管道工，则表示你对内心精神或情感的摸索。孕妇梦见管道工，还有可能是妇道医生的形象在梦里的显现。');
INSERT INTO `ai9me_dream` VALUES ('69', '梦见厨师', '梦见厨师在准备宴会，喜庆的日子将要到来。梦见厨师教你烹调，在金钱方面有暗影出现。 这时很容在路上或公共汽车上遗失钱财，小心不要带太多的钱出门。');
INSERT INTO `ai9me_dream` VALUES ('70', '梦见陆军', '梦见整齐的陆军队列向你开来或立在原地，暗示你有勇往直前积极进取的精神，并会踏踏实实，稳步追求事业的发展。梦见壮观的陆军队列，或挺拔的陆军战士，有时也可能仅仅表示你对军人阳刚气质的向往，或是过去有过参军的愿望。男人梦见陆军，预示事业要大步向前，稳定发展。女人梦见陆军，预示生活舒适，生活质量稳步提高。');
INSERT INTO `ai9me_dream` VALUES ('71', '梦见烧香的人', '梦见烧香的人，表示你的感情已经成熟，你的另一半也很优秀，很受到肯定，在不久之后你们就能共结礼堂。');
INSERT INTO `ai9me_dream` VALUES ('72', '梦见神秘人', '梦中你看见很神秘的人，则意味着你的运气会变好或变坏，而这也要看个人的长相是不是好看或难看，有没有畸形而定。');
INSERT INTO `ai9me_dream` VALUES ('73', '梦见亿万富豪', '梦见成为亿万富豪，则近日营业将会损失惨重。');
INSERT INTO `ai9me_dream` VALUES ('74', '梦见跛子', '梦见跛子，在遇到困境时你不会知道求助于朋友。梦见自己成了跛子，会遇到难以克服的困难。梦见爬墙时摔跛了腿，会取得成功。');
INSERT INTO `ai9me_dream` VALUES ('75', '梦见虐待狂', '虐待狂象征着被误导的生命力，也暗示着清醒状态下的受虐天性。梦见自己变成虐待狂，人际上将出现大的问题，须学会自我反顾。梦见自己被虐待狂虐待，暗示着梦者在现实心里上渴望被虐待。');
INSERT INTO `ai9me_dream` VALUES ('76', '梦见贵人', '梦见贵人表示你能够出人头地的机会很大，未来有一番作为。梦见领袖，则表示心灵上得到安详;如果梦见领袖在行事，则会受到赏识。一般人梦见自己在贵人面前，表示将会出人头地;但若梦中与贵人为对等地位，则有忧事将至。');
INSERT INTO `ai9me_dream` VALUES ('77', '梦见窃贼', '梦见窃贼进入梦境，表示梦者经历着个人氛围的损害。产生的原因可能在外部，可是造成了愈来愈大的内心恐惧和困难的感觉。梦见窃贼在搜你的身，你将遇到强劲的竞争对手，在和陌生人交往时要万分小心，否则你将被对手打垮。梦见家或公司被人室盗窃。你在社会上和事业上的名望会受到质疑，但你直面困难的勇气将保护你。此梦后，可能由于疏忽而发生事故。');
INSERT INTO `ai9me_dream` VALUES ('78', '梦见赤裸的男人', '梦见赤裸的男人，将会感到忧愁和悲伤。梦到男人浑身赤裸，在清清的水中游泳，预示将有许多人爱(羡)慕她；如果水很浑浊，仰慕者将因为嫉妒而恶意造谣。');
INSERT INTO `ai9me_dream` VALUES ('79', '梦见两性人', '梦见两性人或雌雄同体的生物表示梦者对自己的性别角色存在疑问或者不满意。此外，如果梦者希望对本身有进一步的了解，他就必须努力在自己理性的一面和感性的一面作出平衡，而这种心理状态会在他的梦中以两性人的形式表现出来。梦中出现的两性人表示一种完全的平衡。');
INSERT INTO `ai9me_dream` VALUES ('80', '梦见嫂子', '经常梦见我嫂子，有可能和植物神经功能紊乱有关。建议注意休息，避免精神紧张，放松心情，药物方面可以给与谷维素片口服治疗。梦见跟嫂子发生关系，亲情缺乏和渴望的表现。梦见怀孕的嫂子遇难，梦中的死亡多与新生有关。你的嫂子和她的宝宝会平安无事，不久之后你将会听到宝宝出世的消息。');
INSERT INTO `ai9me_dream` VALUES ('81', '梦见工人', '通常来说梦中的男建筑工人，有父亲的意味，充满力量，搭建遮风避雨的房屋。梦见有一个建筑工或维修工修理你的房子，预示你将反思出你生活中的问题，并对它加以解决。梦中的房子象征自我。梦见一个工作在疏通管道，预示你将解决情感积郁的问题。梦见技工，或技工面对着一堆拆零的零件，象征自己面对着生活中一摊乱麻般的局面，并为要理清头绪，解决现状，感到异常苦恼。梦见井下作业的矿工，则有可能暗示你正在探索自己幽暗的内心深处。梦见管道工，则表示你对内心精神或情感的摸索。孕妇梦见管道工，还有可能是妇道医生的形象在梦里的显现。');
INSERT INTO `ai9me_dream` VALUES ('82', '梦见国王', '国王是统帅全国，为民排忧解难的形象。梦见国王，预示你将有机会面对富贵荣耀，但同时也意味着你会有忧愁烦闷，承担责任，为此你将奋力与现实博斗，并需要保持充足的自信心。梦见自己和国王对话，预示你勇于承担责任，不畏惧矛盾或痛苦，最终必将功成名就。');
INSERT INTO `ai9me_dream` VALUES ('83', '梦见老太太', '梦见个老太太送小孩给我，非孕妇的梦中可能表过潜意识中想要个孩子的愿望。梦见和老太太结婚，会得到遗产。');
INSERT INTO `ai9me_dream` VALUES ('84', '梦见皇帝', '梦中的皇帝，按照心理分析的观点，象征父权。通常来说，男人梦见如在电视剧中的情景一般，在金碧辉煌的房间里，看见黄袍加身的皇帝，预示会加官晋爵，发财兴旺。梦见被皇帝召见，对官场中人预示要升官。除此之外，做这个梦还可能预示工作中可能会遇到风波，尤其是要注意涉及大宗财务支出方面的事情。梦见被皇帝责罚，象征家业昌盛，人丁兴旺，子孙满堂。梦见与帝王对话、交谈，则暗示你凭借长辈指点或贵人相助，将走上荣身之路，梦想总有一天能够实现，将来定会功成名就。梦见自己是皇帝，则是在提醒你做事要多听各方面的意见，顾全大局，切忌独断专行。女人梦见皇帝，预示生活幸福，衣食无忧。商人梦见皇帝，预示财源广进，生意兴隆。');
INSERT INTO `ai9me_dream` VALUES ('85', '梦见陌生男人', '梦见男性老年 似乎会得到从未和他讲过话、意想不到的男孩的青睐。');
INSERT INTO `ai9me_dream` VALUES ('86', '梦见老伯伯', '梦见一位老伯伯变成小孩子，要小心提防，比你年长的人会陷害你。');
INSERT INTO `ai9me_dream` VALUES ('87', '梦见小人', '梦见小人，预示身边有人正隐瞒一些对于你很重要的事情，可能会有不顺利的事情发生。也意味着要调动工作，财源会旺盛。女性梦见小人预兆有机会旅行，一路平安，有友相伴。待业者梦见小人主钱财方面：佳，但防投资错误。老人梦见小人则您的运气平平，安守本份，可保平安，否则会招致坏运。');
INSERT INTO `ai9me_dream` VALUES ('88', '梦见木匠', '梦见木匠，寓意创造奇迹，生活美好。梦见和木匠吵架，是提示你某项预算花销太大，要开源节流。梦见木匠盖新房子，表示你会在政绩、学术或艺术领域等方面取得杰出成绩。梦见自己家请木匠做工，并且木匠手艺高超，做工精致，表示你是个很会享受生活的人，日子安逸舒适。梦见木匠在干木工活，预示你将从事正当诚实的劳动，排斥自私的消遣和娱乐活动，踏踏实实地改变自己的生活。男人梦见木匠，预示不久会收到好消息。女人梦见木匠，会成为精明能干的持家能手。');
INSERT INTO `ai9me_dream` VALUES ('89', '梦见故人', '梦见故人，孩子要成亲。梦见故人死亡，朋友运下降。因为你的竞争意识太强，所以让别人敬而远之。尤其在考试之后，这种现象特别明显，实在有反省的必要。梦见故人哭，服刑期间会做苦力待业者梦见故人哭主财运：初运佳，但防后运衰退。梦见故人借钱，人际关系方面运气上升的可能性很大。你与亲友的交情将更加深厚，有什么困难，都可以与之商量，对方一定可以替你分忧已婚者梦见故人借钱要出远门，最好不要立刻出发，等待好时机吧!梦见故人被追打，努力拼搏能赚钱。同时，在异性方面也会有所收获。将会有一次新的交际，相逢的地方是朋友家。但这次交往是否会发展成为恋爱，要看以后的进展情况。老人梦见故人则近期运势运程，运气不通，诸事不如意，避免与人发生纠纷，及家庭不和。老人梦见故人被追打则您的运势，万事如意。如果不谦虚，反而骄傲横行，则容易招到祸害。病人梦见故人死亡则近期运程，困难多，万事不如意。有小人加害，须小心谨慎。但不要悲观，要退一步想，以待好运来。未婚的人梦见故人哭预兆您的爱情：成功。待业者梦见故人被追打说明您的财运佳。未婚男女梦见故人被追打解释：最近爱情方面耐心则成功。');
INSERT INTO `ai9me_dream` VALUES ('90', '梦见小朋友', '梦见一位很可爱、趣致的小朋友，你会收到年终的奖金、双薪。');

-- ----------------------------
-- Table structure for `ai9me_flash`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_flash`;
CREATE TABLE `ai9me_flash` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(255) NOT NULL,
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `info` varchar(90) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_flash
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_goldegg_record`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_goldegg_record`;
CREATE TABLE `ai9me_goldegg_record` (
  `id` int(11) NOT NULL auto_increment,
  `lid` int(11) NOT NULL COMMENT '关联ID',
  `usenums` tinyint(1) NOT NULL default '0' COMMENT '用户使用次数',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(60) NOT NULL COMMENT '微信TOKEN',
  `islucky` int(1) NOT NULL COMMENT '是否中奖',
  `wecha_name` varchar(60) NOT NULL COMMENT '微信号',
  `phone` varchar(20) NOT NULL COMMENT '手机号',
  `sn` varchar(60) NOT NULL COMMENT '中奖后序列号',
  `time` int(11) NOT NULL COMMENT '时间',
  `prize` varchar(60) NOT NULL default '' COMMENT '已中奖项',
  `sendstutas` int(11) NOT NULL default '0' COMMENT '领取状态',
  `sendtime` int(11) NOT NULL COMMENT '领取时间',
  PRIMARY KEY  (`id`,`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_goldegg_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_home`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_home`;
CREATE TABLE `ai9me_home` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL,
  `picurl` varchar(120) NOT NULL,
  `info` varchar(120) NOT NULL,
  `homebgurl` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_home
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_host_order`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_host_order`;
CREATE TABLE `ai9me_host_order` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `book_people` varchar(50) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `check_in` int(11) NOT NULL,
  `check_out` int(11) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `book_time` int(11) NOT NULL,
  `book_num` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL COMMENT ' ',
  `order_status` int(11) NOT NULL COMMENT ' ',
  `hid` int(11) NOT NULL,
  `remarks` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_host_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_links`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_links`;
CREATE TABLE `ai9me_links` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_links
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_lottery_record`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_lottery_record`;
CREATE TABLE `ai9me_lottery_record` (
  `id` int(11) NOT NULL auto_increment,
  `lid` int(11) NOT NULL,
  `usenums` tinyint(1) NOT NULL default '0' COMMENT '用户使用次数',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(30) NOT NULL,
  `islottery` int(1) NOT NULL COMMENT '是否中奖',
  `wecha_name` varchar(60) NOT NULL COMMENT '微信号',
  `phone` varchar(15) NOT NULL,
  `sn` varchar(13) NOT NULL COMMENT '中奖后序列号',
  `time` int(11) NOT NULL,
  `prize` varchar(50) NOT NULL default '' COMMENT '已中奖项',
  `sendstutas` int(11) NOT NULL default '0',
  `sendtime` int(11) NOT NULL,
  PRIMARY KEY  (`id`,`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_lottery_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_marrycard_wish`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_marrycard_wish`;
CREATE TABLE `ai9me_marrycard_wish` (
  `id` int(11) NOT NULL auto_increment,
  `imcid` int(11) NOT NULL COMMENT '微喜帖ID',
  `type` varchar(60) NOT NULL default 'wish' COMMENT '类型,join:赴宴,wish:祝福',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(60) NOT NULL COMMENT '微信TOKEN',
  `wecha_name` varchar(60) NOT NULL COMMENT '微信号',
  `guestname` varchar(60) NOT NULL COMMENT '宾客姓名',
  `wishcontent` varchar(255) NOT NULL COMMENT '祝福语',
  `mobilephone` varchar(60) NOT NULL COMMENT '宾客手机',
  `num` int(11) NOT NULL default '0' COMMENT '赴宴人数',
  `creattime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY  (`id`,`imcid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_marrycard_wish
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_member_card_contact`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_member_card_contact`;
CREATE TABLE `ai9me_member_card_contact` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `sort` tinyint(1) NOT NULL,
  `info` varchar(60) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_member_card_contact
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_member_card_sign`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_member_card_sign`;
CREATE TABLE `ai9me_member_card_sign` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `sign_time` int(11) NOT NULL,
  `is_sign` int(11) NOT NULL,
  `expense` int(11) NOT NULL,
  `score_type` int(11) NOT NULL COMMENT ' ',
  `sell_expense` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_member_card_sign
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_order`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_order`;
CREATE TABLE `ai9me_order` (
  `id` int(11) NOT NULL auto_increment,
  `user` varchar(255) character set utf8 collate utf8_bin default NULL COMMENT '用户',
  `phone` varchar(100) character set utf8 collate utf8_bin default NULL,
  `come_time` varchar(100) default NULL,
  `type` varchar(50) default NULL,
  `num` int(11) default NULL,
  `old_price` int(11) default NULL,
  `now_price` int(11) default NULL,
  `info` text,
  `add_time` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_other`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_other`;
CREATE TABLE `ai9me_other` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_other
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_panoramic`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_panoramic`;
CREATE TABLE `ai9me_panoramic` (
  `id` int(10) NOT NULL auto_increment,
  `token` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL default '全景相册展示',
  `picurl` varchar(255) NOT NULL,
  `sort` int(10) NOT NULL default '1',
  `click` int(10) NOT NULL default '0',
  `frontpic` varchar(255) NOT NULL,
  `rightpic` varchar(255) NOT NULL,
  `backpic` varchar(255) NOT NULL,
  `leftpic` varchar(255) NOT NULL,
  `toppic` varchar(255) NOT NULL,
  `bottompic` varchar(255) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_panoramic
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_pay_m_alipay_config`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_pay_m_alipay_config`;
CREATE TABLE `ai9me_pay_m_alipay_config` (
  `token` varchar(60) NOT NULL,
  `name` varchar(40) NOT NULL default '',
  `pid` varchar(40) NOT NULL default '',
  `key` varchar(60) NOT NULL default '',
  `open` tinyint(1) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_pay_m_alipay_config
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_photo`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_photo`;
CREATE TABLE `ai9me_photo` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `title` varchar(20) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `isshoinfo` tinyint(1) NOT NULL,
  `num` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `info` varchar(150) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_photo
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_requestdata`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_requestdata`;
CREATE TABLE `ai9me_requestdata` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `time` int(11) NOT NULL,
  `textnum` int(5) NOT NULL,
  `imgnum` int(5) NOT NULL,
  `videonum` int(5) NOT NULL,
  `other` int(5) NOT NULL,
  `follownum` int(5) NOT NULL,
  `unfollownum` int(5) NOT NULL,
  `3g` int(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_requestdata
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_snccode`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_snccode`;
CREATE TABLE `ai9me_snccode` (
  `id` int(11) NOT NULL auto_increment,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `caeatetime` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_snccode
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_system_info`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_system_info`;
CREATE TABLE `ai9me_system_info` (
  `lastsqlupdate` int(10) NOT NULL,
  `version` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_system_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ai9me_users`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_users`;
CREATE TABLE `ai9me_users` (
  `id` int(11) NOT NULL auto_increment,
  `gid` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `lasttime` varchar(13) NOT NULL,
  `status` varchar(1) NOT NULL,
  `createip` varchar(30) NOT NULL,
  `lastip` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `activitynum` int(11) NOT NULL,
  `card_num` int(11) NOT NULL,
  `card_create_status` tinyint(1) NOT NULL,
  `money` int(11) NOT NULL,
  `viptime` varchar(13) NOT NULL,
  `connectnum` int(11) NOT NULL default '0',
  `wechat_card_num` mediumint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_users
-- ----------------------------
INSERT INTO `ai9me_users` VALUES ('1', '4', 'zhongwei', '490beb3c090c85298aab69f796ebd23f', '623610577@qq.com', '1388734232', '1388734232', '1', '127.0.0.1', '127.0.0.1', '0', '0', '0', '0', '0', '1391412632', '0', '0');

-- ----------------------------
-- Table structure for `ai9me_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_user_group`;
CREATE TABLE `ai9me_user_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `connectnum` int(11) NOT NULL,
  `iscopyright` tinyint(1) NOT NULL,
  `activitynum` int(3) NOT NULL,
  `price` int(11) NOT NULL,
  `statistics_user` int(11) NOT NULL,
  `create_card_num` int(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `wechat_card_num` int(4) NOT NULL default '4',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_user_group
-- ----------------------------
INSERT INTO `ai9me_user_group` VALUES ('1', 'vip0', '2000', '2000', '0', '0', '0', '0', '10', '1', '4');
INSERT INTO `ai9me_user_group` VALUES ('2', 'vip1', '3000', '3000', '1', '2', '1', '0', '50', '1', '4');
INSERT INTO `ai9me_user_group` VALUES ('3', 'vip2', '4000', '4000', '1', '4', '50', '0', '80', '1', '4');
INSERT INTO `ai9me_user_group` VALUES ('4', 'vip3', '5000', '5000', '1', '5', '300', '0', '1000', '1', '4');

-- ----------------------------
-- Table structure for `ai9me_weather`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_weather`;
CREATE TABLE `ai9me_weather` (
  `id` int(4) NOT NULL auto_increment,
  `code` char(9) NOT NULL,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2502 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_weather
-- ----------------------------
INSERT INTO `ai9me_weather` VALUES ('1', '101010100', '北京');
INSERT INTO `ai9me_weather` VALUES ('2', '101010200', '海淀');
INSERT INTO `ai9me_weather` VALUES ('3', '101010400', '顺义');
INSERT INTO `ai9me_weather` VALUES ('4', '101010500', '怀柔');
INSERT INTO `ai9me_weather` VALUES ('5', '101010600', '通州');
INSERT INTO `ai9me_weather` VALUES ('6', '101010700', '昌平');
INSERT INTO `ai9me_weather` VALUES ('7', '101010800', '延庆');
INSERT INTO `ai9me_weather` VALUES ('8', '101010900', '丰台');
INSERT INTO `ai9me_weather` VALUES ('9', '101011000', '石景山');
INSERT INTO `ai9me_weather` VALUES ('10', '101011100', '大兴');
INSERT INTO `ai9me_weather` VALUES ('11', '101011200', '房山');
INSERT INTO `ai9me_weather` VALUES ('12', '101011300', '密云');
INSERT INTO `ai9me_weather` VALUES ('13', '101011400', '门头沟');
INSERT INTO `ai9me_weather` VALUES ('14', '101011500', '平谷');
INSERT INTO `ai9me_weather` VALUES ('15', '101020100', '上海');
INSERT INTO `ai9me_weather` VALUES ('16', '101020200', '闵行');
INSERT INTO `ai9me_weather` VALUES ('17', '101020300', '宝山');
INSERT INTO `ai9me_weather` VALUES ('18', '101020500', '嘉定');
INSERT INTO `ai9me_weather` VALUES ('19', '101020600', '浦东南汇');
INSERT INTO `ai9me_weather` VALUES ('20', '101020700', '金山');
INSERT INTO `ai9me_weather` VALUES ('21', '101020800', '青浦');
INSERT INTO `ai9me_weather` VALUES ('22', '101020900', '松江');
INSERT INTO `ai9me_weather` VALUES ('23', '101021000', '奉贤');
INSERT INTO `ai9me_weather` VALUES ('24', '101021100', '崇明');
INSERT INTO `ai9me_weather` VALUES ('25', '101021300', '浦东');
INSERT INTO `ai9me_weather` VALUES ('26', '101030200', '武清');
INSERT INTO `ai9me_weather` VALUES ('27', '101030300', '宝坻');
INSERT INTO `ai9me_weather` VALUES ('28', '101030400', '东丽');
INSERT INTO `ai9me_weather` VALUES ('29', '101030500', '西青');
INSERT INTO `ai9me_weather` VALUES ('30', '101030600', '北辰');
INSERT INTO `ai9me_weather` VALUES ('31', '101030700', '宁河');
INSERT INTO `ai9me_weather` VALUES ('32', '101030800', '汉沽');
INSERT INTO `ai9me_weather` VALUES ('33', '101030900', '静海');
INSERT INTO `ai9me_weather` VALUES ('34', '101031000', '津南');
INSERT INTO `ai9me_weather` VALUES ('35', '101031100', '塘沽');
INSERT INTO `ai9me_weather` VALUES ('36', '101031200', '大港');
INSERT INTO `ai9me_weather` VALUES ('37', '101031400', '蓟县');
INSERT INTO `ai9me_weather` VALUES ('38', '101040100', '重庆');
INSERT INTO `ai9me_weather` VALUES ('39', '101040200', '永川');
INSERT INTO `ai9me_weather` VALUES ('40', '101040300', '合川');
INSERT INTO `ai9me_weather` VALUES ('41', '101040400', '南川');
INSERT INTO `ai9me_weather` VALUES ('42', '101040500', '江津');
INSERT INTO `ai9me_weather` VALUES ('43', '101040600', '万盛');
INSERT INTO `ai9me_weather` VALUES ('44', '101040700', '渝北');
INSERT INTO `ai9me_weather` VALUES ('45', '101040800', '北碚');
INSERT INTO `ai9me_weather` VALUES ('46', '101041000', '长寿');
INSERT INTO `ai9me_weather` VALUES ('47', '101041100', '黔江');
INSERT INTO `ai9me_weather` VALUES ('48', '101041300', '万州');
INSERT INTO `ai9me_weather` VALUES ('49', '101041400', '涪陵');
INSERT INTO `ai9me_weather` VALUES ('50', '101041500', '开县');
INSERT INTO `ai9me_weather` VALUES ('51', '101041600', '城口');
INSERT INTO `ai9me_weather` VALUES ('52', '101041700', '云阳');
INSERT INTO `ai9me_weather` VALUES ('53', '101041800', '巫溪');
INSERT INTO `ai9me_weather` VALUES ('54', '101041900', '奉节');
INSERT INTO `ai9me_weather` VALUES ('55', '101042000', '巫山');
INSERT INTO `ai9me_weather` VALUES ('56', '101042100', '潼南');
INSERT INTO `ai9me_weather` VALUES ('57', '101042200', '垫江');
INSERT INTO `ai9me_weather` VALUES ('58', '101042300', '梁平');
INSERT INTO `ai9me_weather` VALUES ('59', '101042400', '忠县');
INSERT INTO `ai9me_weather` VALUES ('60', '101042500', '石柱');
INSERT INTO `ai9me_weather` VALUES ('61', '101042600', '大足');
INSERT INTO `ai9me_weather` VALUES ('62', '101042700', '荣昌');
INSERT INTO `ai9me_weather` VALUES ('63', '101042800', '铜梁');
INSERT INTO `ai9me_weather` VALUES ('64', '101042900', '璧山');
INSERT INTO `ai9me_weather` VALUES ('65', '101043000', '丰都');
INSERT INTO `ai9me_weather` VALUES ('66', '101043100', '武隆');
INSERT INTO `ai9me_weather` VALUES ('67', '101043200', '彭水');
INSERT INTO `ai9me_weather` VALUES ('68', '101043300', '綦江');
INSERT INTO `ai9me_weather` VALUES ('69', '101043400', '酉阳');
INSERT INTO `ai9me_weather` VALUES ('70', '101043600', '秀山');
INSERT INTO `ai9me_weather` VALUES ('71', '101050101', '哈尔滨');
INSERT INTO `ai9me_weather` VALUES ('72', '101050102', '双城');
INSERT INTO `ai9me_weather` VALUES ('73', '101050103', '呼兰');
INSERT INTO `ai9me_weather` VALUES ('74', '101050104', '阿城');
INSERT INTO `ai9me_weather` VALUES ('75', '101050105', '宾县');
INSERT INTO `ai9me_weather` VALUES ('76', '101050106', '依兰');
INSERT INTO `ai9me_weather` VALUES ('77', '101050107', '巴彦');
INSERT INTO `ai9me_weather` VALUES ('78', '101050108', '通河');
INSERT INTO `ai9me_weather` VALUES ('79', '101050109', '方正');
INSERT INTO `ai9me_weather` VALUES ('80', '101050110', '延寿');
INSERT INTO `ai9me_weather` VALUES ('81', '101050111', '尚志');
INSERT INTO `ai9me_weather` VALUES ('82', '101050112', '五常');
INSERT INTO `ai9me_weather` VALUES ('83', '101050113', '木兰');
INSERT INTO `ai9me_weather` VALUES ('84', '101050201', '齐齐哈尔');
INSERT INTO `ai9me_weather` VALUES ('85', '101050202', '讷河');
INSERT INTO `ai9me_weather` VALUES ('86', '101050203', '龙江');
INSERT INTO `ai9me_weather` VALUES ('87', '101050204', '甘南');
INSERT INTO `ai9me_weather` VALUES ('88', '101050205', '富裕');
INSERT INTO `ai9me_weather` VALUES ('89', '101050206', '依安');
INSERT INTO `ai9me_weather` VALUES ('90', '101050207', '拜泉');
INSERT INTO `ai9me_weather` VALUES ('91', '101050208', '克山');
INSERT INTO `ai9me_weather` VALUES ('92', '101050209', '克东');
INSERT INTO `ai9me_weather` VALUES ('93', '101050210', '泰来');
INSERT INTO `ai9me_weather` VALUES ('94', '101050301', '牡丹江');
INSERT INTO `ai9me_weather` VALUES ('95', '101050302', '海林');
INSERT INTO `ai9me_weather` VALUES ('96', '101050303', '穆棱');
INSERT INTO `ai9me_weather` VALUES ('97', '101050304', '林口');
INSERT INTO `ai9me_weather` VALUES ('98', '101050305', '绥芬河');
INSERT INTO `ai9me_weather` VALUES ('99', '101050306', '宁安');
INSERT INTO `ai9me_weather` VALUES ('100', '101050307', '东宁');
INSERT INTO `ai9me_weather` VALUES ('101', '101050401', '佳木斯');
INSERT INTO `ai9me_weather` VALUES ('102', '101050402', '汤原');
INSERT INTO `ai9me_weather` VALUES ('103', '101050403', '抚远');
INSERT INTO `ai9me_weather` VALUES ('104', '101050404', '桦川');
INSERT INTO `ai9me_weather` VALUES ('105', '101050405', '桦南');
INSERT INTO `ai9me_weather` VALUES ('106', '101050406', '同江');
INSERT INTO `ai9me_weather` VALUES ('107', '101050407', '富锦');
INSERT INTO `ai9me_weather` VALUES ('108', '101050501', '绥化');
INSERT INTO `ai9me_weather` VALUES ('109', '101050502', '肇东');
INSERT INTO `ai9me_weather` VALUES ('110', '101050503', '安达');
INSERT INTO `ai9me_weather` VALUES ('111', '101050504', '海伦');
INSERT INTO `ai9me_weather` VALUES ('112', '101050505', '明水');
INSERT INTO `ai9me_weather` VALUES ('113', '101050506', '望奎');
INSERT INTO `ai9me_weather` VALUES ('114', '101050507', '兰西');
INSERT INTO `ai9me_weather` VALUES ('115', '101050508', '青冈');
INSERT INTO `ai9me_weather` VALUES ('116', '101050509', '庆安');
INSERT INTO `ai9me_weather` VALUES ('117', '101050510', '绥棱');
INSERT INTO `ai9me_weather` VALUES ('118', '101050601', '黑河');
INSERT INTO `ai9me_weather` VALUES ('119', '101050602', '嫩江');
INSERT INTO `ai9me_weather` VALUES ('120', '101050603', '孙吴');
INSERT INTO `ai9me_weather` VALUES ('121', '101050604', '逊克');
INSERT INTO `ai9me_weather` VALUES ('122', '101050605', '五大连池');
INSERT INTO `ai9me_weather` VALUES ('123', '101050606', '北安');
INSERT INTO `ai9me_weather` VALUES ('124', '101050701', '大兴安岭');
INSERT INTO `ai9me_weather` VALUES ('125', '101050702', '塔河');
INSERT INTO `ai9me_weather` VALUES ('126', '101050703', '漠河');
INSERT INTO `ai9me_weather` VALUES ('127', '101050704', '呼玛');
INSERT INTO `ai9me_weather` VALUES ('128', '101050801', '伊春');
INSERT INTO `ai9me_weather` VALUES ('129', '101050804', '铁力');
INSERT INTO `ai9me_weather` VALUES ('130', '101050805', '嘉荫');
INSERT INTO `ai9me_weather` VALUES ('131', '101050901', '大庆');
INSERT INTO `ai9me_weather` VALUES ('132', '101050902', '林甸');
INSERT INTO `ai9me_weather` VALUES ('133', '101050903', '肇州');
INSERT INTO `ai9me_weather` VALUES ('134', '101050904', '肇源');
INSERT INTO `ai9me_weather` VALUES ('135', '101050905', '杜蒙');
INSERT INTO `ai9me_weather` VALUES ('136', '101051002', '七台河');
INSERT INTO `ai9me_weather` VALUES ('137', '101051003', '勃利');
INSERT INTO `ai9me_weather` VALUES ('138', '101051101', '鸡西');
INSERT INTO `ai9me_weather` VALUES ('139', '101051102', '虎林');
INSERT INTO `ai9me_weather` VALUES ('140', '101051103', '密山');
INSERT INTO `ai9me_weather` VALUES ('141', '101051104', '鸡东');
INSERT INTO `ai9me_weather` VALUES ('142', '101051201', '鹤岗');
INSERT INTO `ai9me_weather` VALUES ('143', '101051202', '绥滨');
INSERT INTO `ai9me_weather` VALUES ('144', '101051203', '萝北');
INSERT INTO `ai9me_weather` VALUES ('145', '101051301', '双鸭山');
INSERT INTO `ai9me_weather` VALUES ('146', '101051302', '集贤');
INSERT INTO `ai9me_weather` VALUES ('147', '101051303', '宝清');
INSERT INTO `ai9me_weather` VALUES ('148', '101051304', '饶河');
INSERT INTO `ai9me_weather` VALUES ('149', '101051305', '友谊');
INSERT INTO `ai9me_weather` VALUES ('150', '101060101', '长春');
INSERT INTO `ai9me_weather` VALUES ('151', '101060102', '农安');
INSERT INTO `ai9me_weather` VALUES ('152', '101060103', '德惠');
INSERT INTO `ai9me_weather` VALUES ('153', '101060104', '九台');
INSERT INTO `ai9me_weather` VALUES ('154', '101060105', '榆树');
INSERT INTO `ai9me_weather` VALUES ('155', '101060201', '吉林');
INSERT INTO `ai9me_weather` VALUES ('156', '101060202', '舒兰');
INSERT INTO `ai9me_weather` VALUES ('157', '101060203', '永吉');
INSERT INTO `ai9me_weather` VALUES ('158', '101060204', '蛟河');
INSERT INTO `ai9me_weather` VALUES ('159', '101060205', '磐石');
INSERT INTO `ai9me_weather` VALUES ('160', '101060206', '桦甸');
INSERT INTO `ai9me_weather` VALUES ('161', '101060302', '敦化');
INSERT INTO `ai9me_weather` VALUES ('162', '101060303', '安图');
INSERT INTO `ai9me_weather` VALUES ('163', '101060304', '汪清');
INSERT INTO `ai9me_weather` VALUES ('164', '101060305', '和龙');
INSERT INTO `ai9me_weather` VALUES ('165', '101060307', '龙井');
INSERT INTO `ai9me_weather` VALUES ('166', '101060308', '珲春');
INSERT INTO `ai9me_weather` VALUES ('167', '101060309', '图们');
INSERT INTO `ai9me_weather` VALUES ('168', '101060312', '延吉');
INSERT INTO `ai9me_weather` VALUES ('169', '101060401', '四平');
INSERT INTO `ai9me_weather` VALUES ('170', '101060402', '双辽');
INSERT INTO `ai9me_weather` VALUES ('171', '101060403', '梨树');
INSERT INTO `ai9me_weather` VALUES ('172', '101060404', '公主岭');
INSERT INTO `ai9me_weather` VALUES ('173', '101060405', '伊通');
INSERT INTO `ai9me_weather` VALUES ('174', '101060501', '通化');
INSERT INTO `ai9me_weather` VALUES ('175', '101060502', '梅河口');
INSERT INTO `ai9me_weather` VALUES ('176', '101060503', '柳河');
INSERT INTO `ai9me_weather` VALUES ('177', '101060504', '辉南');
INSERT INTO `ai9me_weather` VALUES ('178', '101060505', '集安');
INSERT INTO `ai9me_weather` VALUES ('179', '101060601', '白城');
INSERT INTO `ai9me_weather` VALUES ('180', '101060602', '洮南');
INSERT INTO `ai9me_weather` VALUES ('181', '101060603', '大安');
INSERT INTO `ai9me_weather` VALUES ('182', '101060604', '镇赉');
INSERT INTO `ai9me_weather` VALUES ('183', '101060605', '通榆');
INSERT INTO `ai9me_weather` VALUES ('184', '101060701', '辽源');
INSERT INTO `ai9me_weather` VALUES ('185', '101060702', '东丰');
INSERT INTO `ai9me_weather` VALUES ('186', '101060703', '东辽');
INSERT INTO `ai9me_weather` VALUES ('187', '101060801', '松原');
INSERT INTO `ai9me_weather` VALUES ('188', '101060802', '乾安');
INSERT INTO `ai9me_weather` VALUES ('189', '101060803', '前郭');
INSERT INTO `ai9me_weather` VALUES ('190', '101060804', '长岭');
INSERT INTO `ai9me_weather` VALUES ('191', '101060805', '扶余');
INSERT INTO `ai9me_weather` VALUES ('192', '101060901', '白山');
INSERT INTO `ai9me_weather` VALUES ('193', '101060902', '靖宇');
INSERT INTO `ai9me_weather` VALUES ('194', '101060903', '临江');
INSERT INTO `ai9me_weather` VALUES ('195', '101060905', '长白');
INSERT INTO `ai9me_weather` VALUES ('196', '101060906', '抚松');
INSERT INTO `ai9me_weather` VALUES ('197', '101060907', '江源');
INSERT INTO `ai9me_weather` VALUES ('198', '101070101', '沈阳');
INSERT INTO `ai9me_weather` VALUES ('199', '101070103', '辽中');
INSERT INTO `ai9me_weather` VALUES ('200', '101070104', '康平');
INSERT INTO `ai9me_weather` VALUES ('201', '101070105', '法库');
INSERT INTO `ai9me_weather` VALUES ('202', '101070106', '新民');
INSERT INTO `ai9me_weather` VALUES ('203', '101070201', '大连');
INSERT INTO `ai9me_weather` VALUES ('204', '101070202', '瓦房店');
INSERT INTO `ai9me_weather` VALUES ('205', '101070204', '普兰店');
INSERT INTO `ai9me_weather` VALUES ('206', '101070206', '长海');
INSERT INTO `ai9me_weather` VALUES ('207', '101070207', '庄河');
INSERT INTO `ai9me_weather` VALUES ('208', '101070301', '鞍山');
INSERT INTO `ai9me_weather` VALUES ('209', '101070302', '台安');
INSERT INTO `ai9me_weather` VALUES ('210', '101070303', '岫岩');
INSERT INTO `ai9me_weather` VALUES ('211', '101070304', '海城');
INSERT INTO `ai9me_weather` VALUES ('212', '101070401', '抚顺');
INSERT INTO `ai9me_weather` VALUES ('213', '101070402', '新宾');
INSERT INTO `ai9me_weather` VALUES ('214', '101070403', '清原');
INSERT INTO `ai9me_weather` VALUES ('215', '101070501', '本溪');
INSERT INTO `ai9me_weather` VALUES ('216', '101070504', '桓仁');
INSERT INTO `ai9me_weather` VALUES ('217', '101070601', '丹东');
INSERT INTO `ai9me_weather` VALUES ('218', '101070602', '凤城');
INSERT INTO `ai9me_weather` VALUES ('219', '101070603', '宽甸');
INSERT INTO `ai9me_weather` VALUES ('220', '101070604', '东港');
INSERT INTO `ai9me_weather` VALUES ('221', '101070701', '锦州');
INSERT INTO `ai9me_weather` VALUES ('222', '101070702', '凌海');
INSERT INTO `ai9me_weather` VALUES ('223', '101070704', '义县');
INSERT INTO `ai9me_weather` VALUES ('224', '101070705', '黑山');
INSERT INTO `ai9me_weather` VALUES ('225', '101070706', '北镇');
INSERT INTO `ai9me_weather` VALUES ('226', '101070801', '营口');
INSERT INTO `ai9me_weather` VALUES ('227', '101070802', '大石桥');
INSERT INTO `ai9me_weather` VALUES ('228', '101070803', '盖州');
INSERT INTO `ai9me_weather` VALUES ('229', '101070901', '阜新');
INSERT INTO `ai9me_weather` VALUES ('230', '101070902', '彰武');
INSERT INTO `ai9me_weather` VALUES ('231', '101071001', '辽阳');
INSERT INTO `ai9me_weather` VALUES ('232', '101071003', '灯塔');
INSERT INTO `ai9me_weather` VALUES ('233', '101071004', '弓长岭');
INSERT INTO `ai9me_weather` VALUES ('234', '101071101', '铁岭');
INSERT INTO `ai9me_weather` VALUES ('235', '101071102', '开原');
INSERT INTO `ai9me_weather` VALUES ('236', '101071103', '昌图');
INSERT INTO `ai9me_weather` VALUES ('237', '101071104', '西丰');
INSERT INTO `ai9me_weather` VALUES ('238', '101071105', '调兵山');
INSERT INTO `ai9me_weather` VALUES ('239', '101071201', '朝阳');
INSERT INTO `ai9me_weather` VALUES ('240', '101071203', '凌源');
INSERT INTO `ai9me_weather` VALUES ('241', '101071204', '喀左');
INSERT INTO `ai9me_weather` VALUES ('242', '101071205', '北票');
INSERT INTO `ai9me_weather` VALUES ('243', '101071207', '建平');
INSERT INTO `ai9me_weather` VALUES ('244', '101071301', '盘锦');
INSERT INTO `ai9me_weather` VALUES ('245', '101071302', '大洼');
INSERT INTO `ai9me_weather` VALUES ('246', '101071303', '盘山');
INSERT INTO `ai9me_weather` VALUES ('247', '101071401', '葫芦岛');
INSERT INTO `ai9me_weather` VALUES ('248', '101071402', '建昌');
INSERT INTO `ai9me_weather` VALUES ('249', '101071403', '绥中');
INSERT INTO `ai9me_weather` VALUES ('250', '101071404', '兴城');
INSERT INTO `ai9me_weather` VALUES ('251', '101080101', '呼和浩特');
INSERT INTO `ai9me_weather` VALUES ('252', '101080102', '土左');
INSERT INTO `ai9me_weather` VALUES ('253', '101080103', '托克托');
INSERT INTO `ai9me_weather` VALUES ('254', '101080104', '和林格尔');
INSERT INTO `ai9me_weather` VALUES ('255', '101080105', '清水河');
INSERT INTO `ai9me_weather` VALUES ('256', '101080107', '武川');
INSERT INTO `ai9me_weather` VALUES ('257', '101080201', '包头');
INSERT INTO `ai9me_weather` VALUES ('258', '101080202', '白云鄂博');
INSERT INTO `ai9me_weather` VALUES ('259', '101080204', '土右');
INSERT INTO `ai9me_weather` VALUES ('260', '101080205', '固阳');
INSERT INTO `ai9me_weather` VALUES ('261', '101080206', '达茂');
INSERT INTO `ai9me_weather` VALUES ('262', '101080301', '乌海');
INSERT INTO `ai9me_weather` VALUES ('263', '101080401', '乌兰察布');
INSERT INTO `ai9me_weather` VALUES ('264', '101080402', '卓资');
INSERT INTO `ai9me_weather` VALUES ('265', '101080403', '化德');
INSERT INTO `ai9me_weather` VALUES ('266', '101080404', '商都');
INSERT INTO `ai9me_weather` VALUES ('267', '101080406', '兴和');
INSERT INTO `ai9me_weather` VALUES ('268', '101080407', '凉城');
INSERT INTO `ai9me_weather` VALUES ('269', '101080408', '察右前');
INSERT INTO `ai9me_weather` VALUES ('270', '101080409', '察右中');
INSERT INTO `ai9me_weather` VALUES ('271', '101080410', '察右后');
INSERT INTO `ai9me_weather` VALUES ('272', '101080411', '四子王');
INSERT INTO `ai9me_weather` VALUES ('273', '101080412', '丰镇');
INSERT INTO `ai9me_weather` VALUES ('274', '101080501', '通辽');
INSERT INTO `ai9me_weather` VALUES ('275', '101080503', '科左中');
INSERT INTO `ai9me_weather` VALUES ('276', '101080504', '科左后');
INSERT INTO `ai9me_weather` VALUES ('277', '101080506', '开鲁');
INSERT INTO `ai9me_weather` VALUES ('278', '101080507', '库伦');
INSERT INTO `ai9me_weather` VALUES ('279', '101080508', '奈曼');
INSERT INTO `ai9me_weather` VALUES ('280', '101080509', '扎鲁特');
INSERT INTO `ai9me_weather` VALUES ('281', '101080601', '赤峰');
INSERT INTO `ai9me_weather` VALUES ('282', '101080603', '阿鲁');
INSERT INTO `ai9me_weather` VALUES ('283', '101080605', '巴林左');
INSERT INTO `ai9me_weather` VALUES ('284', '101080606', '巴林右');
INSERT INTO `ai9me_weather` VALUES ('285', '101080607', '林西');
INSERT INTO `ai9me_weather` VALUES ('286', '101080608', '克什');
INSERT INTO `ai9me_weather` VALUES ('287', '101080609', '翁牛特');
INSERT INTO `ai9me_weather` VALUES ('288', '101080611', '喀喇沁');
INSERT INTO `ai9me_weather` VALUES ('289', '101080613', '宁城');
INSERT INTO `ai9me_weather` VALUES ('290', '101080614', '敖汉');
INSERT INTO `ai9me_weather` VALUES ('291', '101080701', '鄂尔多斯');
INSERT INTO `ai9me_weather` VALUES ('292', '101080703', '达拉特');
INSERT INTO `ai9me_weather` VALUES ('293', '101080704', '准格尔');
INSERT INTO `ai9me_weather` VALUES ('294', '101080706', '河南');
INSERT INTO `ai9me_weather` VALUES ('295', '101080708', '鄂托克');
INSERT INTO `ai9me_weather` VALUES ('296', '101080709', '杭锦');
INSERT INTO `ai9me_weather` VALUES ('297', '101080710', '乌审');
INSERT INTO `ai9me_weather` VALUES ('298', '101080711', '伊金霍洛');
INSERT INTO `ai9me_weather` VALUES ('299', '101080801', '巴彦淖尔');
INSERT INTO `ai9me_weather` VALUES ('300', '101080802', '五原');
INSERT INTO `ai9me_weather` VALUES ('301', '101080803', '磴口');
INSERT INTO `ai9me_weather` VALUES ('302', '101080804', '乌前');
INSERT INTO `ai9me_weather` VALUES ('303', '101080806', '乌中');
INSERT INTO `ai9me_weather` VALUES ('304', '101080807', '乌后');
INSERT INTO `ai9me_weather` VALUES ('305', '101080810', '杭锦后');
INSERT INTO `ai9me_weather` VALUES ('306', '101080901', '锡林浩特');
INSERT INTO `ai9me_weather` VALUES ('307', '101080903', '二连浩特');
INSERT INTO `ai9me_weather` VALUES ('308', '101080904', '阿巴嘎');
INSERT INTO `ai9me_weather` VALUES ('309', '101080906', '苏左');
INSERT INTO `ai9me_weather` VALUES ('310', '101080907', '苏右');
INSERT INTO `ai9me_weather` VALUES ('311', '101080909', '东乌');
INSERT INTO `ai9me_weather` VALUES ('312', '101080910', '西乌');
INSERT INTO `ai9me_weather` VALUES ('313', '101080911', '太仆寺');
INSERT INTO `ai9me_weather` VALUES ('314', '101080912', '镶黄');
INSERT INTO `ai9me_weather` VALUES ('315', '101080913', '正镶白');
INSERT INTO `ai9me_weather` VALUES ('316', '101080914', '正蓝');
INSERT INTO `ai9me_weather` VALUES ('317', '101080915', '多伦');
INSERT INTO `ai9me_weather` VALUES ('318', '101081000', '呼伦贝尔');
INSERT INTO `ai9me_weather` VALUES ('319', '101081001', '海拉尔');
INSERT INTO `ai9me_weather` VALUES ('320', '101081003', '阿荣');
INSERT INTO `ai9me_weather` VALUES ('321', '101081004', '莫力达瓦');
INSERT INTO `ai9me_weather` VALUES ('322', '101081005', '鄂伦春');
INSERT INTO `ai9me_weather` VALUES ('323', '101081006', '鄂温克');
INSERT INTO `ai9me_weather` VALUES ('324', '101081007', '陈巴尔虎');
INSERT INTO `ai9me_weather` VALUES ('325', '101081008', '新左');
INSERT INTO `ai9me_weather` VALUES ('326', '101081009', '新右');
INSERT INTO `ai9me_weather` VALUES ('327', '101081010', '满洲里');
INSERT INTO `ai9me_weather` VALUES ('328', '101081011', '牙克石');
INSERT INTO `ai9me_weather` VALUES ('329', '101081012', '扎兰屯');
INSERT INTO `ai9me_weather` VALUES ('330', '101081014', '额尔古纳');
INSERT INTO `ai9me_weather` VALUES ('331', '101081015', '根河');
INSERT INTO `ai9me_weather` VALUES ('332', '101081101', '乌兰浩特');
INSERT INTO `ai9me_weather` VALUES ('333', '101081102', '阿尔山');
INSERT INTO `ai9me_weather` VALUES ('334', '101081103', '科右中');
INSERT INTO `ai9me_weather` VALUES ('335', '101081105', '扎赉特');
INSERT INTO `ai9me_weather` VALUES ('336', '101081107', '突泉');
INSERT INTO `ai9me_weather` VALUES ('337', '101081108', '霍林郭勒');
INSERT INTO `ai9me_weather` VALUES ('338', '101081109', '科右前');
INSERT INTO `ai9me_weather` VALUES ('339', '101081201', '阿拉善');
INSERT INTO `ai9me_weather` VALUES ('340', '101081202', '阿右');
INSERT INTO `ai9me_weather` VALUES ('341', '101081203', '额济纳');
INSERT INTO `ai9me_weather` VALUES ('342', '101090101', '石家庄');
INSERT INTO `ai9me_weather` VALUES ('343', '101090102', '井陉');
INSERT INTO `ai9me_weather` VALUES ('344', '101090103', '正定');
INSERT INTO `ai9me_weather` VALUES ('345', '101090104', '栾城');
INSERT INTO `ai9me_weather` VALUES ('346', '101090105', '行唐');
INSERT INTO `ai9me_weather` VALUES ('347', '101090106', '灵寿');
INSERT INTO `ai9me_weather` VALUES ('348', '101090107', '高邑');
INSERT INTO `ai9me_weather` VALUES ('349', '101090108', '深泽');
INSERT INTO `ai9me_weather` VALUES ('350', '101090109', '赞皇');
INSERT INTO `ai9me_weather` VALUES ('351', '101090110', '无极');
INSERT INTO `ai9me_weather` VALUES ('352', '101090111', '平山');
INSERT INTO `ai9me_weather` VALUES ('353', '101090112', '元氏');
INSERT INTO `ai9me_weather` VALUES ('354', '101090113', '赵县');
INSERT INTO `ai9me_weather` VALUES ('355', '101090114', '辛集');
INSERT INTO `ai9me_weather` VALUES ('356', '101090115', '藁城');
INSERT INTO `ai9me_weather` VALUES ('357', '101090116', '晋州');
INSERT INTO `ai9me_weather` VALUES ('358', '101090117', '新乐');
INSERT INTO `ai9me_weather` VALUES ('359', '101090118', '鹿泉');
INSERT INTO `ai9me_weather` VALUES ('360', '101090201', '保定');
INSERT INTO `ai9me_weather` VALUES ('361', '101090202', '满城');
INSERT INTO `ai9me_weather` VALUES ('362', '101090203', '阜平');
INSERT INTO `ai9me_weather` VALUES ('363', '101090204', '徐水');
INSERT INTO `ai9me_weather` VALUES ('364', '101090205', '唐县');
INSERT INTO `ai9me_weather` VALUES ('365', '101090206', '高阳');
INSERT INTO `ai9me_weather` VALUES ('366', '101090207', '容城');
INSERT INTO `ai9me_weather` VALUES ('367', '101090209', '涞源');
INSERT INTO `ai9me_weather` VALUES ('368', '101090210', '望都');
INSERT INTO `ai9me_weather` VALUES ('369', '101090211', '安新');
INSERT INTO `ai9me_weather` VALUES ('370', '101090212', '易县');
INSERT INTO `ai9me_weather` VALUES ('371', '101090214', '曲阳');
INSERT INTO `ai9me_weather` VALUES ('372', '101090215', '蠡县');
INSERT INTO `ai9me_weather` VALUES ('373', '101090216', '顺平');
INSERT INTO `ai9me_weather` VALUES ('374', '101090217', '雄县');
INSERT INTO `ai9me_weather` VALUES ('375', '101090218', '涿州');
INSERT INTO `ai9me_weather` VALUES ('376', '101090219', '定州');
INSERT INTO `ai9me_weather` VALUES ('377', '101090220', '安国');
INSERT INTO `ai9me_weather` VALUES ('378', '101090221', '高碑店');
INSERT INTO `ai9me_weather` VALUES ('379', '101090222', '涞水');
INSERT INTO `ai9me_weather` VALUES ('380', '101090223', '定兴');
INSERT INTO `ai9me_weather` VALUES ('381', '101090224', '清苑');
INSERT INTO `ai9me_weather` VALUES ('382', '101090225', '博野');
INSERT INTO `ai9me_weather` VALUES ('383', '101090301', '张家口');
INSERT INTO `ai9me_weather` VALUES ('384', '101090302', '宣化');
INSERT INTO `ai9me_weather` VALUES ('385', '101090303', '张北');
INSERT INTO `ai9me_weather` VALUES ('386', '101090304', '康保');
INSERT INTO `ai9me_weather` VALUES ('387', '101090305', '沽源');
INSERT INTO `ai9me_weather` VALUES ('388', '101090306', '尚义');
INSERT INTO `ai9me_weather` VALUES ('389', '101090307', '蔚县');
INSERT INTO `ai9me_weather` VALUES ('390', '101090308', '阳原');
INSERT INTO `ai9me_weather` VALUES ('391', '101090309', '怀安');
INSERT INTO `ai9me_weather` VALUES ('392', '101090310', '万全');
INSERT INTO `ai9me_weather` VALUES ('393', '101090311', '怀来');
INSERT INTO `ai9me_weather` VALUES ('394', '101090312', '涿鹿');
INSERT INTO `ai9me_weather` VALUES ('395', '101090313', '赤城');
INSERT INTO `ai9me_weather` VALUES ('396', '101090314', '崇礼');
INSERT INTO `ai9me_weather` VALUES ('397', '101090402', '承德');
INSERT INTO `ai9me_weather` VALUES ('398', '101090404', '兴隆');
INSERT INTO `ai9me_weather` VALUES ('399', '101090405', '平泉');
INSERT INTO `ai9me_weather` VALUES ('400', '101090406', '滦平');
INSERT INTO `ai9me_weather` VALUES ('401', '101090407', '隆化');
INSERT INTO `ai9me_weather` VALUES ('402', '101090408', '丰宁');
INSERT INTO `ai9me_weather` VALUES ('403', '101090409', '宽城');
INSERT INTO `ai9me_weather` VALUES ('404', '101090410', '围场');
INSERT INTO `ai9me_weather` VALUES ('405', '101090501', '唐山');
INSERT INTO `ai9me_weather` VALUES ('406', '101090502', '丰南');
INSERT INTO `ai9me_weather` VALUES ('407', '101090503', '丰润');
INSERT INTO `ai9me_weather` VALUES ('408', '101090504', '滦县');
INSERT INTO `ai9me_weather` VALUES ('409', '101090505', '滦南');
INSERT INTO `ai9me_weather` VALUES ('410', '101090506', '乐亭');
INSERT INTO `ai9me_weather` VALUES ('411', '101090507', '迁西');
INSERT INTO `ai9me_weather` VALUES ('412', '101090508', '玉田');
INSERT INTO `ai9me_weather` VALUES ('413', '101090509', '唐海');
INSERT INTO `ai9me_weather` VALUES ('414', '101090510', '遵化');
INSERT INTO `ai9me_weather` VALUES ('415', '101090511', '迁安');
INSERT INTO `ai9me_weather` VALUES ('416', '101090512', '曹妃甸');
INSERT INTO `ai9me_weather` VALUES ('417', '101090601', '廊坊');
INSERT INTO `ai9me_weather` VALUES ('418', '101090602', '固安');
INSERT INTO `ai9me_weather` VALUES ('419', '101090603', '永清');
INSERT INTO `ai9me_weather` VALUES ('420', '101090604', '香河');
INSERT INTO `ai9me_weather` VALUES ('421', '101090605', '大城');
INSERT INTO `ai9me_weather` VALUES ('422', '101090606', '文安');
INSERT INTO `ai9me_weather` VALUES ('423', '101090607', '大厂');
INSERT INTO `ai9me_weather` VALUES ('424', '101090608', '霸州');
INSERT INTO `ai9me_weather` VALUES ('425', '101090609', '三河');
INSERT INTO `ai9me_weather` VALUES ('426', '101090701', '沧州');
INSERT INTO `ai9me_weather` VALUES ('427', '101090702', '青县');
INSERT INTO `ai9me_weather` VALUES ('428', '101090703', '东光');
INSERT INTO `ai9me_weather` VALUES ('429', '101090704', '海兴');
INSERT INTO `ai9me_weather` VALUES ('430', '101090705', '盐山');
INSERT INTO `ai9me_weather` VALUES ('431', '101090706', '肃宁');
INSERT INTO `ai9me_weather` VALUES ('432', '101090707', '南皮');
INSERT INTO `ai9me_weather` VALUES ('433', '101090708', '吴桥');
INSERT INTO `ai9me_weather` VALUES ('434', '101090709', '献县');
INSERT INTO `ai9me_weather` VALUES ('435', '101090710', '孟村');
INSERT INTO `ai9me_weather` VALUES ('436', '101090711', '泊头');
INSERT INTO `ai9me_weather` VALUES ('437', '101090712', '任丘');
INSERT INTO `ai9me_weather` VALUES ('438', '101090713', '黄骅');
INSERT INTO `ai9me_weather` VALUES ('439', '101090714', '河间');
INSERT INTO `ai9me_weather` VALUES ('440', '101090716', '沧县');
INSERT INTO `ai9me_weather` VALUES ('441', '101090801', '衡水');
INSERT INTO `ai9me_weather` VALUES ('442', '101090802', '枣强');
INSERT INTO `ai9me_weather` VALUES ('443', '101090803', '武邑');
INSERT INTO `ai9me_weather` VALUES ('444', '101090804', '武强');
INSERT INTO `ai9me_weather` VALUES ('445', '101090805', '饶阳');
INSERT INTO `ai9me_weather` VALUES ('446', '101090806', '安平');
INSERT INTO `ai9me_weather` VALUES ('447', '101090807', '故城');
INSERT INTO `ai9me_weather` VALUES ('448', '101090808', '景县');
INSERT INTO `ai9me_weather` VALUES ('449', '101090809', '阜城');
INSERT INTO `ai9me_weather` VALUES ('450', '101090810', '冀州');
INSERT INTO `ai9me_weather` VALUES ('451', '101090811', '深州');
INSERT INTO `ai9me_weather` VALUES ('452', '101090901', '邢台');
INSERT INTO `ai9me_weather` VALUES ('453', '101090902', '临城');
INSERT INTO `ai9me_weather` VALUES ('454', '101090905', '柏乡');
INSERT INTO `ai9me_weather` VALUES ('455', '101090906', '隆尧');
INSERT INTO `ai9me_weather` VALUES ('456', '101090907', '南和');
INSERT INTO `ai9me_weather` VALUES ('457', '101090908', '宁晋');
INSERT INTO `ai9me_weather` VALUES ('458', '101090909', '巨鹿');
INSERT INTO `ai9me_weather` VALUES ('459', '101090910', '新河');
INSERT INTO `ai9me_weather` VALUES ('460', '101090911', '广宗');
INSERT INTO `ai9me_weather` VALUES ('461', '101090912', '平乡');
INSERT INTO `ai9me_weather` VALUES ('462', '101090913', '威县');
INSERT INTO `ai9me_weather` VALUES ('463', '101090914', '清河');
INSERT INTO `ai9me_weather` VALUES ('464', '101090915', '临西');
INSERT INTO `ai9me_weather` VALUES ('465', '101090916', '南宫');
INSERT INTO `ai9me_weather` VALUES ('466', '101090917', '沙河');
INSERT INTO `ai9me_weather` VALUES ('467', '101090918', '任县');
INSERT INTO `ai9me_weather` VALUES ('468', '101090919', '内丘');
INSERT INTO `ai9me_weather` VALUES ('469', '101091001', '邯郸');
INSERT INTO `ai9me_weather` VALUES ('470', '101091002', '峰峰矿');
INSERT INTO `ai9me_weather` VALUES ('471', '101091003', '临漳');
INSERT INTO `ai9me_weather` VALUES ('472', '101091004', '成安');
INSERT INTO `ai9me_weather` VALUES ('473', '101091005', '大名');
INSERT INTO `ai9me_weather` VALUES ('474', '101091006', '涉县');
INSERT INTO `ai9me_weather` VALUES ('475', '101091007', '磁县');
INSERT INTO `ai9me_weather` VALUES ('476', '101091008', '肥乡');
INSERT INTO `ai9me_weather` VALUES ('477', '101091009', '永年');
INSERT INTO `ai9me_weather` VALUES ('478', '101091010', '邱县');
INSERT INTO `ai9me_weather` VALUES ('479', '101091011', '鸡泽');
INSERT INTO `ai9me_weather` VALUES ('480', '101091012', '广平');
INSERT INTO `ai9me_weather` VALUES ('481', '101091013', '馆陶');
INSERT INTO `ai9me_weather` VALUES ('482', '101091014', '魏县');
INSERT INTO `ai9me_weather` VALUES ('483', '101091015', '曲周');
INSERT INTO `ai9me_weather` VALUES ('484', '101091016', '武安');
INSERT INTO `ai9me_weather` VALUES ('485', '101091101', '秦皇岛');
INSERT INTO `ai9me_weather` VALUES ('486', '101091102', '青龙');
INSERT INTO `ai9me_weather` VALUES ('487', '101091103', '昌黎');
INSERT INTO `ai9me_weather` VALUES ('488', '101091104', '抚宁');
INSERT INTO `ai9me_weather` VALUES ('489', '101091105', '卢龙');
INSERT INTO `ai9me_weather` VALUES ('490', '101100101', '太原');
INSERT INTO `ai9me_weather` VALUES ('491', '101100102', '清徐');
INSERT INTO `ai9me_weather` VALUES ('492', '101100103', '阳曲');
INSERT INTO `ai9me_weather` VALUES ('493', '101100104', '娄烦');
INSERT INTO `ai9me_weather` VALUES ('494', '101100105', '古交');
INSERT INTO `ai9me_weather` VALUES ('495', '101100201', '大同');
INSERT INTO `ai9me_weather` VALUES ('496', '101100202', '阳高');
INSERT INTO `ai9me_weather` VALUES ('497', '101100204', '天镇');
INSERT INTO `ai9me_weather` VALUES ('498', '101100205', '广灵');
INSERT INTO `ai9me_weather` VALUES ('499', '101100206', '灵丘');
INSERT INTO `ai9me_weather` VALUES ('500', '101100207', '浑源');
INSERT INTO `ai9me_weather` VALUES ('501', '101100208', '左云');
INSERT INTO `ai9me_weather` VALUES ('502', '101100301', '阳泉');
INSERT INTO `ai9me_weather` VALUES ('503', '101100302', '盂县');
INSERT INTO `ai9me_weather` VALUES ('504', '101100303', '平定');
INSERT INTO `ai9me_weather` VALUES ('505', '101100401', '晋中');
INSERT INTO `ai9me_weather` VALUES ('506', '101100403', '榆社');
INSERT INTO `ai9me_weather` VALUES ('507', '101100404', '左权');
INSERT INTO `ai9me_weather` VALUES ('508', '101100405', '和顺');
INSERT INTO `ai9me_weather` VALUES ('509', '101100406', '昔阳');
INSERT INTO `ai9me_weather` VALUES ('510', '101100407', '寿阳');
INSERT INTO `ai9me_weather` VALUES ('511', '101100408', '太谷');
INSERT INTO `ai9me_weather` VALUES ('512', '101100409', '祁县');
INSERT INTO `ai9me_weather` VALUES ('513', '101100410', '平遥');
INSERT INTO `ai9me_weather` VALUES ('514', '101100411', '灵石');
INSERT INTO `ai9me_weather` VALUES ('515', '101100412', '介休');
INSERT INTO `ai9me_weather` VALUES ('516', '101100501', '长治');
INSERT INTO `ai9me_weather` VALUES ('517', '101100502', '黎城');
INSERT INTO `ai9me_weather` VALUES ('518', '101100503', '屯留');
INSERT INTO `ai9me_weather` VALUES ('519', '101100504', '潞城');
INSERT INTO `ai9me_weather` VALUES ('520', '101100505', '襄垣');
INSERT INTO `ai9me_weather` VALUES ('521', '101100506', '平顺');
INSERT INTO `ai9me_weather` VALUES ('522', '101100507', '武乡');
INSERT INTO `ai9me_weather` VALUES ('523', '101100508', '沁县');
INSERT INTO `ai9me_weather` VALUES ('524', '101100509', '长子');
INSERT INTO `ai9me_weather` VALUES ('525', '101100510', '沁源');
INSERT INTO `ai9me_weather` VALUES ('526', '101100511', '壶关');
INSERT INTO `ai9me_weather` VALUES ('527', '101100601', '晋城');
INSERT INTO `ai9me_weather` VALUES ('528', '101100602', '沁水');
INSERT INTO `ai9me_weather` VALUES ('529', '101100603', '阳城');
INSERT INTO `ai9me_weather` VALUES ('530', '101100604', '陵川');
INSERT INTO `ai9me_weather` VALUES ('531', '101100605', '高平');
INSERT INTO `ai9me_weather` VALUES ('532', '101100606', '泽州');
INSERT INTO `ai9me_weather` VALUES ('533', '101100701', '临汾');
INSERT INTO `ai9me_weather` VALUES ('534', '101100702', '曲沃');
INSERT INTO `ai9me_weather` VALUES ('535', '101100703', '永和');
INSERT INTO `ai9me_weather` VALUES ('536', '101100704', '隰县');
INSERT INTO `ai9me_weather` VALUES ('537', '101100705', '大宁');
INSERT INTO `ai9me_weather` VALUES ('538', '101100706', '吉县');
INSERT INTO `ai9me_weather` VALUES ('539', '101100707', '襄汾');
INSERT INTO `ai9me_weather` VALUES ('540', '101100708', '蒲县');
INSERT INTO `ai9me_weather` VALUES ('541', '101100709', '汾西');
INSERT INTO `ai9me_weather` VALUES ('542', '101100710', '洪洞');
INSERT INTO `ai9me_weather` VALUES ('543', '101100711', '霍州');
INSERT INTO `ai9me_weather` VALUES ('544', '101100712', '乡宁');
INSERT INTO `ai9me_weather` VALUES ('545', '101100713', '翼城');
INSERT INTO `ai9me_weather` VALUES ('546', '101100714', '侯马');
INSERT INTO `ai9me_weather` VALUES ('547', '101100715', '浮山');
INSERT INTO `ai9me_weather` VALUES ('548', '101100716', '安泽');
INSERT INTO `ai9me_weather` VALUES ('549', '101100717', '古县');
INSERT INTO `ai9me_weather` VALUES ('550', '101100801', '运城');
INSERT INTO `ai9me_weather` VALUES ('551', '101100802', '临猗');
INSERT INTO `ai9me_weather` VALUES ('552', '101100803', '稷山');
INSERT INTO `ai9me_weather` VALUES ('553', '101100804', '万荣');
INSERT INTO `ai9me_weather` VALUES ('554', '101100805', '河津');
INSERT INTO `ai9me_weather` VALUES ('555', '101100806', '新绛');
INSERT INTO `ai9me_weather` VALUES ('556', '101100807', '绛县');
INSERT INTO `ai9me_weather` VALUES ('557', '101100808', '闻喜');
INSERT INTO `ai9me_weather` VALUES ('558', '101100809', '垣曲');
INSERT INTO `ai9me_weather` VALUES ('559', '101100810', '永济');
INSERT INTO `ai9me_weather` VALUES ('560', '101100811', '芮城');
INSERT INTO `ai9me_weather` VALUES ('561', '101100812', '夏县');
INSERT INTO `ai9me_weather` VALUES ('562', '101100813', '平陆');
INSERT INTO `ai9me_weather` VALUES ('563', '101100901', '朔州');
INSERT INTO `ai9me_weather` VALUES ('564', '101100903', '山阴');
INSERT INTO `ai9me_weather` VALUES ('565', '101100904', '右玉');
INSERT INTO `ai9me_weather` VALUES ('566', '101100905', '应县');
INSERT INTO `ai9me_weather` VALUES ('567', '101100906', '怀仁');
INSERT INTO `ai9me_weather` VALUES ('568', '101101001', '忻州');
INSERT INTO `ai9me_weather` VALUES ('569', '101101002', '定襄');
INSERT INTO `ai9me_weather` VALUES ('570', '101101003', '五台');
INSERT INTO `ai9me_weather` VALUES ('571', '101101004', '河曲');
INSERT INTO `ai9me_weather` VALUES ('572', '101101005', '偏关');
INSERT INTO `ai9me_weather` VALUES ('573', '101101006', '神池');
INSERT INTO `ai9me_weather` VALUES ('574', '101101007', '宁武');
INSERT INTO `ai9me_weather` VALUES ('575', '101101008', '代县');
INSERT INTO `ai9me_weather` VALUES ('576', '101101009', '繁峙');
INSERT INTO `ai9me_weather` VALUES ('577', '101101011', '保德');
INSERT INTO `ai9me_weather` VALUES ('578', '101101012', '静乐');
INSERT INTO `ai9me_weather` VALUES ('579', '101101013', '岢岚');
INSERT INTO `ai9me_weather` VALUES ('580', '101101014', '五寨');
INSERT INTO `ai9me_weather` VALUES ('581', '101101015', '原平');
INSERT INTO `ai9me_weather` VALUES ('582', '101101100', '吕梁');
INSERT INTO `ai9me_weather` VALUES ('583', '101101101', '离石');
INSERT INTO `ai9me_weather` VALUES ('584', '101101102', '临县');
INSERT INTO `ai9me_weather` VALUES ('585', '101101103', '兴县');
INSERT INTO `ai9me_weather` VALUES ('586', '101101104', '岚县');
INSERT INTO `ai9me_weather` VALUES ('587', '101101105', '柳林');
INSERT INTO `ai9me_weather` VALUES ('588', '101101106', '石楼');
INSERT INTO `ai9me_weather` VALUES ('589', '101101107', '方山');
INSERT INTO `ai9me_weather` VALUES ('590', '101101108', '交口');
INSERT INTO `ai9me_weather` VALUES ('591', '101101109', '中阳');
INSERT INTO `ai9me_weather` VALUES ('592', '101101110', '孝义');
INSERT INTO `ai9me_weather` VALUES ('593', '101101111', '汾阳');
INSERT INTO `ai9me_weather` VALUES ('594', '101101112', '文水');
INSERT INTO `ai9me_weather` VALUES ('595', '101101113', '交城');
INSERT INTO `ai9me_weather` VALUES ('596', '101110101', '西安');
INSERT INTO `ai9me_weather` VALUES ('597', '101110102', '长安');
INSERT INTO `ai9me_weather` VALUES ('598', '101110104', '蓝田');
INSERT INTO `ai9me_weather` VALUES ('599', '101110105', '周至');
INSERT INTO `ai9me_weather` VALUES ('600', '101110106', '户县');
INSERT INTO `ai9me_weather` VALUES ('601', '101110107', '高陵');
INSERT INTO `ai9me_weather` VALUES ('602', '101110200', '咸阳');
INSERT INTO `ai9me_weather` VALUES ('603', '101110201', '三原');
INSERT INTO `ai9me_weather` VALUES ('604', '101110202', '礼泉');
INSERT INTO `ai9me_weather` VALUES ('605', '101110203', '永寿');
INSERT INTO `ai9me_weather` VALUES ('606', '101110204', '淳化');
INSERT INTO `ai9me_weather` VALUES ('607', '101110205', '泾阳');
INSERT INTO `ai9me_weather` VALUES ('608', '101110206', '武功');
INSERT INTO `ai9me_weather` VALUES ('609', '101110207', '乾县');
INSERT INTO `ai9me_weather` VALUES ('610', '101110208', '彬县');
INSERT INTO `ai9me_weather` VALUES ('611', '101110209', '长武');
INSERT INTO `ai9me_weather` VALUES ('612', '101110210', '旬邑');
INSERT INTO `ai9me_weather` VALUES ('613', '101110211', '兴平');
INSERT INTO `ai9me_weather` VALUES ('614', '101110300', '延安');
INSERT INTO `ai9me_weather` VALUES ('615', '101110401', '榆林');
INSERT INTO `ai9me_weather` VALUES ('616', '101110402', '府谷');
INSERT INTO `ai9me_weather` VALUES ('617', '101110403', '神木');
INSERT INTO `ai9me_weather` VALUES ('618', '101110404', '佳县');
INSERT INTO `ai9me_weather` VALUES ('619', '101110405', '定边');
INSERT INTO `ai9me_weather` VALUES ('620', '101110406', '靖边');
INSERT INTO `ai9me_weather` VALUES ('621', '101110407', '横山');
INSERT INTO `ai9me_weather` VALUES ('622', '101110408', '米脂');
INSERT INTO `ai9me_weather` VALUES ('623', '101110409', '子洲');
INSERT INTO `ai9me_weather` VALUES ('624', '101110410', '绥德');
INSERT INTO `ai9me_weather` VALUES ('625', '101110411', '吴堡');
INSERT INTO `ai9me_weather` VALUES ('626', '101110412', '清涧');
INSERT INTO `ai9me_weather` VALUES ('627', '101110501', '渭南');
INSERT INTO `ai9me_weather` VALUES ('628', '101110502', '华县');
INSERT INTO `ai9me_weather` VALUES ('629', '101110503', '潼关');
INSERT INTO `ai9me_weather` VALUES ('630', '101110504', '大荔');
INSERT INTO `ai9me_weather` VALUES ('631', '101110505', '白水');
INSERT INTO `ai9me_weather` VALUES ('632', '101110506', '富平');
INSERT INTO `ai9me_weather` VALUES ('633', '101110507', '蒲城');
INSERT INTO `ai9me_weather` VALUES ('634', '101110508', '澄城');
INSERT INTO `ai9me_weather` VALUES ('635', '101110509', '合阳');
INSERT INTO `ai9me_weather` VALUES ('636', '101110510', '韩城');
INSERT INTO `ai9me_weather` VALUES ('637', '101110511', '华阴');
INSERT INTO `ai9me_weather` VALUES ('638', '101110601', '商洛');
INSERT INTO `ai9me_weather` VALUES ('639', '101110602', '洛南');
INSERT INTO `ai9me_weather` VALUES ('640', '101110603', '柞水');
INSERT INTO `ai9me_weather` VALUES ('641', '101110604', '商州');
INSERT INTO `ai9me_weather` VALUES ('642', '101110605', '镇安');
INSERT INTO `ai9me_weather` VALUES ('643', '101110606', '丹凤');
INSERT INTO `ai9me_weather` VALUES ('644', '101110607', '商南');
INSERT INTO `ai9me_weather` VALUES ('645', '101110608', '山阳');
INSERT INTO `ai9me_weather` VALUES ('646', '101110701', '安康');
INSERT INTO `ai9me_weather` VALUES ('647', '101110702', '紫阳');
INSERT INTO `ai9me_weather` VALUES ('648', '101110703', '石泉');
INSERT INTO `ai9me_weather` VALUES ('649', '101110704', '汉阴');
INSERT INTO `ai9me_weather` VALUES ('650', '101110705', '旬阳');
INSERT INTO `ai9me_weather` VALUES ('651', '101110706', '岚皋');
INSERT INTO `ai9me_weather` VALUES ('652', '101110707', '平利');
INSERT INTO `ai9me_weather` VALUES ('653', '101110708', '白河');
INSERT INTO `ai9me_weather` VALUES ('654', '101110709', '镇坪');
INSERT INTO `ai9me_weather` VALUES ('655', '101110710', '宁陕');
INSERT INTO `ai9me_weather` VALUES ('656', '101110801', '汉中');
INSERT INTO `ai9me_weather` VALUES ('657', '101110802', '略阳');
INSERT INTO `ai9me_weather` VALUES ('658', '101110803', '勉县');
INSERT INTO `ai9me_weather` VALUES ('659', '101110804', '留坝');
INSERT INTO `ai9me_weather` VALUES ('660', '101110805', '洋县');
INSERT INTO `ai9me_weather` VALUES ('661', '101110806', '城固');
INSERT INTO `ai9me_weather` VALUES ('662', '101110807', '西乡');
INSERT INTO `ai9me_weather` VALUES ('663', '101110808', '佛坪');
INSERT INTO `ai9me_weather` VALUES ('664', '101110809', '宁强');
INSERT INTO `ai9me_weather` VALUES ('665', '101110810', '南郑');
INSERT INTO `ai9me_weather` VALUES ('666', '101110811', '镇巴');
INSERT INTO `ai9me_weather` VALUES ('667', '101110901', '宝鸡');
INSERT INTO `ai9me_weather` VALUES ('668', '101110903', '千阳');
INSERT INTO `ai9me_weather` VALUES ('669', '101110904', '麟游');
INSERT INTO `ai9me_weather` VALUES ('670', '101110905', '岐山');
INSERT INTO `ai9me_weather` VALUES ('671', '101110906', '凤翔');
INSERT INTO `ai9me_weather` VALUES ('672', '101110907', '扶风');
INSERT INTO `ai9me_weather` VALUES ('673', '101110908', '眉县');
INSERT INTO `ai9me_weather` VALUES ('674', '101110909', '太白');
INSERT INTO `ai9me_weather` VALUES ('675', '101110910', '凤县');
INSERT INTO `ai9me_weather` VALUES ('676', '101110911', '陇县');
INSERT INTO `ai9me_weather` VALUES ('677', '101111001', '铜川');
INSERT INTO `ai9me_weather` VALUES ('678', '101111003', '宜君');
INSERT INTO `ai9me_weather` VALUES ('679', '101111101', '杨凌');
INSERT INTO `ai9me_weather` VALUES ('680', '101120101', '济南');
INSERT INTO `ai9me_weather` VALUES ('681', '101120103', '商河');
INSERT INTO `ai9me_weather` VALUES ('682', '101120104', '章丘');
INSERT INTO `ai9me_weather` VALUES ('683', '101120105', '平阴');
INSERT INTO `ai9me_weather` VALUES ('684', '101120106', '济阳');
INSERT INTO `ai9me_weather` VALUES ('685', '101120201', '青岛');
INSERT INTO `ai9me_weather` VALUES ('686', '101120204', '即墨');
INSERT INTO `ai9me_weather` VALUES ('687', '101120205', '胶州');
INSERT INTO `ai9me_weather` VALUES ('688', '101120206', '胶南');
INSERT INTO `ai9me_weather` VALUES ('689', '101120207', '莱西');
INSERT INTO `ai9me_weather` VALUES ('690', '101120208', '平度');
INSERT INTO `ai9me_weather` VALUES ('691', '101120301', '淄博');
INSERT INTO `ai9me_weather` VALUES ('692', '101120304', '高青');
INSERT INTO `ai9me_weather` VALUES ('693', '101120306', '沂源');
INSERT INTO `ai9me_weather` VALUES ('694', '101120307', '桓台');
INSERT INTO `ai9me_weather` VALUES ('695', '101120401', '德州');
INSERT INTO `ai9me_weather` VALUES ('696', '101120402', '武城');
INSERT INTO `ai9me_weather` VALUES ('697', '101120403', '临邑');
INSERT INTO `ai9me_weather` VALUES ('698', '101120404', '陵县');
INSERT INTO `ai9me_weather` VALUES ('699', '101120405', '齐河');
INSERT INTO `ai9me_weather` VALUES ('700', '101120406', '乐陵');
INSERT INTO `ai9me_weather` VALUES ('701', '101120407', '庆云');
INSERT INTO `ai9me_weather` VALUES ('702', '101120408', '平原');
INSERT INTO `ai9me_weather` VALUES ('703', '101120409', '宁津');
INSERT INTO `ai9me_weather` VALUES ('704', '101120410', '夏津');
INSERT INTO `ai9me_weather` VALUES ('705', '101120411', '禹城');
INSERT INTO `ai9me_weather` VALUES ('706', '101120501', '烟台');
INSERT INTO `ai9me_weather` VALUES ('707', '101120502', '莱州');
INSERT INTO `ai9me_weather` VALUES ('708', '101120503', '长岛');
INSERT INTO `ai9me_weather` VALUES ('709', '101120504', '蓬莱');
INSERT INTO `ai9me_weather` VALUES ('710', '101120505', '龙口');
INSERT INTO `ai9me_weather` VALUES ('711', '101120506', '招远');
INSERT INTO `ai9me_weather` VALUES ('712', '101120507', '栖霞');
INSERT INTO `ai9me_weather` VALUES ('713', '101120510', '莱阳');
INSERT INTO `ai9me_weather` VALUES ('714', '101120511', '海阳');
INSERT INTO `ai9me_weather` VALUES ('715', '101120601', '潍坊');
INSERT INTO `ai9me_weather` VALUES ('716', '101120602', '青州');
INSERT INTO `ai9me_weather` VALUES ('717', '101120603', '寿光');
INSERT INTO `ai9me_weather` VALUES ('718', '101120604', '临朐');
INSERT INTO `ai9me_weather` VALUES ('719', '101120605', '昌乐');
INSERT INTO `ai9me_weather` VALUES ('720', '101120606', '昌邑');
INSERT INTO `ai9me_weather` VALUES ('721', '101120607', '安丘');
INSERT INTO `ai9me_weather` VALUES ('722', '101120608', '高密');
INSERT INTO `ai9me_weather` VALUES ('723', '101120609', '诸城');
INSERT INTO `ai9me_weather` VALUES ('724', '101120701', '济宁');
INSERT INTO `ai9me_weather` VALUES ('725', '101120702', '嘉祥');
INSERT INTO `ai9me_weather` VALUES ('726', '101120703', '微山');
INSERT INTO `ai9me_weather` VALUES ('727', '101120704', '鱼台');
INSERT INTO `ai9me_weather` VALUES ('728', '101120705', '兖州');
INSERT INTO `ai9me_weather` VALUES ('729', '101120706', '金乡');
INSERT INTO `ai9me_weather` VALUES ('730', '101120707', '汶上');
INSERT INTO `ai9me_weather` VALUES ('731', '101120708', '泗水');
INSERT INTO `ai9me_weather` VALUES ('732', '101120709', '梁山');
INSERT INTO `ai9me_weather` VALUES ('733', '101120710', '曲阜');
INSERT INTO `ai9me_weather` VALUES ('734', '101120711', '邹城');
INSERT INTO `ai9me_weather` VALUES ('735', '101120801', '泰安');
INSERT INTO `ai9me_weather` VALUES ('736', '101120802', '新泰');
INSERT INTO `ai9me_weather` VALUES ('737', '101120804', '肥城');
INSERT INTO `ai9me_weather` VALUES ('738', '101120805', '东平');
INSERT INTO `ai9me_weather` VALUES ('739', '101120806', '宁阳');
INSERT INTO `ai9me_weather` VALUES ('740', '101120901', '临沂');
INSERT INTO `ai9me_weather` VALUES ('741', '101120902', '莒南');
INSERT INTO `ai9me_weather` VALUES ('742', '101120903', '沂南');
INSERT INTO `ai9me_weather` VALUES ('743', '101120904', '苍山');
INSERT INTO `ai9me_weather` VALUES ('744', '101120905', '临沭');
INSERT INTO `ai9me_weather` VALUES ('745', '101120906', '郯城');
INSERT INTO `ai9me_weather` VALUES ('746', '101120907', '蒙阴');
INSERT INTO `ai9me_weather` VALUES ('747', '101120908', '平邑');
INSERT INTO `ai9me_weather` VALUES ('748', '101120909', '费县');
INSERT INTO `ai9me_weather` VALUES ('749', '101120910', '沂水');
INSERT INTO `ai9me_weather` VALUES ('750', '101121001', '菏泽');
INSERT INTO `ai9me_weather` VALUES ('751', '101121002', '鄄城');
INSERT INTO `ai9me_weather` VALUES ('752', '101121003', '郓城');
INSERT INTO `ai9me_weather` VALUES ('753', '101121004', '东明');
INSERT INTO `ai9me_weather` VALUES ('754', '101121005', '定陶');
INSERT INTO `ai9me_weather` VALUES ('755', '101121006', '巨野');
INSERT INTO `ai9me_weather` VALUES ('756', '101121007', '曹县');
INSERT INTO `ai9me_weather` VALUES ('757', '101121008', '成武');
INSERT INTO `ai9me_weather` VALUES ('758', '101121009', '单县');
INSERT INTO `ai9me_weather` VALUES ('759', '101121101', '滨州');
INSERT INTO `ai9me_weather` VALUES ('760', '101121102', '博兴');
INSERT INTO `ai9me_weather` VALUES ('761', '101121103', '无棣');
INSERT INTO `ai9me_weather` VALUES ('762', '101121104', '阳信');
INSERT INTO `ai9me_weather` VALUES ('763', '101121105', '惠民');
INSERT INTO `ai9me_weather` VALUES ('764', '101121106', '沾化');
INSERT INTO `ai9me_weather` VALUES ('765', '101121107', '邹平');
INSERT INTO `ai9me_weather` VALUES ('766', '101121201', '东营');
INSERT INTO `ai9me_weather` VALUES ('767', '101121203', '垦利');
INSERT INTO `ai9me_weather` VALUES ('768', '101121204', '利津');
INSERT INTO `ai9me_weather` VALUES ('769', '101121205', '广饶');
INSERT INTO `ai9me_weather` VALUES ('770', '101121301', '威海');
INSERT INTO `ai9me_weather` VALUES ('771', '101121302', '文登');
INSERT INTO `ai9me_weather` VALUES ('772', '101121303', '荣成');
INSERT INTO `ai9me_weather` VALUES ('773', '101121304', '乳山');
INSERT INTO `ai9me_weather` VALUES ('774', '101121401', '枣庄');
INSERT INTO `ai9me_weather` VALUES ('775', '101121405', '滕州');
INSERT INTO `ai9me_weather` VALUES ('776', '101121501', '日照');
INSERT INTO `ai9me_weather` VALUES ('777', '101121502', '五莲');
INSERT INTO `ai9me_weather` VALUES ('778', '101121503', '莒县');
INSERT INTO `ai9me_weather` VALUES ('779', '101121601', '莱芜');
INSERT INTO `ai9me_weather` VALUES ('780', '101121701', '聊城');
INSERT INTO `ai9me_weather` VALUES ('781', '101121702', '冠县');
INSERT INTO `ai9me_weather` VALUES ('782', '101121703', '阳谷');
INSERT INTO `ai9me_weather` VALUES ('783', '101121704', '高唐');
INSERT INTO `ai9me_weather` VALUES ('784', '101121705', '茌平');
INSERT INTO `ai9me_weather` VALUES ('785', '101121706', '东阿');
INSERT INTO `ai9me_weather` VALUES ('786', '101121707', '临清');
INSERT INTO `ai9me_weather` VALUES ('787', '101121709', '莘县');
INSERT INTO `ai9me_weather` VALUES ('788', '101130101', '乌鲁木齐');
INSERT INTO `ai9me_weather` VALUES ('789', '101130105', '达坂城');
INSERT INTO `ai9me_weather` VALUES ('790', '101130201', '克拉玛依');
INSERT INTO `ai9me_weather` VALUES ('791', '101130202', '乌尔禾');
INSERT INTO `ai9me_weather` VALUES ('792', '101130203', '白碱滩');
INSERT INTO `ai9me_weather` VALUES ('793', '101130301', '石河子');
INSERT INTO `ai9me_weather` VALUES ('794', '101130401', '昌吉');
INSERT INTO `ai9me_weather` VALUES ('795', '101130402', '呼图壁');
INSERT INTO `ai9me_weather` VALUES ('796', '101130403', '米泉');
INSERT INTO `ai9me_weather` VALUES ('797', '101130404', '阜康');
INSERT INTO `ai9me_weather` VALUES ('798', '101130405', '吉木萨尔');
INSERT INTO `ai9me_weather` VALUES ('799', '101130406', '奇台');
INSERT INTO `ai9me_weather` VALUES ('800', '101130407', '玛纳斯');
INSERT INTO `ai9me_weather` VALUES ('801', '101130408', '木垒');
INSERT INTO `ai9me_weather` VALUES ('802', '101130501', '吐鲁番');
INSERT INTO `ai9me_weather` VALUES ('803', '101130503', '克州');
INSERT INTO `ai9me_weather` VALUES ('804', '101130504', '鄯善');
INSERT INTO `ai9me_weather` VALUES ('805', '101130601', '库尔勒');
INSERT INTO `ai9me_weather` VALUES ('806', '101130602', '轮台');
INSERT INTO `ai9me_weather` VALUES ('807', '101130603', '尉犁');
INSERT INTO `ai9me_weather` VALUES ('808', '101130604', '若羌');
INSERT INTO `ai9me_weather` VALUES ('809', '101130605', '且末');
INSERT INTO `ai9me_weather` VALUES ('810', '101130606', '和静');
INSERT INTO `ai9me_weather` VALUES ('811', '101130607', '焉耆');
INSERT INTO `ai9me_weather` VALUES ('812', '101130608', '和硕');
INSERT INTO `ai9me_weather` VALUES ('813', '101130612', '博湖');
INSERT INTO `ai9me_weather` VALUES ('814', '101130701', '阿拉尔');
INSERT INTO `ai9me_weather` VALUES ('815', '101130801', '阿克苏');
INSERT INTO `ai9me_weather` VALUES ('816', '101130802', '乌什');
INSERT INTO `ai9me_weather` VALUES ('817', '101130803', '温宿');
INSERT INTO `ai9me_weather` VALUES ('818', '101130804', '拜城');
INSERT INTO `ai9me_weather` VALUES ('819', '101130805', '新和');
INSERT INTO `ai9me_weather` VALUES ('820', '101130806', '沙雅');
INSERT INTO `ai9me_weather` VALUES ('821', '101130807', '库车');
INSERT INTO `ai9me_weather` VALUES ('822', '101130808', '柯坪');
INSERT INTO `ai9me_weather` VALUES ('823', '101130809', '阿瓦提');
INSERT INTO `ai9me_weather` VALUES ('824', '101130901', '喀什');
INSERT INTO `ai9me_weather` VALUES ('825', '101130902', '英吉沙');
INSERT INTO `ai9me_weather` VALUES ('826', '101130903', '塔什库尔干');
INSERT INTO `ai9me_weather` VALUES ('827', '101130904', '麦盖提');
INSERT INTO `ai9me_weather` VALUES ('828', '101130905', '莎车');
INSERT INTO `ai9me_weather` VALUES ('829', '101130906', '叶城');
INSERT INTO `ai9me_weather` VALUES ('830', '101130907', '泽普');
INSERT INTO `ai9me_weather` VALUES ('831', '101130908', '巴楚');
INSERT INTO `ai9me_weather` VALUES ('832', '101130909', '岳普湖');
INSERT INTO `ai9me_weather` VALUES ('833', '101130910', '伽师');
INSERT INTO `ai9me_weather` VALUES ('834', '101130911', '疏附');
INSERT INTO `ai9me_weather` VALUES ('835', '101130912', '疏勒');
INSERT INTO `ai9me_weather` VALUES ('836', '101131001', '伊宁');
INSERT INTO `ai9me_weather` VALUES ('837', '101131002', '察布查尔');
INSERT INTO `ai9me_weather` VALUES ('838', '101131003', '尼勒克');
INSERT INTO `ai9me_weather` VALUES ('839', '101131005', '巩留');
INSERT INTO `ai9me_weather` VALUES ('840', '101131006', '新源');
INSERT INTO `ai9me_weather` VALUES ('841', '101131007', '昭苏');
INSERT INTO `ai9me_weather` VALUES ('842', '101131008', '特克斯');
INSERT INTO `ai9me_weather` VALUES ('843', '101131009', '霍城');
INSERT INTO `ai9me_weather` VALUES ('844', '101131011', '奎屯');
INSERT INTO `ai9me_weather` VALUES ('845', '101131101', '塔城');
INSERT INTO `ai9me_weather` VALUES ('846', '101131102', '裕民');
INSERT INTO `ai9me_weather` VALUES ('847', '101131103', '额敏');
INSERT INTO `ai9me_weather` VALUES ('848', '101131104', '和布克赛尔');
INSERT INTO `ai9me_weather` VALUES ('849', '101131105', '托里');
INSERT INTO `ai9me_weather` VALUES ('850', '101131106', '乌苏');
INSERT INTO `ai9me_weather` VALUES ('851', '101131107', '沙湾');
INSERT INTO `ai9me_weather` VALUES ('852', '101131201', '哈密');
INSERT INTO `ai9me_weather` VALUES ('853', '101131203', '巴里坤');
INSERT INTO `ai9me_weather` VALUES ('854', '101131204', '伊吾');
INSERT INTO `ai9me_weather` VALUES ('855', '101131301', '和田');
INSERT INTO `ai9me_weather` VALUES ('856', '101131302', '皮山');
INSERT INTO `ai9me_weather` VALUES ('857', '101131303', '策勒');
INSERT INTO `ai9me_weather` VALUES ('858', '101131304', '墨玉');
INSERT INTO `ai9me_weather` VALUES ('859', '101131305', '洛浦');
INSERT INTO `ai9me_weather` VALUES ('860', '101131306', '民丰');
INSERT INTO `ai9me_weather` VALUES ('861', '101131307', '于田');
INSERT INTO `ai9me_weather` VALUES ('862', '101131401', '阿勒泰');
INSERT INTO `ai9me_weather` VALUES ('863', '101131402', '哈巴河');
INSERT INTO `ai9me_weather` VALUES ('864', '101131405', '吉木乃');
INSERT INTO `ai9me_weather` VALUES ('865', '101131406', '布尔津');
INSERT INTO `ai9me_weather` VALUES ('866', '101131407', '福海');
INSERT INTO `ai9me_weather` VALUES ('867', '101131408', '富蕴');
INSERT INTO `ai9me_weather` VALUES ('868', '101131409', '青河');
INSERT INTO `ai9me_weather` VALUES ('869', '101131501', '阿图什');
INSERT INTO `ai9me_weather` VALUES ('870', '101131502', '乌恰');
INSERT INTO `ai9me_weather` VALUES ('871', '101131503', '阿克陶');
INSERT INTO `ai9me_weather` VALUES ('872', '101131504', '阿合奇');
INSERT INTO `ai9me_weather` VALUES ('873', '101131601', '博乐');
INSERT INTO `ai9me_weather` VALUES ('874', '101131602', '温泉');
INSERT INTO `ai9me_weather` VALUES ('875', '101131603', '精河');
INSERT INTO `ai9me_weather` VALUES ('876', '101140101', '拉萨');
INSERT INTO `ai9me_weather` VALUES ('877', '101140102', '当雄');
INSERT INTO `ai9me_weather` VALUES ('878', '101140103', '尼木');
INSERT INTO `ai9me_weather` VALUES ('879', '101140104', '林周');
INSERT INTO `ai9me_weather` VALUES ('880', '101140105', '堆龙德庆');
INSERT INTO `ai9me_weather` VALUES ('881', '101140106', '曲水');
INSERT INTO `ai9me_weather` VALUES ('882', '101140107', '达孜');
INSERT INTO `ai9me_weather` VALUES ('883', '101140108', '墨竹工卡');
INSERT INTO `ai9me_weather` VALUES ('884', '101140201', '日喀则');
INSERT INTO `ai9me_weather` VALUES ('885', '101140202', '拉孜');
INSERT INTO `ai9me_weather` VALUES ('886', '101140204', '聂拉木');
INSERT INTO `ai9me_weather` VALUES ('887', '101140205', '定日');
INSERT INTO `ai9me_weather` VALUES ('888', '101140206', '江孜');
INSERT INTO `ai9me_weather` VALUES ('889', '101140208', '仲巴');
INSERT INTO `ai9me_weather` VALUES ('890', '101140209', '萨嘎');
INSERT INTO `ai9me_weather` VALUES ('891', '101140210', '吉隆');
INSERT INTO `ai9me_weather` VALUES ('892', '101140211', '昂仁');
INSERT INTO `ai9me_weather` VALUES ('893', '101140212', '定结');
INSERT INTO `ai9me_weather` VALUES ('894', '101140213', '萨迦');
INSERT INTO `ai9me_weather` VALUES ('895', '101140214', '谢通门');
INSERT INTO `ai9me_weather` VALUES ('896', '101140215', '楠木林');
INSERT INTO `ai9me_weather` VALUES ('897', '101140216', '岗巴');
INSERT INTO `ai9me_weather` VALUES ('898', '101140217', '白朗');
INSERT INTO `ai9me_weather` VALUES ('899', '101140218', '亚东');
INSERT INTO `ai9me_weather` VALUES ('900', '101140219', '康马');
INSERT INTO `ai9me_weather` VALUES ('901', '101140220', '仁布');
INSERT INTO `ai9me_weather` VALUES ('902', '101140301', '山南');
INSERT INTO `ai9me_weather` VALUES ('903', '101140302', '贡嘎');
INSERT INTO `ai9me_weather` VALUES ('904', '101140303', '札囊');
INSERT INTO `ai9me_weather` VALUES ('905', '101140304', '加查');
INSERT INTO `ai9me_weather` VALUES ('906', '101140305', '浪卡子');
INSERT INTO `ai9me_weather` VALUES ('907', '101140306', '错那');
INSERT INTO `ai9me_weather` VALUES ('908', '101140307', '隆子');
INSERT INTO `ai9me_weather` VALUES ('909', '101140309', '乃东');
INSERT INTO `ai9me_weather` VALUES ('910', '101140310', '桑日');
INSERT INTO `ai9me_weather` VALUES ('911', '101140311', '洛扎');
INSERT INTO `ai9me_weather` VALUES ('912', '101140312', '措美');
INSERT INTO `ai9me_weather` VALUES ('913', '101140313', '琼结');
INSERT INTO `ai9me_weather` VALUES ('914', '101140314', '曲松');
INSERT INTO `ai9me_weather` VALUES ('915', '101140401', '林芝');
INSERT INTO `ai9me_weather` VALUES ('916', '101140402', '波密');
INSERT INTO `ai9me_weather` VALUES ('917', '101140403', '米林');
INSERT INTO `ai9me_weather` VALUES ('918', '101140404', '察隅');
INSERT INTO `ai9me_weather` VALUES ('919', '101140405', '工布江达');
INSERT INTO `ai9me_weather` VALUES ('920', '101140406', '朗县');
INSERT INTO `ai9me_weather` VALUES ('921', '101140407', '墨脱');
INSERT INTO `ai9me_weather` VALUES ('922', '101140501', '昌都');
INSERT INTO `ai9me_weather` VALUES ('923', '101140502', '丁青');
INSERT INTO `ai9me_weather` VALUES ('924', '101140503', '边坝');
INSERT INTO `ai9me_weather` VALUES ('925', '101140504', '洛隆');
INSERT INTO `ai9me_weather` VALUES ('926', '101140505', '左贡');
INSERT INTO `ai9me_weather` VALUES ('927', '101140506', '芒康');
INSERT INTO `ai9me_weather` VALUES ('928', '101140507', '类乌齐');
INSERT INTO `ai9me_weather` VALUES ('929', '101140508', '八宿');
INSERT INTO `ai9me_weather` VALUES ('930', '101140509', '江达');
INSERT INTO `ai9me_weather` VALUES ('931', '101140510', '察雅');
INSERT INTO `ai9me_weather` VALUES ('932', '101140511', '贡觉');
INSERT INTO `ai9me_weather` VALUES ('933', '101140601', '那曲');
INSERT INTO `ai9me_weather` VALUES ('934', '101140602', '尼玛');
INSERT INTO `ai9me_weather` VALUES ('935', '101140603', '嘉黎');
INSERT INTO `ai9me_weather` VALUES ('936', '101140604', '班戈');
INSERT INTO `ai9me_weather` VALUES ('937', '101140605', '安多');
INSERT INTO `ai9me_weather` VALUES ('938', '101140606', '索县');
INSERT INTO `ai9me_weather` VALUES ('939', '101140607', '聂荣');
INSERT INTO `ai9me_weather` VALUES ('940', '101140608', '巴青');
INSERT INTO `ai9me_weather` VALUES ('941', '101140609', '比如');
INSERT INTO `ai9me_weather` VALUES ('942', '101140610', '双湖');
INSERT INTO `ai9me_weather` VALUES ('943', '101140701', '阿里');
INSERT INTO `ai9me_weather` VALUES ('944', '101140702', '改则');
INSERT INTO `ai9me_weather` VALUES ('945', '101140703', '申扎');
INSERT INTO `ai9me_weather` VALUES ('946', '101140705', '普兰');
INSERT INTO `ai9me_weather` VALUES ('947', '101140706', '札达');
INSERT INTO `ai9me_weather` VALUES ('948', '101140707', '噶尔');
INSERT INTO `ai9me_weather` VALUES ('949', '101140708', '日土');
INSERT INTO `ai9me_weather` VALUES ('950', '101140709', '革吉');
INSERT INTO `ai9me_weather` VALUES ('951', '101140710', '措勤');
INSERT INTO `ai9me_weather` VALUES ('952', '101150101', '西宁');
INSERT INTO `ai9me_weather` VALUES ('953', '101150102', '大通');
INSERT INTO `ai9me_weather` VALUES ('954', '101150103', '湟源');
INSERT INTO `ai9me_weather` VALUES ('955', '101150104', '湟中');
INSERT INTO `ai9me_weather` VALUES ('956', '101150201', '海东');
INSERT INTO `ai9me_weather` VALUES ('957', '101150202', '乐都');
INSERT INTO `ai9me_weather` VALUES ('958', '101150203', '民和');
INSERT INTO `ai9me_weather` VALUES ('959', '101150204', '互助');
INSERT INTO `ai9me_weather` VALUES ('960', '101150205', '化隆');
INSERT INTO `ai9me_weather` VALUES ('961', '101150206', '循化');
INSERT INTO `ai9me_weather` VALUES ('962', '101150208', '平安');
INSERT INTO `ai9me_weather` VALUES ('963', '101150301', '黄南');
INSERT INTO `ai9me_weather` VALUES ('964', '101150302', '尖扎');
INSERT INTO `ai9me_weather` VALUES ('965', '101150303', '泽库');
INSERT INTO `ai9me_weather` VALUES ('966', '101150305', '同仁');
INSERT INTO `ai9me_weather` VALUES ('967', '101150401', '海南');
INSERT INTO `ai9me_weather` VALUES ('968', '101150404', '贵德');
INSERT INTO `ai9me_weather` VALUES ('969', '101150406', '兴海');
INSERT INTO `ai9me_weather` VALUES ('970', '101150407', '贵南');
INSERT INTO `ai9me_weather` VALUES ('971', '101150408', '同德');
INSERT INTO `ai9me_weather` VALUES ('972', '101150409', '共和');
INSERT INTO `ai9me_weather` VALUES ('973', '101150501', '果洛');
INSERT INTO `ai9me_weather` VALUES ('974', '101150502', '班玛');
INSERT INTO `ai9me_weather` VALUES ('975', '101150503', '甘德');
INSERT INTO `ai9me_weather` VALUES ('976', '101150504', '达日');
INSERT INTO `ai9me_weather` VALUES ('977', '101150505', '久治');
INSERT INTO `ai9me_weather` VALUES ('978', '101150506', '玛多');
INSERT INTO `ai9me_weather` VALUES ('979', '101150508', '玛沁');
INSERT INTO `ai9me_weather` VALUES ('980', '101150601', '玉树');
INSERT INTO `ai9me_weather` VALUES ('981', '101150602', '称多');
INSERT INTO `ai9me_weather` VALUES ('982', '101150603', '治多');
INSERT INTO `ai9me_weather` VALUES ('983', '101150604', '杂多');
INSERT INTO `ai9me_weather` VALUES ('984', '101150605', '囊谦');
INSERT INTO `ai9me_weather` VALUES ('985', '101150606', '曲麻莱');
INSERT INTO `ai9me_weather` VALUES ('986', '101150701', '海西');
INSERT INTO `ai9me_weather` VALUES ('987', '101150708', '天峻');
INSERT INTO `ai9me_weather` VALUES ('988', '101150709', '乌兰');
INSERT INTO `ai9me_weather` VALUES ('989', '101150716', '德令哈');
INSERT INTO `ai9me_weather` VALUES ('990', '101150801', '海北');
INSERT INTO `ai9me_weather` VALUES ('991', '101150802', '门源');
INSERT INTO `ai9me_weather` VALUES ('992', '101150803', '祁连');
INSERT INTO `ai9me_weather` VALUES ('993', '101150804', '海晏');
INSERT INTO `ai9me_weather` VALUES ('994', '101150806', '刚察');
INSERT INTO `ai9me_weather` VALUES ('995', '101150901', '格尔木');
INSERT INTO `ai9me_weather` VALUES ('996', '101150902', '都兰');
INSERT INTO `ai9me_weather` VALUES ('997', '101160101', '兰州');
INSERT INTO `ai9me_weather` VALUES ('998', '101160102', '皋兰');
INSERT INTO `ai9me_weather` VALUES ('999', '101160103', '永登');
INSERT INTO `ai9me_weather` VALUES ('1000', '101160104', '榆中');
INSERT INTO `ai9me_weather` VALUES ('1001', '101160201', '定西');
INSERT INTO `ai9me_weather` VALUES ('1002', '101160202', '通渭');
INSERT INTO `ai9me_weather` VALUES ('1003', '101160203', '陇西');
INSERT INTO `ai9me_weather` VALUES ('1004', '101160204', '渭源');
INSERT INTO `ai9me_weather` VALUES ('1005', '101160205', '临洮');
INSERT INTO `ai9me_weather` VALUES ('1006', '101160206', '漳县');
INSERT INTO `ai9me_weather` VALUES ('1007', '101160207', '岷县');
INSERT INTO `ai9me_weather` VALUES ('1008', '101160301', '平凉');
INSERT INTO `ai9me_weather` VALUES ('1009', '101160302', '泾川');
INSERT INTO `ai9me_weather` VALUES ('1010', '101160303', '灵台');
INSERT INTO `ai9me_weather` VALUES ('1011', '101160304', '崇信');
INSERT INTO `ai9me_weather` VALUES ('1012', '101160305', '华亭');
INSERT INTO `ai9me_weather` VALUES ('1013', '101160306', '庄浪');
INSERT INTO `ai9me_weather` VALUES ('1014', '101160307', '静宁');
INSERT INTO `ai9me_weather` VALUES ('1015', '101160401', '庆阳');
INSERT INTO `ai9me_weather` VALUES ('1016', '101160402', '西峰');
INSERT INTO `ai9me_weather` VALUES ('1017', '101160403', '环县');
INSERT INTO `ai9me_weather` VALUES ('1018', '101160404', '华池');
INSERT INTO `ai9me_weather` VALUES ('1019', '101160405', '合水');
INSERT INTO `ai9me_weather` VALUES ('1020', '101160406', '正宁');
INSERT INTO `ai9me_weather` VALUES ('1021', '101160407', '宁县');
INSERT INTO `ai9me_weather` VALUES ('1022', '101160408', '镇原');
INSERT INTO `ai9me_weather` VALUES ('1023', '101160409', '庆城');
INSERT INTO `ai9me_weather` VALUES ('1024', '101160501', '武威');
INSERT INTO `ai9me_weather` VALUES ('1025', '101160502', '民勤');
INSERT INTO `ai9me_weather` VALUES ('1026', '101160503', '古浪');
INSERT INTO `ai9me_weather` VALUES ('1027', '101160505', '天祝');
INSERT INTO `ai9me_weather` VALUES ('1028', '101160601', '金昌');
INSERT INTO `ai9me_weather` VALUES ('1029', '101160602', '永昌');
INSERT INTO `ai9me_weather` VALUES ('1030', '101160701', '张掖');
INSERT INTO `ai9me_weather` VALUES ('1031', '101160702', '肃南');
INSERT INTO `ai9me_weather` VALUES ('1032', '101160703', '民乐');
INSERT INTO `ai9me_weather` VALUES ('1033', '101160704', '临泽');
INSERT INTO `ai9me_weather` VALUES ('1034', '101160705', '高台');
INSERT INTO `ai9me_weather` VALUES ('1035', '101160706', '山丹');
INSERT INTO `ai9me_weather` VALUES ('1036', '101160801', '酒泉');
INSERT INTO `ai9me_weather` VALUES ('1037', '101160803', '金塔');
INSERT INTO `ai9me_weather` VALUES ('1038', '101160804', '阿克塞');
INSERT INTO `ai9me_weather` VALUES ('1039', '101160805', '瓜州');
INSERT INTO `ai9me_weather` VALUES ('1040', '101160806', '肃北');
INSERT INTO `ai9me_weather` VALUES ('1041', '101160807', '玉门');
INSERT INTO `ai9me_weather` VALUES ('1042', '101160808', '敦煌');
INSERT INTO `ai9me_weather` VALUES ('1043', '101160901', '天水');
INSERT INTO `ai9me_weather` VALUES ('1044', '101160903', '清水');
INSERT INTO `ai9me_weather` VALUES ('1045', '101160904', '秦安');
INSERT INTO `ai9me_weather` VALUES ('1046', '101160905', '甘谷');
INSERT INTO `ai9me_weather` VALUES ('1047', '101160906', '武山');
INSERT INTO `ai9me_weather` VALUES ('1048', '101160907', '张家川');
INSERT INTO `ai9me_weather` VALUES ('1049', '101161001', '陇南');
INSERT INTO `ai9me_weather` VALUES ('1050', '101161002', '成县');
INSERT INTO `ai9me_weather` VALUES ('1051', '101161003', '文县');
INSERT INTO `ai9me_weather` VALUES ('1052', '101161004', '宕昌');
INSERT INTO `ai9me_weather` VALUES ('1053', '101161005', '康县');
INSERT INTO `ai9me_weather` VALUES ('1054', '101161006', '西和');
INSERT INTO `ai9me_weather` VALUES ('1055', '101161007', '礼县');
INSERT INTO `ai9me_weather` VALUES ('1056', '101161008', '徽县');
INSERT INTO `ai9me_weather` VALUES ('1057', '101161009', '两当');
INSERT INTO `ai9me_weather` VALUES ('1058', '101161101', '临夏');
INSERT INTO `ai9me_weather` VALUES ('1059', '101161102', '康乐');
INSERT INTO `ai9me_weather` VALUES ('1060', '101161103', '永靖');
INSERT INTO `ai9me_weather` VALUES ('1061', '101161104', '广河');
INSERT INTO `ai9me_weather` VALUES ('1062', '101161105', '和政');
INSERT INTO `ai9me_weather` VALUES ('1063', '101161107', '积石山');
INSERT INTO `ai9me_weather` VALUES ('1064', '101161201', '合作');
INSERT INTO `ai9me_weather` VALUES ('1065', '101161202', '临潭');
INSERT INTO `ai9me_weather` VALUES ('1066', '101161203', '卓尼');
INSERT INTO `ai9me_weather` VALUES ('1067', '101161204', '舟曲');
INSERT INTO `ai9me_weather` VALUES ('1068', '101161205', '迭部');
INSERT INTO `ai9me_weather` VALUES ('1069', '101161206', '玛曲');
INSERT INTO `ai9me_weather` VALUES ('1070', '101161207', '碌曲');
INSERT INTO `ai9me_weather` VALUES ('1071', '101161208', '夏河');
INSERT INTO `ai9me_weather` VALUES ('1072', '101161301', '白银');
INSERT INTO `ai9me_weather` VALUES ('1073', '101161302', '靖远');
INSERT INTO `ai9me_weather` VALUES ('1074', '101161303', '会宁');
INSERT INTO `ai9me_weather` VALUES ('1075', '101161304', '平川');
INSERT INTO `ai9me_weather` VALUES ('1076', '101161305', '景泰');
INSERT INTO `ai9me_weather` VALUES ('1077', '101161401', '嘉峪关');
INSERT INTO `ai9me_weather` VALUES ('1078', '101170101', '银川');
INSERT INTO `ai9me_weather` VALUES ('1079', '101170102', '永宁');
INSERT INTO `ai9me_weather` VALUES ('1080', '101170103', '灵武');
INSERT INTO `ai9me_weather` VALUES ('1081', '101170104', '贺兰');
INSERT INTO `ai9me_weather` VALUES ('1082', '101170201', '石嘴山');
INSERT INTO `ai9me_weather` VALUES ('1083', '101170203', '平罗');
INSERT INTO `ai9me_weather` VALUES ('1084', '101170301', '吴忠');
INSERT INTO `ai9me_weather` VALUES ('1085', '101170302', '同心');
INSERT INTO `ai9me_weather` VALUES ('1086', '101170303', '盐池');
INSERT INTO `ai9me_weather` VALUES ('1087', '101170306', '青铜峡');
INSERT INTO `ai9me_weather` VALUES ('1088', '101170401', '固原');
INSERT INTO `ai9me_weather` VALUES ('1089', '101170402', '西吉');
INSERT INTO `ai9me_weather` VALUES ('1090', '101170403', '隆德');
INSERT INTO `ai9me_weather` VALUES ('1091', '101170404', '泾源');
INSERT INTO `ai9me_weather` VALUES ('1092', '101170406', '彭阳');
INSERT INTO `ai9me_weather` VALUES ('1093', '101170501', '中卫');
INSERT INTO `ai9me_weather` VALUES ('1094', '101170502', '中宁');
INSERT INTO `ai9me_weather` VALUES ('1095', '101170504', '海原');
INSERT INTO `ai9me_weather` VALUES ('1096', '101180101', '郑州');
INSERT INTO `ai9me_weather` VALUES ('1097', '101180102', '巩义');
INSERT INTO `ai9me_weather` VALUES ('1098', '101180103', '荥阳');
INSERT INTO `ai9me_weather` VALUES ('1099', '101180104', '登封');
INSERT INTO `ai9me_weather` VALUES ('1100', '101180105', '新密');
INSERT INTO `ai9me_weather` VALUES ('1101', '101180106', '新郑');
INSERT INTO `ai9me_weather` VALUES ('1102', '101180107', '中牟');
INSERT INTO `ai9me_weather` VALUES ('1103', '101180108', '上街');
INSERT INTO `ai9me_weather` VALUES ('1104', '101180201', '安阳');
INSERT INTO `ai9me_weather` VALUES ('1105', '101180202', '汤阴');
INSERT INTO `ai9me_weather` VALUES ('1106', '101180203', '滑县');
INSERT INTO `ai9me_weather` VALUES ('1107', '101180204', '内黄');
INSERT INTO `ai9me_weather` VALUES ('1108', '101180205', '林州');
INSERT INTO `ai9me_weather` VALUES ('1109', '101180301', '新乡');
INSERT INTO `ai9me_weather` VALUES ('1110', '101180302', '获嘉');
INSERT INTO `ai9me_weather` VALUES ('1111', '101180303', '原阳');
INSERT INTO `ai9me_weather` VALUES ('1112', '101180304', '辉县');
INSERT INTO `ai9me_weather` VALUES ('1113', '101180305', '卫辉');
INSERT INTO `ai9me_weather` VALUES ('1114', '101180306', '延津');
INSERT INTO `ai9me_weather` VALUES ('1115', '101180307', '封丘');
INSERT INTO `ai9me_weather` VALUES ('1116', '101180308', '长垣');
INSERT INTO `ai9me_weather` VALUES ('1117', '101180401', '许昌');
INSERT INTO `ai9me_weather` VALUES ('1118', '101180402', '鄢陵');
INSERT INTO `ai9me_weather` VALUES ('1119', '101180403', '襄城');
INSERT INTO `ai9me_weather` VALUES ('1120', '101180404', '长葛');
INSERT INTO `ai9me_weather` VALUES ('1121', '101180405', '禹州');
INSERT INTO `ai9me_weather` VALUES ('1122', '101180501', '平顶山');
INSERT INTO `ai9me_weather` VALUES ('1123', '101180502', '郏县');
INSERT INTO `ai9me_weather` VALUES ('1124', '101180503', '宝丰');
INSERT INTO `ai9me_weather` VALUES ('1125', '101180504', '汝州');
INSERT INTO `ai9me_weather` VALUES ('1126', '101180505', '叶县');
INSERT INTO `ai9me_weather` VALUES ('1127', '101180506', '舞钢');
INSERT INTO `ai9me_weather` VALUES ('1128', '101180507', '鲁山');
INSERT INTO `ai9me_weather` VALUES ('1129', '101180508', '石龙');
INSERT INTO `ai9me_weather` VALUES ('1130', '101180601', '信阳');
INSERT INTO `ai9me_weather` VALUES ('1131', '101180602', '息县');
INSERT INTO `ai9me_weather` VALUES ('1132', '101180603', '罗山');
INSERT INTO `ai9me_weather` VALUES ('1133', '101180604', '光山');
INSERT INTO `ai9me_weather` VALUES ('1134', '101180605', '新县');
INSERT INTO `ai9me_weather` VALUES ('1135', '101180606', '淮滨');
INSERT INTO `ai9me_weather` VALUES ('1136', '101180607', '潢川');
INSERT INTO `ai9me_weather` VALUES ('1137', '101180608', '固始');
INSERT INTO `ai9me_weather` VALUES ('1138', '101180609', '商城');
INSERT INTO `ai9me_weather` VALUES ('1139', '101180701', '南阳');
INSERT INTO `ai9me_weather` VALUES ('1140', '101180702', '南召');
INSERT INTO `ai9me_weather` VALUES ('1141', '101180703', '方城');
INSERT INTO `ai9me_weather` VALUES ('1142', '101180704', '社旗');
INSERT INTO `ai9me_weather` VALUES ('1143', '101180705', '西峡');
INSERT INTO `ai9me_weather` VALUES ('1144', '101180706', '内乡');
INSERT INTO `ai9me_weather` VALUES ('1145', '101180707', '镇平');
INSERT INTO `ai9me_weather` VALUES ('1146', '101180708', '淅川');
INSERT INTO `ai9me_weather` VALUES ('1147', '101180709', '新野');
INSERT INTO `ai9me_weather` VALUES ('1148', '101180710', '唐河');
INSERT INTO `ai9me_weather` VALUES ('1149', '101180711', '邓州');
INSERT INTO `ai9me_weather` VALUES ('1150', '101180712', '桐柏');
INSERT INTO `ai9me_weather` VALUES ('1151', '101180801', '开封');
INSERT INTO `ai9me_weather` VALUES ('1152', '101180802', '杞县');
INSERT INTO `ai9me_weather` VALUES ('1153', '101180803', '尉氏');
INSERT INTO `ai9me_weather` VALUES ('1154', '101180804', '通许');
INSERT INTO `ai9me_weather` VALUES ('1155', '101180805', '兰考');
INSERT INTO `ai9me_weather` VALUES ('1156', '101180901', '洛阳');
INSERT INTO `ai9me_weather` VALUES ('1157', '101180902', '新安');
INSERT INTO `ai9me_weather` VALUES ('1158', '101180903', '孟津');
INSERT INTO `ai9me_weather` VALUES ('1159', '101180904', '宜阳');
INSERT INTO `ai9me_weather` VALUES ('1160', '101180905', '洛宁');
INSERT INTO `ai9me_weather` VALUES ('1161', '101180906', '伊川');
INSERT INTO `ai9me_weather` VALUES ('1162', '101180907', '嵩县');
INSERT INTO `ai9me_weather` VALUES ('1163', '101180908', '偃师');
INSERT INTO `ai9me_weather` VALUES ('1164', '101180909', '栾川');
INSERT INTO `ai9me_weather` VALUES ('1165', '101180910', '汝阳');
INSERT INTO `ai9me_weather` VALUES ('1166', '101180911', '吉利');
INSERT INTO `ai9me_weather` VALUES ('1167', '101181001', '商丘');
INSERT INTO `ai9me_weather` VALUES ('1168', '101181003', '睢县');
INSERT INTO `ai9me_weather` VALUES ('1169', '101181004', '民权');
INSERT INTO `ai9me_weather` VALUES ('1170', '101181005', '虞城');
INSERT INTO `ai9me_weather` VALUES ('1171', '101181006', '柘城');
INSERT INTO `ai9me_weather` VALUES ('1172', '101181007', '宁陵');
INSERT INTO `ai9me_weather` VALUES ('1173', '101181008', '夏邑');
INSERT INTO `ai9me_weather` VALUES ('1174', '101181009', '永城');
INSERT INTO `ai9me_weather` VALUES ('1175', '101181101', '焦作');
INSERT INTO `ai9me_weather` VALUES ('1176', '101181102', '修武');
INSERT INTO `ai9me_weather` VALUES ('1177', '101181103', '武陟');
INSERT INTO `ai9me_weather` VALUES ('1178', '101181104', '沁阳');
INSERT INTO `ai9me_weather` VALUES ('1179', '101181106', '博爱');
INSERT INTO `ai9me_weather` VALUES ('1180', '101181107', '温县');
INSERT INTO `ai9me_weather` VALUES ('1181', '101181108', '孟州');
INSERT INTO `ai9me_weather` VALUES ('1182', '101181201', '鹤壁');
INSERT INTO `ai9me_weather` VALUES ('1183', '101181202', '浚县');
INSERT INTO `ai9me_weather` VALUES ('1184', '101181203', '淇县');
INSERT INTO `ai9me_weather` VALUES ('1185', '101181301', '濮阳');
INSERT INTO `ai9me_weather` VALUES ('1186', '101181302', '台前');
INSERT INTO `ai9me_weather` VALUES ('1187', '101181303', '南乐');
INSERT INTO `ai9me_weather` VALUES ('1188', '101181304', '清丰');
INSERT INTO `ai9me_weather` VALUES ('1189', '101181305', '范县');
INSERT INTO `ai9me_weather` VALUES ('1190', '101181401', '周口');
INSERT INTO `ai9me_weather` VALUES ('1191', '101181402', '扶沟');
INSERT INTO `ai9me_weather` VALUES ('1192', '101181403', '太康');
INSERT INTO `ai9me_weather` VALUES ('1193', '101181404', '淮阳');
INSERT INTO `ai9me_weather` VALUES ('1194', '101181405', '西华');
INSERT INTO `ai9me_weather` VALUES ('1195', '101181406', '商水');
INSERT INTO `ai9me_weather` VALUES ('1196', '101181407', '项城');
INSERT INTO `ai9me_weather` VALUES ('1197', '101181408', '郸城');
INSERT INTO `ai9me_weather` VALUES ('1198', '101181409', '鹿邑');
INSERT INTO `ai9me_weather` VALUES ('1199', '101181410', '沈丘');
INSERT INTO `ai9me_weather` VALUES ('1200', '101181501', '漯河');
INSERT INTO `ai9me_weather` VALUES ('1201', '101181502', '临颍');
INSERT INTO `ai9me_weather` VALUES ('1202', '101181503', '舞阳');
INSERT INTO `ai9me_weather` VALUES ('1203', '101181504', '临颖');
INSERT INTO `ai9me_weather` VALUES ('1204', '101181601', '驻马店');
INSERT INTO `ai9me_weather` VALUES ('1205', '101181602', '西平');
INSERT INTO `ai9me_weather` VALUES ('1206', '101181603', '遂平');
INSERT INTO `ai9me_weather` VALUES ('1207', '101181604', '上蔡');
INSERT INTO `ai9me_weather` VALUES ('1208', '101181605', '汝南');
INSERT INTO `ai9me_weather` VALUES ('1209', '101181606', '泌阳');
INSERT INTO `ai9me_weather` VALUES ('1210', '101181607', '平舆');
INSERT INTO `ai9me_weather` VALUES ('1211', '101181608', '新蔡');
INSERT INTO `ai9me_weather` VALUES ('1212', '101181609', '确山');
INSERT INTO `ai9me_weather` VALUES ('1213', '101181610', '正阳');
INSERT INTO `ai9me_weather` VALUES ('1214', '101181701', '三门峡');
INSERT INTO `ai9me_weather` VALUES ('1215', '101181702', '灵宝');
INSERT INTO `ai9me_weather` VALUES ('1216', '101181703', '渑池');
INSERT INTO `ai9me_weather` VALUES ('1217', '101181704', '卢氏');
INSERT INTO `ai9me_weather` VALUES ('1218', '101181705', '义马');
INSERT INTO `ai9me_weather` VALUES ('1219', '101181706', '陕县');
INSERT INTO `ai9me_weather` VALUES ('1220', '101181801', '济源');
INSERT INTO `ai9me_weather` VALUES ('1221', '101190101', '南京');
INSERT INTO `ai9me_weather` VALUES ('1222', '101190102', '溧水');
INSERT INTO `ai9me_weather` VALUES ('1223', '101190103', '高淳');
INSERT INTO `ai9me_weather` VALUES ('1224', '101190104', '江宁');
INSERT INTO `ai9me_weather` VALUES ('1225', '101190105', '六合');
INSERT INTO `ai9me_weather` VALUES ('1226', '101190107', '浦口');
INSERT INTO `ai9me_weather` VALUES ('1227', '101190201', '无锡');
INSERT INTO `ai9me_weather` VALUES ('1228', '101190202', '江阴');
INSERT INTO `ai9me_weather` VALUES ('1229', '101190203', '宜兴');
INSERT INTO `ai9me_weather` VALUES ('1230', '101190204', '锡山');
INSERT INTO `ai9me_weather` VALUES ('1231', '101190301', '镇江');
INSERT INTO `ai9me_weather` VALUES ('1232', '101190302', '丹阳');
INSERT INTO `ai9me_weather` VALUES ('1233', '101190303', '扬中');
INSERT INTO `ai9me_weather` VALUES ('1234', '101190304', '句容');
INSERT INTO `ai9me_weather` VALUES ('1235', '101190305', '丹徒');
INSERT INTO `ai9me_weather` VALUES ('1236', '101190401', '苏州');
INSERT INTO `ai9me_weather` VALUES ('1237', '101190402', '常熟');
INSERT INTO `ai9me_weather` VALUES ('1238', '101190403', '张家港');
INSERT INTO `ai9me_weather` VALUES ('1239', '101190404', '昆山');
INSERT INTO `ai9me_weather` VALUES ('1240', '101190405', '吴中');
INSERT INTO `ai9me_weather` VALUES ('1241', '101190407', '吴江');
INSERT INTO `ai9me_weather` VALUES ('1242', '101190408', '太仓');
INSERT INTO `ai9me_weather` VALUES ('1243', '101190501', '南通');
INSERT INTO `ai9me_weather` VALUES ('1244', '101190502', '海安');
INSERT INTO `ai9me_weather` VALUES ('1245', '101190503', '如皋');
INSERT INTO `ai9me_weather` VALUES ('1246', '101190504', '如东');
INSERT INTO `ai9me_weather` VALUES ('1247', '101190507', '启东');
INSERT INTO `ai9me_weather` VALUES ('1248', '101190508', '海门');
INSERT INTO `ai9me_weather` VALUES ('1249', '101190601', '扬州');
INSERT INTO `ai9me_weather` VALUES ('1250', '101190602', '宝应');
INSERT INTO `ai9me_weather` VALUES ('1251', '101190603', '仪征');
INSERT INTO `ai9me_weather` VALUES ('1252', '101190604', '高邮');
INSERT INTO `ai9me_weather` VALUES ('1253', '101190605', '江都');
INSERT INTO `ai9me_weather` VALUES ('1254', '101190606', '邗江');
INSERT INTO `ai9me_weather` VALUES ('1255', '101190701', '盐城');
INSERT INTO `ai9me_weather` VALUES ('1256', '101190702', '响水');
INSERT INTO `ai9me_weather` VALUES ('1257', '101190703', '滨海');
INSERT INTO `ai9me_weather` VALUES ('1258', '101190704', '阜宁');
INSERT INTO `ai9me_weather` VALUES ('1259', '101190705', '射阳');
INSERT INTO `ai9me_weather` VALUES ('1260', '101190706', '建湖');
INSERT INTO `ai9me_weather` VALUES ('1261', '101190707', '东台');
INSERT INTO `ai9me_weather` VALUES ('1262', '101190708', '大丰');
INSERT INTO `ai9me_weather` VALUES ('1263', '101190709', '盐都');
INSERT INTO `ai9me_weather` VALUES ('1264', '101190801', '徐州');
INSERT INTO `ai9me_weather` VALUES ('1265', '101190802', '铜山');
INSERT INTO `ai9me_weather` VALUES ('1266', '101190803', '丰县');
INSERT INTO `ai9me_weather` VALUES ('1267', '101190804', '沛县');
INSERT INTO `ai9me_weather` VALUES ('1268', '101190805', '邳州');
INSERT INTO `ai9me_weather` VALUES ('1269', '101190806', '睢宁');
INSERT INTO `ai9me_weather` VALUES ('1270', '101190807', '新沂');
INSERT INTO `ai9me_weather` VALUES ('1271', '101190901', '淮安');
INSERT INTO `ai9me_weather` VALUES ('1272', '101190902', '金湖');
INSERT INTO `ai9me_weather` VALUES ('1273', '101190903', '盱眙');
INSERT INTO `ai9me_weather` VALUES ('1274', '101190904', '洪泽');
INSERT INTO `ai9me_weather` VALUES ('1275', '101190905', '涟水');
INSERT INTO `ai9me_weather` VALUES ('1276', '101191001', '连云港');
INSERT INTO `ai9me_weather` VALUES ('1277', '101191002', '东海');
INSERT INTO `ai9me_weather` VALUES ('1278', '101191003', '赣榆');
INSERT INTO `ai9me_weather` VALUES ('1279', '101191004', '灌云');
INSERT INTO `ai9me_weather` VALUES ('1280', '101191005', '灌南');
INSERT INTO `ai9me_weather` VALUES ('1281', '101191101', '常州');
INSERT INTO `ai9me_weather` VALUES ('1282', '101191102', '溧阳');
INSERT INTO `ai9me_weather` VALUES ('1283', '101191103', '金坛');
INSERT INTO `ai9me_weather` VALUES ('1284', '101191104', '武进');
INSERT INTO `ai9me_weather` VALUES ('1285', '101191201', '泰州');
INSERT INTO `ai9me_weather` VALUES ('1286', '101191202', '兴化');
INSERT INTO `ai9me_weather` VALUES ('1287', '101191203', '泰兴');
INSERT INTO `ai9me_weather` VALUES ('1288', '101191204', '姜堰');
INSERT INTO `ai9me_weather` VALUES ('1289', '101191205', '靖江');
INSERT INTO `ai9me_weather` VALUES ('1290', '101191301', '宿迁');
INSERT INTO `ai9me_weather` VALUES ('1291', '101191302', '沭阳');
INSERT INTO `ai9me_weather` VALUES ('1292', '101191303', '泗阳');
INSERT INTO `ai9me_weather` VALUES ('1293', '101191304', '泗洪');
INSERT INTO `ai9me_weather` VALUES ('1294', '101191305', '宿豫');
INSERT INTO `ai9me_weather` VALUES ('1295', '101200101', '武汉');
INSERT INTO `ai9me_weather` VALUES ('1296', '101200102', '蔡甸');
INSERT INTO `ai9me_weather` VALUES ('1297', '101200103', '黄陂');
INSERT INTO `ai9me_weather` VALUES ('1298', '101200104', '新洲');
INSERT INTO `ai9me_weather` VALUES ('1299', '101200105', '江夏');
INSERT INTO `ai9me_weather` VALUES ('1300', '101200106', '东西湖');
INSERT INTO `ai9me_weather` VALUES ('1301', '101200201', '襄阳');
INSERT INTO `ai9me_weather` VALUES ('1302', '101200202', '襄州');
INSERT INTO `ai9me_weather` VALUES ('1303', '101200203', '保康');
INSERT INTO `ai9me_weather` VALUES ('1304', '101200204', '南漳');
INSERT INTO `ai9me_weather` VALUES ('1305', '101200205', '宜城');
INSERT INTO `ai9me_weather` VALUES ('1306', '101200206', '老河口');
INSERT INTO `ai9me_weather` VALUES ('1307', '101200207', '谷城');
INSERT INTO `ai9me_weather` VALUES ('1308', '101200208', '枣阳');
INSERT INTO `ai9me_weather` VALUES ('1309', '101200301', '鄂州');
INSERT INTO `ai9me_weather` VALUES ('1310', '101200302', '梁子湖');
INSERT INTO `ai9me_weather` VALUES ('1311', '101200401', '孝感');
INSERT INTO `ai9me_weather` VALUES ('1312', '101200402', '安陆');
INSERT INTO `ai9me_weather` VALUES ('1313', '101200403', '云梦');
INSERT INTO `ai9me_weather` VALUES ('1314', '101200404', '大悟');
INSERT INTO `ai9me_weather` VALUES ('1315', '101200405', '应城');
INSERT INTO `ai9me_weather` VALUES ('1316', '101200406', '汉川');
INSERT INTO `ai9me_weather` VALUES ('1317', '101200407', '孝昌');
INSERT INTO `ai9me_weather` VALUES ('1318', '101200501', '黄冈');
INSERT INTO `ai9me_weather` VALUES ('1319', '101200502', '红安');
INSERT INTO `ai9me_weather` VALUES ('1320', '101200503', '麻城');
INSERT INTO `ai9me_weather` VALUES ('1321', '101200504', '罗田');
INSERT INTO `ai9me_weather` VALUES ('1322', '101200505', '英山');
INSERT INTO `ai9me_weather` VALUES ('1323', '101200506', '浠水');
INSERT INTO `ai9me_weather` VALUES ('1324', '101200507', '蕲春');
INSERT INTO `ai9me_weather` VALUES ('1325', '101200508', '黄梅');
INSERT INTO `ai9me_weather` VALUES ('1326', '101200509', '武穴');
INSERT INTO `ai9me_weather` VALUES ('1327', '101200510', '团风');
INSERT INTO `ai9me_weather` VALUES ('1328', '101200601', '黄石');
INSERT INTO `ai9me_weather` VALUES ('1329', '101200602', '大冶');
INSERT INTO `ai9me_weather` VALUES ('1330', '101200603', '阳新');
INSERT INTO `ai9me_weather` VALUES ('1331', '101200604', '铁山');
INSERT INTO `ai9me_weather` VALUES ('1332', '101200605', '下陆');
INSERT INTO `ai9me_weather` VALUES ('1333', '101200606', '西塞山');
INSERT INTO `ai9me_weather` VALUES ('1334', '101200701', '咸宁');
INSERT INTO `ai9me_weather` VALUES ('1335', '101200702', '赤壁');
INSERT INTO `ai9me_weather` VALUES ('1336', '101200703', '嘉鱼');
INSERT INTO `ai9me_weather` VALUES ('1337', '101200704', '崇阳');
INSERT INTO `ai9me_weather` VALUES ('1338', '101200705', '通城');
INSERT INTO `ai9me_weather` VALUES ('1339', '101200706', '通山');
INSERT INTO `ai9me_weather` VALUES ('1340', '101200801', '荆州');
INSERT INTO `ai9me_weather` VALUES ('1341', '101200802', '江陵');
INSERT INTO `ai9me_weather` VALUES ('1342', '101200803', '公安');
INSERT INTO `ai9me_weather` VALUES ('1343', '101200804', '石首');
INSERT INTO `ai9me_weather` VALUES ('1344', '101200805', '监利');
INSERT INTO `ai9me_weather` VALUES ('1345', '101200806', '洪湖');
INSERT INTO `ai9me_weather` VALUES ('1346', '101200807', '松滋');
INSERT INTO `ai9me_weather` VALUES ('1347', '101200901', '宜昌');
INSERT INTO `ai9me_weather` VALUES ('1348', '101200902', '远安');
INSERT INTO `ai9me_weather` VALUES ('1349', '101200903', '秭归');
INSERT INTO `ai9me_weather` VALUES ('1350', '101200904', '兴山');
INSERT INTO `ai9me_weather` VALUES ('1351', '101200906', '五峰');
INSERT INTO `ai9me_weather` VALUES ('1352', '101200907', '当阳');
INSERT INTO `ai9me_weather` VALUES ('1353', '101200908', '长阳');
INSERT INTO `ai9me_weather` VALUES ('1354', '101200909', '宜都');
INSERT INTO `ai9me_weather` VALUES ('1355', '101200910', '枝江');
INSERT INTO `ai9me_weather` VALUES ('1356', '101201001', '恩施');
INSERT INTO `ai9me_weather` VALUES ('1357', '101201002', '利川');
INSERT INTO `ai9me_weather` VALUES ('1358', '101201003', '建始');
INSERT INTO `ai9me_weather` VALUES ('1359', '101201004', '咸丰');
INSERT INTO `ai9me_weather` VALUES ('1360', '101201005', '宣恩');
INSERT INTO `ai9me_weather` VALUES ('1361', '101201006', '鹤峰');
INSERT INTO `ai9me_weather` VALUES ('1362', '101201007', '来凤');
INSERT INTO `ai9me_weather` VALUES ('1363', '101201008', '巴东');
INSERT INTO `ai9me_weather` VALUES ('1364', '101201101', '十堰');
INSERT INTO `ai9me_weather` VALUES ('1365', '101201102', '竹溪');
INSERT INTO `ai9me_weather` VALUES ('1366', '101201103', '郧西');
INSERT INTO `ai9me_weather` VALUES ('1367', '101201104', '郧县');
INSERT INTO `ai9me_weather` VALUES ('1368', '101201105', '竹山');
INSERT INTO `ai9me_weather` VALUES ('1369', '101201106', '房县');
INSERT INTO `ai9me_weather` VALUES ('1370', '101201107', '丹江口');
INSERT INTO `ai9me_weather` VALUES ('1371', '101201108', '茅箭');
INSERT INTO `ai9me_weather` VALUES ('1372', '101201109', '张湾');
INSERT INTO `ai9me_weather` VALUES ('1373', '101201201', '神农架');
INSERT INTO `ai9me_weather` VALUES ('1374', '101201301', '随州');
INSERT INTO `ai9me_weather` VALUES ('1375', '101201302', '广水');
INSERT INTO `ai9me_weather` VALUES ('1376', '101201401', '荆门');
INSERT INTO `ai9me_weather` VALUES ('1377', '101201402', '钟祥');
INSERT INTO `ai9me_weather` VALUES ('1378', '101201403', '京山');
INSERT INTO `ai9me_weather` VALUES ('1379', '101201404', '掇刀');
INSERT INTO `ai9me_weather` VALUES ('1380', '101201405', '沙洋');
INSERT INTO `ai9me_weather` VALUES ('1381', '101201406', '沙市');
INSERT INTO `ai9me_weather` VALUES ('1382', '101201501', '天门');
INSERT INTO `ai9me_weather` VALUES ('1383', '101201601', '仙桃');
INSERT INTO `ai9me_weather` VALUES ('1384', '101201701', '潜江');
INSERT INTO `ai9me_weather` VALUES ('1385', '101210101', '杭州');
INSERT INTO `ai9me_weather` VALUES ('1386', '101210102', '萧山');
INSERT INTO `ai9me_weather` VALUES ('1387', '101210103', '桐庐');
INSERT INTO `ai9me_weather` VALUES ('1388', '101210104', '淳安');
INSERT INTO `ai9me_weather` VALUES ('1389', '101210105', '建德');
INSERT INTO `ai9me_weather` VALUES ('1390', '101210106', '余杭');
INSERT INTO `ai9me_weather` VALUES ('1391', '101210107', '临安');
INSERT INTO `ai9me_weather` VALUES ('1392', '101210108', '富阳');
INSERT INTO `ai9me_weather` VALUES ('1393', '101210201', '湖州');
INSERT INTO `ai9me_weather` VALUES ('1394', '101210202', '长兴');
INSERT INTO `ai9me_weather` VALUES ('1395', '101210203', '安吉');
INSERT INTO `ai9me_weather` VALUES ('1396', '101210204', '德清');
INSERT INTO `ai9me_weather` VALUES ('1397', '101210301', '嘉兴');
INSERT INTO `ai9me_weather` VALUES ('1398', '101210302', '嘉善');
INSERT INTO `ai9me_weather` VALUES ('1399', '101210303', '海宁');
INSERT INTO `ai9me_weather` VALUES ('1400', '101210304', '桐乡');
INSERT INTO `ai9me_weather` VALUES ('1401', '101210305', '平湖');
INSERT INTO `ai9me_weather` VALUES ('1402', '101210306', '海盐');
INSERT INTO `ai9me_weather` VALUES ('1403', '101210401', '宁波');
INSERT INTO `ai9me_weather` VALUES ('1404', '101210403', '慈溪');
INSERT INTO `ai9me_weather` VALUES ('1405', '101210404', '余姚');
INSERT INTO `ai9me_weather` VALUES ('1406', '101210405', '奉化');
INSERT INTO `ai9me_weather` VALUES ('1407', '101210406', '象山');
INSERT INTO `ai9me_weather` VALUES ('1408', '101210408', '宁海');
INSERT INTO `ai9me_weather` VALUES ('1409', '101210410', '北仑');
INSERT INTO `ai9me_weather` VALUES ('1410', '101210411', '鄞州');
INSERT INTO `ai9me_weather` VALUES ('1411', '101210501', '绍兴');
INSERT INTO `ai9me_weather` VALUES ('1412', '101210502', '诸暨');
INSERT INTO `ai9me_weather` VALUES ('1413', '101210503', '上虞');
INSERT INTO `ai9me_weather` VALUES ('1414', '101210504', '新昌');
INSERT INTO `ai9me_weather` VALUES ('1415', '101210505', '嵊州');
INSERT INTO `ai9me_weather` VALUES ('1416', '101210601', '台州');
INSERT INTO `ai9me_weather` VALUES ('1417', '101210603', '玉环');
INSERT INTO `ai9me_weather` VALUES ('1418', '101210604', '三门');
INSERT INTO `ai9me_weather` VALUES ('1419', '101210605', '天台');
INSERT INTO `ai9me_weather` VALUES ('1420', '101210606', '仙居');
INSERT INTO `ai9me_weather` VALUES ('1421', '101210607', '温岭');
INSERT INTO `ai9me_weather` VALUES ('1422', '101210610', '临海');
INSERT INTO `ai9me_weather` VALUES ('1423', '101210701', '温州');
INSERT INTO `ai9me_weather` VALUES ('1424', '101210702', '泰顺');
INSERT INTO `ai9me_weather` VALUES ('1425', '101210703', '文成');
INSERT INTO `ai9me_weather` VALUES ('1426', '101210704', '平阳');
INSERT INTO `ai9me_weather` VALUES ('1427', '101210705', '瑞安');
INSERT INTO `ai9me_weather` VALUES ('1428', '101210706', '洞头');
INSERT INTO `ai9me_weather` VALUES ('1429', '101210707', '乐清');
INSERT INTO `ai9me_weather` VALUES ('1430', '101210708', '永嘉');
INSERT INTO `ai9me_weather` VALUES ('1431', '101210709', '苍南');
INSERT INTO `ai9me_weather` VALUES ('1432', '101210801', '丽水');
INSERT INTO `ai9me_weather` VALUES ('1433', '101210802', '遂昌');
INSERT INTO `ai9me_weather` VALUES ('1434', '101210803', '龙泉');
INSERT INTO `ai9me_weather` VALUES ('1435', '101210804', '缙云');
INSERT INTO `ai9me_weather` VALUES ('1436', '101210805', '青田');
INSERT INTO `ai9me_weather` VALUES ('1437', '101210806', '云和');
INSERT INTO `ai9me_weather` VALUES ('1438', '101210807', '庆元');
INSERT INTO `ai9me_weather` VALUES ('1439', '101210808', '松阳');
INSERT INTO `ai9me_weather` VALUES ('1440', '101210809', '景宁');
INSERT INTO `ai9me_weather` VALUES ('1441', '101210901', '金华');
INSERT INTO `ai9me_weather` VALUES ('1442', '101210902', '浦江');
INSERT INTO `ai9me_weather` VALUES ('1443', '101210903', '兰溪');
INSERT INTO `ai9me_weather` VALUES ('1444', '101210904', '义乌');
INSERT INTO `ai9me_weather` VALUES ('1445', '101210905', '东阳');
INSERT INTO `ai9me_weather` VALUES ('1446', '101210906', '武义');
INSERT INTO `ai9me_weather` VALUES ('1447', '101210907', '永康');
INSERT INTO `ai9me_weather` VALUES ('1448', '101210908', '磐安');
INSERT INTO `ai9me_weather` VALUES ('1449', '101211001', '衢州');
INSERT INTO `ai9me_weather` VALUES ('1450', '101211002', '常山');
INSERT INTO `ai9me_weather` VALUES ('1451', '101211003', '开化');
INSERT INTO `ai9me_weather` VALUES ('1452', '101211004', '龙游');
INSERT INTO `ai9me_weather` VALUES ('1453', '101211005', '江山');
INSERT INTO `ai9me_weather` VALUES ('1454', '101211101', '舟山');
INSERT INTO `ai9me_weather` VALUES ('1455', '101211102', '嵊泗');
INSERT INTO `ai9me_weather` VALUES ('1456', '101211104', '岱山');
INSERT INTO `ai9me_weather` VALUES ('1457', '101220101', '合肥');
INSERT INTO `ai9me_weather` VALUES ('1458', '101220102', '长丰');
INSERT INTO `ai9me_weather` VALUES ('1459', '101220103', '肥东');
INSERT INTO `ai9me_weather` VALUES ('1460', '101220104', '肥西');
INSERT INTO `ai9me_weather` VALUES ('1461', '101220201', '蚌埠');
INSERT INTO `ai9me_weather` VALUES ('1462', '101220202', '怀远');
INSERT INTO `ai9me_weather` VALUES ('1463', '101220203', '固镇');
INSERT INTO `ai9me_weather` VALUES ('1464', '101220204', '五河');
INSERT INTO `ai9me_weather` VALUES ('1465', '101220301', '芜湖');
INSERT INTO `ai9me_weather` VALUES ('1466', '101220302', '繁昌');
INSERT INTO `ai9me_weather` VALUES ('1467', '101220304', '南陵');
INSERT INTO `ai9me_weather` VALUES ('1468', '101220401', '淮南');
INSERT INTO `ai9me_weather` VALUES ('1469', '101220402', '凤台');
INSERT INTO `ai9me_weather` VALUES ('1470', '101220403', '潘集');
INSERT INTO `ai9me_weather` VALUES ('1471', '101220501', '马鞍山');
INSERT INTO `ai9me_weather` VALUES ('1472', '101220502', '当涂');
INSERT INTO `ai9me_weather` VALUES ('1473', '101220601', '安庆');
INSERT INTO `ai9me_weather` VALUES ('1474', '101220602', '枞阳');
INSERT INTO `ai9me_weather` VALUES ('1475', '101220603', '太湖');
INSERT INTO `ai9me_weather` VALUES ('1476', '101220604', '潜山');
INSERT INTO `ai9me_weather` VALUES ('1477', '101220605', '怀宁');
INSERT INTO `ai9me_weather` VALUES ('1478', '101220606', '宿松');
INSERT INTO `ai9me_weather` VALUES ('1479', '101220607', '望江');
INSERT INTO `ai9me_weather` VALUES ('1480', '101220608', '岳西');
INSERT INTO `ai9me_weather` VALUES ('1481', '101220609', '桐城');
INSERT INTO `ai9me_weather` VALUES ('1482', '101220701', '宿州');
INSERT INTO `ai9me_weather` VALUES ('1483', '101220702', '砀山');
INSERT INTO `ai9me_weather` VALUES ('1484', '101220703', '灵璧');
INSERT INTO `ai9me_weather` VALUES ('1485', '101220704', '泗县');
INSERT INTO `ai9me_weather` VALUES ('1486', '101220705', '萧县');
INSERT INTO `ai9me_weather` VALUES ('1487', '101220801', '阜阳');
INSERT INTO `ai9me_weather` VALUES ('1488', '101220802', '阜南');
INSERT INTO `ai9me_weather` VALUES ('1489', '101220803', '颍上');
INSERT INTO `ai9me_weather` VALUES ('1490', '101220804', '临泉');
INSERT INTO `ai9me_weather` VALUES ('1491', '101220805', '界首');
INSERT INTO `ai9me_weather` VALUES ('1492', '101220806', '太和');
INSERT INTO `ai9me_weather` VALUES ('1493', '101220901', '亳州');
INSERT INTO `ai9me_weather` VALUES ('1494', '101220902', '涡阳');
INSERT INTO `ai9me_weather` VALUES ('1495', '101220903', '利辛');
INSERT INTO `ai9me_weather` VALUES ('1496', '101220904', '蒙城');
INSERT INTO `ai9me_weather` VALUES ('1497', '101221001', '黄山');
INSERT INTO `ai9me_weather` VALUES ('1498', '101221004', '祁门');
INSERT INTO `ai9me_weather` VALUES ('1499', '101221005', '黟县');
INSERT INTO `ai9me_weather` VALUES ('1500', '101221006', '歙县');
INSERT INTO `ai9me_weather` VALUES ('1501', '101221007', '休宁');
INSERT INTO `ai9me_weather` VALUES ('1502', '101221101', '滁州');
INSERT INTO `ai9me_weather` VALUES ('1503', '101221102', '凤阳');
INSERT INTO `ai9me_weather` VALUES ('1504', '101221103', '明光');
INSERT INTO `ai9me_weather` VALUES ('1505', '101221104', '定远');
INSERT INTO `ai9me_weather` VALUES ('1506', '101221105', '全椒');
INSERT INTO `ai9me_weather` VALUES ('1507', '101221106', '来安');
INSERT INTO `ai9me_weather` VALUES ('1508', '101221107', '天长');
INSERT INTO `ai9me_weather` VALUES ('1509', '101221201', '淮北');
INSERT INTO `ai9me_weather` VALUES ('1510', '101221202', '濉溪');
INSERT INTO `ai9me_weather` VALUES ('1511', '101221301', '铜陵');
INSERT INTO `ai9me_weather` VALUES ('1512', '101221401', '宣城');
INSERT INTO `ai9me_weather` VALUES ('1513', '101221402', '泾县');
INSERT INTO `ai9me_weather` VALUES ('1514', '101221403', '旌德');
INSERT INTO `ai9me_weather` VALUES ('1515', '101221404', '宁国');
INSERT INTO `ai9me_weather` VALUES ('1516', '101221405', '绩溪');
INSERT INTO `ai9me_weather` VALUES ('1517', '101221406', '广德');
INSERT INTO `ai9me_weather` VALUES ('1518', '101221407', '郎溪');
INSERT INTO `ai9me_weather` VALUES ('1519', '101221501', '六安');
INSERT INTO `ai9me_weather` VALUES ('1520', '101221502', '霍邱');
INSERT INTO `ai9me_weather` VALUES ('1521', '101221503', '寿县');
INSERT INTO `ai9me_weather` VALUES ('1522', '101221505', '金寨');
INSERT INTO `ai9me_weather` VALUES ('1523', '101221506', '霍山');
INSERT INTO `ai9me_weather` VALUES ('1524', '101221507', '舒城');
INSERT INTO `ai9me_weather` VALUES ('1525', '101221601', '巢湖');
INSERT INTO `ai9me_weather` VALUES ('1526', '101221602', '庐江');
INSERT INTO `ai9me_weather` VALUES ('1527', '101221603', '无为');
INSERT INTO `ai9me_weather` VALUES ('1528', '101221604', '含山');
INSERT INTO `ai9me_weather` VALUES ('1529', '101221605', '和县');
INSERT INTO `ai9me_weather` VALUES ('1530', '101221701', '池州');
INSERT INTO `ai9me_weather` VALUES ('1531', '101221702', '东至');
INSERT INTO `ai9me_weather` VALUES ('1532', '101221703', '青阳');
INSERT INTO `ai9me_weather` VALUES ('1533', '101221705', '石台');
INSERT INTO `ai9me_weather` VALUES ('1534', '101230101', '福州');
INSERT INTO `ai9me_weather` VALUES ('1535', '101230102', '闽清');
INSERT INTO `ai9me_weather` VALUES ('1536', '101230103', '闽侯');
INSERT INTO `ai9me_weather` VALUES ('1537', '101230104', '罗源');
INSERT INTO `ai9me_weather` VALUES ('1538', '101230105', '连江');
INSERT INTO `ai9me_weather` VALUES ('1539', '101230107', '永泰');
INSERT INTO `ai9me_weather` VALUES ('1540', '101230108', '平潭');
INSERT INTO `ai9me_weather` VALUES ('1541', '101230110', '长乐');
INSERT INTO `ai9me_weather` VALUES ('1542', '101230111', '福清');
INSERT INTO `ai9me_weather` VALUES ('1543', '101230201', '厦门');
INSERT INTO `ai9me_weather` VALUES ('1544', '101230301', '宁德');
INSERT INTO `ai9me_weather` VALUES ('1545', '101230302', '古田');
INSERT INTO `ai9me_weather` VALUES ('1546', '101230303', '霞浦');
INSERT INTO `ai9me_weather` VALUES ('1547', '101230304', '寿宁');
INSERT INTO `ai9me_weather` VALUES ('1548', '101230305', '周宁');
INSERT INTO `ai9me_weather` VALUES ('1549', '101230306', '福安');
INSERT INTO `ai9me_weather` VALUES ('1550', '101230307', '柘荣');
INSERT INTO `ai9me_weather` VALUES ('1551', '101230308', '福鼎');
INSERT INTO `ai9me_weather` VALUES ('1552', '101230309', '屏南');
INSERT INTO `ai9me_weather` VALUES ('1553', '101230401', '莆田');
INSERT INTO `ai9me_weather` VALUES ('1554', '101230402', '仙游');
INSERT INTO `ai9me_weather` VALUES ('1555', '101230404', '涵江');
INSERT INTO `ai9me_weather` VALUES ('1556', '101230405', '秀屿');
INSERT INTO `ai9me_weather` VALUES ('1557', '101230406', '荔城');
INSERT INTO `ai9me_weather` VALUES ('1558', '101230407', '城厢');
INSERT INTO `ai9me_weather` VALUES ('1559', '101230501', '泉州');
INSERT INTO `ai9me_weather` VALUES ('1560', '101230502', '安溪');
INSERT INTO `ai9me_weather` VALUES ('1561', '101230504', '永春');
INSERT INTO `ai9me_weather` VALUES ('1562', '101230505', '德化');
INSERT INTO `ai9me_weather` VALUES ('1563', '101230506', '南安');
INSERT INTO `ai9me_weather` VALUES ('1564', '101230508', '惠安');
INSERT INTO `ai9me_weather` VALUES ('1565', '101230509', '晋江');
INSERT INTO `ai9me_weather` VALUES ('1566', '101230510', '石狮');
INSERT INTO `ai9me_weather` VALUES ('1567', '101230601', '漳州');
INSERT INTO `ai9me_weather` VALUES ('1568', '101230602', '长泰');
INSERT INTO `ai9me_weather` VALUES ('1569', '101230603', '南靖');
INSERT INTO `ai9me_weather` VALUES ('1570', '101230604', '平和');
INSERT INTO `ai9me_weather` VALUES ('1571', '101230605', '龙海');
INSERT INTO `ai9me_weather` VALUES ('1572', '101230606', '漳浦');
INSERT INTO `ai9me_weather` VALUES ('1573', '101230607', '诏安');
INSERT INTO `ai9me_weather` VALUES ('1574', '101230609', '云霄');
INSERT INTO `ai9me_weather` VALUES ('1575', '101230610', '华安');
INSERT INTO `ai9me_weather` VALUES ('1576', '101230701', '龙岩');
INSERT INTO `ai9me_weather` VALUES ('1577', '101230702', '长汀');
INSERT INTO `ai9me_weather` VALUES ('1578', '101230703', '连城');
INSERT INTO `ai9me_weather` VALUES ('1579', '101230704', '武平');
INSERT INTO `ai9me_weather` VALUES ('1580', '101230705', '上杭');
INSERT INTO `ai9me_weather` VALUES ('1581', '101230706', '永定');
INSERT INTO `ai9me_weather` VALUES ('1582', '101230707', '漳平');
INSERT INTO `ai9me_weather` VALUES ('1583', '101230801', '三明');
INSERT INTO `ai9me_weather` VALUES ('1584', '101230802', '宁化');
INSERT INTO `ai9me_weather` VALUES ('1585', '101230803', '清流');
INSERT INTO `ai9me_weather` VALUES ('1586', '101230804', '泰宁');
INSERT INTO `ai9me_weather` VALUES ('1587', '101230805', '将乐');
INSERT INTO `ai9me_weather` VALUES ('1588', '101230806', '建宁');
INSERT INTO `ai9me_weather` VALUES ('1589', '101230807', '明溪');
INSERT INTO `ai9me_weather` VALUES ('1590', '101230808', '沙县');
INSERT INTO `ai9me_weather` VALUES ('1591', '101230809', '尤溪');
INSERT INTO `ai9me_weather` VALUES ('1592', '101230810', '永安');
INSERT INTO `ai9me_weather` VALUES ('1593', '101230811', '大田');
INSERT INTO `ai9me_weather` VALUES ('1594', '101230901', '南平');
INSERT INTO `ai9me_weather` VALUES ('1595', '101230902', '顺昌');
INSERT INTO `ai9me_weather` VALUES ('1596', '101230903', '光泽');
INSERT INTO `ai9me_weather` VALUES ('1597', '101230904', '邵武');
INSERT INTO `ai9me_weather` VALUES ('1598', '101230905', '武夷山');
INSERT INTO `ai9me_weather` VALUES ('1599', '101230906', '浦城');
INSERT INTO `ai9me_weather` VALUES ('1600', '101230907', '建阳');
INSERT INTO `ai9me_weather` VALUES ('1601', '101230908', '松溪');
INSERT INTO `ai9me_weather` VALUES ('1602', '101230909', '政和');
INSERT INTO `ai9me_weather` VALUES ('1603', '101230910', '建瓯');
INSERT INTO `ai9me_weather` VALUES ('1604', '101231001', '钓鱼岛');
INSERT INTO `ai9me_weather` VALUES ('1605', '101240101', '南昌');
INSERT INTO `ai9me_weather` VALUES ('1606', '101240102', '新建');
INSERT INTO `ai9me_weather` VALUES ('1607', '101240104', '安义');
INSERT INTO `ai9me_weather` VALUES ('1608', '101240105', '进贤');
INSERT INTO `ai9me_weather` VALUES ('1609', '101240201', '九江');
INSERT INTO `ai9me_weather` VALUES ('1610', '101240202', '瑞昌');
INSERT INTO `ai9me_weather` VALUES ('1611', '101240204', '武宁');
INSERT INTO `ai9me_weather` VALUES ('1612', '101240205', '德安');
INSERT INTO `ai9me_weather` VALUES ('1613', '101240206', '永修');
INSERT INTO `ai9me_weather` VALUES ('1614', '101240207', '湖口');
INSERT INTO `ai9me_weather` VALUES ('1615', '101240208', '彭泽');
INSERT INTO `ai9me_weather` VALUES ('1616', '101240209', '星子');
INSERT INTO `ai9me_weather` VALUES ('1617', '101240210', '都昌');
INSERT INTO `ai9me_weather` VALUES ('1618', '101240212', '修水');
INSERT INTO `ai9me_weather` VALUES ('1619', '101240301', '上饶');
INSERT INTO `ai9me_weather` VALUES ('1620', '101240302', '鄱阳');
INSERT INTO `ai9me_weather` VALUES ('1621', '101240303', '婺源');
INSERT INTO `ai9me_weather` VALUES ('1622', '101240305', '余干');
INSERT INTO `ai9me_weather` VALUES ('1623', '101240306', '万年');
INSERT INTO `ai9me_weather` VALUES ('1624', '101240307', '德兴');
INSERT INTO `ai9me_weather` VALUES ('1625', '101240309', '弋阳');
INSERT INTO `ai9me_weather` VALUES ('1626', '101240310', '横峰');
INSERT INTO `ai9me_weather` VALUES ('1627', '101240311', '铅山');
INSERT INTO `ai9me_weather` VALUES ('1628', '101240312', '玉山');
INSERT INTO `ai9me_weather` VALUES ('1629', '101240313', '广丰');
INSERT INTO `ai9me_weather` VALUES ('1630', '101240401', '抚州');
INSERT INTO `ai9me_weather` VALUES ('1631', '101240402', '广昌');
INSERT INTO `ai9me_weather` VALUES ('1632', '101240403', '乐安');
INSERT INTO `ai9me_weather` VALUES ('1633', '101240404', '崇仁');
INSERT INTO `ai9me_weather` VALUES ('1634', '101240405', '金溪');
INSERT INTO `ai9me_weather` VALUES ('1635', '101240406', '资溪');
INSERT INTO `ai9me_weather` VALUES ('1636', '101240407', '宜黄');
INSERT INTO `ai9me_weather` VALUES ('1637', '101240408', '南城');
INSERT INTO `ai9me_weather` VALUES ('1638', '101240409', '南丰');
INSERT INTO `ai9me_weather` VALUES ('1639', '101240410', '黎川');
INSERT INTO `ai9me_weather` VALUES ('1640', '101240411', '东乡');
INSERT INTO `ai9me_weather` VALUES ('1641', '101240501', '宜春');
INSERT INTO `ai9me_weather` VALUES ('1642', '101240502', '铜鼓');
INSERT INTO `ai9me_weather` VALUES ('1643', '101240503', '宜丰');
INSERT INTO `ai9me_weather` VALUES ('1644', '101240504', '万载');
INSERT INTO `ai9me_weather` VALUES ('1645', '101240505', '上高');
INSERT INTO `ai9me_weather` VALUES ('1646', '101240506', '靖安');
INSERT INTO `ai9me_weather` VALUES ('1647', '101240507', '奉新');
INSERT INTO `ai9me_weather` VALUES ('1648', '101240508', '高安');
INSERT INTO `ai9me_weather` VALUES ('1649', '101240509', '樟树');
INSERT INTO `ai9me_weather` VALUES ('1650', '101240510', '丰城');
INSERT INTO `ai9me_weather` VALUES ('1651', '101240601', '吉安');
INSERT INTO `ai9me_weather` VALUES ('1652', '101240603', '吉水');
INSERT INTO `ai9me_weather` VALUES ('1653', '101240604', '新干');
INSERT INTO `ai9me_weather` VALUES ('1654', '101240605', '峡江');
INSERT INTO `ai9me_weather` VALUES ('1655', '101240606', '永丰');
INSERT INTO `ai9me_weather` VALUES ('1656', '101240607', '永新');
INSERT INTO `ai9me_weather` VALUES ('1657', '101240608', '井冈山');
INSERT INTO `ai9me_weather` VALUES ('1658', '101240609', '万安');
INSERT INTO `ai9me_weather` VALUES ('1659', '101240610', '遂川');
INSERT INTO `ai9me_weather` VALUES ('1660', '101240611', '泰和');
INSERT INTO `ai9me_weather` VALUES ('1661', '101240612', '安福');
INSERT INTO `ai9me_weather` VALUES ('1662', '101240701', '赣州');
INSERT INTO `ai9me_weather` VALUES ('1663', '101240702', '崇义');
INSERT INTO `ai9me_weather` VALUES ('1664', '101240703', '上犹');
INSERT INTO `ai9me_weather` VALUES ('1665', '101240704', '南康');
INSERT INTO `ai9me_weather` VALUES ('1666', '101240705', '大余');
INSERT INTO `ai9me_weather` VALUES ('1667', '101240706', '信丰');
INSERT INTO `ai9me_weather` VALUES ('1668', '101240707', '宁都');
INSERT INTO `ai9me_weather` VALUES ('1669', '101240708', '石城');
INSERT INTO `ai9me_weather` VALUES ('1670', '101240709', '瑞金');
INSERT INTO `ai9me_weather` VALUES ('1671', '101240710', '于都');
INSERT INTO `ai9me_weather` VALUES ('1672', '101240711', '会昌');
INSERT INTO `ai9me_weather` VALUES ('1673', '101240712', '安远');
INSERT INTO `ai9me_weather` VALUES ('1674', '101240713', '全南');
INSERT INTO `ai9me_weather` VALUES ('1675', '101240714', '龙南');
INSERT INTO `ai9me_weather` VALUES ('1676', '101240715', '定南');
INSERT INTO `ai9me_weather` VALUES ('1677', '101240716', '寻乌');
INSERT INTO `ai9me_weather` VALUES ('1678', '101240717', '兴国');
INSERT INTO `ai9me_weather` VALUES ('1679', '101240718', '赣县');
INSERT INTO `ai9me_weather` VALUES ('1680', '101240801', '景德镇');
INSERT INTO `ai9me_weather` VALUES ('1681', '101240802', '乐平');
INSERT INTO `ai9me_weather` VALUES ('1682', '101240803', '浮梁');
INSERT INTO `ai9me_weather` VALUES ('1683', '101240901', '萍乡');
INSERT INTO `ai9me_weather` VALUES ('1684', '101240902', '莲花');
INSERT INTO `ai9me_weather` VALUES ('1685', '101240903', '上栗');
INSERT INTO `ai9me_weather` VALUES ('1686', '101240905', '芦溪');
INSERT INTO `ai9me_weather` VALUES ('1687', '101240906', '湘东');
INSERT INTO `ai9me_weather` VALUES ('1688', '101241001', '新余');
INSERT INTO `ai9me_weather` VALUES ('1689', '101241002', '分宜');
INSERT INTO `ai9me_weather` VALUES ('1690', '101241101', '鹰潭');
INSERT INTO `ai9me_weather` VALUES ('1691', '101241102', '余江');
INSERT INTO `ai9me_weather` VALUES ('1692', '101241103', '贵溪');
INSERT INTO `ai9me_weather` VALUES ('1693', '101250101', '长沙');
INSERT INTO `ai9me_weather` VALUES ('1694', '101250102', '宁乡');
INSERT INTO `ai9me_weather` VALUES ('1695', '101250103', '浏阳');
INSERT INTO `ai9me_weather` VALUES ('1696', '101250105', '望城');
INSERT INTO `ai9me_weather` VALUES ('1697', '101250201', '湘潭');
INSERT INTO `ai9me_weather` VALUES ('1698', '101250202', '韶山');
INSERT INTO `ai9me_weather` VALUES ('1699', '101250203', '湘乡');
INSERT INTO `ai9me_weather` VALUES ('1700', '101250301', '株洲');
INSERT INTO `ai9me_weather` VALUES ('1701', '101250302', '攸县');
INSERT INTO `ai9me_weather` VALUES ('1702', '101250303', '醴陵');
INSERT INTO `ai9me_weather` VALUES ('1703', '101250305', '茶陵');
INSERT INTO `ai9me_weather` VALUES ('1704', '101250306', '炎陵');
INSERT INTO `ai9me_weather` VALUES ('1705', '101250401', '衡阳');
INSERT INTO `ai9me_weather` VALUES ('1706', '101250402', '衡山');
INSERT INTO `ai9me_weather` VALUES ('1707', '101250403', '衡东');
INSERT INTO `ai9me_weather` VALUES ('1708', '101250404', '祁东');
INSERT INTO `ai9me_weather` VALUES ('1709', '101250406', '常宁');
INSERT INTO `ai9me_weather` VALUES ('1710', '101250407', '衡南');
INSERT INTO `ai9me_weather` VALUES ('1711', '101250408', '耒阳');
INSERT INTO `ai9me_weather` VALUES ('1712', '101250501', '郴州');
INSERT INTO `ai9me_weather` VALUES ('1713', '101250502', '桂阳');
INSERT INTO `ai9me_weather` VALUES ('1714', '101250503', '嘉禾');
INSERT INTO `ai9me_weather` VALUES ('1715', '101250504', '宜章');
INSERT INTO `ai9me_weather` VALUES ('1716', '101250505', '临武');
INSERT INTO `ai9me_weather` VALUES ('1717', '101250507', '资兴');
INSERT INTO `ai9me_weather` VALUES ('1718', '101250508', '汝城');
INSERT INTO `ai9me_weather` VALUES ('1719', '101250509', '安仁');
INSERT INTO `ai9me_weather` VALUES ('1720', '101250510', '永兴');
INSERT INTO `ai9me_weather` VALUES ('1721', '101250511', '桂东');
INSERT INTO `ai9me_weather` VALUES ('1722', '101250512', '苏仙');
INSERT INTO `ai9me_weather` VALUES ('1723', '101250601', '常德');
INSERT INTO `ai9me_weather` VALUES ('1724', '101250602', '安乡');
INSERT INTO `ai9me_weather` VALUES ('1725', '101250603', '桃源');
INSERT INTO `ai9me_weather` VALUES ('1726', '101250604', '汉寿');
INSERT INTO `ai9me_weather` VALUES ('1727', '101250605', '澧县');
INSERT INTO `ai9me_weather` VALUES ('1728', '101250606', '临澧');
INSERT INTO `ai9me_weather` VALUES ('1729', '101250607', '石门');
INSERT INTO `ai9me_weather` VALUES ('1730', '101250608', '津市');
INSERT INTO `ai9me_weather` VALUES ('1731', '101250700', '益阳');
INSERT INTO `ai9me_weather` VALUES ('1732', '101250702', '南县');
INSERT INTO `ai9me_weather` VALUES ('1733', '101250703', '桃江');
INSERT INTO `ai9me_weather` VALUES ('1734', '101250704', '安化');
INSERT INTO `ai9me_weather` VALUES ('1735', '101250705', '沅江');
INSERT INTO `ai9me_weather` VALUES ('1736', '101250801', '娄底');
INSERT INTO `ai9me_weather` VALUES ('1737', '101250802', '双峰');
INSERT INTO `ai9me_weather` VALUES ('1738', '101250803', '冷水江');
INSERT INTO `ai9me_weather` VALUES ('1739', '101250805', '新化');
INSERT INTO `ai9me_weather` VALUES ('1740', '101250806', '涟源');
INSERT INTO `ai9me_weather` VALUES ('1741', '101250901', '邵阳');
INSERT INTO `ai9me_weather` VALUES ('1742', '101250902', '隆回');
INSERT INTO `ai9me_weather` VALUES ('1743', '101250903', '洞口');
INSERT INTO `ai9me_weather` VALUES ('1744', '101250904', '新邵');
INSERT INTO `ai9me_weather` VALUES ('1745', '101250905', '邵东');
INSERT INTO `ai9me_weather` VALUES ('1746', '101250906', '绥宁');
INSERT INTO `ai9me_weather` VALUES ('1747', '101250907', '新宁');
INSERT INTO `ai9me_weather` VALUES ('1748', '101250908', '武冈');
INSERT INTO `ai9me_weather` VALUES ('1749', '101250909', '城步');
INSERT INTO `ai9me_weather` VALUES ('1750', '101251001', '岳阳');
INSERT INTO `ai9me_weather` VALUES ('1751', '101251002', '华容');
INSERT INTO `ai9me_weather` VALUES ('1752', '101251003', '湘阴');
INSERT INTO `ai9me_weather` VALUES ('1753', '101251004', '汨罗');
INSERT INTO `ai9me_weather` VALUES ('1754', '101251005', '平江');
INSERT INTO `ai9me_weather` VALUES ('1755', '101251006', '临湘');
INSERT INTO `ai9me_weather` VALUES ('1756', '101251101', '张家界');
INSERT INTO `ai9me_weather` VALUES ('1757', '101251102', '桑植');
INSERT INTO `ai9me_weather` VALUES ('1758', '101251103', '慈利');
INSERT INTO `ai9me_weather` VALUES ('1759', '101251104', '武陵源');
INSERT INTO `ai9me_weather` VALUES ('1760', '101251201', '怀化');
INSERT INTO `ai9me_weather` VALUES ('1761', '101251203', '沅陵');
INSERT INTO `ai9me_weather` VALUES ('1762', '101251204', '辰溪');
INSERT INTO `ai9me_weather` VALUES ('1763', '101251205', '靖州');
INSERT INTO `ai9me_weather` VALUES ('1764', '101251206', '会同');
INSERT INTO `ai9me_weather` VALUES ('1765', '101251207', '通道');
INSERT INTO `ai9me_weather` VALUES ('1766', '101251208', '麻阳');
INSERT INTO `ai9me_weather` VALUES ('1767', '101251209', '新晃');
INSERT INTO `ai9me_weather` VALUES ('1768', '101251210', '芷江');
INSERT INTO `ai9me_weather` VALUES ('1769', '101251211', '溆浦');
INSERT INTO `ai9me_weather` VALUES ('1770', '101251212', '中方');
INSERT INTO `ai9me_weather` VALUES ('1771', '101251213', '洪江');
INSERT INTO `ai9me_weather` VALUES ('1772', '101251401', '永州');
INSERT INTO `ai9me_weather` VALUES ('1773', '101251402', '祁阳');
INSERT INTO `ai9me_weather` VALUES ('1774', '101251403', '东安');
INSERT INTO `ai9me_weather` VALUES ('1775', '101251404', '双牌');
INSERT INTO `ai9me_weather` VALUES ('1776', '101251405', '道县');
INSERT INTO `ai9me_weather` VALUES ('1777', '101251406', '宁远');
INSERT INTO `ai9me_weather` VALUES ('1778', '101251407', '江永');
INSERT INTO `ai9me_weather` VALUES ('1779', '101251408', '蓝山');
INSERT INTO `ai9me_weather` VALUES ('1780', '101251409', '新田');
INSERT INTO `ai9me_weather` VALUES ('1781', '101251410', '江华');
INSERT INTO `ai9me_weather` VALUES ('1782', '101251501', '吉首');
INSERT INTO `ai9me_weather` VALUES ('1783', '101251502', '保靖');
INSERT INTO `ai9me_weather` VALUES ('1784', '101251503', '永顺');
INSERT INTO `ai9me_weather` VALUES ('1785', '101251504', '古丈');
INSERT INTO `ai9me_weather` VALUES ('1786', '101251505', '凤凰');
INSERT INTO `ai9me_weather` VALUES ('1787', '101251506', '泸溪');
INSERT INTO `ai9me_weather` VALUES ('1788', '101251507', '龙山');
INSERT INTO `ai9me_weather` VALUES ('1789', '101251508', '花垣');
INSERT INTO `ai9me_weather` VALUES ('1790', '101260101', '贵阳');
INSERT INTO `ai9me_weather` VALUES ('1791', '101260102', '白云');
INSERT INTO `ai9me_weather` VALUES ('1792', '101260103', '花溪');
INSERT INTO `ai9me_weather` VALUES ('1793', '101260104', '乌当');
INSERT INTO `ai9me_weather` VALUES ('1794', '101260105', '息烽');
INSERT INTO `ai9me_weather` VALUES ('1795', '101260106', '开阳');
INSERT INTO `ai9me_weather` VALUES ('1796', '101260107', '修文');
INSERT INTO `ai9me_weather` VALUES ('1797', '101260108', '清镇');
INSERT INTO `ai9me_weather` VALUES ('1798', '101260109', '小河');
INSERT INTO `ai9me_weather` VALUES ('1799', '101260110', '云岩');
INSERT INTO `ai9me_weather` VALUES ('1800', '101260111', '南明');
INSERT INTO `ai9me_weather` VALUES ('1801', '101260201', '遵义');
INSERT INTO `ai9me_weather` VALUES ('1802', '101260203', '仁怀');
INSERT INTO `ai9me_weather` VALUES ('1803', '101260204', '绥阳');
INSERT INTO `ai9me_weather` VALUES ('1804', '101260205', '湄潭');
INSERT INTO `ai9me_weather` VALUES ('1805', '101260206', '凤冈');
INSERT INTO `ai9me_weather` VALUES ('1806', '101260207', '桐梓');
INSERT INTO `ai9me_weather` VALUES ('1807', '101260208', '赤水');
INSERT INTO `ai9me_weather` VALUES ('1808', '101260209', '习水');
INSERT INTO `ai9me_weather` VALUES ('1809', '101260210', '道真');
INSERT INTO `ai9me_weather` VALUES ('1810', '101260211', '正安');
INSERT INTO `ai9me_weather` VALUES ('1811', '101260212', '务川');
INSERT INTO `ai9me_weather` VALUES ('1812', '101260213', '余庆');
INSERT INTO `ai9me_weather` VALUES ('1813', '101260214', '汇川');
INSERT INTO `ai9me_weather` VALUES ('1814', '101260215', '红花岗');
INSERT INTO `ai9me_weather` VALUES ('1815', '101260301', '安顺');
INSERT INTO `ai9me_weather` VALUES ('1816', '101260302', '普定');
INSERT INTO `ai9me_weather` VALUES ('1817', '101260303', '镇宁');
INSERT INTO `ai9me_weather` VALUES ('1818', '101260304', '平坝');
INSERT INTO `ai9me_weather` VALUES ('1819', '101260305', '紫云');
INSERT INTO `ai9me_weather` VALUES ('1820', '101260306', '关岭');
INSERT INTO `ai9me_weather` VALUES ('1821', '101260401', '都匀');
INSERT INTO `ai9me_weather` VALUES ('1822', '101260402', '贵定');
INSERT INTO `ai9me_weather` VALUES ('1823', '101260403', '瓮安');
INSERT INTO `ai9me_weather` VALUES ('1824', '101260404', '长顺');
INSERT INTO `ai9me_weather` VALUES ('1825', '101260405', '福泉');
INSERT INTO `ai9me_weather` VALUES ('1826', '101260406', '惠水');
INSERT INTO `ai9me_weather` VALUES ('1827', '101260407', '龙里');
INSERT INTO `ai9me_weather` VALUES ('1828', '101260408', '罗甸');
INSERT INTO `ai9me_weather` VALUES ('1829', '101260409', '平塘');
INSERT INTO `ai9me_weather` VALUES ('1830', '101260410', '独山');
INSERT INTO `ai9me_weather` VALUES ('1831', '101260411', '三都');
INSERT INTO `ai9me_weather` VALUES ('1832', '101260412', '荔波');
INSERT INTO `ai9me_weather` VALUES ('1833', '101260501', '凯里');
INSERT INTO `ai9me_weather` VALUES ('1834', '101260502', '岑巩');
INSERT INTO `ai9me_weather` VALUES ('1835', '101260503', '施秉');
INSERT INTO `ai9me_weather` VALUES ('1836', '101260504', '镇远');
INSERT INTO `ai9me_weather` VALUES ('1837', '101260505', '黄平');
INSERT INTO `ai9me_weather` VALUES ('1838', '101260507', '麻江');
INSERT INTO `ai9me_weather` VALUES ('1839', '101260508', '丹寨');
INSERT INTO `ai9me_weather` VALUES ('1840', '101260509', '三穗');
INSERT INTO `ai9me_weather` VALUES ('1841', '101260510', '台江');
INSERT INTO `ai9me_weather` VALUES ('1842', '101260511', '剑河');
INSERT INTO `ai9me_weather` VALUES ('1843', '101260512', '雷山');
INSERT INTO `ai9me_weather` VALUES ('1844', '101260513', '黎平');
INSERT INTO `ai9me_weather` VALUES ('1845', '101260514', '天柱');
INSERT INTO `ai9me_weather` VALUES ('1846', '101260515', '锦屏');
INSERT INTO `ai9me_weather` VALUES ('1847', '101260516', '榕江');
INSERT INTO `ai9me_weather` VALUES ('1848', '101260517', '从江');
INSERT INTO `ai9me_weather` VALUES ('1849', '101260601', '铜仁');
INSERT INTO `ai9me_weather` VALUES ('1850', '101260602', '江口');
INSERT INTO `ai9me_weather` VALUES ('1851', '101260603', '玉屏');
INSERT INTO `ai9me_weather` VALUES ('1852', '101260604', '万山特');
INSERT INTO `ai9me_weather` VALUES ('1853', '101260605', '思南');
INSERT INTO `ai9me_weather` VALUES ('1854', '101260607', '印江');
INSERT INTO `ai9me_weather` VALUES ('1855', '101260608', '石阡');
INSERT INTO `ai9me_weather` VALUES ('1856', '101260609', '沿河');
INSERT INTO `ai9me_weather` VALUES ('1857', '101260610', '德江');
INSERT INTO `ai9me_weather` VALUES ('1858', '101260611', '松桃');
INSERT INTO `ai9me_weather` VALUES ('1859', '101260701', '毕节');
INSERT INTO `ai9me_weather` VALUES ('1860', '101260702', '赫章');
INSERT INTO `ai9me_weather` VALUES ('1861', '101260703', '金沙');
INSERT INTO `ai9me_weather` VALUES ('1862', '101260704', '威宁');
INSERT INTO `ai9me_weather` VALUES ('1863', '101260705', '大方');
INSERT INTO `ai9me_weather` VALUES ('1864', '101260706', '纳雍');
INSERT INTO `ai9me_weather` VALUES ('1865', '101260707', '织金');
INSERT INTO `ai9me_weather` VALUES ('1866', '101260708', '黔西');
INSERT INTO `ai9me_weather` VALUES ('1867', '101260801', '水城');
INSERT INTO `ai9me_weather` VALUES ('1868', '101260802', '六枝特');
INSERT INTO `ai9me_weather` VALUES ('1869', '101260804', '盘县');
INSERT INTO `ai9me_weather` VALUES ('1870', '101260901', '兴义');
INSERT INTO `ai9me_weather` VALUES ('1871', '101260902', '晴隆');
INSERT INTO `ai9me_weather` VALUES ('1872', '101260903', '兴仁');
INSERT INTO `ai9me_weather` VALUES ('1873', '101260904', '贞丰');
INSERT INTO `ai9me_weather` VALUES ('1874', '101260905', '望谟');
INSERT INTO `ai9me_weather` VALUES ('1875', '101260907', '安龙');
INSERT INTO `ai9me_weather` VALUES ('1876', '101260908', '册亨');
INSERT INTO `ai9me_weather` VALUES ('1877', '101260909', '普安');
INSERT INTO `ai9me_weather` VALUES ('1878', '101270101', '成都');
INSERT INTO `ai9me_weather` VALUES ('1879', '101270103', '新都');
INSERT INTO `ai9me_weather` VALUES ('1880', '101270104', '温江');
INSERT INTO `ai9me_weather` VALUES ('1881', '101270105', '金堂');
INSERT INTO `ai9me_weather` VALUES ('1882', '101270106', '双流');
INSERT INTO `ai9me_weather` VALUES ('1883', '101270107', '郫县');
INSERT INTO `ai9me_weather` VALUES ('1884', '101270108', '大邑');
INSERT INTO `ai9me_weather` VALUES ('1885', '101270109', '蒲江');
INSERT INTO `ai9me_weather` VALUES ('1886', '101270110', '新津');
INSERT INTO `ai9me_weather` VALUES ('1887', '101270111', '都江堰');
INSERT INTO `ai9me_weather` VALUES ('1888', '101270112', '彭州');
INSERT INTO `ai9me_weather` VALUES ('1889', '101270113', '邛崃');
INSERT INTO `ai9me_weather` VALUES ('1890', '101270114', '崇州');
INSERT INTO `ai9me_weather` VALUES ('1891', '101270201', '攀枝花');
INSERT INTO `ai9me_weather` VALUES ('1892', '101270203', '米易');
INSERT INTO `ai9me_weather` VALUES ('1893', '101270204', '盐边');
INSERT INTO `ai9me_weather` VALUES ('1894', '101270301', '自贡');
INSERT INTO `ai9me_weather` VALUES ('1895', '101270302', '富顺');
INSERT INTO `ai9me_weather` VALUES ('1896', '101270303', '荣县');
INSERT INTO `ai9me_weather` VALUES ('1897', '101270401', '绵阳');
INSERT INTO `ai9me_weather` VALUES ('1898', '101270402', '三台');
INSERT INTO `ai9me_weather` VALUES ('1899', '101270403', '盐亭');
INSERT INTO `ai9me_weather` VALUES ('1900', '101270404', '安县');
INSERT INTO `ai9me_weather` VALUES ('1901', '101270405', '梓潼');
INSERT INTO `ai9me_weather` VALUES ('1902', '101270406', '北川');
INSERT INTO `ai9me_weather` VALUES ('1903', '101270407', '平武');
INSERT INTO `ai9me_weather` VALUES ('1904', '101270408', '江油');
INSERT INTO `ai9me_weather` VALUES ('1905', '101270501', '南充');
INSERT INTO `ai9me_weather` VALUES ('1906', '101270502', '南部');
INSERT INTO `ai9me_weather` VALUES ('1907', '101270503', '营山');
INSERT INTO `ai9me_weather` VALUES ('1908', '101270504', '蓬安');
INSERT INTO `ai9me_weather` VALUES ('1909', '101270505', '仪陇');
INSERT INTO `ai9me_weather` VALUES ('1910', '101270506', '西充');
INSERT INTO `ai9me_weather` VALUES ('1911', '101270507', '阆中');
INSERT INTO `ai9me_weather` VALUES ('1912', '101270601', '达州');
INSERT INTO `ai9me_weather` VALUES ('1913', '101270602', '宣汉');
INSERT INTO `ai9me_weather` VALUES ('1914', '101270603', '开江');
INSERT INTO `ai9me_weather` VALUES ('1915', '101270604', '大竹');
INSERT INTO `ai9me_weather` VALUES ('1916', '101270605', '渠县');
INSERT INTO `ai9me_weather` VALUES ('1917', '101270606', '万源');
INSERT INTO `ai9me_weather` VALUES ('1918', '101270608', '达县');
INSERT INTO `ai9me_weather` VALUES ('1919', '101270701', '遂宁');
INSERT INTO `ai9me_weather` VALUES ('1920', '101270702', '蓬溪');
INSERT INTO `ai9me_weather` VALUES ('1921', '101270703', '射洪');
INSERT INTO `ai9me_weather` VALUES ('1922', '101270801', '广安');
INSERT INTO `ai9me_weather` VALUES ('1923', '101270802', '岳池');
INSERT INTO `ai9me_weather` VALUES ('1924', '101270803', '武胜');
INSERT INTO `ai9me_weather` VALUES ('1925', '101270804', '邻水');
INSERT INTO `ai9me_weather` VALUES ('1926', '101270805', '华蓥');
INSERT INTO `ai9me_weather` VALUES ('1927', '101270901', '巴中');
INSERT INTO `ai9me_weather` VALUES ('1928', '101270902', '通江');
INSERT INTO `ai9me_weather` VALUES ('1929', '101270903', '南江');
INSERT INTO `ai9me_weather` VALUES ('1930', '101270904', '平昌');
INSERT INTO `ai9me_weather` VALUES ('1931', '101271001', '泸州');
INSERT INTO `ai9me_weather` VALUES ('1932', '101271003', '泸县');
INSERT INTO `ai9me_weather` VALUES ('1933', '101271004', '合江');
INSERT INTO `ai9me_weather` VALUES ('1934', '101271005', '叙永');
INSERT INTO `ai9me_weather` VALUES ('1935', '101271006', '古蔺');
INSERT INTO `ai9me_weather` VALUES ('1936', '101271101', '宜宾');
INSERT INTO `ai9me_weather` VALUES ('1937', '101271104', '南溪');
INSERT INTO `ai9me_weather` VALUES ('1938', '101271105', '江安');
INSERT INTO `ai9me_weather` VALUES ('1939', '101271106', '长宁');
INSERT INTO `ai9me_weather` VALUES ('1940', '101271107', '高县');
INSERT INTO `ai9me_weather` VALUES ('1941', '101271108', '珙县');
INSERT INTO `ai9me_weather` VALUES ('1942', '101271109', '筠连');
INSERT INTO `ai9me_weather` VALUES ('1943', '101271110', '兴文');
INSERT INTO `ai9me_weather` VALUES ('1944', '101271111', '屏山');
INSERT INTO `ai9me_weather` VALUES ('1945', '101271201', '内江');
INSERT INTO `ai9me_weather` VALUES ('1946', '101271203', '威远');
INSERT INTO `ai9me_weather` VALUES ('1947', '101271204', '资中');
INSERT INTO `ai9me_weather` VALUES ('1948', '101271205', '隆昌');
INSERT INTO `ai9me_weather` VALUES ('1949', '101271301', '资阳');
INSERT INTO `ai9me_weather` VALUES ('1950', '101271302', '安岳');
INSERT INTO `ai9me_weather` VALUES ('1951', '101271303', '乐至');
INSERT INTO `ai9me_weather` VALUES ('1952', '101271304', '简阳');
INSERT INTO `ai9me_weather` VALUES ('1953', '101271401', '乐山');
INSERT INTO `ai9me_weather` VALUES ('1954', '101271402', '犍为');
INSERT INTO `ai9me_weather` VALUES ('1955', '101271403', '井研');
INSERT INTO `ai9me_weather` VALUES ('1956', '101271404', '夹江');
INSERT INTO `ai9me_weather` VALUES ('1957', '101271405', '沐川');
INSERT INTO `ai9me_weather` VALUES ('1958', '101271406', '峨边');
INSERT INTO `ai9me_weather` VALUES ('1959', '101271407', '马边');
INSERT INTO `ai9me_weather` VALUES ('1960', '101271409', '峨眉山');
INSERT INTO `ai9me_weather` VALUES ('1961', '101271501', '眉山');
INSERT INTO `ai9me_weather` VALUES ('1962', '101271502', '仁寿');
INSERT INTO `ai9me_weather` VALUES ('1963', '101271503', '彭山');
INSERT INTO `ai9me_weather` VALUES ('1964', '101271504', '洪雅');
INSERT INTO `ai9me_weather` VALUES ('1965', '101271505', '丹棱');
INSERT INTO `ai9me_weather` VALUES ('1966', '101271506', '青神');
INSERT INTO `ai9me_weather` VALUES ('1967', '101271601', '凉山');
INSERT INTO `ai9me_weather` VALUES ('1968', '101271603', '木里');
INSERT INTO `ai9me_weather` VALUES ('1969', '101271604', '盐源');
INSERT INTO `ai9me_weather` VALUES ('1970', '101271605', '德昌');
INSERT INTO `ai9me_weather` VALUES ('1971', '101271606', '会理');
INSERT INTO `ai9me_weather` VALUES ('1972', '101271607', '会东');
INSERT INTO `ai9me_weather` VALUES ('1973', '101271608', '宁南');
INSERT INTO `ai9me_weather` VALUES ('1974', '101271609', '普格');
INSERT INTO `ai9me_weather` VALUES ('1975', '101271610', '西昌');
INSERT INTO `ai9me_weather` VALUES ('1976', '101271611', '金阳');
INSERT INTO `ai9me_weather` VALUES ('1977', '101271612', '昭觉');
INSERT INTO `ai9me_weather` VALUES ('1978', '101271613', '喜德');
INSERT INTO `ai9me_weather` VALUES ('1979', '101271614', '冕宁');
INSERT INTO `ai9me_weather` VALUES ('1980', '101271615', '越西');
INSERT INTO `ai9me_weather` VALUES ('1981', '101271616', '甘洛');
INSERT INTO `ai9me_weather` VALUES ('1982', '101271617', '雷波');
INSERT INTO `ai9me_weather` VALUES ('1983', '101271618', '美姑');
INSERT INTO `ai9me_weather` VALUES ('1984', '101271619', '布拖');
INSERT INTO `ai9me_weather` VALUES ('1985', '101271701', '雅安');
INSERT INTO `ai9me_weather` VALUES ('1986', '101271702', '名山');
INSERT INTO `ai9me_weather` VALUES ('1987', '101271703', '荥经');
INSERT INTO `ai9me_weather` VALUES ('1988', '101271704', '汉源');
INSERT INTO `ai9me_weather` VALUES ('1989', '101271705', '石棉');
INSERT INTO `ai9me_weather` VALUES ('1990', '101271706', '天全');
INSERT INTO `ai9me_weather` VALUES ('1991', '101271707', '芦山');
INSERT INTO `ai9me_weather` VALUES ('1992', '101271708', '宝兴');
INSERT INTO `ai9me_weather` VALUES ('1993', '101271801', '甘孜');
INSERT INTO `ai9me_weather` VALUES ('1994', '101271802', '康定');
INSERT INTO `ai9me_weather` VALUES ('1995', '101271803', '泸定');
INSERT INTO `ai9me_weather` VALUES ('1996', '101271804', '丹巴');
INSERT INTO `ai9me_weather` VALUES ('1997', '101271805', '九龙');
INSERT INTO `ai9me_weather` VALUES ('1998', '101271806', '雅江');
INSERT INTO `ai9me_weather` VALUES ('1999', '101271807', '道孚');
INSERT INTO `ai9me_weather` VALUES ('2000', '101271808', '炉霍');
INSERT INTO `ai9me_weather` VALUES ('2001', '101271809', '新龙');
INSERT INTO `ai9me_weather` VALUES ('2002', '101271810', '德格');
INSERT INTO `ai9me_weather` VALUES ('2003', '101271811', '白玉');
INSERT INTO `ai9me_weather` VALUES ('2004', '101271812', '石渠');
INSERT INTO `ai9me_weather` VALUES ('2005', '101271813', '色达');
INSERT INTO `ai9me_weather` VALUES ('2006', '101271814', '理塘');
INSERT INTO `ai9me_weather` VALUES ('2007', '101271815', '巴塘');
INSERT INTO `ai9me_weather` VALUES ('2008', '101271816', '乡城');
INSERT INTO `ai9me_weather` VALUES ('2009', '101271817', '稻城');
INSERT INTO `ai9me_weather` VALUES ('2010', '101271818', '得荣');
INSERT INTO `ai9me_weather` VALUES ('2011', '101271901', '阿坝');
INSERT INTO `ai9me_weather` VALUES ('2012', '101271902', '汶川');
INSERT INTO `ai9me_weather` VALUES ('2013', '101271903', '理县');
INSERT INTO `ai9me_weather` VALUES ('2014', '101271904', '茂县');
INSERT INTO `ai9me_weather` VALUES ('2015', '101271905', '松潘');
INSERT INTO `ai9me_weather` VALUES ('2016', '101271906', '九寨沟');
INSERT INTO `ai9me_weather` VALUES ('2017', '101271907', '金川');
INSERT INTO `ai9me_weather` VALUES ('2018', '101271908', '小金');
INSERT INTO `ai9me_weather` VALUES ('2019', '101271909', '黑水');
INSERT INTO `ai9me_weather` VALUES ('2020', '101271910', '马尔康');
INSERT INTO `ai9me_weather` VALUES ('2021', '101271911', '壤塘');
INSERT INTO `ai9me_weather` VALUES ('2022', '101271912', '若尔盖');
INSERT INTO `ai9me_weather` VALUES ('2023', '101271913', '红原');
INSERT INTO `ai9me_weather` VALUES ('2024', '101272001', '德阳');
INSERT INTO `ai9me_weather` VALUES ('2025', '101272002', '中江');
INSERT INTO `ai9me_weather` VALUES ('2026', '101272003', '广汉');
INSERT INTO `ai9me_weather` VALUES ('2027', '101272004', '什邡');
INSERT INTO `ai9me_weather` VALUES ('2028', '101272005', '绵竹');
INSERT INTO `ai9me_weather` VALUES ('2029', '101272006', '罗江');
INSERT INTO `ai9me_weather` VALUES ('2030', '101272101', '广元');
INSERT INTO `ai9me_weather` VALUES ('2031', '101272102', '旺苍');
INSERT INTO `ai9me_weather` VALUES ('2032', '101272103', '青川');
INSERT INTO `ai9me_weather` VALUES ('2033', '101272104', '剑阁');
INSERT INTO `ai9me_weather` VALUES ('2034', '101272105', '苍溪');
INSERT INTO `ai9me_weather` VALUES ('2035', '101280101', '广州');
INSERT INTO `ai9me_weather` VALUES ('2036', '101280102', '番禺');
INSERT INTO `ai9me_weather` VALUES ('2037', '101280103', '从化');
INSERT INTO `ai9me_weather` VALUES ('2038', '101280104', '增城');
INSERT INTO `ai9me_weather` VALUES ('2039', '101280105', '花都');
INSERT INTO `ai9me_weather` VALUES ('2040', '101280201', '韶关');
INSERT INTO `ai9me_weather` VALUES ('2041', '101280202', '乳源');
INSERT INTO `ai9me_weather` VALUES ('2042', '101280203', '始兴');
INSERT INTO `ai9me_weather` VALUES ('2043', '101280204', '翁源');
INSERT INTO `ai9me_weather` VALUES ('2044', '101280205', '乐昌');
INSERT INTO `ai9me_weather` VALUES ('2045', '101280206', '仁化');
INSERT INTO `ai9me_weather` VALUES ('2046', '101280207', '南雄');
INSERT INTO `ai9me_weather` VALUES ('2047', '101280208', '新丰');
INSERT INTO `ai9me_weather` VALUES ('2048', '101280209', '曲江');
INSERT INTO `ai9me_weather` VALUES ('2049', '101280210', '浈江');
INSERT INTO `ai9me_weather` VALUES ('2050', '101280211', '武江');
INSERT INTO `ai9me_weather` VALUES ('2051', '101280301', '惠州');
INSERT INTO `ai9me_weather` VALUES ('2052', '101280302', '博罗');
INSERT INTO `ai9me_weather` VALUES ('2053', '101280303', '惠阳');
INSERT INTO `ai9me_weather` VALUES ('2054', '101280304', '惠东');
INSERT INTO `ai9me_weather` VALUES ('2055', '101280305', '龙门');
INSERT INTO `ai9me_weather` VALUES ('2056', '101280401', '梅州');
INSERT INTO `ai9me_weather` VALUES ('2057', '101280402', '兴宁');
INSERT INTO `ai9me_weather` VALUES ('2058', '101280403', '蕉岭');
INSERT INTO `ai9me_weather` VALUES ('2059', '101280404', '大埔');
INSERT INTO `ai9me_weather` VALUES ('2060', '101280406', '丰顺');
INSERT INTO `ai9me_weather` VALUES ('2061', '101280407', '平远');
INSERT INTO `ai9me_weather` VALUES ('2062', '101280408', '五华');
INSERT INTO `ai9me_weather` VALUES ('2063', '101280409', '梅县');
INSERT INTO `ai9me_weather` VALUES ('2064', '101280501', '汕头');
INSERT INTO `ai9me_weather` VALUES ('2065', '101280502', '潮阳');
INSERT INTO `ai9me_weather` VALUES ('2066', '101280503', '澄海');
INSERT INTO `ai9me_weather` VALUES ('2067', '101280504', '南澳');
INSERT INTO `ai9me_weather` VALUES ('2068', '101280601', '深圳');
INSERT INTO `ai9me_weather` VALUES ('2069', '101280701', '珠海');
INSERT INTO `ai9me_weather` VALUES ('2070', '101280702', '斗门');
INSERT INTO `ai9me_weather` VALUES ('2071', '101280703', '金湾');
INSERT INTO `ai9me_weather` VALUES ('2072', '101280800', '佛山');
INSERT INTO `ai9me_weather` VALUES ('2073', '101280801', '顺德');
INSERT INTO `ai9me_weather` VALUES ('2074', '101280802', '三水');
INSERT INTO `ai9me_weather` VALUES ('2075', '101280803', '南海');
INSERT INTO `ai9me_weather` VALUES ('2076', '101280804', '高明');
INSERT INTO `ai9me_weather` VALUES ('2077', '101280901', '肇庆');
INSERT INTO `ai9me_weather` VALUES ('2078', '101280902', '广宁');
INSERT INTO `ai9me_weather` VALUES ('2079', '101280903', '四会');
INSERT INTO `ai9me_weather` VALUES ('2080', '101280905', '德庆');
INSERT INTO `ai9me_weather` VALUES ('2081', '101280906', '怀集');
INSERT INTO `ai9me_weather` VALUES ('2082', '101280907', '封开');
INSERT INTO `ai9me_weather` VALUES ('2083', '101280908', '高要');
INSERT INTO `ai9me_weather` VALUES ('2084', '101281001', '湛江');
INSERT INTO `ai9me_weather` VALUES ('2085', '101281002', '吴川');
INSERT INTO `ai9me_weather` VALUES ('2086', '101281003', '雷州');
INSERT INTO `ai9me_weather` VALUES ('2087', '101281004', '徐闻');
INSERT INTO `ai9me_weather` VALUES ('2088', '101281005', '廉江');
INSERT INTO `ai9me_weather` VALUES ('2089', '101281006', '赤坎');
INSERT INTO `ai9me_weather` VALUES ('2090', '101281007', '遂溪');
INSERT INTO `ai9me_weather` VALUES ('2091', '101281008', '坡头');
INSERT INTO `ai9me_weather` VALUES ('2092', '101281009', '霞山');
INSERT INTO `ai9me_weather` VALUES ('2093', '101281010', '麻章');
INSERT INTO `ai9me_weather` VALUES ('2094', '101281101', '江门');
INSERT INTO `ai9me_weather` VALUES ('2095', '101281103', '开平');
INSERT INTO `ai9me_weather` VALUES ('2096', '101281104', '新会');
INSERT INTO `ai9me_weather` VALUES ('2097', '101281105', '恩平');
INSERT INTO `ai9me_weather` VALUES ('2098', '101281106', '台山');
INSERT INTO `ai9me_weather` VALUES ('2099', '101281108', '鹤山');
INSERT INTO `ai9me_weather` VALUES ('2100', '101281109', '江海');
INSERT INTO `ai9me_weather` VALUES ('2101', '101281201', '河源');
INSERT INTO `ai9me_weather` VALUES ('2102', '101281202', '紫金');
INSERT INTO `ai9me_weather` VALUES ('2103', '101281203', '连平');
INSERT INTO `ai9me_weather` VALUES ('2104', '101281204', '和平');
INSERT INTO `ai9me_weather` VALUES ('2105', '101281205', '龙川');
INSERT INTO `ai9me_weather` VALUES ('2106', '101281206', '东源');
INSERT INTO `ai9me_weather` VALUES ('2107', '101281301', '清远');
INSERT INTO `ai9me_weather` VALUES ('2108', '101281302', '连南');
INSERT INTO `ai9me_weather` VALUES ('2109', '101281303', '连州');
INSERT INTO `ai9me_weather` VALUES ('2110', '101281304', '连山');
INSERT INTO `ai9me_weather` VALUES ('2111', '101281305', '阳山');
INSERT INTO `ai9me_weather` VALUES ('2112', '101281306', '佛冈');
INSERT INTO `ai9me_weather` VALUES ('2113', '101281307', '英德');
INSERT INTO `ai9me_weather` VALUES ('2114', '101281308', '清新');
INSERT INTO `ai9me_weather` VALUES ('2115', '101281401', '云浮');
INSERT INTO `ai9me_weather` VALUES ('2116', '101281402', '罗定');
INSERT INTO `ai9me_weather` VALUES ('2117', '101281403', '新兴');
INSERT INTO `ai9me_weather` VALUES ('2118', '101281404', '郁南');
INSERT INTO `ai9me_weather` VALUES ('2119', '101281406', '云安');
INSERT INTO `ai9me_weather` VALUES ('2120', '101281501', '潮州');
INSERT INTO `ai9me_weather` VALUES ('2121', '101281502', '饶平');
INSERT INTO `ai9me_weather` VALUES ('2122', '101281503', '潮安');
INSERT INTO `ai9me_weather` VALUES ('2123', '101281601', '东莞');
INSERT INTO `ai9me_weather` VALUES ('2124', '101281701', '中山');
INSERT INTO `ai9me_weather` VALUES ('2125', '101281801', '阳江');
INSERT INTO `ai9me_weather` VALUES ('2126', '101281802', '阳春');
INSERT INTO `ai9me_weather` VALUES ('2127', '101281803', '阳东');
INSERT INTO `ai9me_weather` VALUES ('2128', '101281804', '阳西');
INSERT INTO `ai9me_weather` VALUES ('2129', '101281901', '揭阳');
INSERT INTO `ai9me_weather` VALUES ('2130', '101281902', '揭西');
INSERT INTO `ai9me_weather` VALUES ('2131', '101281903', '普宁');
INSERT INTO `ai9me_weather` VALUES ('2132', '101281904', '惠来');
INSERT INTO `ai9me_weather` VALUES ('2133', '101281905', '揭东');
INSERT INTO `ai9me_weather` VALUES ('2134', '101282001', '茂名');
INSERT INTO `ai9me_weather` VALUES ('2135', '101282002', '高州');
INSERT INTO `ai9me_weather` VALUES ('2136', '101282003', '化州');
INSERT INTO `ai9me_weather` VALUES ('2137', '101282004', '电白');
INSERT INTO `ai9me_weather` VALUES ('2138', '101282005', '信宜');
INSERT INTO `ai9me_weather` VALUES ('2139', '101282006', '茂港');
INSERT INTO `ai9me_weather` VALUES ('2140', '101282101', '汕尾');
INSERT INTO `ai9me_weather` VALUES ('2141', '101282102', '海丰');
INSERT INTO `ai9me_weather` VALUES ('2142', '101282103', '陆丰');
INSERT INTO `ai9me_weather` VALUES ('2143', '101282104', '陆河');
INSERT INTO `ai9me_weather` VALUES ('2144', '101290101', '昆明');
INSERT INTO `ai9me_weather` VALUES ('2145', '101290103', '东川');
INSERT INTO `ai9me_weather` VALUES ('2146', '101290104', '寻甸');
INSERT INTO `ai9me_weather` VALUES ('2147', '101290105', '晋宁');
INSERT INTO `ai9me_weather` VALUES ('2148', '101290106', '宜良');
INSERT INTO `ai9me_weather` VALUES ('2149', '101290107', '石林');
INSERT INTO `ai9me_weather` VALUES ('2150', '101290108', '呈贡');
INSERT INTO `ai9me_weather` VALUES ('2151', '101290109', '富民');
INSERT INTO `ai9me_weather` VALUES ('2152', '101290110', '嵩明');
INSERT INTO `ai9me_weather` VALUES ('2153', '101290111', '禄劝');
INSERT INTO `ai9me_weather` VALUES ('2154', '101290112', '安宁');
INSERT INTO `ai9me_weather` VALUES ('2155', '101290201', '大理');
INSERT INTO `ai9me_weather` VALUES ('2156', '101290202', '云龙');
INSERT INTO `ai9me_weather` VALUES ('2157', '101290203', '漾濞');
INSERT INTO `ai9me_weather` VALUES ('2158', '101290204', '永平');
INSERT INTO `ai9me_weather` VALUES ('2159', '101290205', '宾川');
INSERT INTO `ai9me_weather` VALUES ('2160', '101290206', '弥渡');
INSERT INTO `ai9me_weather` VALUES ('2161', '101290207', '祥云');
INSERT INTO `ai9me_weather` VALUES ('2162', '101290208', '巍山');
INSERT INTO `ai9me_weather` VALUES ('2163', '101290209', '剑川');
INSERT INTO `ai9me_weather` VALUES ('2164', '101290210', '洱源');
INSERT INTO `ai9me_weather` VALUES ('2165', '101290211', '鹤庆');
INSERT INTO `ai9me_weather` VALUES ('2166', '101290212', '南涧');
INSERT INTO `ai9me_weather` VALUES ('2167', '101290301', '红河');
INSERT INTO `ai9me_weather` VALUES ('2168', '101290302', '石屏');
INSERT INTO `ai9me_weather` VALUES ('2169', '101290303', '建水');
INSERT INTO `ai9me_weather` VALUES ('2170', '101290304', '弥勒');
INSERT INTO `ai9me_weather` VALUES ('2171', '101290305', '元阳');
INSERT INTO `ai9me_weather` VALUES ('2172', '101290306', '绿春');
INSERT INTO `ai9me_weather` VALUES ('2173', '101290307', '开远');
INSERT INTO `ai9me_weather` VALUES ('2174', '101290308', '个旧');
INSERT INTO `ai9me_weather` VALUES ('2175', '101290309', '蒙自');
INSERT INTO `ai9me_weather` VALUES ('2176', '101290310', '屏边');
INSERT INTO `ai9me_weather` VALUES ('2177', '101290311', '泸西');
INSERT INTO `ai9me_weather` VALUES ('2178', '101290312', '金平');
INSERT INTO `ai9me_weather` VALUES ('2179', '101290313', '河口');
INSERT INTO `ai9me_weather` VALUES ('2180', '101290401', '曲靖');
INSERT INTO `ai9me_weather` VALUES ('2181', '101290402', '沾益');
INSERT INTO `ai9me_weather` VALUES ('2182', '101290403', '陆良');
INSERT INTO `ai9me_weather` VALUES ('2183', '101290404', '富源');
INSERT INTO `ai9me_weather` VALUES ('2184', '101290405', '马龙');
INSERT INTO `ai9me_weather` VALUES ('2185', '101290406', '师宗');
INSERT INTO `ai9me_weather` VALUES ('2186', '101290407', '罗平');
INSERT INTO `ai9me_weather` VALUES ('2187', '101290408', '会泽');
INSERT INTO `ai9me_weather` VALUES ('2188', '101290409', '宣威');
INSERT INTO `ai9me_weather` VALUES ('2189', '101290501', '保山');
INSERT INTO `ai9me_weather` VALUES ('2190', '101290503', '龙陵');
INSERT INTO `ai9me_weather` VALUES ('2191', '101290504', '施甸');
INSERT INTO `ai9me_weather` VALUES ('2192', '101290505', '昌宁');
INSERT INTO `ai9me_weather` VALUES ('2193', '101290506', '腾冲');
INSERT INTO `ai9me_weather` VALUES ('2194', '101290601', '文山');
INSERT INTO `ai9me_weather` VALUES ('2195', '101290602', '西畴');
INSERT INTO `ai9me_weather` VALUES ('2196', '101290603', '马关');
INSERT INTO `ai9me_weather` VALUES ('2197', '101290604', '麻栗坡');
INSERT INTO `ai9me_weather` VALUES ('2198', '101290605', '砚山');
INSERT INTO `ai9me_weather` VALUES ('2199', '101290606', '丘北');
INSERT INTO `ai9me_weather` VALUES ('2200', '101290607', '广南');
INSERT INTO `ai9me_weather` VALUES ('2201', '101290608', '富宁');
INSERT INTO `ai9me_weather` VALUES ('2202', '101290701', '玉溪');
INSERT INTO `ai9me_weather` VALUES ('2203', '101290702', '澄江');
INSERT INTO `ai9me_weather` VALUES ('2204', '101290703', '江川');
INSERT INTO `ai9me_weather` VALUES ('2205', '101290704', '通海');
INSERT INTO `ai9me_weather` VALUES ('2206', '101290705', '华宁');
INSERT INTO `ai9me_weather` VALUES ('2207', '101290706', '新平');
INSERT INTO `ai9me_weather` VALUES ('2208', '101290707', '易门');
INSERT INTO `ai9me_weather` VALUES ('2209', '101290708', '峨山');
INSERT INTO `ai9me_weather` VALUES ('2210', '101290709', '元江');
INSERT INTO `ai9me_weather` VALUES ('2211', '101290801', '楚雄');
INSERT INTO `ai9me_weather` VALUES ('2212', '101290802', '大姚');
INSERT INTO `ai9me_weather` VALUES ('2213', '101290803', '元谋');
INSERT INTO `ai9me_weather` VALUES ('2214', '101290804', '姚安');
INSERT INTO `ai9me_weather` VALUES ('2215', '101290805', '牟定');
INSERT INTO `ai9me_weather` VALUES ('2216', '101290806', '南华');
INSERT INTO `ai9me_weather` VALUES ('2217', '101290807', '武定');
INSERT INTO `ai9me_weather` VALUES ('2218', '101290808', '禄丰');
INSERT INTO `ai9me_weather` VALUES ('2219', '101290809', '双柏');
INSERT INTO `ai9me_weather` VALUES ('2220', '101290810', '永仁');
INSERT INTO `ai9me_weather` VALUES ('2221', '101290901', '普洱');
INSERT INTO `ai9me_weather` VALUES ('2222', '101290902', '景谷');
INSERT INTO `ai9me_weather` VALUES ('2223', '101290903', '景东');
INSERT INTO `ai9me_weather` VALUES ('2224', '101290904', '澜沧');
INSERT INTO `ai9me_weather` VALUES ('2225', '101290906', '墨江');
INSERT INTO `ai9me_weather` VALUES ('2226', '101290907', '江城');
INSERT INTO `ai9me_weather` VALUES ('2227', '101290908', '孟连');
INSERT INTO `ai9me_weather` VALUES ('2228', '101290909', '西盟');
INSERT INTO `ai9me_weather` VALUES ('2229', '101290911', '镇沅');
INSERT INTO `ai9me_weather` VALUES ('2230', '101290912', '宁洱');
INSERT INTO `ai9me_weather` VALUES ('2231', '101291001', '昭通');
INSERT INTO `ai9me_weather` VALUES ('2232', '101291002', '鲁甸');
INSERT INTO `ai9me_weather` VALUES ('2233', '101291003', '彝良');
INSERT INTO `ai9me_weather` VALUES ('2234', '101291004', '镇雄');
INSERT INTO `ai9me_weather` VALUES ('2235', '101291005', '威信');
INSERT INTO `ai9me_weather` VALUES ('2236', '101291006', '巧家');
INSERT INTO `ai9me_weather` VALUES ('2237', '101291007', '绥江');
INSERT INTO `ai9me_weather` VALUES ('2238', '101291008', '永善');
INSERT INTO `ai9me_weather` VALUES ('2239', '101291009', '盐津');
INSERT INTO `ai9me_weather` VALUES ('2240', '101291010', '大关');
INSERT INTO `ai9me_weather` VALUES ('2241', '101291011', '水富');
INSERT INTO `ai9me_weather` VALUES ('2242', '101291101', '临沧');
INSERT INTO `ai9me_weather` VALUES ('2243', '101291102', '沧源');
INSERT INTO `ai9me_weather` VALUES ('2244', '101291103', '耿马');
INSERT INTO `ai9me_weather` VALUES ('2245', '101291104', '双江');
INSERT INTO `ai9me_weather` VALUES ('2246', '101291105', '凤庆');
INSERT INTO `ai9me_weather` VALUES ('2247', '101291106', '永德');
INSERT INTO `ai9me_weather` VALUES ('2248', '101291107', '云县');
INSERT INTO `ai9me_weather` VALUES ('2249', '101291108', '镇康');
INSERT INTO `ai9me_weather` VALUES ('2250', '101291201', '怒江');
INSERT INTO `ai9me_weather` VALUES ('2251', '101291203', '福贡');
INSERT INTO `ai9me_weather` VALUES ('2252', '101291204', '兰坪');
INSERT INTO `ai9me_weather` VALUES ('2253', '101291205', '泸水');
INSERT INTO `ai9me_weather` VALUES ('2254', '101291207', '贡山');
INSERT INTO `ai9me_weather` VALUES ('2255', '101291301', '迪庆');
INSERT INTO `ai9me_weather` VALUES ('2256', '101291302', '德钦');
INSERT INTO `ai9me_weather` VALUES ('2257', '101291303', '维西');
INSERT INTO `ai9me_weather` VALUES ('2258', '101291401', '丽江');
INSERT INTO `ai9me_weather` VALUES ('2259', '101291402', '永胜');
INSERT INTO `ai9me_weather` VALUES ('2260', '101291403', '华坪');
INSERT INTO `ai9me_weather` VALUES ('2261', '101291404', '宁蒗');
INSERT INTO `ai9me_weather` VALUES ('2262', '101291501', '德宏');
INSERT INTO `ai9me_weather` VALUES ('2263', '101291503', '陇川');
INSERT INTO `ai9me_weather` VALUES ('2264', '101291504', '盈江');
INSERT INTO `ai9me_weather` VALUES ('2265', '101291506', '瑞丽');
INSERT INTO `ai9me_weather` VALUES ('2266', '101291507', '梁河');
INSERT INTO `ai9me_weather` VALUES ('2267', '101291508', '潞西');
INSERT INTO `ai9me_weather` VALUES ('2268', '101291601', '西双版纳');
INSERT INTO `ai9me_weather` VALUES ('2269', '101291603', '勐海');
INSERT INTO `ai9me_weather` VALUES ('2270', '101291605', '勐腊');
INSERT INTO `ai9me_weather` VALUES ('2271', '101300101', '南宁');
INSERT INTO `ai9me_weather` VALUES ('2272', '101300103', '邕宁');
INSERT INTO `ai9me_weather` VALUES ('2273', '101300104', '横县');
INSERT INTO `ai9me_weather` VALUES ('2274', '101300105', '隆安');
INSERT INTO `ai9me_weather` VALUES ('2275', '101300106', '马山');
INSERT INTO `ai9me_weather` VALUES ('2276', '101300107', '上林');
INSERT INTO `ai9me_weather` VALUES ('2277', '101300108', '武鸣');
INSERT INTO `ai9me_weather` VALUES ('2278', '101300109', '宾阳');
INSERT INTO `ai9me_weather` VALUES ('2279', '101300201', '崇左');
INSERT INTO `ai9me_weather` VALUES ('2280', '101300202', '天等');
INSERT INTO `ai9me_weather` VALUES ('2281', '101300203', '龙州');
INSERT INTO `ai9me_weather` VALUES ('2282', '101300204', '凭祥');
INSERT INTO `ai9me_weather` VALUES ('2283', '101300205', '大新');
INSERT INTO `ai9me_weather` VALUES ('2284', '101300206', '扶绥');
INSERT INTO `ai9me_weather` VALUES ('2285', '101300207', '宁明');
INSERT INTO `ai9me_weather` VALUES ('2286', '101300301', '柳州');
INSERT INTO `ai9me_weather` VALUES ('2287', '101300302', '柳城');
INSERT INTO `ai9me_weather` VALUES ('2288', '101300304', '鹿寨');
INSERT INTO `ai9me_weather` VALUES ('2289', '101300305', '柳江');
INSERT INTO `ai9me_weather` VALUES ('2290', '101300306', '融安');
INSERT INTO `ai9me_weather` VALUES ('2291', '101300307', '融水');
INSERT INTO `ai9me_weather` VALUES ('2292', '101300308', '三江');
INSERT INTO `ai9me_weather` VALUES ('2293', '101300401', '来宾');
INSERT INTO `ai9me_weather` VALUES ('2294', '101300402', '忻城');
INSERT INTO `ai9me_weather` VALUES ('2295', '101300403', '金秀');
INSERT INTO `ai9me_weather` VALUES ('2296', '101300404', '象州');
INSERT INTO `ai9me_weather` VALUES ('2297', '101300405', '武宣');
INSERT INTO `ai9me_weather` VALUES ('2298', '101300406', '合山');
INSERT INTO `ai9me_weather` VALUES ('2299', '101300501', '桂林');
INSERT INTO `ai9me_weather` VALUES ('2300', '101300503', '龙胜');
INSERT INTO `ai9me_weather` VALUES ('2301', '101300504', '永福');
INSERT INTO `ai9me_weather` VALUES ('2302', '101300505', '临桂');
INSERT INTO `ai9me_weather` VALUES ('2303', '101300506', '兴安');
INSERT INTO `ai9me_weather` VALUES ('2304', '101300507', '灵川');
INSERT INTO `ai9me_weather` VALUES ('2305', '101300508', '全州');
INSERT INTO `ai9me_weather` VALUES ('2306', '101300509', '灌阳');
INSERT INTO `ai9me_weather` VALUES ('2307', '101300510', '阳朔');
INSERT INTO `ai9me_weather` VALUES ('2308', '101300511', '恭城');
INSERT INTO `ai9me_weather` VALUES ('2309', '101300512', '平乐');
INSERT INTO `ai9me_weather` VALUES ('2310', '101300513', '荔浦');
INSERT INTO `ai9me_weather` VALUES ('2311', '101300514', '资源');
INSERT INTO `ai9me_weather` VALUES ('2312', '101300601', '梧州');
INSERT INTO `ai9me_weather` VALUES ('2313', '101300602', '藤县');
INSERT INTO `ai9me_weather` VALUES ('2314', '101300604', '苍梧');
INSERT INTO `ai9me_weather` VALUES ('2315', '101300605', '蒙山');
INSERT INTO `ai9me_weather` VALUES ('2316', '101300606', '岑溪');
INSERT INTO `ai9me_weather` VALUES ('2317', '101300701', '贺州');
INSERT INTO `ai9me_weather` VALUES ('2318', '101300702', '昭平');
INSERT INTO `ai9me_weather` VALUES ('2319', '101300703', '富川');
INSERT INTO `ai9me_weather` VALUES ('2320', '101300704', '钟山');
INSERT INTO `ai9me_weather` VALUES ('2321', '101300801', '贵港');
INSERT INTO `ai9me_weather` VALUES ('2322', '101300802', '桂平');
INSERT INTO `ai9me_weather` VALUES ('2323', '101300803', '平南');
INSERT INTO `ai9me_weather` VALUES ('2324', '101300901', '玉林');
INSERT INTO `ai9me_weather` VALUES ('2325', '101300902', '博白');
INSERT INTO `ai9me_weather` VALUES ('2326', '101300903', '北流');
INSERT INTO `ai9me_weather` VALUES ('2327', '101300904', '容县');
INSERT INTO `ai9me_weather` VALUES ('2328', '101300905', '陆川');
INSERT INTO `ai9me_weather` VALUES ('2329', '101300906', '兴业');
INSERT INTO `ai9me_weather` VALUES ('2330', '101301001', '百色');
INSERT INTO `ai9me_weather` VALUES ('2331', '101301002', '那坡');
INSERT INTO `ai9me_weather` VALUES ('2332', '101301003', '田阳');
INSERT INTO `ai9me_weather` VALUES ('2333', '101301004', '德保');
INSERT INTO `ai9me_weather` VALUES ('2334', '101301005', '靖西');
INSERT INTO `ai9me_weather` VALUES ('2335', '101301006', '田东');
INSERT INTO `ai9me_weather` VALUES ('2336', '101301007', '平果');
INSERT INTO `ai9me_weather` VALUES ('2337', '101301008', '隆林');
INSERT INTO `ai9me_weather` VALUES ('2338', '101301009', '西林');
INSERT INTO `ai9me_weather` VALUES ('2339', '101301010', '乐业');
INSERT INTO `ai9me_weather` VALUES ('2340', '101301011', '凌云');
INSERT INTO `ai9me_weather` VALUES ('2341', '101301012', '田林');
INSERT INTO `ai9me_weather` VALUES ('2342', '101301101', '钦州');
INSERT INTO `ai9me_weather` VALUES ('2343', '101301102', '浦北');
INSERT INTO `ai9me_weather` VALUES ('2344', '101301103', '灵山');
INSERT INTO `ai9me_weather` VALUES ('2345', '101301201', '河池');
INSERT INTO `ai9me_weather` VALUES ('2346', '101301202', '天峨');
INSERT INTO `ai9me_weather` VALUES ('2347', '101301203', '东兰');
INSERT INTO `ai9me_weather` VALUES ('2348', '101301204', '巴马');
INSERT INTO `ai9me_weather` VALUES ('2349', '101301205', '环江');
INSERT INTO `ai9me_weather` VALUES ('2350', '101301206', '罗城');
INSERT INTO `ai9me_weather` VALUES ('2351', '101301207', '宜州');
INSERT INTO `ai9me_weather` VALUES ('2352', '101301208', '凤山');
INSERT INTO `ai9me_weather` VALUES ('2353', '101301209', '南丹');
INSERT INTO `ai9me_weather` VALUES ('2354', '101301210', '都安');
INSERT INTO `ai9me_weather` VALUES ('2355', '101301211', '大化');
INSERT INTO `ai9me_weather` VALUES ('2356', '101301301', '北海');
INSERT INTO `ai9me_weather` VALUES ('2357', '101301302', '合浦');
INSERT INTO `ai9me_weather` VALUES ('2358', '101301303', '涠洲岛');
INSERT INTO `ai9me_weather` VALUES ('2359', '101301401', '防城港');
INSERT INTO `ai9me_weather` VALUES ('2360', '101301402', '上思');
INSERT INTO `ai9me_weather` VALUES ('2361', '101301403', '东兴');
INSERT INTO `ai9me_weather` VALUES ('2362', '101301405', '防城');
INSERT INTO `ai9me_weather` VALUES ('2363', '101310101', '海口');
INSERT INTO `ai9me_weather` VALUES ('2364', '101310201', '三亚');
INSERT INTO `ai9me_weather` VALUES ('2365', '101310202', '东方');
INSERT INTO `ai9me_weather` VALUES ('2366', '101310203', '临高');
INSERT INTO `ai9me_weather` VALUES ('2367', '101310204', '澄迈');
INSERT INTO `ai9me_weather` VALUES ('2368', '101310205', '儋州');
INSERT INTO `ai9me_weather` VALUES ('2369', '101310206', '昌江');
INSERT INTO `ai9me_weather` VALUES ('2370', '101310207', '白沙');
INSERT INTO `ai9me_weather` VALUES ('2371', '101310208', '琼中');
INSERT INTO `ai9me_weather` VALUES ('2372', '101310209', '定安');
INSERT INTO `ai9me_weather` VALUES ('2373', '101310210', '屯昌');
INSERT INTO `ai9me_weather` VALUES ('2374', '101310211', '琼海');
INSERT INTO `ai9me_weather` VALUES ('2375', '101310212', '文昌');
INSERT INTO `ai9me_weather` VALUES ('2376', '101310214', '保亭');
INSERT INTO `ai9me_weather` VALUES ('2377', '101310215', '万宁');
INSERT INTO `ai9me_weather` VALUES ('2378', '101310216', '陵水');
INSERT INTO `ai9me_weather` VALUES ('2379', '101310221', '乐东');
INSERT INTO `ai9me_weather` VALUES ('2380', '101310222', '五指山');
INSERT INTO `ai9me_weather` VALUES ('2381', '101320101', '香港');
INSERT INTO `ai9me_weather` VALUES ('2382', '101330101', '澳门');
INSERT INTO `ai9me_weather` VALUES ('2383', '101340101', '台北');
INSERT INTO `ai9me_weather` VALUES ('2384', '101340102', '桃园');
INSERT INTO `ai9me_weather` VALUES ('2385', '101340103', '新竹');
INSERT INTO `ai9me_weather` VALUES ('2386', '101340104', '宜兰');
INSERT INTO `ai9me_weather` VALUES ('2387', '101340201', '高雄');
INSERT INTO `ai9me_weather` VALUES ('2388', '101340202', '嘉义');
INSERT INTO `ai9me_weather` VALUES ('2389', '101340203', '台南');
INSERT INTO `ai9me_weather` VALUES ('2390', '101340204', '台东');
INSERT INTO `ai9me_weather` VALUES ('2391', '101340205', '屏东');
INSERT INTO `ai9me_weather` VALUES ('2392', '101340401', '台中');
INSERT INTO `ai9me_weather` VALUES ('2393', '101340402', '苗栗');
INSERT INTO `ai9me_weather` VALUES ('2394', '101340403', '彰化');
INSERT INTO `ai9me_weather` VALUES ('2395', '101340404', '南投');
INSERT INTO `ai9me_weather` VALUES ('2396', '101340405', '花莲');
INSERT INTO `ai9me_weather` VALUES ('2397', '101340406', '云林');
INSERT INTO `ai9me_weather` VALUES ('2398', '102010100', '首尔');
INSERT INTO `ai9me_weather` VALUES ('2399', '103010100', '东京');
INSERT INTO `ai9me_weather` VALUES ('2400', '103020100', '大阪');
INSERT INTO `ai9me_weather` VALUES ('2401', '103040100', '札幌');
INSERT INTO `ai9me_weather` VALUES ('2402', '103050100', '福冈');
INSERT INTO `ai9me_weather` VALUES ('2403', '103090100', '京都');
INSERT INTO `ai9me_weather` VALUES ('2404', '104010100', '新加坡');
INSERT INTO `ai9me_weather` VALUES ('2405', '105010100', '吉隆坡');
INSERT INTO `ai9me_weather` VALUES ('2406', '106010100', '曼谷');
INSERT INTO `ai9me_weather` VALUES ('2407', '107010100', '河内');
INSERT INTO `ai9me_weather` VALUES ('2408', '107020100', '胡志明市');
INSERT INTO `ai9me_weather` VALUES ('2409', '108010100', '仰光');
INSERT INTO `ai9me_weather` VALUES ('2410', '109010100', '万象');
INSERT INTO `ai9me_weather` VALUES ('2411', '111010100', '雅加达');
INSERT INTO `ai9me_weather` VALUES ('2412', '111080100', '登巴萨');
INSERT INTO `ai9me_weather` VALUES ('2413', '112010100', '德黑兰');
INSERT INTO `ai9me_weather` VALUES ('2414', '113010100', '新德里');
INSERT INTO `ai9me_weather` VALUES ('2415', '113030100', '孟买');
INSERT INTO `ai9me_weather` VALUES ('2416', '113090100', '斯利那加');
INSERT INTO `ai9me_weather` VALUES ('2417', '114010100', '伊斯兰堡');
INSERT INTO `ai9me_weather` VALUES ('2418', '114030100', '卡拉奇');
INSERT INTO `ai9me_weather` VALUES ('2419', '114040100', '白沙瓦');
INSERT INTO `ai9me_weather` VALUES ('2420', '115010100', '塔什干');
INSERT INTO `ai9me_weather` VALUES ('2421', '117010100', '科伦坡');
INSERT INTO `ai9me_weather` VALUES ('2422', '118010100', '喀布尔');
INSERT INTO `ai9me_weather` VALUES ('2423', '118030100', '坎大哈');
INSERT INTO `ai9me_weather` VALUES ('2424', '120010100', '斯里巴加湾');
INSERT INTO `ai9me_weather` VALUES ('2425', '121010100', '巴林');
INSERT INTO `ai9me_weather` VALUES ('2426', '124010100', '阿布扎比');
INSERT INTO `ai9me_weather` VALUES ('2427', '124020100', '迪拜');
INSERT INTO `ai9me_weather` VALUES ('2428', '127010100', '平壤');
INSERT INTO `ai9me_weather` VALUES ('2429', '130010100', '阿斯塔纳');
INSERT INTO `ai9me_weather` VALUES ('2430', '132010100', '乌兰巴托');
INSERT INTO `ai9me_weather` VALUES ('2431', '136010100', '马尼拉');
INSERT INTO `ai9me_weather` VALUES ('2432', '138010100', '利雅得');
INSERT INTO `ai9me_weather` VALUES ('2433', '139010100', '大马士革');
INSERT INTO `ai9me_weather` VALUES ('2434', '201010100', '伦敦');
INSERT INTO `ai9me_weather` VALUES ('2435', '201050100', '曼彻斯特');
INSERT INTO `ai9me_weather` VALUES ('2436', '202010100', '巴黎');
INSERT INTO `ai9me_weather` VALUES ('2437', '202100100', '马赛');
INSERT INTO `ai9me_weather` VALUES ('2438', '203010100', '柏林');
INSERT INTO `ai9me_weather` VALUES ('2439', '203020100', '法兰克福');
INSERT INTO `ai9me_weather` VALUES ('2440', '203050100', '汉堡');
INSERT INTO `ai9me_weather` VALUES ('2441', '204010100', '罗马');
INSERT INTO `ai9me_weather` VALUES ('2442', '204040100', '米兰');
INSERT INTO `ai9me_weather` VALUES ('2443', '205010100', '阿姆斯特丹');
INSERT INTO `ai9me_weather` VALUES ('2444', '206010100', '马德里');
INSERT INTO `ai9me_weather` VALUES ('2445', '206020100', '巴塞罗那');
INSERT INTO `ai9me_weather` VALUES ('2446', '207010100', '哥本哈根');
INSERT INTO `ai9me_weather` VALUES ('2447', '208010100', '莫斯科');
INSERT INTO `ai9me_weather` VALUES ('2448', '210020100', '日内瓦');
INSERT INTO `ai9me_weather` VALUES ('2449', '210030100', '苏黎世');
INSERT INTO `ai9me_weather` VALUES ('2450', '211010100', '斯德哥尔摩');
INSERT INTO `ai9me_weather` VALUES ('2451', '214010100', '里斯本');
INSERT INTO `ai9me_weather` VALUES ('2452', '215020100', '伊斯坦布尔');
INSERT INTO `ai9me_weather` VALUES ('2453', '216010100', '布鲁塞尔');
INSERT INTO `ai9me_weather` VALUES ('2454', '217010100', '维也纳');
INSERT INTO `ai9me_weather` VALUES ('2455', '218010100', '雅典');
INSERT INTO `ai9me_weather` VALUES ('2456', '222010100', '赫尔辛基');
INSERT INTO `ai9me_weather` VALUES ('2457', '301010100', '开罗');
INSERT INTO `ai9me_weather` VALUES ('2458', '302010100', '开普敦');
INSERT INTO `ai9me_weather` VALUES ('2459', '302020100', '约翰内斯堡');
INSERT INTO `ai9me_weather` VALUES ('2460', '303010100', '突尼斯');
INSERT INTO `ai9me_weather` VALUES ('2461', '304020100', '拉各斯');
INSERT INTO `ai9me_weather` VALUES ('2462', '305010100', '阿尔及尔');
INSERT INTO `ai9me_weather` VALUES ('2463', '311010100', '亚的斯亚贝巴');
INSERT INTO `ai9me_weather` VALUES ('2464', '317010100', '内罗毕');
INSERT INTO `ai9me_weather` VALUES ('2465', '321020100', '卡萨布兰卡');
INSERT INTO `ai9me_weather` VALUES ('2466', '327010100', '达喀尔');
INSERT INTO `ai9me_weather` VALUES ('2467', '332010100', '达累斯萨拉姆');
INSERT INTO `ai9me_weather` VALUES ('2468', '334010100', '卢萨卡');
INSERT INTO `ai9me_weather` VALUES ('2469', '401010100', '华盛顿');
INSERT INTO `ai9me_weather` VALUES ('2470', '401020101', '迈阿密');
INSERT INTO `ai9me_weather` VALUES ('2471', '401020104', '奥兰多');
INSERT INTO `ai9me_weather` VALUES ('2472', '401030101', '亚特兰大');
INSERT INTO `ai9me_weather` VALUES ('2473', '401040101', '洛杉矶');
INSERT INTO `ai9me_weather` VALUES ('2474', '401040102', '圣弗朗西斯科');
INSERT INTO `ai9me_weather` VALUES ('2475', '401060100', '波士顿');
INSERT INTO `ai9me_weather` VALUES ('2476', '401070101', '芝加哥');
INSERT INTO `ai9me_weather` VALUES ('2477', '401100101', '西雅图');
INSERT INTO `ai9me_weather` VALUES ('2478', '401110101', '纽约');
INSERT INTO `ai9me_weather` VALUES ('2479', '401120108', '休斯敦');
INSERT INTO `ai9me_weather` VALUES ('2480', '401370100', '拉斯维加斯');
INSERT INTO `ai9me_weather` VALUES ('2481', '401480100', '火奴鲁鲁');
INSERT INTO `ai9me_weather` VALUES ('2482', '404010100', '渥太华');
INSERT INTO `ai9me_weather` VALUES ('2483', '404030100', '温哥华');
INSERT INTO `ai9me_weather` VALUES ('2484', '404040100', '多伦多');
INSERT INTO `ai9me_weather` VALUES ('2485', '404130100', '埃德蒙顿');
INSERT INTO `ai9me_weather` VALUES ('2486', '404140100', '卡尔加里');
INSERT INTO `ai9me_weather` VALUES ('2487', '404220100', '温尼伯');
INSERT INTO `ai9me_weather` VALUES ('2488', '404230100', '魁北克');
INSERT INTO `ai9me_weather` VALUES ('2489', '404240100', '蒙特利尔');
INSERT INTO `ai9me_weather` VALUES ('2490', '406010100', '哈瓦那');
INSERT INTO `ai9me_weather` VALUES ('2491', '411010100', '墨西哥城');
INSERT INTO `ai9me_weather` VALUES ('2492', '416010100', '加拉加斯');
INSERT INTO `ai9me_weather` VALUES ('2493', '601020101', '悉尼');
INSERT INTO `ai9me_weather` VALUES ('2494', '601030101', '布里斯班');
INSERT INTO `ai9me_weather` VALUES ('2495', '601040101', '阿德来德');
INSERT INTO `ai9me_weather` VALUES ('2496', '601060101', '墨尔本');
INSERT INTO `ai9me_weather` VALUES ('2497', '601070101', '珀斯');
INSERT INTO `ai9me_weather` VALUES ('2498', '606010100', '惠灵顿');
INSERT INTO `ai9me_weather` VALUES ('2499', '606020100', '奥克兰');
INSERT INTO `ai9me_weather` VALUES ('2500', '606030100', '克莱斯特彻奇');
INSERT INTO `ai9me_weather` VALUES ('2501', '101030100', '天津');

-- ----------------------------
-- Table structure for `ai9me_wecha_user`
-- ----------------------------
DROP TABLE IF EXISTS `ai9me_wecha_user`;
CREATE TABLE `ai9me_wecha_user` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY  (`token`,`wecha_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai9me_wecha_user
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_access`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_access`;
CREATE TABLE `cdb_access` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `fid` smallint(6) unsigned NOT NULL default '0',
  `allowview` tinyint(1) NOT NULL default '0',
  `allowpost` tinyint(1) NOT NULL default '0',
  `allowreply` tinyint(1) NOT NULL default '0',
  `allowgetattach` tinyint(1) NOT NULL default '0',
  `allowpostattach` tinyint(1) NOT NULL default '0',
  `adminuser` mediumint(8) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`,`fid`),
  KEY `listorder` (`fid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_access
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_activities`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_activities`;
CREATE TABLE `cdb_activities` (
  `tid` mediumint(8) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `cost` mediumint(8) unsigned NOT NULL default '0',
  `starttimefrom` int(10) unsigned NOT NULL default '0',
  `starttimeto` int(10) unsigned NOT NULL default '0',
  `place` char(40) NOT NULL default '',
  `class` char(20) NOT NULL default '',
  `gender` tinyint(1) NOT NULL default '0',
  `number` smallint(5) unsigned NOT NULL default '0',
  `expiration` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`tid`),
  KEY `uid` (`uid`,`starttimefrom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_activities
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_activityapplies`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_activityapplies`;
CREATE TABLE `cdb_activityapplies` (
  `applyid` int(10) unsigned NOT NULL auto_increment,
  `tid` mediumint(8) unsigned NOT NULL default '0',
  `username` char(15) NOT NULL default '',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `message` char(200) NOT NULL default '',
  `verified` tinyint(1) NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `payment` mediumint(8) NOT NULL default '0',
  `contact` char(200) NOT NULL,
  PRIMARY KEY  (`applyid`),
  KEY `uid` (`uid`),
  KEY `tid` (`tid`),
  KEY `dateline` (`tid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_activityapplies
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_addons`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_addons`;
CREATE TABLE `cdb_addons` (
  `key` varchar(255) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `sitename` varchar(255) NOT NULL default '',
  `siteurl` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `logo` varchar(255) NOT NULL default '',
  `system` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_addons
-- ----------------------------
INSERT INTO `cdb_addons` VALUES ('25z5wh0o00', 'Comsenz', 'Comsenz', 'http://www.comsenz.com', 'Comsenz官方网站推荐的论坛模板与插件', 'ts@comsenz.com', 'http://www.comsenz.com/addon/logo.gif', '1');
INSERT INTO `cdb_addons` VALUES ('R051uc9D1i', 'DPS', 'DPS', 'http://bbs.7dps.com', '提供 Discuz! 插件与风格，享受一键安装/升级/卸载带来的快感，还提供少量风格。', 'http://bbs.7dps.com/thread-1646-1-1.html', 'http://api.7dps.com/addons/logo.gif', '0');

-- ----------------------------
-- Table structure for `cdb_adminactions`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_adminactions`;
CREATE TABLE `cdb_adminactions` (
  `admingid` smallint(6) unsigned NOT NULL default '0',
  `disabledactions` text NOT NULL,
  PRIMARY KEY  (`admingid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_adminactions
-- ----------------------------
INSERT INTO `cdb_adminactions` VALUES ('18', 'a:1:{i:0;s:9:\"_readonly\";}');

-- ----------------------------
-- Table structure for `cdb_admincustom`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_admincustom`;
CREATE TABLE `cdb_admincustom` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `sort` tinyint(1) NOT NULL default '0',
  `displayorder` tinyint(3) NOT NULL,
  `clicks` smallint(6) unsigned NOT NULL default '1',
  `uid` mediumint(8) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_admincustom
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_admingroups`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_admingroups`;
CREATE TABLE `cdb_admingroups` (
  `admingid` smallint(6) unsigned NOT NULL default '0',
  `alloweditpost` tinyint(1) NOT NULL default '0',
  `alloweditpoll` tinyint(1) NOT NULL default '0',
  `allowstickthread` tinyint(1) NOT NULL default '0',
  `allowmodpost` tinyint(1) NOT NULL default '0',
  `allowdelpost` tinyint(1) NOT NULL default '0',
  `allowmassprune` tinyint(1) NOT NULL default '0',
  `allowrefund` tinyint(1) NOT NULL default '0',
  `allowcensorword` tinyint(1) NOT NULL default '0',
  `allowviewip` tinyint(1) NOT NULL default '0',
  `allowbanip` tinyint(1) NOT NULL default '0',
  `allowedituser` tinyint(1) NOT NULL default '0',
  `allowmoduser` tinyint(1) NOT NULL default '0',
  `allowbanuser` tinyint(1) NOT NULL default '0',
  `allowpostannounce` tinyint(1) NOT NULL default '0',
  `allowviewlog` tinyint(1) NOT NULL default '0',
  `allowbanpost` tinyint(1) NOT NULL default '0',
  `disablepostctrl` tinyint(1) NOT NULL default '0',
  `supe_allowpushthread` tinyint(1) NOT NULL default '0',
  `allowhighlightthread` tinyint(1) NOT NULL default '0',
  `allowdigestthread` tinyint(1) NOT NULL default '0',
  `allowrecommendthread` tinyint(1) NOT NULL default '0',
  `allowbumpthread` tinyint(1) NOT NULL default '0',
  `allowclosethread` tinyint(1) NOT NULL default '0',
  `allowmovethread` tinyint(1) NOT NULL default '0',
  `allowedittypethread` tinyint(1) NOT NULL default '0',
  `allowstampthread` tinyint(1) NOT NULL default '0',
  `allowcopythread` tinyint(1) NOT NULL default '0',
  `allowmergethread` tinyint(1) NOT NULL default '0',
  `allowsplitthread` tinyint(1) NOT NULL default '0',
  `allowrepairthread` tinyint(1) NOT NULL default '0',
  `allowwarnpost` tinyint(1) NOT NULL default '0',
  `allowviewreport` tinyint(1) NOT NULL default '0',
  `alloweditforum` tinyint(1) NOT NULL default '0',
  `allowremovereward` tinyint(1) NOT NULL default '0',
  `allowedittrade` tinyint(1) NOT NULL default '0',
  `alloweditactivity` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`admingid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_admingroups
-- ----------------------------
INSERT INTO `cdb_admingroups` VALUES ('1', '1', '1', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `cdb_admingroups` VALUES ('2', '1', '0', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0');
INSERT INTO `cdb_admingroups` VALUES ('3', '1', '0', '1', '1', '1', '0', '0', '0', '1', '0', '0', '1', '1', '0', '1', '1', '1', '0', '1', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0');
INSERT INTO `cdb_admingroups` VALUES ('16', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `cdb_admingroups` VALUES ('17', '1', '0', '2', '1', '0', '0', '1', '0', '1', '0', '0', '0', '0', '1', '1', '1', '1', '0', '1', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0');
INSERT INTO `cdb_admingroups` VALUES ('18', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cdb_admingroups` VALUES ('19', '0', '0', '0', '1', '0', '0', '0', '0', '1', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `cdb_adminnotes`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_adminnotes`;
CREATE TABLE `cdb_adminnotes` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `admin` varchar(15) NOT NULL default '',
  `access` tinyint(3) NOT NULL default '0',
  `adminid` tinyint(3) NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `expiration` int(10) unsigned NOT NULL default '0',
  `message` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_adminnotes
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_adminsessions`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_adminsessions`;
CREATE TABLE `cdb_adminsessions` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `adminid` smallint(6) unsigned NOT NULL default '0',
  `panel` tinyint(1) NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `errorcount` tinyint(1) NOT NULL default '0',
  `storage` mediumtext NOT NULL,
  PRIMARY KEY  (`uid`,`panel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_adminsessions
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_advertisements`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_advertisements`;
CREATE TABLE `cdb_advertisements` (
  `advid` mediumint(8) unsigned NOT NULL auto_increment,
  `available` tinyint(1) NOT NULL default '0',
  `type` varchar(50) NOT NULL default '0',
  `displayorder` tinyint(3) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `targets` text NOT NULL,
  `parameters` text NOT NULL,
  `code` text NOT NULL,
  `starttime` int(10) unsigned NOT NULL default '0',
  `endtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`advid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_advertisements
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_announcements`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_announcements`;
CREATE TABLE `cdb_announcements` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `author` varchar(15) NOT NULL default '',
  `subject` varchar(255) NOT NULL default '',
  `type` tinyint(1) NOT NULL default '0',
  `displayorder` tinyint(3) NOT NULL default '0',
  `starttime` int(10) unsigned NOT NULL default '0',
  `endtime` int(10) unsigned NOT NULL default '0',
  `message` text NOT NULL,
  `groups` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `timespan` (`starttime`,`endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_announcements
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_attachmentfields`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_attachmentfields`;
CREATE TABLE `cdb_attachmentfields` (
  `aid` mediumint(8) unsigned NOT NULL,
  `tid` mediumint(8) unsigned NOT NULL default '0',
  `pid` int(10) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY  (`aid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`,`aid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_attachmentfields
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_attachments`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_attachments`;
CREATE TABLE `cdb_attachments` (
  `aid` mediumint(8) unsigned NOT NULL auto_increment,
  `tid` mediumint(8) unsigned NOT NULL default '0',
  `pid` int(10) unsigned NOT NULL default '0',
  `width` smallint(6) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `readperm` tinyint(3) unsigned NOT NULL default '0',
  `price` smallint(6) unsigned NOT NULL default '0',
  `filename` char(100) NOT NULL default '',
  `filetype` char(50) NOT NULL default '',
  `filesize` int(10) unsigned NOT NULL default '0',
  `attachment` char(100) NOT NULL default '',
  `downloads` mediumint(8) NOT NULL default '0',
  `isimage` tinyint(1) NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `thumb` tinyint(1) unsigned NOT NULL default '0',
  `remote` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`,`aid`),
  KEY `uid` (`uid`),
  KEY `dateline` (`dateline`,`isimage`,`downloads`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_attachments
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_attachpaymentlog`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_attachpaymentlog`;
CREATE TABLE `cdb_attachpaymentlog` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `authorid` mediumint(8) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `amount` int(10) unsigned NOT NULL default '0',
  `netamount` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`aid`,`uid`),
  KEY `uid` (`uid`),
  KEY `authorid` (`authorid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_attachpaymentlog
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_attachtypes`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_attachtypes`;
CREATE TABLE `cdb_attachtypes` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `extension` char(12) NOT NULL default '',
  `maxsize` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_attachtypes
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_banned`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_banned`;
CREATE TABLE `cdb_banned` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `ip1` smallint(3) NOT NULL default '0',
  `ip2` smallint(3) NOT NULL default '0',
  `ip3` smallint(3) NOT NULL default '0',
  `ip4` smallint(3) NOT NULL default '0',
  `admin` varchar(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `expiration` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_banned
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_bbcodes`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_bbcodes`;
CREATE TABLE `cdb_bbcodes` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `available` tinyint(1) NOT NULL default '0',
  `tag` varchar(100) NOT NULL default '',
  `icon` varchar(255) NOT NULL,
  `replacement` text NOT NULL,
  `example` varchar(255) NOT NULL default '',
  `explanation` text NOT NULL,
  `params` tinyint(1) unsigned NOT NULL default '1',
  `prompt` text NOT NULL,
  `nest` tinyint(3) unsigned NOT NULL default '1',
  `displayorder` tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_bbcodes
-- ----------------------------
INSERT INTO `cdb_bbcodes` VALUES ('1', '0', 'fly', 'bb_fly.gif', '<marquee width=\"90%\" behavior=\"alternate\" scrollamount=\"3\">{1}</marquee>', '[fly]This is sample text[/fly]', '使内容横向滚动，这个效果类似 HTML 的 marquee 标签，注意：这个效果只在 Internet Explorer 浏览器下有效。', '1', '请输入滚动显示的文字:', '1', '19');
INSERT INTO `cdb_bbcodes` VALUES ('2', '1', 'qq', 'bb_qq.gif', '<a href=\"http://wpa.qq.com/msgrd?V=1&Uin={1}&amp;Site=[Discuz!]&amp;Menu=yes\" target=\"_blank\"><img src=\"http://wpa.qq.com/pa?p=1:{1}:1\" border=\"0\"></a>', '[qq]688888[/qq]', '显示 QQ 在线状态，点这个图标可以和他（她）聊天', '1', '请输入显示在线状态 QQ 号码:', '1', '21');
INSERT INTO `cdb_bbcodes` VALUES ('3', '0', 'sup', 'bb_sup.gif', '<sup>{1}</sup>', 'X[sup]2[/sup]', '上标', '1', '请输入上标文字：', '1', '22');
INSERT INTO `cdb_bbcodes` VALUES ('4', '0', 'sub', 'bb_sub.gif', '<sub>{1}</sub>', 'X[sub]2[/sub]', '下标', '1', '请输入下标文字：', '1', '23');

-- ----------------------------
-- Table structure for `cdb_caches`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_caches`;
CREATE TABLE `cdb_caches` (
  `cachename` varchar(32) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `expiration` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY  (`cachename`),
  KEY `expiration` (`type`,`expiration`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_caches
-- ----------------------------
INSERT INTO `cdb_caches` VALUES ('settings', '1', '1387876493', '0', '$_DCACHE[\'settings\'] = array (\n  \'accessemail\' => \'\',\n  \'activitytype\' => \'朋友聚会\r\n出外郊游\r\n自驾出行\r\n公益活动\r\n线上活动\',\n  \'adminipaccess\' => \'\',\n  \'admode\' => \'1\',\n  \'archiverstatus\' => \'1\',\n  \'attachbanperiods\' => \'\',\n  \'attachdir\' => \'C:/AppServ/www/upload/bbs/./attachments\',\n  \'attachexpire\' => \'\',\n  \'attachimgpost\' => \'1\',\n  \'attachrefcheck\' => \'0\',\n  \'attachsave\' => \'3\',\n  \'attachurl\' => \'attachments\',\n  \'authkey\' => \'3ea1cdluS5T9wWhv\',\n  \'authoronleft\' => \'0\',\n  \'avatarmethod\' => \'0\',\n  \'baidusitemap\' => \'1\',\n  \'baidusitemap_life\' => \'12\',\n  \'bannedmessages\' => \'1\',\n  \'bbclosed\' => \'\',\n  \'bbname\' => \'Discuz! Board\',\n  \'bdaystatus\' => \'0\',\n  \'boardlicensed\' => \'0\',\n  \'cacheindexlife\' => \'0\',\n  \'cachethreaddir\' => \'forumdata/threadcaches\',\n  \'cachethreadlife\' => \'0\',\n  \'censoremail\' => \'\',\n  \'censoruser\' => \'\',\n  \'creditnotice\' => \'1\',\n  \'creditsformula\' => \'$member[\\\'extcredits1\\\']\',\n  \'creditsformulaexp\' => \'\',\n  \'creditspolicy\' => \n  array (\n    \'post\' => \n    array (\n    ),\n    \'reply\' => \n    array (\n    ),\n    \'digest\' => \n    array (\n      1 => 10,\n    ),\n    \'postattach\' => \n    array (\n    ),\n    \'getattach\' => \n    array (\n    ),\n    \'sendpm\' => \n    array (\n    ),\n    \'search\' => \n    array (\n    ),\n    \'promotion_visit\' => \n    array (\n    ),\n    \'promotion_register\' => \n    array (\n    ),\n    \'tradefinished\' => \n    array (\n    ),\n    \'votepoll\' => \n    array (\n    ),\n    \'lowerlimit\' => \n    array (\n    ),\n  ),\n  \'creditstax\' => \'0.2\',\n  \'creditstrans\' => \'2\',\n  \'dateconvert\' => \'1\',\n  \'dateformat\' => \'Y-n-j\',\n  \'debug\' => \'1\',\n  \'delayviewcount\' => \'0\',\n  \'deletereason\' => \'\',\n  \'disallowfloat\' => \'newthread|reply\',\n  \'doublee\' => \'1\',\n  \'dupkarmarate\' => \'0\',\n  \'dzfeed_limit\' => \n  array (\n    \'thread_replies\' => \n    array (\n      0 => \'100\',\n      1 => \'1000\',\n      2 => \'2000\',\n      3 => \'10000\',\n    ),\n    \'thread_views\' => \n    array (\n      0 => \'500\',\n      1 => \'5000\',\n      2 => \'10000\',\n    ),\n    \'thread_rate\' => \n    array (\n      0 => \'50\',\n      1 => \'200\',\n      2 => \'500\',\n    ),\n    \'post_rate\' => \n    array (\n      0 => \'20\',\n      1 => \'100\',\n      2 => \'300\',\n    ),\n    \'user_usergroup\' => \n    array (\n      0 => \'12\',\n      1 => \'13\',\n      2 => \'14\',\n      3 => \'15\',\n    ),\n    \'user_credit\' => \n    array (\n      0 => \'1000\',\n      1 => \'10000\',\n      2 => \'100000\',\n    ),\n    \'user_threads\' => \n    array (\n      0 => \'100\',\n      1 => \'500\',\n      2 => \'1000\',\n      3 => \'5000\',\n      4 => \'10000\',\n    ),\n    \'user_posts\' => \n    array (\n      0 => \'500\',\n      1 => \'1000\',\n      2 => \'5000\',\n      3 => \'10000\',\n    ),\n    \'user_digest\' => \n    array (\n      0 => \'50\',\n      1 => \'100\',\n      2 => \'500\',\n      3 => \'1000\',\n    ),\n  ),\n  \'ec_account\' => \'\',\n  \'ec_credit\' => \n  array (\n    \'maxcreditspermonth\' => 6,\n    \'rank\' => \n    array (\n      1 => 4,\n      2 => 11,\n      3 => 41,\n      4 => 91,\n      5 => 151,\n      6 => 251,\n      7 => 501,\n      8 => 1001,\n      9 => 2001,\n      10 => 5001,\n      11 => 10001,\n      12 => 20001,\n      13 => 50001,\n      14 => 100001,\n      15 => 200001,\n    ),\n  ),\n  \'ec_maxcredits\' => \'1000\',\n  \'ec_maxcreditspermonth\' => \'0\',\n  \'ec_mincredits\' => \'0\',\n  \'ec_ratio\' => \'0\',\n  \'ec_tenpay_bargainor\' => \'\',\n  \'ec_tenpay_key\' => \'\',\n  \'editedby\' => \'1\',\n  \'editoroptions\' => \'1\',\n  \'edittimelimit\' => \'\',\n  \'exchangemincredits\' => \'100\',\n  \'extcredits\' => \n  array (\n    1 => \n    array (\n      \'title\' => \'威望\',\n      \'showinthread\' => \'\',\n      \'img\' => \'\',\n    ),\n    2 => \n    array (\n      \'title\' => \'金钱\',\n      \'showinthread\' => \'\',\n      \'img\' => \'\',\n    ),\n  ),\n  \'fastpost\' => \'1\',\n  \'floodctrl\' => \'15\',\n  \'forumjump\' => \'0\',\n  \'forumlinkstatus\' => \'1\',\n  \'frameon\' => \'0\',\n  \'framewidth\' => \'180\',\n  \'ftp\' => \n  array (\n    \'on\' => \'0\',\n    \'ssl\' => \'0\',\n    \'host\' => \'\',\n    \'port\' => \'21\',\n    \'username\' => \'\',\n    \'password\' => \'\',\n    \'attachdir\' => \'.\',\n    \'attachurl\' => \'\',\n    \'hideurl\' => \'0\',\n    \'timeout\' => \'0\',\n    \'connid\' => 0,\n  ),\n  \'globalstick\' => \'1\',\n  \'google\' => \'1\',\n  \'gzipcompress\' => \'0\',\n  \'heatthread\' => \n  array (\n    \'reply\' => 5,\n    \'recommend\' => 3,\n    \'hottopic\' => \'50,100,200\',\n    \'iconlevels\' => \n    array (\n    ),\n  ),\n  \'hideprivate\' => \'1\',\n  \'historyposts\' => \'1	1\',\n  \'hottopic\' => \'10\',\n  \'icp\' => \'\',\n  \'imagelib\' => \'0\',\n  \'indexhot\' => false,\n  \'indexname\' => \'index.php\',\n  \'indextype\' => \'classics\',\n  \'infosidestatus\' => false,\n  \'initcredits\' => \'0,0,0,0,0,0,0,0,0\',\n  \'ipaccess\' => \'\',\n  \'jscachelife\' => \'1800\',\n  \'jsdateformat\' => \'\',\n  \'jspath\' => \'forumdata/cache/\',\n  \'jsrefdomains\' => \'\',\n  \'jsstatus\' => \'0\',\n  \'karmaratelimit\' => \'0\',\n  \'loadctrl\' => \'0\',\n  \'losslessdel\' => \'365\',\n  \'magicdiscount\' => \'85\',\n  \'magicmarket\' => \'1\',\n  \'magicstatus\' => \'1\',\n  \'mail\' => \'a:10:{s:8:\"mailsend\";s:1:\"1\";s:6:\"server\";s:13:\"smtp.21cn.com\";s:4:\"port\";s:2:\"25\";s:4:\"auth\";s:1:\"1\";s:4:\"from\";s:26:\"Discuz <username@21cn.com>\";s:13:\"auth_username\";s:17:\"username@21cn.com\";s:13:\"auth_password\";s:8:\"password\";s:13:\"maildelimiter\";s:1:\"0\";s:12:\"mailusername\";s:1:\"1\";s:15:\"sendmail_silent\";s:1:\"1\";}\',\n  \'maxavatarpixel\' => \'120\',\n  \'maxavatarsize\' => \'20000\',\n  \'maxbdays\' => \'0\',\n  \'maxchargespan\' => \'0\',\n  \'maxfavorites\' => \'100\',\n  \'maxincperthread\' => \'0\',\n  \'maxmagicprice\' => \'50\',\n  \'maxmodworksmonths\' => \'3\',\n  \'maxonlinelist\' => \'0\',\n  \'maxpolloptions\' => \'10\',\n  \'maxpostsize\' => \'10000\',\n  \'maxsearchresults\' => \'500\',\n  \'maxsigrows\' => \'100\',\n  \'maxsmilies\' => \'10\',\n  \'maxspm\' => \'0\',\n  \'membermaxpages\' => \'100\',\n  \'memberperpage\' => \'25\',\n  \'memliststatus\' => \'1\',\n  \'minpostsize\' => \'10\',\n  \'moddisplay\' => \'flat\',\n  \'modratelimit\' => \'0\',\n  \'modworkstatus\' => \'1\',\n  \'msgforward\' => \'a:3:{s:11:\"refreshtime\";i:3;s:5:\"quick\";i:1;s:8:\"messages\";a:13:{i:0;s:19:\"thread_poll_succeed\";i:1;s:19:\"thread_rate_succeed\";i:2;s:23:\"usergroups_join_succeed\";i:3;s:23:\"usergroups_exit_succeed\";i:4;s:25:\"usergroups_update_succeed\";i:5;s:20:\"buddy_update_succeed\";i:6;s:17:\"post_edit_succeed\";i:7;s:18:\"post_reply_succeed\";i:8;s:24:\"post_edit_delete_succeed\";i:9;s:22:\"post_newthread_succeed\";i:10;s:13:\"admin_succeed\";i:11;s:17:\"pm_delete_succeed\";i:12;s:15:\"search_redirect\";}}\',\n  \'msn\' => \n  array (\n    \'on\' => 0,\n    \'domain\' => \'discuz.org\',\n  ),\n  \'newbiespan\' => \'0\',\n  \'newbietasks\' => \n  array (\n  ),\n  \'newbietaskupdate\' => \'\',\n  \'nocacheheaders\' => \'0\',\n  \'oltimespan\' => \'10\',\n  \'onlinehold\' => 900,\n  \'onlinerecord\' => \'1	1040034649\',\n  \'outextcredits\' => \n  array (\n    \'|\' => \n    array (\n      \'title\' => NULL,\n      \'unit\' => NULL,\n      \'ratiosrc\' => \n      array (\n        \'\' => NULL,\n      ),\n      \'ratiodesc\' => \n      array (\n        \'\' => NULL,\n      ),\n      \'creditsrc\' => \n      array (\n        \'\' => NULL,\n      ),\n    ),\n  ),\n  \'postbanperiods\' => \'\',\n  \'postmodperiods\' => \'\',\n  \'postperpage\' => \'10\',\n  \'pvfrequence\' => \'60\',\n  \'pwdsafety\' => \'\',\n  \'qihoo\' => \n  array (\n  ),\n  \'ratelogrecord\' => \'5\',\n  \'recommendthread\' => \n  array (\n    \'allow\' => 0,\n  ),\n  \'regctrl\' => \'0\',\n  \'regfloodctrl\' => \'0\',\n  \'reglinkname\' => \'注册\',\n  \'regname\' => \'register.php\',\n  \'regstatus\' => \'1\',\n  \'regverify\' => \'0\',\n  \'relatedtag\' => false,\n  \'reportpost\' => \'1\',\n  \'rewritecompatible\' => \'\',\n  \'rewritestatus\' => \'0\',\n  \'rssstatus\' => \'1\',\n  \'rssttl\' => \'60\',\n  \'runwizard\' => \'1\',\n  \'searchbanperiods\' => \'\',\n  \'searchctrl\' => \'30\',\n  \'seccodedata\' => \n  array (\n    \'minposts\' => \'\',\n    \'loginfailedcount\' => 0,\n    \'width\' => 150,\n    \'height\' => 60,\n    \'type\' => \'0\',\n    \'background\' => \'1\',\n    \'adulterate\' => \'1\',\n    \'ttf\' => \'0\',\n    \'angle\' => \'0\',\n    \'color\' => \'1\',\n    \'size\' => \'0\',\n    \'shadow\' => \'1\',\n    \'animator\' => \'0\',\n  ),\n  \'seccodestatus\' => \'0\',\n  \'seclevel\' => \'1\',\n  \'secqaa\' => \n  array (\n    \'status\' => \n    array (\n      1 => \'0\',\n      2 => \'0\',\n      3 => \'0\',\n    ),\n  ),\n  \'seodescription\' => \'\',\n  \'seohead\' => \'\',\n  \'seokeywords\' => \'\',\n  \'seotitle\' => \'\',\n  \'showemail\' => \'\',\n  \'showimages\' => \'1\',\n  \'showsettings\' => \'7\',\n  \'sigviewcond\' => \'0\',\n  \'sitemessage\' => \n  array (\n    \'time\' => 0,\n    \'register\' => \'\',\n    \'login\' => \'\',\n    \'newthread\' => \'\',\n    \'reply\' => \'\',\n  ),\n  \'sitename\' => \'Comsenz Inc.\',\n  \'siteurl\' => \'http://www.comsenz.com/\',\n  \'smcols\' => \'8\',\n  \'smrows\' => \'5\',\n  \'smthumb\' => \'20\',\n  \'spacedata\' => \n  array (\n    \'cachelife\' => \'900\',\n    \'limitmythreads\' => \'5\',\n    \'limitmyreplies\' => \'5\',\n    \'limitmyrewards\' => \'5\',\n    \'limitmytrades\' => \'5\',\n    \'limitmyvideos\' => \'0\',\n    \'limitmyblogs\' => \'8\',\n    \'limitmyfriends\' => \'0\',\n    \'limitmyfavforums\' => \'5\',\n    \'limitmyfavthreads\' => \'0\',\n    \'textlength\' => \'300\',\n  ),\n  \'spacestatus\' => \'1\',\n  \'starthreshold\' => \'2\',\n  \'statcode\' => \'\',\n  \'statscachelife\' => \'180\',\n  \'statstatus\' => \'\',\n  \'styleid\' => \'1\',\n  \'stylejump\' => \'1\',\n  \'subforumsindex\' => \'\',\n  \'swfupload\' => \'1\',\n  \'tagstatus\' => \'1\',\n  \'taskon\' => \'0\',\n  \'threadmaxpages\' => \'1000\',\n  \'threadsticky\' => \n  array (\n    0 => \'全局置顶\',\n    1 => \'分类置顶\',\n    2 => \'本版置顶\',\n  ),\n  \'thumbheight\' => \'300\',\n  \'thumbquality\' => \'100\',\n  \'thumbstatus\' => \'0\',\n  \'thumbwidth\' => \'400\',\n  \'timeformat\' => \'H:i\',\n  \'timeoffset\' => \'8\',\n  \'topicperpage\' => \'20\',\n  \'tradetypes\' => \n  array (\n  ),\n  \'transfermincredits\' => \'1000\',\n  \'transsidstatus\' => \'0\',\n  \'uc\' => \n  array (\n    \'addfeed\' => 1,\n  ),\n  \'ucactivation\' => \'1\',\n  \'upgradeurl\' => \'http://localhost/develop/dzhead/develop/upgrade.php\',\n  \'userdateformat\' => \n  array (\n    0 => \'Y-n-j\',\n    1 => \'Y/n/j\',\n    2 => \'j-n-Y\',\n    3 => \'j/n/Y\',\n  ),\n  \'userstatusby\' => \'1\',\n  \'viewthreadtags\' => \'100\',\n  \'visitbanperiods\' => \'\',\n  \'visitedforums\' => \'10\',\n  \'vtonlinestatus\' => \'1\',\n  \'wapcharset\' => \'2\',\n  \'wapdateformat\' => \'n/j\',\n  \'wapmps\' => \'500\',\n  \'wapppp\' => \'5\',\n  \'wapregister\' => \'0\',\n  \'wapstatus\' => \'0\',\n  \'waptpp\' => \'10\',\n  \'warningexpiration\' => \'3\',\n  \'warninglimit\' => \'3\',\n  \'watermarkminheight\' => \'0\',\n  \'watermarkminwidth\' => \'0\',\n  \'watermarkquality\' => \'80\',\n  \'watermarkstatus\' => \'0\',\n  \'watermarktext\' => \n  array (\n  ),\n  \'watermarktrans\' => \'65\',\n  \'watermarktype\' => \'0\',\n  \'welcomemsgtitle\' => \'{username}，您好，感谢您的注册，请阅读以下内容。\',\n  \'whosonlinestatus\' => \'1\',\n  \'whosonline_contract\' => \'0\',\n  \'zoomstatus\' => \'1\',\n  \'ratelogon\' => \'0\',\n  \'forumseparator\' => \'1\',\n  \'allowattachurl\' => \'0\',\n  \'allowviewuserthread\' => \'\',\n  \'tasktypes\' => \'a:3:{s:9:\"promotion\";a:2:{s:4:\"name\";s:18:\"论坛推广任务\";s:7:\"version\";s:3:\"1.0\";}s:4:\"gift\";a:2:{s:4:\"name\";s:15:\"红包类任务\";s:7:\"version\";s:3:\"1.0\";}s:6:\"avatar\";a:2:{s:4:\"name\";s:15:\"头像类任务\";s:7:\"version\";s:3:\"1.0\";}}\',\n  \'version\' => \'7.2\',\n  \'totalmembers\' => \'1\',\n  \'lastmember\' => \'admin\',\n  \'cachethreadon\' => 0,\n  \'cronnextrun\' => \'1387880075\',\n  \'styles\' => \n  array (\n    1 => \'默认风格\',\n  ),\n  \'stylejumpstatus\' => false,\n  \'globaladvs\' => \n  array (\n  ),\n  \'redirectadvs\' => \n  array (\n  ),\n  \'invitecredit\' => \'\',\n  \'creditnames\' => \'1|威望|,2|金钱|\',\n  \'creditstransextra\' => \n  array (\n    1 => \'2\',\n    2 => \'2\',\n    3 => \'2\',\n    4 => \'2\',\n    5 => \'2\',\n  ),\n  \'exchangestatus\' => false,\n  \'transferstatus\' => true,\n  \'imagemaxwidth\' => NULL,\n  \'promptpmids\' => \n  array (\n    0 => \'4\',\n    1 => \'5\',\n    2 => \'6\',\n  ),\n  \'promptkeys\' => \n  array (\n    1 => \'pm\',\n    2 => \'announcepm\',\n    4 => \'systempm\',\n    5 => \'friend\',\n    6 => \'threads\',\n  ),\n  \'prompts\' => \n  array (\n    \'pm\' => \n    array (\n      \'name\' => \'私人消息\',\n      \'script\' => \'pm.php?filter=newpm\',\n      \'id\' => \'1\',\n      \'new\' => 0,\n    ),\n    \'announcepm\' => \n    array (\n      \'name\' => \'公共消息\',\n      \'script\' => \'pm.php?filter=announcepm\',\n      \'id\' => \'2\',\n      \'new\' => 0,\n    ),\n    \'systempm\' => \n    array (\n      \'name\' => \'系统消息\',\n      \'script\' => \'\',\n      \'id\' => \'4\',\n      \'new\' => 0,\n    ),\n    \'friend\' => \n    array (\n      \'name\' => \'好友消息\',\n      \'script\' => \'\',\n      \'id\' => \'5\',\n      \'new\' => 0,\n    ),\n    \'threads\' => \n    array (\n      \'name\' => \'帖子消息\',\n      \'script\' => \'\',\n      \'id\' => \'6\',\n      \'new\' => 0,\n    ),\n  ),\n  \'announcepm\' => \'0\',\n  \'specialicon\' => \n  array (\n  ),\n  \'threadplugins\' => \n  array (\n  ),\n  \'hookscript\' => \n  array (\n  ),\n  \'pluginlinks\' => \n  array (\n  ),\n  \'templatelangs\' => \n  array (\n  ),\n  \'pluginlangs\' => \n  array (\n  ),\n  \'plugins\' => \n  array (\n    \'available\' => \n    array (\n    ),\n  ),\n  \'my_status\' => 0,\n  \'tradeopen\' => 1,\n  \'hooks\' => \n  array (\n  ),\n  \'navmns\' => \n  array (\n    0 => \'index\',\n    1 => \'index\',\n    2 => \'search\',\n    3 => \'faq\',\n  ),\n  \'subnavs\' => \n  array (\n  ),\n  \'navs\' => \n  array (\n    1 => \n    array (\n      \'nav\' => \'<li class=\"menu_1\"><a href=\"index.php\" hidefocus=\"true\" id=\"mn_index\">论坛</a></li>\',\n      \'level\' => \'0\',\n    ),\n    2 => \n    array (\n      \'nav\' => \'<li class=\"menu_2\"><a href=\"search.php\" hidefocus=\"true\" id=\"mn_search\">搜索</a></li>\',\n      \'level\' => \'0\',\n    ),\n    3 => \n    array (\n      \'nav\' => \'\',\n      \'level\' => \'0\',\n    ),\n    4 => \n    array (\n      \'nav\' => \'<li class=\"menu_4\"><a href=\"faq.php\" hidefocus=\"true\" id=\"mn_faq\">帮助</a></li>\',\n      \'level\' => \'0\',\n    ),\n    5 => \n    array (\n      \'nav\' => \'<li class=\"menu_5\"><a href=\"misc.php?action=nav\" hidefocus=\"true\" onclick=\"showWindow(\\\'nav\\\', this.href);return false;\">导航</a></li>\',\n      \'level\' => \'0\',\n    ),\n  ),\n  \'allowsynlogin\' => 1,\n  \'ucappopen\' => \n  array (\n    \'UCHOME\' => 1,\n  ),\n  \'ucapp\' => \n  array (\n  ),\n  \'uchomeurl\' => \'http://localhost/upload/home\',\n  \'homeshow\' => \'0\',\n  \'medalstatus\' => 0,\n  \'dlang\' => \n  array (\n    \'nextpage\' => \'下一页\',\n    \'date\' => \n    array (\n      0 => \'前\',\n      1 => \'天\',\n      2 => \'昨天\',\n      3 => \'前天\',\n      4 => \'小时\',\n      5 => \'半\',\n      6 => \'分钟\',\n      7 => \'秒\',\n      8 => \'刚才\',\n    ),\n  ),\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('forums', '1', '1387876493', '0', '$_DCACHE[\'forums\'] = array (\n  1 => \n  array (\n    \'fid\' => \'1\',\n    \'type\' => \'group\',\n    \'name\' => \'Discuz!\',\n    \'fup\' => \'0\',\n    \'viewperm\' => \'\',\n    \'orderby\' => \'lastpost\',\n    \'ascdesc\' => \'DESC\',\n    \'status\' => \'1\',\n    \'extra\' => \n    array (\n    ),\n  ),\n  2 => \n  array (\n    \'fid\' => \'2\',\n    \'type\' => \'forum\',\n    \'name\' => \'默认版块\',\n    \'fup\' => \'1\',\n    \'viewperm\' => \'\',\n    \'orderby\' => \'lastpost\',\n    \'ascdesc\' => \'DESC\',\n    \'users\' => NULL,\n    \'status\' => \'1\',\n    \'extra\' => \n    array (\n    ),\n  ),\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('icons', '1', '1387876493', '0', '$_DCACHE[\'icons\'] = array (\n  65 => \'icon1.gif\',\n  66 => \'icon2.gif\',\n  67 => \'icon3.gif\',\n  68 => \'icon4.gif\',\n  69 => \'icon5.gif\',\n  70 => \'icon6.gif\',\n  71 => \'icon7.gif\',\n  72 => \'icon8.gif\',\n  73 => \'icon9.gif\',\n  74 => \'icon10.gif\',\n  75 => \'icon11.gif\',\n  76 => \'icon12.gif\',\n  77 => \'icon13.gif\',\n  78 => \'icon14.gif\',\n  79 => \'icon15.gif\',\n  80 => \'icon16.gif\',\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('stamps', '1', '1387876493', '0', '$_DCACHE[\'stamps\'] = array (\n  0 => \n  array (\n    \'url\' => \'001.gif\',\n    \'text\' => \'精华\',\n  ),\n  1 => \n  array (\n    \'url\' => \'002.gif\',\n    \'text\' => \'热帖\',\n  ),\n  2 => \n  array (\n    \'url\' => \'003.gif\',\n    \'text\' => \'美图\',\n  ),\n  3 => \n  array (\n    \'url\' => \'004.gif\',\n    \'text\' => \'优秀\',\n  ),\n  4 => \n  array (\n    \'url\' => \'005.gif\',\n    \'text\' => \'置顶\',\n  ),\n  5 => \n  array (\n    \'url\' => \'006.gif\',\n    \'text\' => \'推荐\',\n  ),\n  6 => \n  array (\n    \'url\' => \'007.gif\',\n    \'text\' => \'原创\',\n  ),\n  7 => \n  array (\n    \'url\' => \'008.gif\',\n    \'text\' => \'版主推荐\',\n  ),\n  8 => \n  array (\n    \'url\' => \'009.gif\',\n    \'text\' => \'爆料\',\n  ),\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('ranks', '1', '1387876493', '0', '$_DCACHE[\'ranks\'] = array (\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('usergroups', '1', '1387876493', '0', '$_DCACHE[\'usergroups\'] = array (\n  1 => \n  array (\n    \'type\' => \'system\',\n    \'grouptitle\' => \'管理员\',\n    \'stars\' => \'9\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'200\',\n    \'allowcusbbcode\' => \'1\',\n    \'allowgetattach\' => \'1\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n  18 => \n  array (\n    \'type\' => \'special\',\n    \'grouptitle\' => \'信息监察员\',\n    \'stars\' => \'9\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'200\',\n    \'allowcusbbcode\' => \'1\',\n    \'allowgetattach\' => \'1\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n  17 => \n  array (\n    \'type\' => \'special\',\n    \'grouptitle\' => \'网站编辑\',\n    \'stars\' => \'8\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'150\',\n    \'allowcusbbcode\' => \'1\',\n    \'allowgetattach\' => \'1\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n  16 => \n  array (\n    \'type\' => \'special\',\n    \'grouptitle\' => \'实习版主\',\n    \'stars\' => \'7\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'100\',\n    \'allowcusbbcode\' => \'1\',\n    \'allowgetattach\' => \'1\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n  19 => \n  array (\n    \'type\' => \'special\',\n    \'grouptitle\' => \'审核员\',\n    \'stars\' => \'7\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'100\',\n    \'allowcusbbcode\' => \'1\',\n    \'allowgetattach\' => \'1\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n  9 => \n  array (\n    \'type\' => \'member\',\n    \'grouptitle\' => \'乞丐\',\n    \'creditshigher\' => \'-9999999\',\n    \'creditslower\' => \'0\',\n    \'stars\' => \'0\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'0\',\n    \'allowcusbbcode\' => \'0\',\n    \'allowgetattach\' => \'0\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n  8 => \n  array (\n    \'type\' => \'system\',\n    \'grouptitle\' => \'等待验证会员\',\n    \'stars\' => \'0\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'0\',\n    \'allowcusbbcode\' => \'0\',\n    \'allowgetattach\' => \'0\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n  7 => \n  array (\n    \'type\' => \'system\',\n    \'grouptitle\' => \'游客\',\n    \'stars\' => \'0\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'1\',\n    \'allowcusbbcode\' => \'0\',\n    \'allowgetattach\' => \'0\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n  6 => \n  array (\n    \'type\' => \'system\',\n    \'grouptitle\' => \'禁止 IP\',\n    \'stars\' => \'0\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'0\',\n    \'allowcusbbcode\' => \'0\',\n    \'allowgetattach\' => \'0\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n  5 => \n  array (\n    \'type\' => \'system\',\n    \'grouptitle\' => \'禁止访问\',\n    \'stars\' => \'0\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'0\',\n    \'allowcusbbcode\' => \'0\',\n    \'allowgetattach\' => \'0\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n  2 => \n  array (\n    \'type\' => \'system\',\n    \'grouptitle\' => \'超级版主\',\n    \'stars\' => \'8\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'150\',\n    \'allowcusbbcode\' => \'1\',\n    \'allowgetattach\' => \'1\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n  3 => \n  array (\n    \'type\' => \'system\',\n    \'grouptitle\' => \'版主\',\n    \'stars\' => \'7\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'100\',\n    \'allowcusbbcode\' => \'1\',\n    \'allowgetattach\' => \'1\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n  4 => \n  array (\n    \'type\' => \'system\',\n    \'grouptitle\' => \'禁止发言\',\n    \'stars\' => \'0\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'0\',\n    \'allowcusbbcode\' => \'0\',\n    \'allowgetattach\' => \'0\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n  10 => \n  array (\n    \'type\' => \'member\',\n    \'grouptitle\' => \'新手上路\',\n    \'creditshigher\' => \'0\',\n    \'creditslower\' => \'50\',\n    \'stars\' => \'1\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'10\',\n    \'allowcusbbcode\' => \'0\',\n    \'allowgetattach\' => \'1\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n  11 => \n  array (\n    \'type\' => \'member\',\n    \'grouptitle\' => \'注册会员\',\n    \'creditshigher\' => \'50\',\n    \'creditslower\' => \'200\',\n    \'stars\' => \'2\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'20\',\n    \'allowcusbbcode\' => \'0\',\n    \'allowgetattach\' => \'1\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n  12 => \n  array (\n    \'type\' => \'member\',\n    \'grouptitle\' => \'中级会员\',\n    \'creditshigher\' => \'200\',\n    \'creditslower\' => \'500\',\n    \'stars\' => \'3\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'30\',\n    \'allowcusbbcode\' => \'1\',\n    \'allowgetattach\' => \'1\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n  13 => \n  array (\n    \'type\' => \'member\',\n    \'grouptitle\' => \'高级会员\',\n    \'creditshigher\' => \'500\',\n    \'creditslower\' => \'1000\',\n    \'stars\' => \'4\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'50\',\n    \'allowcusbbcode\' => \'1\',\n    \'allowgetattach\' => \'1\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n  14 => \n  array (\n    \'type\' => \'member\',\n    \'grouptitle\' => \'金牌会员\',\n    \'creditshigher\' => \'1000\',\n    \'creditslower\' => \'3000\',\n    \'stars\' => \'6\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'70\',\n    \'allowcusbbcode\' => \'1\',\n    \'allowgetattach\' => \'1\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n  15 => \n  array (\n    \'type\' => \'member\',\n    \'grouptitle\' => \'论坛元老\',\n    \'creditshigher\' => \'3000\',\n    \'creditslower\' => \'9999999\',\n    \'stars\' => \'8\',\n    \'groupavatar\' => \'\',\n    \'readaccess\' => \'90\',\n    \'allowcusbbcode\' => \'1\',\n    \'allowgetattach\' => \'1\',\n    \'edittimelimit\' => \'0\',\n    \'userstatusby\' => 1,\n  ),\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('request', '1', '1387876493', '0', '$_DCACHE[\'request\'] = array (\n  \'边栏模块_版块树形列表\' => \n  array (\n    \'url\' => \'function=module&module=forumtree.inc.php&settings=N%3B&jscharset=0&cachelife=864000\',\n    \'type\' => \'5\',\n  ),\n  \'边栏模块_版主排行\' => \n  array (\n    \'url\' => \'function=module&module=modlist.inc.php&settings=N%3B&jscharset=0&cachelife=3600\',\n    \'type\' => \'5\',\n  ),\n  \'聚合模块_版块列表\' => \n  array (\n    \'url\' => \'function=module&module=rowcombine.inc.php&settings=a%3A1%3A%7Bs%3A4%3A%22data%22%3Bs%3A84%3A%22%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E7%89%88%E5%9D%97%E6%8E%92%E8%A1%8C%2C%E7%89%88%E5%9D%97%E6%8E%92%E8%A1%8C%0D%0A%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E7%89%88%E5%9D%97%E6%A0%91%E5%BD%A2%E5%88%97%E8%A1%A8%2C%E7%89%88%E5%9D%97%E5%88%97%E8%A1%A8%22%3B%7D&jscharset=0&cachelife=864000&\',\n    \'type\' => \'5\',\n  ),\n  \'边栏模块_版块排行\' => \n  array (\n    \'url\' => \'function=forums&startrow=0&items=0&newwindow=1&orderby=posts&jscharset=0&cachelife=43200&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E7%89%88%E5%9D%97%E6%8E%92%E8%A1%8C%3C%2Fh4%3E%0D%0A%3Cul%20class%3D%5C%22textinfolist%5C%22%3E%0D%0A%5Bnode%5D%3Cli%3E%3Cimg%20style%3D%5C%22vertical-align%3Amiddle%5C%22%20src%3D%5C%22images%2Fdefault%2Ftree_file.gif%5C%22%20%2F%3E%20%7Bforumname%7D%28%7Bposts%7D%29%3C%2Fli%3E%5B%2Fnode%5D%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E&\',\n    \'type\' => \'1\',\n  ),\n  \'聚合模块_热门主题\' => \n  array (\n    \'url\' => \'function=module&module=rowcombine.inc.php&settings=a%3A2%3A%7Bs%3A5%3A%22title%22%3Bs%3A12%3A%22%E7%83%AD%E9%97%A8%E4%B8%BB%E9%A2%98%22%3Bs%3A4%3A%22data%22%3Bs%3A112%3A%22%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E7%83%AD%E9%97%A8%E4%B8%BB%E9%A2%98_%E4%BB%8A%E6%97%A5%2C%E6%97%A5%0D%0A%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E7%83%AD%E9%97%A8%E4%B8%BB%E9%A2%98_%E6%9C%AC%E5%91%A8%2C%E5%91%A8%0D%0A%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E7%83%AD%E9%97%A8%E4%B8%BB%E9%A2%98_%E6%9C%AC%E6%9C%88%2C%E6%9C%88%22%3B%7D&jscharset=0&cachelife=1800&\',\n    \'type\' => \'5\',\n  ),\n  \'边栏模块_热门主题_本月\' => \n  array (\n    \'url\' => \'function=threads&sidestatus=0&maxlength=20&fnamelength=0&messagelength=&startrow=0&picpre=images%2Fcommon%2Fslisticon.gif&items=5&tag=&tids=&special=0&rewardstatus=&digest=0&stick=0&recommend=0&newwindow=1&threadtype=0&highlight=0&orderby=hourviews&hours=720&jscharset=0&cachelife=86400&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%AC%E6%9C%88%E7%83%AD%E9%97%A8%3C%2Fh4%3E%0D%0A%3Cul%20class%3D%5C%22textinfolist%5C%22%3E%0D%0A%5Bnode%5D%3Cli%3E%7Bprefix%7D%7Bsubject%7D%3C%2Fli%3E%5B%2Fnode%5D%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E&\',\n    \'type\' => \'0\',\n  ),\n  \'聚合模块_会员排行\' => \n  array (\n    \'url\' => \'function=module&module=rowcombine.inc.php&settings=a%3A2%3A%7Bs%3A5%3A%22title%22%3Bs%3A12%3A%22%E4%BC%9A%E5%91%98%E6%8E%92%E8%A1%8C%22%3Bs%3A4%3A%22data%22%3Bs%3A112%3A%22%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E4%BC%9A%E5%91%98%E6%8E%92%E8%A1%8C_%E4%BB%8A%E6%97%A5%2C%E6%97%A5%0D%0A%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E4%BC%9A%E5%91%98%E6%8E%92%E8%A1%8C_%E6%9C%AC%E5%91%A8%2C%E5%91%A8%0D%0A%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E4%BC%9A%E5%91%98%E6%8E%92%E8%A1%8C_%E6%9C%AC%E6%9C%88%2C%E6%9C%88%22%3B%7D&jscharset=0&cachelife=3600&\',\n    \'type\' => \'5\',\n  ),\n  \'边栏模块_推荐主题\' => \n  array (\n    \'url\' => \'function=threads&sidestatus=0&maxlength=20&fnamelength=0&messagelength=&startrow=0&picpre=images%2Fcommon%2Fslisticon.gif&items=5&tag=&tids=&special=0&rewardstatus=&digest=0&stick=0&recommend=1&newwindow=1&threadtype=0&highlight=0&orderby=lastpost&hours=48&jscharset=0&cachelife=3600&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%8E%A8%E8%8D%90%E4%B8%BB%E9%A2%98%3C%2Fh4%3E%0D%0A%3Cul%20class%3D%5C%22textinfolist%5C%22%3E%0D%0A%5Bnode%5D%3Cli%3E%7Bprefix%7D%7Bsubject%7D%3C%2Fli%3E%5B%2Fnode%5D%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E&\',\n    \'type\' => \'0\',\n  ),\n  \'边栏模块_最新图片\' => \n  array (\n    \'url\' => \'function=images&sidestatus=0&isimage=1&threadmethod=1&maxwidth=140&maxheight=140&startrow=0&items=5&orderby=dateline&hours=0&digest=0&newwindow=1&jscharset=0&jstemplate=%3Cdiv%20%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%80%E6%96%B0%E5%9B%BE%E7%89%87%3C%2Fh4%3E%0D%0A%3Cscript%20type%3D%5C%22text%2Fjavascript%5C%22%3E%0D%0Avar%20slideSpeed%20%3D%202500%3B%0D%0Avar%20slideImgsize%20%3D%20%5B140%2C140%5D%3B%0D%0Avar%20slideTextBar%20%3D%200%3B%0D%0Avar%20slideBorderColor%20%3D%20%5C%27%23C8DCEC%5C%27%3B%0D%0Avar%20slideBgColor%20%3D%20%5C%27%23FFF%5C%27%3B%0D%0Avar%20slideImgs%20%3D%20new%20Array%28%29%3B%0D%0Avar%20slideImgLinks%20%3D%20new%20Array%28%29%3B%0D%0Avar%20slideImgTexts%20%3D%20new%20Array%28%29%3B%0D%0Avar%20slideSwitchBar%20%3D%201%3B%0D%0Avar%20slideSwitchColor%20%3D%20%5C%27black%5C%27%3B%0D%0Avar%20slideSwitchbgColor%20%3D%20%5C%27white%5C%27%3B%0D%0Avar%20slideSwitchHiColor%20%3D%20%5C%27%23C8DCEC%5C%27%3B%0D%0A%5Bnode%5D%0D%0AslideImgs%5B%7Border%7D%5D%20%3D%20%5C%22%7Bimgfile%7D%5C%22%3B%0D%0AslideImgLinks%5B%7Border%7D%5D%20%3D%20%5C%22%7Blink%7D%5C%22%3B%0D%0AslideImgTexts%5B%7Border%7D%5D%20%3D%20%5C%22%7Bsubject%7D%5C%22%3B%0D%0A%5B%2Fnode%5D%0D%0A%3C%2Fscript%3E%0D%0A%3Cscript%20language%3D%5C%22javascript%5C%22%20type%3D%5C%22text%2Fjavascript%5C%22%20src%3D%5C%22include%2Fjs%2Fslide.js%5C%22%3E%3C%2Fscript%3E%0D%0A%3C%2Fdiv%3E&\',\n    \'type\' => \'4\',\n  ),\n  \'边栏模块_最新主题\' => \n  array (\n    \'url\' => \'function=threads&sidestatus=0&maxlength=20&fnamelength=0&messagelength=&startrow=0&picpre=images%2Fcommon%2Fslisticon.gif&items=5&tag=&tids=&special=0&rewardstatus=&digest=0&stick=0&recommend=0&newwindow=1&threadtype=0&highlight=0&orderby=dateline&hours=0&jscharset=0&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%80%E6%96%B0%E4%B8%BB%E9%A2%98%3C%2Fh4%3E%0D%0A%3Cul%20class%3D%5C%22textinfolist%5C%22%3E%0D%0A%5Bnode%5D%3Cli%3E%7Bprefix%7D%7Bsubject%7D%3C%2Fli%3E%5B%2Fnode%5D%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E&\',\n    \'type\' => \'0\',\n  ),\n  \'边栏模块_活跃会员\' => \n  array (\n    \'url\' => \'function=memberrank&startrow=0&items=12&newwindow=1&extcredit=1&orderby=posts&hours=0&jscharset=0&cachelife=43200&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%B4%BB%E8%B7%83%E4%BC%9A%E5%91%98%3C%2Fh4%3E%0D%0A%3Cul%20class%3D%5C%22avt_list%20s_clear%5C%22%3E%0D%0A%5Bnode%5D%3Cli%3E%7Bavatarsmall%7D%3C%2Fli%3E%5B%2Fnode%5D%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E&\',\n    \'type\' => \'2\',\n  ),\n  \'边栏模块_热门主题_本版\' => \n  array (\n    \'url\' => \'function=threads&sidestatus=1&maxlength=20&fnamelength=0&messagelength=&startrow=0&picpre=images%2Fcommon%2Fslisticon.gif&items=5&tag=&tids=&special=0&rewardstatus=&digest=0&stick=0&recommend=0&newwindow=1&threadtype=0&highlight=0&orderby=replies&hours=0&jscharset=0&cachelife=1800&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%AC%E7%89%88%E7%83%AD%E9%97%A8%E4%B8%BB%E9%A2%98%3C%2Fh4%3E%0D%0A%3Cul%20class%3D%5C%22textinfolist%5C%22%3E%0D%0A%5Bnode%5D%3Cli%3E%7Bprefix%7D%7Bsubject%7D%3C%2Fli%3E%5B%2Fnode%5D%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E&\',\n    \'type\' => \'0\',\n  ),\n  \'边栏模块_热门主题_今日\' => \n  array (\n    \'url\' => \'function=threads&sidestatus=0&maxlength=20&fnamelength=0&messagelength=&startrow=0&picpre=images%2Fcommon%2Fslisticon.gif&items=5&tag=&tids=&special=0&rewardstatus=&digest=0&stick=0&recommend=0&newwindow=1&threadtype=0&highlight=0&orderby=hourviews&hours=24&jscharset=0&cachelife=1800&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E4%BB%8A%E6%97%A5%E7%83%AD%E9%97%A8%3C%2Fh4%3E%0D%0A%3Cul%20class%3D%5C%22textinfolist%5C%22%3E%0D%0A%5Bnode%5D%3Cli%3E%7Bprefix%7D%7Bsubject%7D%3C%2Fli%3E%5B%2Fnode%5D%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E&\',\n    \'type\' => \'0\',\n  ),\n  \'边栏模块_最新回复\' => \n  array (\n    \'url\' => \'function=threads&sidestatus=0&maxlength=20&fnamelength=0&messagelength=&startrow=0&picpre=images%2Fcommon%2Fslisticon.gif&items=5&tag=&tids=&special=0&rewardstatus=&digest=0&stick=0&recommend=0&newwindow=1&threadtype=0&highlight=0&orderby=lastpost&hours=0&jscharset=0&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%80%E6%96%B0%E5%9B%9E%E5%A4%8D%3C%2Fh4%3E%0D%0A%3Cul%20class%3D%5C%22textinfolist%5C%22%3E%0D%0A%5Bnode%5D%3Cli%3E%7Bprefix%7D%7Bsubject%7D%3C%2Fli%3E%5B%2Fnode%5D%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E&\',\n    \'type\' => \'0\',\n  ),\n  \'边栏模块_最新图片_本版\' => \n  array (\n    \'url\' => \'function=images&sidestatus=1&isimage=1&threadmethod=1&maxwidth=140&maxheight=140&startrow=0&items=5&orderby=dateline&hours=0&digest=0&newwindow=1&jscharset=0&jstemplate=%3Cdiv%20%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%80%E6%96%B0%E5%9B%BE%E7%89%87%3C%2Fh4%3E%0D%0A%3Cscript%20type%3D%5C%22text%2Fjavascript%5C%22%3E%0D%0Avar%20slideSpeed%20%3D%202500%3B%0D%0Avar%20slideImgsize%20%3D%20%5B140%2C140%5D%3B%0D%0Avar%20slideTextBar%20%3D%200%3B%0D%0Avar%20slideBorderColor%20%3D%20%5C%27%23C8DCEC%5C%27%3B%0D%0Avar%20slideBgColor%20%3D%20%5C%27%23FFF%5C%27%3B%0D%0Avar%20slideImgs%20%3D%20new%20Array%28%29%3B%0D%0Avar%20slideImgLinks%20%3D%20new%20Array%28%29%3B%0D%0Avar%20slideImgTexts%20%3D%20new%20Array%28%29%3B%0D%0Avar%20slideSwitchBar%20%3D%201%3B%0D%0Avar%20slideSwitchColor%20%3D%20%5C%27black%5C%27%3B%0D%0Avar%20slideSwitchbgColor%20%3D%20%5C%27white%5C%27%3B%0D%0Avar%20slideSwitchHiColor%20%3D%20%5C%27%23C8DCEC%5C%27%3B%0D%0A%5Bnode%5D%0D%0AslideImgs%5B%7Border%7D%5D%20%3D%20%5C%22%7Bimgfile%7D%5C%22%3B%0D%0AslideImgLinks%5B%7Border%7D%5D%20%3D%20%5C%22%7Blink%7D%5C%22%3B%0D%0AslideImgTexts%5B%7Border%7D%5D%20%3D%20%5C%22%7Bsubject%7D%5C%22%3B%0D%0A%5B%2Fnode%5D%0D%0A%3C%2Fscript%3E%0D%0A%3Cscript%20language%3D%5C%22javascript%5C%22%20type%3D%5C%22text%2Fjavascript%5C%22%20src%3D%5C%22include%2Fjs%2Fslide.js%5C%22%3E%3C%2Fscript%3E%0D%0A%3C%2Fdiv%3E&\',\n    \'type\' => \'4\',\n  ),\n  \'边栏模块_标签\' => \n  array (\n    \'url\' => \'function=module&module=tag.inc.php&settings=a%3A1%3A%7Bs%3A5%3A%22limit%22%3Bs%3A2%3A%2220%22%3B%7D&jscharset=0&cachelife=900&\',\n    \'type\' => \'5\',\n  ),\n  \'边栏模块_会员排行_本月\' => \n  array (\n    \'url\' => \'function=memberrank&startrow=0&items=5&newwindow=1&extcredit=1&orderby=hourposts&hours=720&jscharset=0&cachelife=86400&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%AC%E6%9C%88%E6%8E%92%E8%A1%8C%3C%2Fh4%3E%0D%0A%5Bnode%5D%3Cdiv%20class%3D%5C%22s_clear%5C%22%20style%3D%5C%22margin-bottom%3A%205px%3B%5C%22%3E%3Cdiv%20style%3D%5C%22margin-right%3A%2010px%3B%20float%3A%20left%3B%5C%22%3E%7Bavatarsmall%7D%3C%2Fdiv%3E%3Cp%3E%7Bmember%7D%3C%2Fp%3E%3Cp%3E%E5%8F%91%E5%B8%96%20%7Bvalue%7D%20%E7%AF%87%3C%2Fp%3E%3C%2Fdiv%3E%5B%2Fnode%5D%0D%0A%3C%2Fdiv%3E&\',\n    \'type\' => \'2\',\n  ),\n  \'边栏模块_会员排行_本周\' => \n  array (\n    \'url\' => \'function=memberrank&startrow=0&items=5&newwindow=1&extcredit=1&orderby=hourposts&hours=168&jscharset=0&cachelife=43200&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%AC%E5%91%A8%E6%8E%92%E8%A1%8C%3C%2Fh4%3E%0D%0A%5Bnode%5D%3Cdiv%20class%3D%5C%22s_clear%5C%22%20style%3D%5C%22margin-bottom%3A%205px%3B%5C%22%3E%3Cdiv%20style%3D%5C%22margin-right%3A%2010px%3B%20float%3A%20left%3B%5C%22%3E%7Bavatarsmall%7D%3C%2Fdiv%3E%3Cp%3E%7Bmember%7D%3C%2Fp%3E%3Cp%3E%E5%8F%91%E5%B8%96%20%7Bvalue%7D%20%E7%AF%87%3C%2Fp%3E%3C%2Fdiv%3E%5B%2Fnode%5D%0D%0A%3C%2Fdiv%3E&\',\n    \'type\' => \'2\',\n  ),\n  \'边栏方案_主题列表页默认\' => \n  array (\n    \'url\' => \'function=side&jscharset=&jstemplate=%5Bmodule%5D%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E6%88%91%E7%9A%84%E5%8A%A9%E6%89%8B%5B%2Fmodule%5D%3Chr%20class%3D%22shadowline%22%2F%3E%5Bmodule%5D%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E7%83%AD%E9%97%A8%E4%B8%BB%E9%A2%98_%E6%9C%AC%E7%89%88%5B%2Fmodule%5D%3Chr%20class%3D%22shadowline%22%2F%3E%5Bmodule%5D%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E7%89%88%E5%9D%97%E6%8E%92%E8%A1%8C%5B%2Fmodule%5D&\',\n    \'type\' => \'-2\',\n  ),\n  \'边栏方案_首页默认\' => \n  array (\n    \'url\' => \'function=side&jscharset=&jstemplate=%5Bmodule%5D%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E6%88%91%E7%9A%84%E5%8A%A9%E6%89%8B%5B%2Fmodule%5D%3Chr%20class%3D%22shadowline%22%2F%3E%5Bmodule%5D%E8%81%9A%E5%90%88%E6%A8%A1%E5%9D%97_%E6%96%B0%E5%B8%96%5B%2Fmodule%5D%3Chr%20class%3D%22shadowline%22%2F%3E%5Bmodule%5D%E8%81%9A%E5%90%88%E6%A8%A1%E5%9D%97_%E7%83%AD%E9%97%A8%E4%B8%BB%E9%A2%98%5B%2Fmodule%5D%3Chr%20class%3D%22shadowline%22%2F%3E%5Bmodule%5D%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E6%B4%BB%E8%B7%83%E4%BC%9A%E5%91%98%5B%2Fmodule%5D&\',\n    \'type\' => \'-2\',\n  ),\n  \'聚合模块_新帖\' => \n  array (\n    \'url\' => \'function=module&module=rowcombine.inc.php&settings=a%3A2%3A%7Bs%3A5%3A%22title%22%3Bs%3A12%3A%22%E6%9C%80%E6%96%B0%E5%B8%96%E5%AD%90%22%3Bs%3A4%3A%22data%22%3Bs%3A66%3A%22%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E6%9C%80%E6%96%B0%E4%B8%BB%E9%A2%98%2C%E4%B8%BB%E9%A2%98%0D%0A%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E6%9C%80%E6%96%B0%E5%9B%9E%E5%A4%8D%2C%E5%9B%9E%E5%A4%8D%22%3B%7D&jscharset=0&\',\n    \'type\' => \'5\',\n  ),\n  \'边栏模块_热门主题_本周\' => \n  array (\n    \'url\' => \'function=threads&sidestatus=0&maxlength=20&fnamelength=0&messagelength=&startrow=0&picpre=images%2Fcommon%2Fslisticon.gif&items=5&tag=&tids=&special=0&rewardstatus=&digest=0&stick=0&recommend=0&newwindow=1&threadtype=0&highlight=0&orderby=hourviews&hours=168&jscharset=0&cachelife=43200&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%AC%E5%91%A8%E7%83%AD%E9%97%A8%3C%2Fh4%3E%0D%0A%3Cul%20class%3D%5C%22textinfolist%5C%22%3E%0D%0A%5Bnode%5D%3Cli%3E%7Bprefix%7D%7Bsubject%7D%3C%2Fli%3E%5B%2Fnode%5D%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E&\',\n    \'type\' => \'0\',\n  ),\n  \'边栏模块_会员排行_今日\' => \n  array (\n    \'url\' => \'function=memberrank&startrow=0&items=5&newwindow=1&extcredit=1&orderby=hourposts&hours=24&jscharset=0&cachelife=3600&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E4%BB%8A%E6%97%A5%E6%8E%92%E8%A1%8C%3C%2Fh4%3E%0D%0A%5Bnode%5D%3Cdiv%20class%3D%5C%22s_clear%5C%22%20style%3D%5C%22margin-bottom%3A%205px%3B%5C%22%3E%3Cdiv%20style%3D%5C%22margin-right%3A%2010px%3B%20float%3A%20left%3B%5C%22%3E%7Bavatarsmall%7D%3C%2Fdiv%3E%3Cp%3E%7Bmember%7D%3C%2Fp%3E%3Cp%3E%E5%8F%91%E5%B8%96%20%7Bvalue%7D%20%E7%AF%87%3C%2Fp%3E%3C%2Fdiv%3E%5B%2Fnode%5D%0D%0A%3C%2Fdiv%3E&\',\n    \'type\' => \'2\',\n  ),\n  \'边栏模块_论坛之星\' => \n  array (\n    \'url\' => \'function=memberrank&startrow=0&items=3&newwindow=1&extcredit=1&orderby=hourposts&hours=168&jscharset=0&cachelife=43200&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%20s_clear%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%AC%E5%91%A8%E4%B9%8B%E6%98%9F%3C%2Fh4%3E%0D%0A%5Bnode%5D%0D%0A%5Bshow%3D1%5D%3Cdiv%20style%3D%5C%22clear%3Aboth%5C%22%3E%3Cdiv%20style%3D%5C%22float%3Aleft%3B%20margin-right%3A%2016px%3B%5C%22%3E%7Bavatarsmall%7D%3C%2Fdiv%3E%5B%2Fshow%5D%7Bmember%7D%20%5Bshow%3D1%5D%3Cbr%20%2F%3E%E5%8F%91%E5%B8%96%20%7Bvalue%7D%20%E7%AF%87%3C%2Fdiv%3E%3Cdiv%20style%3D%5C%22clear%3Aboth%3Bmargin-top%3A2px%5C%22%20%2F%3E%3C%2Fdiv%3E%5B%2Fshow%5D%0D%0A%5B%2Fnode%5D%0D%0A%3C%2Fdiv%3E&\',\n    \'type\' => \'2\',\n  ),\n  \'边栏模块_我的助手\' => \n  array (\n    \'url\' => \'function=module&module=assistant.inc.php&settings=N%3B&jscharset=0&cachelife=0\',\n    \'type\' => \'5\',\n  ),\n  \'边栏模块_Google搜索\' => \n  array (\n    \'url\' => \'function=module&module=google.inc.php&settings=a%3A2%3A%7Bs%3A4%3A%22lang%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22default%22%3Bs%3A1%3A%221%22%3B%7D&jscharset=0&cachelife=864000&\',\n    \'type\' => \'5\',\n  ),\n  \'UCHome_最新动态\' => \n  array (\n    \'url\' => \'function=module&module=feed.inc.php&settings=a%3A6%3A%7Bs%3A5%3A%22title%22%3Bs%3A12%3A%22%E6%9C%80%E6%96%B0%E5%8A%A8%E6%80%81%22%3Bs%3A4%3A%22uids%22%3Bs%3A0%3A%22%22%3Bs%3A6%3A%22friend%22%3Bs%3A1%3A%220%22%3Bs%3A5%3A%22start%22%3Bs%3A1%3A%220%22%3Bs%3A5%3A%22limit%22%3Bs%3A2%3A%2210%22%3Bs%3A8%3A%22template%22%3Bs%3A54%3A%22%3Cdiv%20style%3D%5C%22padding-left%3A2px%5C%22%3E%7Btitle_template%7D%3C%2Fdiv%3E%22%3B%7D&jscharset=0&cachelife=0&\',\n    \'type\' => \'5\',\n  ),\n  \'UCHome_最新更新空间\' => \n  array (\n    \'url\' => \'function=module&module=space.inc.php&settings=a%3A17%3A%7Bs%3A5%3A%22title%22%3Bs%3A18%3A%22%E6%9C%80%E6%96%B0%E6%9B%B4%E6%96%B0%E7%A9%BA%E9%97%B4%22%3Bs%3A3%3A%22uid%22%3Bs%3A0%3A%22%22%3Bs%3A14%3A%22startfriendnum%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22endfriendnum%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22startviewnum%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22endviewnum%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22startcredit%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22endcredit%22%3Bs%3A0%3A%22%22%3Bs%3A6%3A%22avatar%22%3Bs%3A2%3A%22-1%22%3Bs%3A10%3A%22namestatus%22%3Bs%3A2%3A%22-1%22%3Bs%3A8%3A%22dateline%22%3Bs%3A1%3A%220%22%3Bs%3A10%3A%22updatetime%22%3Bs%3A1%3A%220%22%3Bs%3A5%3A%22order%22%3Bs%3A10%3A%22updatetime%22%3Bs%3A2%3A%22sc%22%3Bs%3A4%3A%22DESC%22%3Bs%3A5%3A%22start%22%3Bs%3A1%3A%220%22%3Bs%3A5%3A%22limit%22%3Bs%3A2%3A%2210%22%3Bs%3A8%3A%22template%22%3Bs%3A267%3A%22%3Ctable%3E%0D%0A%3Ctr%3E%0D%0A%3Ctd%20width%3D%5C%2250%5C%22%20rowspan%3D%5C%222%5C%22%3E%3Ca%20href%3D%5C%22%7Buserlink%7D%5C%22%20target%3D%5C%22_blank%5C%22%3E%3Cimg%20src%3D%5C%22%7Bphoto%7D%5C%22%20%2F%3E%3C%2Fa%3E%3C%2Ftd%3E%0D%0A%3Ctd%3E%3Ca%20href%3D%5C%22%7Buserlink%7D%5C%22%20%20target%3D%5C%22_blank%5C%22%20style%3D%5C%22text-decoration%3Anone%3B%5C%22%3E%7Busername%7D%3C%2Fa%3E%3C%2Ftd%3E%0D%0A%3C%2Ftr%3E%0D%0A%3Ctr%3E%3Ctd%3E%7Bupdatetime%7D%3C%2Ftd%3E%3C%2Ftr%3E%0D%0A%3C%2Ftable%3E%22%3B%7D&jscharset=0&cachelife=0&\',\n    \'type\' => \'5\',\n  ),\n  \'UCHome_最新记录\' => \n  array (\n    \'url\' => \'function=module&module=doing.inc.php&settings=a%3A6%3A%7Bs%3A5%3A%22title%22%3Bs%3A12%3A%22%E6%9C%80%E6%96%B0%E8%AE%B0%E5%BD%95%22%3Bs%3A3%3A%22uid%22%3Bs%3A0%3A%22%22%3Bs%3A4%3A%22mood%22%3Bs%3A1%3A%220%22%3Bs%3A5%3A%22start%22%3Bs%3A1%3A%220%22%3Bs%3A5%3A%22limit%22%3Bs%3A2%3A%2210%22%3Bs%3A8%3A%22template%22%3Bs%3A361%3A%22%0D%0A%3Cdiv%20style%3D%5C%22padding%3A0%200%205px%200%3B%5C%22%3E%0D%0A%3Ca%20href%3D%5C%22%7Buserlink%7D%5C%22%20target%3D%5C%22_blank%5C%22%3E%3Cimg%20src%3D%5C%22%7Bphoto%7D%5C%22%20width%3D%5C%2218%5C%22%20height%3D%5C%2218%5C%22%20align%3D%5C%22absmiddle%5C%22%3E%3C%2Fa%3E%20%3Ca%20href%3D%5C%22%7Buserlink%7D%5C%22%20%20target%3D%5C%22_blank%5C%22%3E%7Busername%7D%3C%2Fa%3E%EF%BC%9A%0D%0A%3C%2Fdiv%3E%0D%0A%3Cdiv%20style%3D%5C%22padding%3A0%200%205px%2020px%3B%5C%22%3E%0D%0A%3Ca%20href%3D%5C%22%7Blink%7D%5C%22%20style%3D%5C%22color%3A%23333%3Btext-decoration%3Anone%3B%5C%22%20target%3D%5C%22_blank%5C%22%3E%7Bmessage%7D%3C%2Fa%3E%0D%0A%3C%2Fdiv%3E%22%3B%7D&jscharset=0&cachelife=0&\',\n    \'type\' => \'5\',\n  ),\n  \'UCHome_竞价排名\' => \n  array (\n    \'url\' => \'function=module&module=html.inc.php&settings=a%3A3%3A%7Bs%3A4%3A%22type%22%3Bs%3A1%3A%220%22%3Bs%3A4%3A%22code%22%3Bs%3A27%3A%22%3Cdiv%20id%3D%5C%22sidefeed%5C%22%3E%3C%2Fdiv%3E%22%3Bs%3A4%3A%22side%22%3Bs%3A1%3A%220%22%3B%7D&jscharset=0&cachelife=864000&\',\n    \'type\' => \'5\',\n  ),\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('medals', '1', '1387876493', '0', '$_DCACHE[\'medals\'] = array (\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('magics', '1', '1387876493', '0', '$_DCACHE[\'magics\'] = array (\n  1 => \n  array (\n    \'identifier\' => \'CCK\',\n    \'available\' => \'1\',\n    \'name\' => \'变色卡\',\n    \'description\' => \'可以变换主题的颜色,并保存24小时\',\n    \'weight\' => \'20\',\n    \'price\' => \'10\',\n    \'type\' => \'1\',\n  ),\n  2 => \n  array (\n    \'identifier\' => \'MOK\',\n    \'available\' => \'1\',\n    \'name\' => \'金钱卡\',\n    \'description\' => \'可以随机获得一些金币\',\n    \'weight\' => \'30\',\n    \'price\' => \'10\',\n    \'type\' => \'3\',\n  ),\n  3 => \n  array (\n    \'identifier\' => \'SEK\',\n    \'available\' => \'1\',\n    \'name\' => \'IP卡\',\n    \'description\' => \'可以查看帖子作者的IP\',\n    \'weight\' => \'30\',\n    \'price\' => \'15\',\n    \'type\' => \'1\',\n  ),\n  4 => \n  array (\n    \'identifier\' => \'UPK\',\n    \'available\' => \'1\',\n    \'name\' => \'提升卡\',\n    \'description\' => \'可以提升某个主题\',\n    \'weight\' => \'30\',\n    \'price\' => \'10\',\n    \'type\' => \'1\',\n  ),\n  5 => \n  array (\n    \'identifier\' => \'TOK\',\n    \'available\' => \'1\',\n    \'name\' => \'置顶卡\',\n    \'description\' => \'可以将主题置顶24小时\',\n    \'weight\' => \'40\',\n    \'price\' => \'20\',\n    \'type\' => \'1\',\n  ),\n  6 => \n  array (\n    \'identifier\' => \'REK\',\n    \'available\' => \'1\',\n    \'name\' => \'悔悟卡\',\n    \'description\' => \'可以删除自己的帖子\',\n    \'weight\' => \'30\',\n    \'price\' => \'10\',\n    \'type\' => \'1\',\n  ),\n  7 => \n  array (\n    \'identifier\' => \'RTK\',\n    \'available\' => \'1\',\n    \'name\' => \'狗仔卡\',\n    \'description\' => \'查看某个用户是否在线\',\n    \'weight\' => \'30\',\n    \'price\' => \'15\',\n    \'type\' => \'2\',\n  ),\n  8 => \n  array (\n    \'identifier\' => \'CLK\',\n    \'available\' => \'1\',\n    \'name\' => \'沉默卡\',\n    \'description\' => \'24小时内不能回复\',\n    \'weight\' => \'30\',\n    \'price\' => \'15\',\n    \'type\' => \'1\',\n  ),\n  9 => \n  array (\n    \'identifier\' => \'OPK\',\n    \'available\' => \'1\',\n    \'name\' => \'喧嚣卡\',\n    \'description\' => \'使贴子可以回复\',\n    \'weight\' => \'30\',\n    \'price\' => \'15\',\n    \'type\' => \'1\',\n  ),\n  10 => \n  array (\n    \'identifier\' => \'YSK\',\n    \'available\' => \'1\',\n    \'name\' => \'隐身卡\',\n    \'description\' => \'可以将自己的帖子匿名\',\n    \'weight\' => \'30\',\n    \'price\' => \'20\',\n    \'type\' => \'1\',\n  ),\n  11 => \n  array (\n    \'identifier\' => \'CBK\',\n    \'available\' => \'1\',\n    \'name\' => \'恢复卡\',\n    \'description\' => \'将匿名恢复为正常显示的用户名,匿名终结者\',\n    \'weight\' => \'20\',\n    \'price\' => \'15\',\n    \'type\' => \'1\',\n  ),\n  12 => \n  array (\n    \'identifier\' => \'MVK\',\n    \'available\' => \'1\',\n    \'name\' => \'移动卡\',\n    \'description\' => \'可将自已的帖子移动到其他版面（隐含、特殊限定版面除外）\',\n    \'weight\' => \'50\',\n    \'price\' => \'50\',\n    \'type\' => \'1\',\n  ),\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('modreasons', '1', '1387876493', '0', '$_DCACHE[\'modreasons\'] = array (\n  0 => \'广告/SPAM\',\n  1 => \'恶意灌水\',\n  2 => \'违规内容\',\n  3 => \'文不对题\',\n  4 => \'重复发帖\',\n  5 => \'\',\n  6 => \'我很赞同\',\n  7 => \'精品文章\',\n  8 => \'原创内容\',\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('stamptypeid', '1', '1387876493', '0', '$_DCACHE[\'stamptypeid\'] = array (\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('advs_archiver', '1', '1387876493', '0', '$_DCACHE[\'advs\'] = array (\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('advs_register', '1', '1387876493', '0', '$_DCACHE[\'advs\'] = array (\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('ipctrl', '1', '1387876493', '0', '$_DCACHE[\'ipctrl\'] = array (\n  \'ipregctrl\' => \'\',\n  \'ipverifywhite\' => \'\',\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('faqs', '1', '1387876493', '0', '$_DCACHE[\'faqs\'] = array (\n  \'login\' => \n  array (\n    \'fpid\' => \'1\',\n    \'id\' => \'3\',\n    \'keyword\' => \'登录帮助\',\n  ),\n  \'discuzcode\' => \n  array (\n    \'fpid\' => \'5\',\n    \'id\' => \'18\',\n    \'keyword\' => \'Discuz!代码\',\n  ),\n  \'smilies\' => \n  array (\n    \'fpid\' => \'5\',\n    \'id\' => \'32\',\n    \'keyword\' => \'表情\',\n  ),\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('secqaa', '1', '1387876493', '0', '$_DCACHE[\'secqaa\'] = array (\n  1 => NULL,\n  2 => NULL,\n  3 => NULL,\n  4 => NULL,\n  5 => NULL,\n  6 => NULL,\n  7 => NULL,\n  8 => NULL,\n  9 => NULL,\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('censor', '1', '1387876493', '0', '$_DCACHE[\'censor\'] = array (\n  \'filter\' => \n  array (\n  ),\n  \'banned\' => \'\',\n  \'mod\' => \'\',\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('ipbanned', '1', '1387876493', '0', '$_DCACHE[\'ipbanned\'] = array (\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('smilies_js', '1', '1387876493', '0', '$_DCACHE[\'smilies_js\'] = array (\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('forumstick', '1', '1387876493', '0', '$_DCACHE[\'forumstick\'] = array (\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('announcements', '1', '1387876493', '0', '$_DCACHE[\'announcements\'] = array (\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('onlinelist', '1', '1387876493', '0', '$_DCACHE[\'onlinelist\'] = array (\n  \'legend\' => \'<img src=\"images/common/online_admin.gif\" /> 管理员 &nbsp; &nbsp; &nbsp; <img src=\"images/common/online_supermod.gif\" /> 超级版主 &nbsp; &nbsp; &nbsp; <img src=\"images/common/online_moderator.gif\" /> 版主 &nbsp; &nbsp; &nbsp; <img src=\"images/common/online_member.gif\" /> 会员 &nbsp; &nbsp; &nbsp; \',\n  1 => \'online_admin.gif\',\n  2 => \'online_supermod.gif\',\n  3 => \'online_moderator.gif\',\n  0 => \'online_member.gif\',\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('forumlinks', '1', '1387876493', '0', '$_DCACHE[\'forumlinks\'] = array (\n  0 => \'<li><div class=\"forumlogo\"><img src=\"images/logo.gif\" border=\"0\" alt=\"Discuz! 官方论坛\" /></div><div class=\"forumcontent\"><h5><a href=\"http://www.discuz.net\" target=\"_blank\">Discuz! 官方论坛</a></h5><p>提供最新 Discuz! 产品新闻、软件下载与技术交流</p></div>\',\n  1 => \'\',\n  2 => \'\',\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('advs_index', '1', '1387876493', '0', '$_DCACHE[\'advs\'] = array (\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('heats', '1', '1387876493', '0', '$_DCACHE[\'heats\'] = array (\n  \'expiration\' => 0,\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('smilies', '1', '1387876493', '0', '$_DCACHE[\'smilies\'] = array (\n  \'searcharray\' => \n  array (\n    13 => \'/\\\\:loveliness\\\\:/\',\n    23 => \'/\\\\:handshake/\',\n    20 => \'/\\\\:victory\\\\:/\',\n    55 => \'/\\\\{\\\\:3_55\\\\:\\\\}/\',\n    32 => \'/\\\\{\\\\:2_32\\\\:\\\\}/\',\n    64 => \'/\\\\{\\\\:3_64\\\\:\\\\}/\',\n    41 => \'/\\\\{\\\\:3_41\\\\:\\\\}/\',\n    18 => \'/\\\\:sleepy\\\\:/\',\n    50 => \'/\\\\{\\\\:3_50\\\\:\\\\}/\',\n    27 => \'/\\\\{\\\\:2_27\\\\:\\\\}/\',\n    59 => \'/\\\\{\\\\:3_59\\\\:\\\\}/\',\n    36 => \'/\\\\{\\\\:2_36\\\\:\\\\}/\',\n    45 => \'/\\\\{\\\\:3_45\\\\:\\\\}/\',\n    54 => \'/\\\\{\\\\:3_54\\\\:\\\\}/\',\n    31 => \'/\\\\{\\\\:2_31\\\\:\\\\}/\',\n    63 => \'/\\\\{\\\\:3_63\\\\:\\\\}/\',\n    40 => \'/\\\\{\\\\:2_40\\\\:\\\\}/\',\n    17 => \'/\\\\:shutup\\\\:/\',\n    49 => \'/\\\\{\\\\:3_49\\\\:\\\\}/\',\n    26 => \'/\\\\{\\\\:2_26\\\\:\\\\}/\',\n    58 => \'/\\\\{\\\\:3_58\\\\:\\\\}/\',\n    35 => \'/\\\\{\\\\:2_35\\\\:\\\\}/\',\n    44 => \'/\\\\{\\\\:3_44\\\\:\\\\}/\',\n    53 => \'/\\\\{\\\\:3_53\\\\:\\\\}/\',\n    30 => \'/\\\\{\\\\:2_30\\\\:\\\\}/\',\n    62 => \'/\\\\{\\\\:3_62\\\\:\\\\}/\',\n    39 => \'/\\\\{\\\\:2_39\\\\:\\\\}/\',\n    48 => \'/\\\\{\\\\:3_48\\\\:\\\\}/\',\n    25 => \'/\\\\{\\\\:2_25\\\\:\\\\}/\',\n    57 => \'/\\\\{\\\\:3_57\\\\:\\\\}/\',\n    34 => \'/\\\\{\\\\:2_34\\\\:\\\\}/\',\n    43 => \'/\\\\{\\\\:3_43\\\\:\\\\}/\',\n    52 => \'/\\\\{\\\\:3_52\\\\:\\\\}/\',\n    29 => \'/\\\\{\\\\:2_29\\\\:\\\\}/\',\n    61 => \'/\\\\{\\\\:3_61\\\\:\\\\}/\',\n    38 => \'/\\\\{\\\\:2_38\\\\:\\\\}/\',\n    47 => \'/\\\\{\\\\:3_47\\\\:\\\\}/\',\n    56 => \'/\\\\{\\\\:3_56\\\\:\\\\}/\',\n    33 => \'/\\\\{\\\\:2_33\\\\:\\\\}/\',\n    42 => \'/\\\\{\\\\:3_42\\\\:\\\\}/\',\n    51 => \'/\\\\{\\\\:3_51\\\\:\\\\}/\',\n    28 => \'/\\\\{\\\\:2_28\\\\:\\\\}/\',\n    60 => \'/\\\\{\\\\:3_60\\\\:\\\\}/\',\n    37 => \'/\\\\{\\\\:2_37\\\\:\\\\}/\',\n    46 => \'/\\\\{\\\\:3_46\\\\:\\\\}/\',\n    16 => \'/\\\\:dizzy\\\\:/\',\n    15 => \'/\\\\:curse\\\\:/\',\n    22 => \'/\\\\:kiss\\\\:/\',\n    21 => \'/\\\\:time\\\\:/\',\n    24 => \'/\\\\:call\\\\:/\',\n    14 => \'/\\\\:funk\\\\:/\',\n    19 => \'/\\\\:hug\\\\:/\',\n    12 => \'/\\\\:lol/\',\n    4 => \'/\\\\:\\\'\\\\(/\',\n    9 => \'/;P/\',\n    8 => \'/\\\\:\\\\$/\',\n    3 => \'/\\\\:D/\',\n    7 => \'/\\\\:P/\',\n    2 => \'/\\\\:\\\\(/\',\n    11 => \'/\\\\:Q/\',\n    6 => \'/\\\\:o/\',\n    1 => \'/\\\\:\\\\)/\',\n    10 => \'/\\\\:L/\',\n    5 => \'/\\\\:@/\',\n  ),\n  \'replacearray\' => \n  array (\n    13 => \'loveliness.gif\',\n    23 => \'handshake.gif\',\n    20 => \'victory.gif\',\n    55 => \'15.gif\',\n    32 => \'08.gif\',\n    64 => \'24.gif\',\n    41 => \'01.gif\',\n    18 => \'sleepy.gif\',\n    50 => \'10.gif\',\n    27 => \'03.gif\',\n    59 => \'19.gif\',\n    36 => \'12.gif\',\n    45 => \'05.gif\',\n    54 => \'14.gif\',\n    31 => \'07.gif\',\n    63 => \'23.gif\',\n    40 => \'16.gif\',\n    17 => \'shutup.gif\',\n    49 => \'09.gif\',\n    26 => \'02.gif\',\n    58 => \'18.gif\',\n    35 => \'11.gif\',\n    44 => \'04.gif\',\n    53 => \'13.gif\',\n    30 => \'06.gif\',\n    62 => \'22.gif\',\n    39 => \'15.gif\',\n    48 => \'08.gif\',\n    25 => \'01.gif\',\n    57 => \'17.gif\',\n    34 => \'10.gif\',\n    43 => \'03.gif\',\n    52 => \'12.gif\',\n    29 => \'05.gif\',\n    61 => \'21.gif\',\n    38 => \'14.gif\',\n    47 => \'07.gif\',\n    56 => \'16.gif\',\n    33 => \'09.gif\',\n    42 => \'02.gif\',\n    51 => \'11.gif\',\n    28 => \'04.gif\',\n    60 => \'20.gif\',\n    37 => \'13.gif\',\n    46 => \'06.gif\',\n    16 => \'dizzy.gif\',\n    15 => \'curse.gif\',\n    22 => \'kiss.gif\',\n    21 => \'time.gif\',\n    24 => \'call.gif\',\n    14 => \'funk.gif\',\n    19 => \'hug.gif\',\n    12 => \'lol.gif\',\n    4 => \'cry.gif\',\n    9 => \'titter.gif\',\n    8 => \'shy.gif\',\n    3 => \'biggrin.gif\',\n    7 => \'tongue.gif\',\n    2 => \'sad.gif\',\n    11 => \'mad.gif\',\n    6 => \'shocked.gif\',\n    1 => \'smile.gif\',\n    10 => \'sweat.gif\',\n    5 => \'huffy.gif\',\n  ),\n  \'typearray\' => \n  array (\n    13 => \'1\',\n    23 => \'1\',\n    20 => \'1\',\n    55 => \'3\',\n    32 => \'2\',\n    64 => \'3\',\n    41 => \'3\',\n    18 => \'1\',\n    50 => \'3\',\n    27 => \'2\',\n    59 => \'3\',\n    36 => \'2\',\n    45 => \'3\',\n    54 => \'3\',\n    31 => \'2\',\n    63 => \'3\',\n    40 => \'2\',\n    17 => \'1\',\n    49 => \'3\',\n    26 => \'2\',\n    58 => \'3\',\n    35 => \'2\',\n    44 => \'3\',\n    53 => \'3\',\n    30 => \'2\',\n    62 => \'3\',\n    39 => \'2\',\n    48 => \'3\',\n    25 => \'2\',\n    57 => \'3\',\n    34 => \'2\',\n    43 => \'3\',\n    52 => \'3\',\n    29 => \'2\',\n    61 => \'3\',\n    38 => \'2\',\n    47 => \'3\',\n    56 => \'3\',\n    33 => \'2\',\n    42 => \'3\',\n    51 => \'3\',\n    28 => \'2\',\n    60 => \'3\',\n    37 => \'2\',\n    46 => \'3\',\n    16 => \'1\',\n    15 => \'1\',\n    22 => \'1\',\n    21 => \'1\',\n    24 => \'1\',\n    14 => \'1\',\n    19 => \'1\',\n    12 => \'1\',\n    4 => \'1\',\n    9 => \'1\',\n    8 => \'1\',\n    3 => \'1\',\n    7 => \'1\',\n    2 => \'1\',\n    11 => \'1\',\n    6 => \'1\',\n    1 => \'1\',\n    10 => \'1\',\n    5 => \'1\',\n  ),\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('announcements_forum', '1', '1387876493', '0', '$_DCACHE[\'announcements_forum\'] = array (\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('globalstick', '1', '1387876493', '0', '$_DCACHE[\'globalstick\'] = array (\n  \'global\' => \n  array (\n    \'tids\' => 0,\n    \'count\' => 0,\n  ),\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('advs_forumdisplay', '1', '1387876493', '0', '$_DCACHE[\'advs\'] = array (\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('smileytypes', '1', '1387876493', '0', '$_DCACHE[\'smileytypes\'] = array (\n  1 => \n  array (\n    \'name\' => \'默认\',\n    \'directory\' => \'default\',\n  ),\n  2 => \n  array (\n    \'name\' => \'酷猴\',\n    \'directory\' => \'coolmonkey\',\n  ),\n  3 => \n  array (\n    \'name\' => \'呆呆男\',\n    \'directory\' => \'grapeman\',\n  ),\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('bbcodes', '1', '1387876493', '0', '$_DCACHE[\'bbcodes\'] = array (\n  \'searcharray\' => \n  array (\n    0 => \'/\\\\[qq]([^\"\\\\[]+?)\\\\[\\\\/qq\\\\]/is\',\n  ),\n  \'replacearray\' => \n  array (\n    0 => \'<a href=\"http://wpa.qq.com/msgrd?V=1&Uin=\\\\1&amp;Site=[Discuz!]&amp;Menu=yes\" target=\"_blank\"><img src=\"http://wpa.qq.com/pa?p=1:\\\\1:1\" border=\"0\"></a>\',\n  ),\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('advs_viewthread', '1', '1387876493', '0', '$_DCACHE[\'advs\'] = array (\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('tags_viewthread', '1', '1387876493', '0', '$_DCACHE[\'tags\'] = array (\n  1 => \'[\\\'\\\']\',\n  0 => \'[\\\'\\\']\',\n  2 => \'0\',\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('custominfo', '1', '1387876493', '0', '$_DCACHE[\'custominfo\'] = array (\n  \'customauthorinfo\' => \n  array (\n    2 => \'<dt>UID</dt><dd>$post[uid]&nbsp;</dd><dt>帖子</dt><dd>$post[posts]&nbsp;</dd><dt>精华</dt><dd>$post[digestposts]&nbsp;</dd><dt>积分</dt><dd>$post[credits]&nbsp;</dd><dt>阅读权限</dt><dd>$post[readaccess]&nbsp;</dd>\".($post[location] ? \"<dt>来自</dt><dd>$post[location]&nbsp;</dd>\" : \"\").\"<dt>在线时间</dt><dd>$post[oltime] 小时&nbsp;</dd><dt>注册时间</dt><dd>$post[regdate]&nbsp;</dd><dt>最后登录</dt><dd>$post[lastdate]&nbsp;</dd>\',\n    1 => NULL,\n  ),\n  \'fieldsadd\' => \'\',\n  \'profilefields\' => \n  array (\n  ),\n  \'postno\' => \n  array (\n    0 => \'<sup>#</sup>\',\n  ),\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('groupicon', '1', '1387876493', '0', '$_DCACHE[\'groupicon\'] = array (\n  1 => \'images/common/online_admin.gif\',\n  2 => \'images/common/online_supermod.gif\',\n  3 => \'images/common/online_moderator.gif\',\n  0 => \'images/common/online_member.gif\',\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('focus', '1', '1387876493', '0', '$_DCACHE[\'focus\'] = array (\n  \'title\' => NULL,\n  \'data\' => \n  array (\n  ),\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('bbcodes_display', '1', '1387876493', '0', '$_DCACHE[\'bbcodes_display\'] = array (\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('smileycodes', '1', '1387876493', '0', '$_DCACHE[\'smileycodes\'] = array (\n  1 => \':)\',\n  2 => \':(\',\n  3 => \':D\',\n  4 => \':\\\'(\',\n  5 => \':@\',\n  6 => \':o\',\n  7 => \':P\',\n  8 => \':$\',\n  9 => \';P\',\n  10 => \':L\',\n  11 => \':Q\',\n  12 => \':lol\',\n  13 => \':loveliness:\',\n  14 => \':funk:\',\n  15 => \':curse:\',\n  16 => \':dizzy:\',\n  17 => \':shutup:\',\n  18 => \':sleepy:\',\n  19 => \':hug:\',\n  20 => \':victory:\',\n  21 => \':time:\',\n  22 => \':kiss:\',\n  23 => \':handshake\',\n  24 => \':call:\',\n  25 => \'{:2_25:}\',\n  26 => \'{:2_26:}\',\n  27 => \'{:2_27:}\',\n  28 => \'{:2_28:}\',\n  29 => \'{:2_29:}\',\n  30 => \'{:2_30:}\',\n  31 => \'{:2_31:}\',\n  32 => \'{:2_32:}\',\n  33 => \'{:2_33:}\',\n  34 => \'{:2_34:}\',\n  35 => \'{:2_35:}\',\n  36 => \'{:2_36:}\',\n  37 => \'{:2_37:}\',\n  38 => \'{:2_38:}\',\n  39 => \'{:2_39:}\',\n  40 => \'{:2_40:}\',\n  41 => \'{:3_41:}\',\n  42 => \'{:3_42:}\',\n  43 => \'{:3_43:}\',\n  44 => \'{:3_44:}\',\n  45 => \'{:3_45:}\',\n  46 => \'{:3_46:}\',\n  47 => \'{:3_47:}\',\n  48 => \'{:3_48:}\',\n  49 => \'{:3_49:}\',\n  50 => \'{:3_50:}\',\n  51 => \'{:3_51:}\',\n  52 => \'{:3_52:}\',\n  53 => \'{:3_53:}\',\n  54 => \'{:3_54:}\',\n  55 => \'{:3_55:}\',\n  56 => \'{:3_56:}\',\n  57 => \'{:3_57:}\',\n  58 => \'{:3_58:}\',\n  59 => \'{:3_59:}\',\n  60 => \'{:3_60:}\',\n  61 => \'{:3_61:}\',\n  62 => \'{:3_62:}\',\n  63 => \'{:3_63:}\',\n  64 => \'{:3_64:}\',\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('domainwhitelist', '1', '1387876493', '0', '$_DCACHE[\'domainwhitelist\'] = array (\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('fields_required', '1', '1387876493', '0', '$_DCACHE[\'fields_required\'] = array (\n);\n\n');
INSERT INTO `cdb_caches` VALUES ('fields_optional', '1', '1387876493', '0', '$_DCACHE[\'fields_optional\'] = array (\n);\n\n');

-- ----------------------------
-- Table structure for `cdb_creditslog`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_creditslog`;
CREATE TABLE `cdb_creditslog` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `fromto` char(15) NOT NULL default '',
  `sendcredits` tinyint(1) NOT NULL default '0',
  `receivecredits` tinyint(1) NOT NULL default '0',
  `send` int(10) unsigned NOT NULL default '0',
  `receive` int(10) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `operation` char(3) NOT NULL default '',
  KEY `uid` (`uid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_creditslog
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_crons`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_crons`;
CREATE TABLE `cdb_crons` (
  `cronid` smallint(6) unsigned NOT NULL auto_increment,
  `available` tinyint(1) NOT NULL default '0',
  `type` enum('user','system') NOT NULL default 'user',
  `name` char(50) NOT NULL default '',
  `filename` char(50) NOT NULL default '',
  `lastrun` int(10) unsigned NOT NULL default '0',
  `nextrun` int(10) unsigned NOT NULL default '0',
  `weekday` tinyint(1) NOT NULL default '0',
  `day` tinyint(2) NOT NULL default '0',
  `hour` tinyint(2) NOT NULL default '0',
  `minute` char(36) NOT NULL default '',
  PRIMARY KEY  (`cronid`),
  KEY `nextrun` (`available`,`nextrun`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_crons
-- ----------------------------
INSERT INTO `cdb_crons` VALUES ('1', '1', 'system', '清空今日发帖数', 'todayposts_daily.inc.php', '0', '1387880075', '-1', '-1', '0', '0');
INSERT INTO `cdb_crons` VALUES ('2', '1', 'system', '清空本月在线时间', 'onlinetime_monthly.inc.php', '0', '1387880075', '-1', '1', '0', '0');
INSERT INTO `cdb_crons` VALUES ('3', '1', 'system', '每日数据清理', 'cleanup_daily.inc.php', '0', '1387880075', '-1', '-1', '5', '30');
INSERT INTO `cdb_crons` VALUES ('4', '1', 'system', '生日统计与邮件祝福', 'birthdays_daily.inc.php', '0', '1387880075', '-1', '-1', '0', '0');
INSERT INTO `cdb_crons` VALUES ('5', '1', 'system', '主题回复通知', 'announcements_daily.inc.php', '0', '1387880075', '-1', '-1', '0', '0');
INSERT INTO `cdb_crons` VALUES ('6', '1', 'system', '每日公告清理', 'threadexpiries_hourly.inc.php', '0', '1387880075', '-1', '-1', '5', '0');
INSERT INTO `cdb_crons` VALUES ('7', '1', 'system', '限时操作清理', 'promotions_hourly.inc.php', '0', '1387880075', '-1', '-1', '0', '00');
INSERT INTO `cdb_crons` VALUES ('8', '1', 'system', '论坛推广清理', 'cleanup_monthly.inc.php', '0', '1387880075', '-1', '1', '6', '00');
INSERT INTO `cdb_crons` VALUES ('9', '1', 'system', '每月主题清理', 'magics_daily.inc.php', '0', '1387880075', '-1', '-1', '0', '0');
INSERT INTO `cdb_crons` VALUES ('10', '1', 'system', '每日 X-Space更新用户', 'secqaa_daily.inc.php', '0', '1387880075', '-1', '-1', '6', '0');
INSERT INTO `cdb_crons` VALUES ('11', '1', 'system', '每周主题更新', 'tags_daily.inc.php', '0', '1387880075', '1', '-1', '1', '0');
INSERT INTO `cdb_crons` VALUES ('12', '1', 'system', '每日勋章更新', 'medals_daily.inc.php', '0', '1387880075', '-1', '-1', '0', '0');

-- ----------------------------
-- Table structure for `cdb_debateposts`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_debateposts`;
CREATE TABLE `cdb_debateposts` (
  `pid` int(10) unsigned NOT NULL default '0',
  `stand` tinyint(1) NOT NULL default '0',
  `tid` mediumint(8) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `voters` mediumint(10) unsigned NOT NULL default '0',
  `voterids` text NOT NULL,
  PRIMARY KEY  (`pid`),
  KEY `pid` (`pid`,`stand`),
  KEY `tid` (`tid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_debateposts
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_debates`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_debates`;
CREATE TABLE `cdb_debates` (
  `tid` mediumint(8) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `starttime` int(10) unsigned NOT NULL default '0',
  `endtime` int(10) unsigned NOT NULL default '0',
  `affirmdebaters` mediumint(8) unsigned NOT NULL default '0',
  `negadebaters` mediumint(8) unsigned NOT NULL default '0',
  `affirmvotes` mediumint(8) unsigned NOT NULL default '0',
  `negavotes` mediumint(8) unsigned NOT NULL default '0',
  `umpire` varchar(15) NOT NULL default '',
  `winner` tinyint(1) NOT NULL default '0',
  `bestdebater` varchar(50) NOT NULL default '',
  `affirmpoint` text NOT NULL,
  `negapoint` text NOT NULL,
  `umpirepoint` text NOT NULL,
  `affirmvoterids` text NOT NULL,
  `negavoterids` text NOT NULL,
  `affirmreplies` mediumint(8) unsigned NOT NULL,
  `negareplies` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY  (`tid`),
  KEY `uid` (`uid`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_debates
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_failedlogins`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_failedlogins`;
CREATE TABLE `cdb_failedlogins` (
  `ip` char(15) NOT NULL default '',
  `count` tinyint(1) unsigned NOT NULL default '0',
  `lastupdate` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_failedlogins
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_faqs`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_faqs`;
CREATE TABLE `cdb_faqs` (
  `id` smallint(6) NOT NULL auto_increment,
  `fpid` smallint(6) unsigned NOT NULL default '0',
  `displayorder` tinyint(3) NOT NULL default '0',
  `identifier` varchar(20) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `displayplay` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_faqs
-- ----------------------------
INSERT INTO `cdb_faqs` VALUES ('1', '0', '1', '', '', '用户须知', '');
INSERT INTO `cdb_faqs` VALUES ('2', '1', '1', '', '', '我必须要注册吗？', '这取决于管理员如何设置 Discuz! 论坛的用户组权限选项，您甚至有可能必须在注册成正式用户后后才能浏览帖子。当然，在通常情况下，您至少应该是正式用户才能发新帖和回复已有帖子。请 <a href=\"register.php\" target=\"_blank\">点击这里</a> 免费注册成为我们的新用户！\r\n<br /><br />强烈建议您注册，这样会得到很多以游客身份无法实现的功能。');
INSERT INTO `cdb_faqs` VALUES ('3', '1', '2', 'login', '登录帮助', '我如何登录论坛？', '如果您已经注册成为该论坛的会员，哪么您只要通过访问页面右上的<a href=\"logging.php?action=login\" target=\"_blank\">登录</a>，进入登陆界面填写正确的用户名和密码（如果您设有安全提问，请选择正确的安全提问并输入对应的答案），点击“提交”即可完成登陆如果您还未注册请点击这里。<br /><br />\r\n如果需要保持登录，请选择相应的 Cookie 时间，在此时间范围内您可以不必输入密码而保持上次的登录状态。');
INSERT INTO `cdb_faqs` VALUES ('4', '1', '3', '', '', '忘记我的登录密码，怎么办？', '当您忘记了用户登录的密码，您可以通过注册时填写的电子邮箱重新设置一个新的密码。点击登录页面中的 <a href=\"member.php?action=lostpasswd\" target=\"_blank\">取回密码</a>，按照要求填写您的个人信息，系统将自动发送重置密码的邮件到您注册时填写的 Email 信箱中。如果您的 Email 已失效或无法收到信件，请与论坛管理员联系。');
INSERT INTO `cdb_faqs` VALUES ('5', '0', '2', '', '', '帖子相关操作', '');
INSERT INTO `cdb_faqs` VALUES ('6', '0', '3', '', '', '基本功能操作', '');
INSERT INTO `cdb_faqs` VALUES ('7', '0', '4', '', '', '其他相关问题', '');
INSERT INTO `cdb_faqs` VALUES ('8', '1', '4', '', '', '我如何使用个性化头像', '在<a href=\"memcp.php\" target=\"_blank\">控制面板</a>中的“编辑个人资料”，有一个“头像”的选项，可以使用论坛自带的头像或者自定义的头像。');
INSERT INTO `cdb_faqs` VALUES ('9', '1', '5', '', '', '我如何修改登录密码', '在<a href=\"memcp.php\" target=\"_blank\">控制面板</a>中的“编辑个人资料”，填写“原密码”，“新密码”，“确认新密码”。点击“提交”，即可修改。');
INSERT INTO `cdb_faqs` VALUES ('10', '1', '6', '', '', '我如何使用个性化签名和昵称', '在<a href=\"memcp.php\" target=\"_blank\">控制面板</a>中的“编辑个人资料”，有一个“昵称”和“个人签名”的选项，可以在此设置。');
INSERT INTO `cdb_faqs` VALUES ('11', '5', '1', '', '', '我如何发表新主题', '在论坛版块中，点“新帖”，如果有权限，您可以看到有“投票，悬赏，活动，交易”，点击即可进入功能齐全的发帖界面。\r\n<br /><br />注意：一般论坛都设置为高级别的用户组才能发布这四类特殊主题。如发布普通主题，直接点击“新帖”，当然您也可以使用版块下面的“快速发帖”发表新帖(如果此选项打开)。一般论坛都设置为需要登录后才能发帖。');
INSERT INTO `cdb_faqs` VALUES ('12', '5', '2', '', '', '我如何发表回复', '回复有分三种：第一、贴子最下方的快速回复； 第二、在您想回复的楼层点击右下方“回复”； 第三、完整回复页面，点击本页“新帖”旁边的“回复”。');
INSERT INTO `cdb_faqs` VALUES ('13', '5', '3', '', '', '我如何编辑自己的帖子', '在帖子的右下角，有编辑，回复，报告等选项，点击编辑，就可以对帖子进行编辑。');
INSERT INTO `cdb_faqs` VALUES ('14', '5', '4', '', '', '我如何出售购买主题', '<li>出售主题：\r\n当您进入发贴界面后，如果您所在的用户组有发买卖贴的权限，在“售价(金钱)”后面填写主题的价格，这样其他用户在查看这个帖子的时候就需要进入交费的过程才可以查看帖子。</li>\r\n<li>购买主题：\r\n浏览你准备购买的帖子，在帖子的相关信息的下面有[查看付款记录] [购买主题] [返回上一页] \r\n等链接，点击“购买主题”进行购买。</li>');
INSERT INTO `cdb_faqs` VALUES ('15', '5', '5', '', '', '我如何出售购买附件', '<li>上传附件一栏有个售价的输入框，填入出售价格即可实现需要支付才可下载附件的功能。</li>\r\n<li>点击帖子中[购买附件]按钮或点击附件的下载链接会跳转至附件购买页面，确认付款的相关信息后点提交按钮，即可得到附件的下载权限。只需购买一次，就有该附件的永远下载权限。</li>');
INSERT INTO `cdb_faqs` VALUES ('16', '5', '6', '', '', '我如何上传附件', '<li>发表新主题的时候上传附件，步骤为：写完帖子标题和内容后点上传附件右方的浏览，然后在本地选择要上传附件的具体文件名，最后点击发表话题。</li>\r\n<li>发表回复的时候上传附件，步骤为：写完回复楼主的内容，然后点上传附件右方的浏览，找到需要上传的附件，点击发表回复。</li>');
INSERT INTO `cdb_faqs` VALUES ('17', '5', '7', '', '', '我如何实现发帖时图文混排效果', '<li>发表新主题的时候点击上传附件左侧的“[插入]”链接把附件标记插入到帖子中适当的位置即可。</li>');
INSERT INTO `cdb_faqs` VALUES ('18', '5', '8', 'discuzcode', 'Discuz!代码', '我如何使用Discuz!代码', '<table width=\"99%\" cellpadding=\"2\" cellspacing=\"2\">\r\n  <tr>\r\n    <th width=\"50%\">Discuz!代码</th>\r\n    <th width=\"402\">效果</th>\r\n  </tr>\r\n  <tr>\r\n    <td>[b]粗体文字 Abc[/b]</td>\r\n    <td><strong>粗体文字 Abc</strong></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[i]斜体文字 Abc[/i]</td>\r\n    <td><em>斜体文字 Abc</em></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[u]下划线文字 Abc[/u]</td>\r\n    <td><u>下划线文字 Abc</u></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[color=red]红颜色[/color]</td>\r\n    <td><font color=\"red\">红颜色</font></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[size=3]文字大小为 3[/size] </td>\r\n    <td><font size=\"3\">文字大小为 3</font></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[font=仿宋]字体为仿宋[/font] </td>\r\n    <td><font face=\"仿宋\">字体为仿宋</font></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[align=Center]内容居中[/align] </td>\r\n    <td><div align=\"center\">内容居中</div></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[url]http://www.comsenz.com[/url]</td>\r\n    <td><a href=\"http://www.comsenz.com\" target=\"_blank\">http://www.comsenz.com</a>（超级链接）</td>\r\n  </tr>\r\n  <tr>\r\n    <td>[url=http://www.Discuz.net]Discuz! 论坛[/url]</td>\r\n    <td><a href=\"http://www.Discuz.net\" target=\"_blank\">Discuz! 论坛</a>（超级链接）</td>\r\n  </tr>\r\n  <tr>\r\n    <td>[email]myname@mydomain.com[/email]</td>\r\n    <td><a href=\"mailto:myname@mydomain.com\">myname@mydomain.com</a>（E-mail链接）</td>\r\n  </tr>\r\n  <tr>\r\n    <td>[email=support@discuz.net]Discuz! 技术支持[/email]</td>\r\n    <td><a href=\"mailto:support@discuz.net\">Discuz! 技术支持（E-mail链接）</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[quote]Discuz! Board 是由康盛创想（北京）科技有限公司开发的论坛软件[/quote] </td>\r\n    <td><div style=\"font-size: 12px\"><br /><br /><div class=\"quote\"><h5>引用:</h5><blockquote>原帖由 <i>admin</i> 于 2006-12-26 08:45 发表<br />Discuz! Board 是由康盛创想（北京）科技有限公司开发的论坛软件</blockquote></div></td>\r\n  </tr>\r\n   <tr>\r\n    <td>[code]Discuz! Board 是由康盛创想（北京）科技有限公司开发的论坛软件[/code] </td>\r\n    <td><div style=\"font-size: 12px\"><br /><br /><div class=\"blockcode\"><h5>代码:</h5><code id=\"code0\">Discuz! Board 是由康盛创想（北京）科技有限公司开发的论坛软件</code></div></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[hide]隐藏内容 Abc[/hide]</td>\r\n    <td>效果:只有当浏览者回复本帖时，才显示其中的内容，否则显示为“<b>**** 隐藏信息 跟帖后才能显示 *****</b>”</td>\r\n  </tr>\r\n  <tr>\r\n    <td>[hide=20]隐藏内容 Abc[/hide]</td>\r\n    <td>效果:只有当浏览者积分高于 20 点时，才显示其中的内容，否则显示为“<b>**** 隐藏信息 积分高于 20 点才能显示 ****</b>”</td>\r\n  </tr>\r\n  <tr>\r\n    <td>[list][*]列表项 #1[*]列表项 #2[*]列表项 #3[/list]</td>\r\n    <td><ul>\r\n      <li>列表项 ＃1</li>\r\n      <li>列表项 ＃2</li>\r\n      <li>列表项 ＃3 </li>\r\n    </ul></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[img]http://www.discuz.net/images/default/logo.gif[/img] </td>\r\n    <td>帖子内显示为：<img src=\"http://www.discuz.net/images/default/logo.gif\" /></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[img=88,31]http://www.discuz.net/images/logo.gif[/img] </td>\r\n    <td>帖子内显示为：<img src=\"http://www.discuz.net/images/logo.gif\" /></td>\r\n  </tr> <tr>\r\n    <td>[media=400,300,1]多媒体 URL[/media]</td>\r\n    <td>帖子内嵌入多媒体，宽 400 高 300 自动播放</td>\r\n  </tr>\r\n <tr>\r\n    <td>[fly]飞行的效果[/fly]</td>\r\n    <td><marquee scrollamount=\"3\" behavior=\"alternate\" width=\"90%\">飞行的效果</marquee></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[flash]Flash网页地址 [/flash] </td>\r\n    <td>帖子内嵌入 Flash 动画</td>\r\n  </tr>\r\n  <tr>\r\n    <td>[qq]123456789[/qq]</td>\r\n    <td>在帖子内显示 QQ 在线状态，点这个图标可以和他（她）聊天</td>\r\n  </tr>\r\n  <tr>\r\n    <td>X[sup]2[/sup]</td>\r\n    <td>X<sup>2</sup></td>\r\n  </tr>\r\n  <tr>\r\n    <td>X[sub]2[/sub]</td>\r\n    <td>X<sub>2</sub></td>\r\n  </tr>\r\n  \r\n</table>');
INSERT INTO `cdb_faqs` VALUES ('19', '6', '1', '', '', '我如何使用短消息功能', '您登录后，点击导航栏上的短消息按钮，即可进入短消息管理。\r\n点击[发送短消息]按钮，在\"发送到\"后输入收信人的用户名，填写完标题和内容，点提交(或按 Ctrl+Enter 发送)即可发出短消息。\r\n<br /><br />如果要保存到发件箱，以在提交前勾选\"保存到发件箱中\"前的复选框。\r\n<ul>\r\n<li>点击收件箱可打开您的收件箱查看收到的短消息。</li>\r\n<li>点击发件箱可查看保存在发件箱里的短消息。 </li>\r\n<li>点击已发送来查看对方是否已经阅读您的短消息。 </li>\r\n<li>点击搜索短消息就可通过关键字，发信人，收信人，搜索范围，排序类型等一系列条件设定来找到您需要查找的短消息。 </li>\r\n<li>点击导出短消息可以将自己的短消息导出htm文件保存在自己的电脑里。 </li>\r\n<li>点击忽略列表可以设定忽略人员，当这些被添加的忽略用户给您发送短消息时将不予接收。</li>\r\n</ul>');
INSERT INTO `cdb_faqs` VALUES ('20', '6', '2', '', '', '我如何向好友群发短消息', '登录论坛后，点击短消息，然后点发送短消息，如果有好友的话，好友群发后面点击全选，可以给所有的好友群发短消息。');
INSERT INTO `cdb_faqs` VALUES ('21', '6', '3', '', '', '我如何查看论坛会员数据', '点击导航栏上面的会员，然后显示的是此论坛的会员数据。注：需要论坛管理员开启允许你查看会员资料才可看到。');
INSERT INTO `cdb_faqs` VALUES ('22', '6', '4', '', '', '我如何使用搜索', '点击导航栏上面的搜索，输入搜索的关键字并选择一个范围，就可以检索到您有权限访问论坛中的相关的帖子。');
INSERT INTO `cdb_faqs` VALUES ('23', '6', '5', '', '', '我如何使用“我的”功能', '<li>会员必须首先<a href=\"logging.php?action=login\" target=\"_blank\">登录</a>，没有用户名的请先<a href=\"register.php\" target=\"_blank\">注册</a>；</li>\r\n<li>登录之后在论坛的左上方会出现一个“我的”的超级链接，点击这个链接之后就可进入到有关于您的信息。</li>');
INSERT INTO `cdb_faqs` VALUES ('24', '7', '1', '', '', '我如何向管理员报告帖子', '打开一个帖子，在帖子的右下角可以看到：“编辑”、“引用”、“报告”、“评分”、“回复”等等几个按钮，点击其中的“报告”按钮进入报告页面，填写好“我的意见”，单击“报告”按钮即可完成报告某个帖子的操作。');
INSERT INTO `cdb_faqs` VALUES ('25', '7', '2', '', '', '我如何“打印”，“推荐”，“订阅”，“收藏”帖子', '当你浏览一个帖子时，在它的右上角可以看到：“打印”、“推荐”、“订阅”、“收藏”，点击相对应的文字连接即可完成相关的操作。');
INSERT INTO `cdb_faqs` VALUES ('26', '7', '3', '', '', '我如何设置论坛好友', '设置论坛好友有3种简单的方法。\r\n<ul>\r\n<li>当您浏览帖子的时候可以点击“发表时间”右侧的“加为好友”设置论坛好友。</li>\r\n<li>当您浏览某用户的个人资料时，可以点击头像下方的“加为好友”设置论坛好友。</li>\r\n<li>您也可以在控制面板中的好友列表增加您的论坛好友。</li>\r\n<ul>');
INSERT INTO `cdb_faqs` VALUES ('27', '7', '4', '', '', '我如何使用RSS订阅', '在论坛的首页和进入版块的页面的右上角就会出现一个rss订阅的小图标<img src=\"images/common/xml.gif\" border=\"0\">，鼠标点击之后将出现本站点的rss地址，你可以将此rss地址放入到你的rss阅读器中进行订阅。');
INSERT INTO `cdb_faqs` VALUES ('28', '7', '5', '', '', '我如何清除Cookies', 'cookie是由浏览器保存在系统内的，在论坛的右下角提供有\"清除 Cookies\"的功能，点击后即可帮您清除系统内存储的Cookies。 <br /><br />\r\n以下介绍3种常用浏览器的Cookies清除方法(注：此方法为清除全部的Cookies,请谨慎使用)\r\n<ul>\r\n<li>Internet Explorer: 工具（选项）内的Internet选项→常规选项卡内，IE6直接可以看到删除Cookies的按钮点击即可，IE7为“浏 览历史记录”选项内的删除点击即可清空Cookies。对于Maxthon,腾讯TT等IE核心浏览器一样适用。 </li>\r\n<li>FireFox:工具→选项→隐私→Cookies→显示Cookie里可以对Cookie进行对应的删除操作。 </li>\r\n<li>Opera:工具→首选项→高级→Cookies→管理Cookies即可对Cookies进行删除的操作。</li>\r\n</ul>');
INSERT INTO `cdb_faqs` VALUES ('29', '7', '6', '', '', '我如何联系管理员', '您可以通过论坛底部右下角的“联系我们”链接快速的发送邮件与我们联系。也可以通过管理团队中的用户资料发送短消息给我们。');
INSERT INTO `cdb_faqs` VALUES ('30', '7', '7', '', '', '我如何开通个人空间', '如果您有权限开通“我的个人空间”，当用户登录论坛以后在论坛首页，用户名的右方点击开通我的个人空间，进入个人空间的申请页面。');
INSERT INTO `cdb_faqs` VALUES ('31', '7', '8', '', '', '我如何将自己的主题加入个人空间', '如果您有权限开通“我的个人空间”，在您发表的主题上方点击“加入个人空间”，您发表的主题以及回复都会加入到您空间的日志里。');
INSERT INTO `cdb_faqs` VALUES ('32', '5', '9', 'smilies', '表情', '我如何使用表情代码', '表情是一些用字符表示的表情符号，如果打开表情功能，Discuz! 会把一些符号转换成小图像，显示在帖子中，更加美观明了。目前支持下面这些表情：<br /><br />\r\n<table cellspacing=\"0\" cellpadding=\"4\" width=\"30%\" align=\"center\">\r\n<tr><th width=\"25%\" align=\"center\">表情符号</td>\r\n<th width=\"75%\" align=\"center\">对应图像</td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:)</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/smile.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:(</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/sad.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:D</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/biggrin.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:\\\'(</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/cry.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:@</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/huffy.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:o</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/shocked.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:P</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/tongue.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:$</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/shy.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">;P</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/titter.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:L</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/sweat.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:Q</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/mad.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:lol</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/lol.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:hug:</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/hug.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:victory:</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/victory.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:time:</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/time.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:kiss:</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/kiss.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:handshake</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/handshake.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:call:</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/call.gif\" alt=\"\" /></td>\r\n</tr>\r\n</table>\r\n</div></div>\r\n<br />');
INSERT INTO `cdb_faqs` VALUES ('33', '0', '5', '', '', '论坛高级功能使用', '');
INSERT INTO `cdb_faqs` VALUES ('34', '33', '0', 'forwardmessagelist', '', '论坛快速跳转关键字列表', 'Discuz! 支持自定义快速跳转页面，当某些操作完成后，可以不显示提示信息，直接跳转到新的页面，从而方便用户进行下一步操作，避免等待。 在实际使用当中，您根据需要，把关键字添加到快速跳转设置里面(后台 -- 基本设置 --  界面与显示方式 -- [<a href=\"admincp.php?action=settings&operation=styles&frames=yes\" target=\"_blank\">提示信息跳转设置</a> ])，让某些信息不显示而实现快速跳转。以下是 Discuz! 当中的一些常用信息的关键字:\r\n</br></br>\r\n\r\n<table width=\"99%\" cellpadding=\"2\" cellspacing=\"2\">\r\n  <tr>\r\n    <td width=\"50%\">关键字</td>\r\n    <td width=\"50%\">提示信息页面或者作用</td>\r\n  </tr>\r\n  <tr>\r\n    <td>login_succeed</td>\r\n    <td>登录成功</td>\r\n  </tr>\r\n  <tr>\r\n    <td>logout_succeed</td>\r\n    <td>退出登录成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>thread_poll_succeed</td>\r\n    <td>投票成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>thread_rate_succeed</td>\r\n    <td>评分成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>register_succeed</td>\r\n    <td>注册成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>usergroups_join_succeed</td>\r\n    <td>加入扩展组成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td height=\"22\">usergroups_exit_succeed</td>\r\n    <td>退出扩展组成功</td>\r\n  </tr>\r\n  <tr>\r\n    <td>usergroups_update_succeed</td>\r\n    <td>更新扩展组成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>buddy_update_succeed</td>\r\n    <td>好友更新成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>post_edit_succeed</td>\r\n    <td>编辑帖子成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>post_edit_delete_succeed</td>\r\n    <td>删除帖子成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>post_reply_succeed</td>\r\n    <td>回复成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>post_newthread_succeed</td>\r\n    <td>发表新主题成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>post_reply_blog_succeed</td>\r\n    <td>文集评论发表成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>post_newthread_blog_succeed</td>\r\n    <td>blog 发表成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>profile_avatar_succeed</td>\r\n    <td>头像设置成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>profile_succeed</td>\r\n    <td>个人资料更新成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>pm_send_succeed</td>\r\n    <td>短消息发送成功</td>\r\n  </tr>\r\n  </tr>\r\n    <tr>\r\n    <td>pm_delete_succeed</td>\r\n    <td>短消息删除成功</td>\r\n  </tr>\r\n  </tr>\r\n    <tr>\r\n    <td>pm_ignore_succeed</td>\r\n    <td>短消息忽略列表更新</td>\r\n  </tr>\r\n    <tr>\r\n    <td>admin_succeed</td>\r\n    <td>管理操作成功〔注意：设置此关键字后，所有管理操作完毕都将直接跳转〕</td>\r\n  </tr>\r\n    <tr>\r\n    <td>admin_succeed_next&nbsp;</td>\r\n    <td>管理成功并将跳转到下一个管理动作</td>\r\n  </tr> \r\n    <tr>\r\n    <td>search_redirect</td>\r\n    <td>搜索完成，进入搜索结果列表</td>\r\n  </tr>\r\n</table>');

-- ----------------------------
-- Table structure for `cdb_favoriteforums`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_favoriteforums`;
CREATE TABLE `cdb_favoriteforums` (
  `fid` smallint(6) NOT NULL default '0',
  `uid` mediumint(8) NOT NULL default '0',
  `dateline` int(10) NOT NULL default '0',
  `newthreads` mediumint(8) NOT NULL default '0',
  PRIMARY KEY  (`fid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_favoriteforums
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_favorites`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_favorites`;
CREATE TABLE `cdb_favorites` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `tid` mediumint(8) unsigned NOT NULL default '0',
  `fid` smallint(6) unsigned NOT NULL default '0',
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_favorites
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_favoritethreads`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_favoritethreads`;
CREATE TABLE `cdb_favoritethreads` (
  `tid` mediumint(8) NOT NULL default '0',
  `uid` mediumint(8) NOT NULL default '0',
  `dateline` int(10) NOT NULL default '0',
  `newreplies` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`tid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_favoritethreads
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_feeds`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_feeds`;
CREATE TABLE `cdb_feeds` (
  `feed_id` mediumint(8) unsigned NOT NULL auto_increment,
  `type` varchar(255) NOT NULL default 'default',
  `fid` smallint(6) unsigned NOT NULL default '0',
  `typeid` smallint(6) unsigned NOT NULL default '0',
  `sortid` smallint(6) unsigned NOT NULL default '0',
  `appid` varchar(30) NOT NULL default '',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `data` text NOT NULL,
  `template` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`feed_id`),
  KEY `type` (`type`),
  KEY `dateline` (`dateline`),
  KEY `uid` (`uid`),
  KEY `appid` (`appid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_feeds
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_forumfields`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_forumfields`;
CREATE TABLE `cdb_forumfields` (
  `fid` smallint(6) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `password` varchar(12) NOT NULL default '',
  `icon` varchar(255) NOT NULL default '',
  `postcredits` varchar(255) NOT NULL default '',
  `replycredits` varchar(255) NOT NULL default '',
  `getattachcredits` varchar(255) NOT NULL default '',
  `postattachcredits` varchar(255) NOT NULL default '',
  `digestcredits` varchar(255) NOT NULL default '',
  `redirect` varchar(255) NOT NULL default '',
  `attachextensions` varchar(255) NOT NULL default '',
  `formulaperm` text NOT NULL,
  `moderators` text NOT NULL,
  `rules` text NOT NULL,
  `threadtypes` text NOT NULL,
  `threadsorts` text NOT NULL,
  `viewperm` text NOT NULL,
  `postperm` text NOT NULL,
  `replyperm` text NOT NULL,
  `getattachperm` text NOT NULL,
  `postattachperm` text NOT NULL,
  `keywords` text NOT NULL,
  `supe_pushsetting` text NOT NULL,
  `modrecommend` text NOT NULL,
  `tradetypes` text NOT NULL,
  `typemodels` mediumtext NOT NULL,
  `threadplugin` text NOT NULL,
  `extra` text NOT NULL,
  PRIMARY KEY  (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_forumfields
-- ----------------------------
INSERT INTO `cdb_forumfields` VALUES ('1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cdb_forumfields` VALUES ('2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `cdb_forumlinks`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_forumlinks`;
CREATE TABLE `cdb_forumlinks` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `displayorder` tinyint(3) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `description` mediumtext NOT NULL,
  `logo` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_forumlinks
-- ----------------------------
INSERT INTO `cdb_forumlinks` VALUES ('1', '0', 'Discuz! 官方论坛', 'http://www.discuz.net', '提供最新 Discuz! 产品新闻、软件下载与技术交流', 'images/logo.gif');

-- ----------------------------
-- Table structure for `cdb_forumrecommend`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_forumrecommend`;
CREATE TABLE `cdb_forumrecommend` (
  `fid` smallint(6) unsigned NOT NULL,
  `tid` mediumint(8) unsigned NOT NULL,
  `typeid` smallint(6) NOT NULL,
  `displayorder` tinyint(1) NOT NULL,
  `subject` char(80) NOT NULL,
  `author` char(15) NOT NULL,
  `authorid` mediumint(8) NOT NULL,
  `moderatorid` mediumint(8) NOT NULL,
  `expiration` int(10) unsigned NOT NULL,
  `position` tinyint(1) NOT NULL default '0',
  `highlight` tinyint(1) NOT NULL default '0',
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `filename` char(100) NOT NULL default '',
  PRIMARY KEY  (`tid`),
  KEY `displayorder` (`fid`,`displayorder`),
  KEY `position` (`position`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_forumrecommend
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_forums`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_forums`;
CREATE TABLE `cdb_forums` (
  `fid` smallint(6) unsigned NOT NULL auto_increment,
  `fup` smallint(6) unsigned NOT NULL default '0',
  `type` enum('group','forum','sub') NOT NULL default 'forum',
  `name` char(50) NOT NULL default '',
  `status` tinyint(1) NOT NULL default '0',
  `displayorder` smallint(6) NOT NULL default '0',
  `styleid` smallint(6) unsigned NOT NULL default '0',
  `threads` mediumint(8) unsigned NOT NULL default '0',
  `posts` mediumint(8) unsigned NOT NULL default '0',
  `todayposts` mediumint(8) unsigned NOT NULL default '0',
  `lastpost` char(110) NOT NULL default '',
  `allowsmilies` tinyint(1) NOT NULL default '0',
  `allowhtml` tinyint(1) NOT NULL default '0',
  `allowbbcode` tinyint(1) NOT NULL default '0',
  `allowimgcode` tinyint(1) NOT NULL default '0',
  `allowmediacode` tinyint(1) NOT NULL default '0',
  `allowanonymous` tinyint(1) NOT NULL default '0',
  `allowshare` tinyint(1) NOT NULL default '0',
  `allowpostspecial` smallint(6) unsigned NOT NULL default '0',
  `allowspecialonly` tinyint(1) unsigned NOT NULL default '0',
  `alloweditrules` tinyint(1) NOT NULL default '0',
  `allowfeed` tinyint(1) NOT NULL default '1',
  `recyclebin` tinyint(1) NOT NULL default '0',
  `modnewposts` tinyint(1) NOT NULL default '0',
  `jammer` tinyint(1) NOT NULL default '0',
  `disablewatermark` tinyint(1) NOT NULL default '0',
  `inheritedmod` tinyint(1) NOT NULL default '0',
  `autoclose` smallint(6) NOT NULL default '0',
  `forumcolumns` tinyint(3) unsigned NOT NULL default '0',
  `threadcaches` tinyint(1) NOT NULL default '0',
  `alloweditpost` tinyint(1) unsigned NOT NULL default '1',
  `simple` tinyint(1) unsigned NOT NULL,
  `modworks` tinyint(1) unsigned NOT NULL,
  `allowtag` tinyint(1) NOT NULL default '1',
  `allowglobalstick` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`fid`),
  KEY `forum` (`status`,`type`,`displayorder`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_forums
-- ----------------------------
INSERT INTO `cdb_forums` VALUES ('1', '0', 'group', 'Discuz!', '1', '0', '0', '0', '0', '0', '', '0', '0', '1', '1', '1', '0', '1', '63', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1');
INSERT INTO `cdb_forums` VALUES ('2', '1', 'forum', '默认版块', '1', '0', '0', '0', '0', '0', '', '1', '0', '1', '1', '1', '0', '1', '63', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1');

-- ----------------------------
-- Table structure for `cdb_imagetypes`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_imagetypes`;
CREATE TABLE `cdb_imagetypes` (
  `typeid` smallint(6) unsigned NOT NULL auto_increment,
  `available` tinyint(1) NOT NULL default '0',
  `name` char(20) NOT NULL,
  `type` enum('smiley','icon','avatar') NOT NULL default 'smiley',
  `displayorder` tinyint(3) NOT NULL default '0',
  `directory` char(100) NOT NULL,
  PRIMARY KEY  (`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_imagetypes
-- ----------------------------
INSERT INTO `cdb_imagetypes` VALUES ('1', '1', '默认', 'smiley', '1', 'default');
INSERT INTO `cdb_imagetypes` VALUES ('2', '1', '酷猴', 'smiley', '2', 'coolmonkey');
INSERT INTO `cdb_imagetypes` VALUES ('3', '1', '呆呆男', 'smiley', '3', 'grapeman');

-- ----------------------------
-- Table structure for `cdb_invites`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_invites`;
CREATE TABLE `cdb_invites` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `expiration` int(10) unsigned NOT NULL default '0',
  `inviteip` char(15) NOT NULL,
  `invitecode` char(16) NOT NULL,
  `reguid` mediumint(8) unsigned NOT NULL default '0',
  `regdateline` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '1',
  KEY `uid` (`uid`,`status`),
  KEY `invitecode` (`invitecode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_invites
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_itempool`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_itempool`;
CREATE TABLE `cdb_itempool` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `type` tinyint(1) unsigned NOT NULL,
  `question` text NOT NULL,
  `answer` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_itempool
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_magiclog`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_magiclog`;
CREATE TABLE `cdb_magiclog` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `magicid` smallint(6) unsigned NOT NULL default '0',
  `action` tinyint(1) NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `amount` smallint(6) unsigned NOT NULL default '0',
  `price` mediumint(8) unsigned NOT NULL default '0',
  `targettid` mediumint(8) unsigned NOT NULL default '0',
  `targetpid` int(10) unsigned NOT NULL default '0',
  `targetuid` mediumint(8) unsigned NOT NULL default '0',
  KEY `uid` (`uid`,`dateline`),
  KEY `targetuid` (`targetuid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_magiclog
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_magicmarket`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_magicmarket`;
CREATE TABLE `cdb_magicmarket` (
  `mid` smallint(6) unsigned NOT NULL auto_increment,
  `magicid` smallint(6) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` char(15) NOT NULL,
  `price` mediumint(8) unsigned NOT NULL default '0',
  `num` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`mid`),
  KEY `num` (`magicid`,`num`),
  KEY `price` (`magicid`,`price`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_magicmarket
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_magics`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_magics`;
CREATE TABLE `cdb_magics` (
  `magicid` smallint(6) unsigned NOT NULL auto_increment,
  `available` tinyint(1) NOT NULL default '0',
  `type` tinyint(3) NOT NULL default '0',
  `name` varchar(50) NOT NULL,
  `identifier` varchar(40) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` tinyint(3) NOT NULL default '0',
  `price` mediumint(8) unsigned NOT NULL default '0',
  `num` smallint(6) unsigned NOT NULL default '0',
  `salevolume` smallint(6) unsigned NOT NULL default '0',
  `supplytype` tinyint(1) NOT NULL default '0',
  `supplynum` smallint(6) unsigned NOT NULL default '0',
  `weight` tinyint(3) unsigned NOT NULL default '1',
  `recommend` tinyint(1) NOT NULL default '0',
  `filename` varchar(50) NOT NULL,
  `magicperm` text NOT NULL,
  PRIMARY KEY  (`magicid`),
  UNIQUE KEY `identifier` (`identifier`),
  KEY `displayorder` (`available`,`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_magics
-- ----------------------------
INSERT INTO `cdb_magics` VALUES ('1', '1', '1', '变色卡', 'CCK', '可以变换主题的颜色,并保存24小时', '0', '10', '999', '0', '0', '0', '20', '0', 'magic_color.inc.php', '');
INSERT INTO `cdb_magics` VALUES ('2', '1', '3', '金钱卡', 'MOK', '可以随机获得一些金币', '0', '10', '999', '0', '0', '0', '30', '0', 'magic_money.inc.php', '');
INSERT INTO `cdb_magics` VALUES ('3', '1', '1', 'IP卡', 'SEK', '可以查看帖子作者的IP', '0', '15', '999', '0', '0', '0', '30', '0', 'magic_see.inc.php', '');
INSERT INTO `cdb_magics` VALUES ('4', '1', '1', '提升卡', 'UPK', '可以提升某个主题', '0', '10', '999', '0', '0', '0', '30', '0', 'magic_up.inc.php', '');
INSERT INTO `cdb_magics` VALUES ('5', '1', '1', '置顶卡', 'TOK', '可以将主题置顶24小时', '0', '20', '999', '0', '0', '0', '40', '0', 'magic_top.inc.php', '');
INSERT INTO `cdb_magics` VALUES ('6', '1', '1', '悔悟卡', 'REK', '可以删除自己的帖子', '0', '10', '999', '0', '0', '0', '30', '0', 'magic_del.inc.php', '');
INSERT INTO `cdb_magics` VALUES ('7', '1', '2', '狗仔卡', 'RTK', '查看某个用户是否在线', '0', '15', '999', '0', '0', '0', '30', '0', 'magic_reporter.inc.php', '');
INSERT INTO `cdb_magics` VALUES ('8', '1', '1', '沉默卡', 'CLK', '24小时内不能回复', '0', '15', '999', '0', '0', '0', '30', '0', 'magic_close.inc.php', '');
INSERT INTO `cdb_magics` VALUES ('9', '1', '1', '喧嚣卡', 'OPK', '使贴子可以回复', '0', '15', '999', '0', '0', '0', '30', '0', 'magic_open.inc.php', '');
INSERT INTO `cdb_magics` VALUES ('10', '1', '1', '隐身卡', 'YSK', '可以将自己的帖子匿名', '0', '20', '999', '0', '0', '0', '30', '0', 'magic_hidden.inc.php', '');
INSERT INTO `cdb_magics` VALUES ('11', '1', '1', '恢复卡', 'CBK', '将匿名恢复为正常显示的用户名,匿名终结者', '0', '15', '999', '0', '0', '0', '20', '0', 'magic_renew.inc.php', '');
INSERT INTO `cdb_magics` VALUES ('12', '1', '1', '移动卡', 'MVK', '可将自已的帖子移动到其他版面（隐含、特殊限定版面除外）', '0', '50', '989', '0', '0', '0', '50', '0', 'magic_move.inc.php', '');

-- ----------------------------
-- Table structure for `cdb_medallog`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_medallog`;
CREATE TABLE `cdb_medallog` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `medalid` smallint(6) unsigned NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `expiration` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `type` (`type`),
  KEY `status` (`status`,`expiration`),
  KEY `uid` (`uid`,`medalid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_medallog
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_medals`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_medals`;
CREATE TABLE `cdb_medals` (
  `medalid` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `available` tinyint(1) NOT NULL default '0',
  `image` varchar(255) NOT NULL default '',
  `type` tinyint(1) NOT NULL default '0',
  `displayorder` tinyint(3) NOT NULL default '0',
  `description` varchar(255) NOT NULL,
  `expiration` smallint(6) unsigned NOT NULL default '0',
  `permission` mediumtext NOT NULL,
  PRIMARY KEY  (`medalid`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_medals
-- ----------------------------
INSERT INTO `cdb_medals` VALUES ('1', 'Medal No.1', '0', 'medal1.gif', '0', '0', '', '0', '');
INSERT INTO `cdb_medals` VALUES ('2', 'Medal No.2', '0', 'medal2.gif', '0', '0', '', '0', '');
INSERT INTO `cdb_medals` VALUES ('3', 'Medal No.3', '0', 'medal3.gif', '0', '0', '', '0', '');
INSERT INTO `cdb_medals` VALUES ('4', 'Medal No.4', '0', 'medal4.gif', '0', '0', '', '0', '');
INSERT INTO `cdb_medals` VALUES ('5', 'Medal No.5', '0', 'medal5.gif', '0', '0', '', '0', '');
INSERT INTO `cdb_medals` VALUES ('6', 'Medal No.6', '0', 'medal6.gif', '0', '0', '', '0', '');
INSERT INTO `cdb_medals` VALUES ('7', 'Medal No.7', '0', 'medal7.gif', '0', '0', '', '0', '');
INSERT INTO `cdb_medals` VALUES ('8', 'Medal No.8', '0', 'medal8.gif', '0', '0', '', '0', '');
INSERT INTO `cdb_medals` VALUES ('9', 'Medal No.9', '0', 'medal9.gif', '0', '0', '', '0', '');
INSERT INTO `cdb_medals` VALUES ('10', 'Medal No.10', '0', 'medal10.gif', '0', '0', '', '0', '');

-- ----------------------------
-- Table structure for `cdb_memberfields`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_memberfields`;
CREATE TABLE `cdb_memberfields` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `nickname` varchar(30) NOT NULL default '',
  `site` varchar(75) NOT NULL default '',
  `alipay` varchar(50) NOT NULL default '',
  `icq` varchar(12) NOT NULL default '',
  `qq` varchar(12) NOT NULL default '',
  `yahoo` varchar(40) NOT NULL default '',
  `msn` varchar(100) NOT NULL default '',
  `taobao` varchar(40) NOT NULL default '',
  `location` varchar(30) NOT NULL default '',
  `customstatus` varchar(30) NOT NULL default '',
  `medals` text NOT NULL,
  `avatar` varchar(255) NOT NULL default '',
  `avatarwidth` tinyint(3) unsigned NOT NULL default '0',
  `avatarheight` tinyint(3) unsigned NOT NULL default '0',
  `bio` text NOT NULL,
  `sightml` text NOT NULL,
  `ignorepm` text NOT NULL,
  `groupterms` text NOT NULL,
  `authstr` varchar(20) NOT NULL default '',
  `spacename` varchar(40) NOT NULL,
  `buyercredit` smallint(6) NOT NULL default '0',
  `sellercredit` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_memberfields
-- ----------------------------
INSERT INTO `cdb_memberfields` VALUES ('1', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '0', '0');

-- ----------------------------
-- Table structure for `cdb_membermagics`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_membermagics`;
CREATE TABLE `cdb_membermagics` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `magicid` smallint(6) unsigned NOT NULL default '0',
  `num` smallint(6) unsigned NOT NULL default '0',
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_membermagics
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_memberrecommend`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_memberrecommend`;
CREATE TABLE `cdb_memberrecommend` (
  `tid` mediumint(8) unsigned NOT NULL,
  `recommenduid` mediumint(8) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  KEY `tid` (`tid`),
  KEY `uid` (`recommenduid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_memberrecommend
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_members`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_members`;
CREATE TABLE `cdb_members` (
  `uid` mediumint(8) unsigned NOT NULL auto_increment,
  `username` char(15) NOT NULL default '',
  `password` char(32) NOT NULL default '',
  `secques` char(8) NOT NULL default '',
  `gender` tinyint(1) NOT NULL default '0',
  `adminid` tinyint(1) NOT NULL default '0',
  `groupid` smallint(6) unsigned NOT NULL default '0',
  `groupexpiry` int(10) unsigned NOT NULL default '0',
  `extgroupids` char(20) NOT NULL default '',
  `regip` char(15) NOT NULL default '',
  `regdate` int(10) unsigned NOT NULL default '0',
  `lastip` char(15) NOT NULL default '',
  `lastvisit` int(10) unsigned NOT NULL default '0',
  `lastactivity` int(10) unsigned NOT NULL default '0',
  `lastpost` int(10) unsigned NOT NULL default '0',
  `posts` mediumint(8) unsigned NOT NULL default '0',
  `threads` mediumint(8) unsigned NOT NULL default '0',
  `digestposts` smallint(6) unsigned NOT NULL default '0',
  `oltime` smallint(6) unsigned NOT NULL default '0',
  `pageviews` mediumint(8) unsigned NOT NULL default '0',
  `credits` int(10) NOT NULL default '0',
  `extcredits1` int(10) NOT NULL default '0',
  `extcredits2` int(10) NOT NULL default '0',
  `extcredits3` int(10) NOT NULL default '0',
  `extcredits4` int(10) NOT NULL default '0',
  `extcredits5` int(10) NOT NULL default '0',
  `extcredits6` int(10) NOT NULL default '0',
  `extcredits7` int(10) NOT NULL default '0',
  `extcredits8` int(10) NOT NULL default '0',
  `email` char(40) NOT NULL default '',
  `bday` date NOT NULL default '0000-00-00',
  `sigstatus` tinyint(1) NOT NULL default '0',
  `tpp` tinyint(3) unsigned NOT NULL default '0',
  `ppp` tinyint(3) unsigned NOT NULL default '0',
  `styleid` smallint(6) unsigned NOT NULL default '0',
  `dateformat` tinyint(1) NOT NULL default '0',
  `timeformat` tinyint(1) NOT NULL default '0',
  `pmsound` tinyint(1) NOT NULL default '0',
  `showemail` tinyint(1) NOT NULL default '0',
  `newsletter` tinyint(1) NOT NULL default '0',
  `invisible` tinyint(1) NOT NULL default '0',
  `timeoffset` char(4) NOT NULL default '',
  `prompt` tinyint(1) NOT NULL default '0',
  `accessmasks` tinyint(1) NOT NULL default '0',
  `editormode` tinyint(1) unsigned NOT NULL default '2',
  `customshow` tinyint(1) unsigned NOT NULL default '26',
  `xspacestatus` tinyint(1) NOT NULL default '0',
  `customaddfeed` tinyint(1) NOT NULL default '0',
  `newbietaskid` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_members
-- ----------------------------
INSERT INTO `cdb_members` VALUES ('1', 'admin', 'b0a985f0ba62f617dc4eab573829c00d', '', '0', '1', '1', '0', '', 'hidden', '1387876475', '', '1387876475', '0', '1387876475', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'admin@admin.com', '0000-00-00', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '9999', '0', '0', '2', '26', '0', '0', '0');

-- ----------------------------
-- Table structure for `cdb_memberspaces`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_memberspaces`;
CREATE TABLE `cdb_memberspaces` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `style` char(20) NOT NULL,
  `description` char(100) NOT NULL,
  `layout` char(200) NOT NULL,
  `side` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_memberspaces
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_moderators`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_moderators`;
CREATE TABLE `cdb_moderators` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `fid` smallint(6) unsigned NOT NULL default '0',
  `displayorder` tinyint(3) NOT NULL default '0',
  `inherited` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`uid`,`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_moderators
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_modworks`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_modworks`;
CREATE TABLE `cdb_modworks` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `modaction` char(3) NOT NULL default '',
  `dateline` date NOT NULL default '2006-01-01',
  `count` smallint(6) unsigned NOT NULL default '0',
  `posts` smallint(6) unsigned NOT NULL default '0',
  KEY `uid` (`uid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_modworks
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_mytasks`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_mytasks`;
CREATE TABLE `cdb_mytasks` (
  `uid` mediumint(8) unsigned NOT NULL,
  `username` char(15) NOT NULL default '',
  `taskid` smallint(6) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  `csc` char(255) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`,`taskid`),
  KEY `parter` (`taskid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_mytasks
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_navs`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_navs`;
CREATE TABLE `cdb_navs` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `parentid` smallint(6) unsigned NOT NULL default '0',
  `name` char(50) NOT NULL,
  `title` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `target` tinyint(1) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `available` tinyint(1) NOT NULL default '0',
  `displayorder` tinyint(3) NOT NULL,
  `highlight` tinyint(1) NOT NULL default '0',
  `level` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_navs
-- ----------------------------
INSERT INTO `cdb_navs` VALUES ('1', '0', '论坛', '', '#', '0', '0', '1', '1', '0', '0');
INSERT INTO `cdb_navs` VALUES ('2', '0', '搜索', '', 'search.php', '0', '0', '1', '2', '0', '0');
INSERT INTO `cdb_navs` VALUES ('3', '0', '插件', '', '#', '0', '0', '1', '4', '0', '0');
INSERT INTO `cdb_navs` VALUES ('4', '0', '帮助', '', 'faq.php', '0', '0', '1', '5', '0', '0');
INSERT INTO `cdb_navs` VALUES ('5', '0', '导航', '', '#', '0', '0', '1', '6', '0', '0');

-- ----------------------------
-- Table structure for `cdb_onlinelist`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_onlinelist`;
CREATE TABLE `cdb_onlinelist` (
  `groupid` smallint(6) unsigned NOT NULL default '0',
  `displayorder` tinyint(3) NOT NULL default '0',
  `title` varchar(30) NOT NULL default '',
  `url` varchar(30) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_onlinelist
-- ----------------------------
INSERT INTO `cdb_onlinelist` VALUES ('1', '1', '管理员', 'online_admin.gif');
INSERT INTO `cdb_onlinelist` VALUES ('2', '2', '超级版主', 'online_supermod.gif');
INSERT INTO `cdb_onlinelist` VALUES ('3', '3', '版主', 'online_moderator.gif');
INSERT INTO `cdb_onlinelist` VALUES ('0', '4', '会员', 'online_member.gif');

-- ----------------------------
-- Table structure for `cdb_onlinetime`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_onlinetime`;
CREATE TABLE `cdb_onlinetime` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `thismonth` smallint(6) unsigned NOT NULL default '0',
  `total` mediumint(8) unsigned NOT NULL default '0',
  `lastupdate` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_onlinetime
-- ----------------------------
INSERT INTO `cdb_onlinetime` VALUES ('1', '10', '60', '1170601084');

-- ----------------------------
-- Table structure for `cdb_orders`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_orders`;
CREATE TABLE `cdb_orders` (
  `orderid` char(32) NOT NULL default '',
  `status` char(3) NOT NULL default '',
  `buyer` char(50) NOT NULL default '',
  `admin` char(15) NOT NULL default '',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `amount` int(10) unsigned NOT NULL default '0',
  `price` float(7,2) unsigned NOT NULL default '0.00',
  `submitdate` int(10) unsigned NOT NULL default '0',
  `confirmdate` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `orderid` (`orderid`),
  KEY `submitdate` (`submitdate`),
  KEY `uid` (`uid`,`submitdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_orders
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_paymentlog`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_paymentlog`;
CREATE TABLE `cdb_paymentlog` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `tid` mediumint(8) unsigned NOT NULL default '0',
  `authorid` mediumint(8) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `amount` int(10) unsigned NOT NULL default '0',
  `netamount` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`tid`,`uid`),
  KEY `uid` (`uid`),
  KEY `authorid` (`authorid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_paymentlog
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_pluginhooks`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_pluginhooks`;
CREATE TABLE `cdb_pluginhooks` (
  `pluginhookid` mediumint(8) unsigned NOT NULL auto_increment,
  `pluginid` smallint(6) unsigned NOT NULL default '0',
  `available` tinyint(1) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `description` mediumtext NOT NULL,
  `code` mediumtext NOT NULL,
  PRIMARY KEY  (`pluginhookid`),
  KEY `pluginid` (`pluginid`),
  KEY `available` (`available`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_pluginhooks
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_plugins`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_plugins`;
CREATE TABLE `cdb_plugins` (
  `pluginid` smallint(6) unsigned NOT NULL auto_increment,
  `available` tinyint(1) NOT NULL default '0',
  `adminid` tinyint(1) unsigned NOT NULL default '0',
  `name` varchar(40) NOT NULL default '',
  `identifier` varchar(40) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `datatables` varchar(255) NOT NULL default '',
  `directory` varchar(100) NOT NULL default '',
  `copyright` varchar(100) NOT NULL default '',
  `modules` text NOT NULL,
  `version` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`pluginid`),
  UNIQUE KEY `identifier` (`identifier`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_plugins
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_pluginvars`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_pluginvars`;
CREATE TABLE `cdb_pluginvars` (
  `pluginvarid` mediumint(8) unsigned NOT NULL auto_increment,
  `pluginid` smallint(6) unsigned NOT NULL default '0',
  `displayorder` tinyint(3) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `variable` varchar(40) NOT NULL default '',
  `type` varchar(20) NOT NULL default 'text',
  `value` text NOT NULL,
  `extra` text NOT NULL,
  PRIMARY KEY  (`pluginvarid`),
  KEY `pluginid` (`pluginid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_pluginvars
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_polloptions`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_polloptions`;
CREATE TABLE `cdb_polloptions` (
  `polloptionid` int(10) unsigned NOT NULL auto_increment,
  `tid` mediumint(8) unsigned NOT NULL default '0',
  `votes` mediumint(8) unsigned NOT NULL default '0',
  `displayorder` tinyint(3) NOT NULL default '0',
  `polloption` varchar(80) NOT NULL default '',
  `voterids` mediumtext NOT NULL,
  PRIMARY KEY  (`polloptionid`),
  KEY `tid` (`tid`,`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_polloptions
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_polls`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_polls`;
CREATE TABLE `cdb_polls` (
  `tid` mediumint(8) unsigned NOT NULL default '0',
  `overt` tinyint(1) NOT NULL default '0',
  `multiple` tinyint(1) NOT NULL default '0',
  `visible` tinyint(1) NOT NULL default '0',
  `maxchoices` tinyint(3) unsigned NOT NULL default '0',
  `expiration` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_polls
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_postposition`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_postposition`;
CREATE TABLE `cdb_postposition` (
  `tid` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`tid`,`position`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_postposition
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_posts`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_posts`;
CREATE TABLE `cdb_posts` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `fid` smallint(6) unsigned NOT NULL default '0',
  `tid` mediumint(8) unsigned NOT NULL default '0',
  `first` tinyint(1) NOT NULL default '0',
  `author` varchar(15) NOT NULL default '',
  `authorid` mediumint(8) unsigned NOT NULL default '0',
  `subject` varchar(80) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `message` mediumtext NOT NULL,
  `useip` varchar(15) NOT NULL default '',
  `invisible` tinyint(1) NOT NULL default '0',
  `anonymous` tinyint(1) NOT NULL default '0',
  `usesig` tinyint(1) NOT NULL default '0',
  `htmlon` tinyint(1) NOT NULL default '0',
  `bbcodeoff` tinyint(1) NOT NULL default '0',
  `smileyoff` tinyint(1) NOT NULL default '0',
  `parseurloff` tinyint(1) NOT NULL default '0',
  `attachment` tinyint(1) NOT NULL default '0',
  `rate` smallint(6) NOT NULL default '0',
  `ratetimes` tinyint(3) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`pid`),
  KEY `fid` (`fid`),
  KEY `authorid` (`authorid`),
  KEY `dateline` (`dateline`),
  KEY `invisible` (`invisible`),
  KEY `displayorder` (`tid`,`invisible`,`dateline`),
  KEY `first` (`tid`,`first`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_posts
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_profilefields`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_profilefields`;
CREATE TABLE `cdb_profilefields` (
  `fieldid` smallint(6) unsigned NOT NULL auto_increment,
  `available` tinyint(1) NOT NULL default '0',
  `invisible` tinyint(1) NOT NULL default '0',
  `title` varchar(50) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `size` tinyint(3) unsigned NOT NULL default '0',
  `displayorder` smallint(6) NOT NULL default '0',
  `required` tinyint(1) NOT NULL default '0',
  `unchangeable` tinyint(1) NOT NULL default '0',
  `showinthread` tinyint(1) NOT NULL default '0',
  `selective` tinyint(1) NOT NULL default '0',
  `choices` text NOT NULL,
  PRIMARY KEY  (`fieldid`),
  KEY `available` (`available`,`required`,`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_profilefields
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_projects`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_projects`;
CREATE TABLE `cdb_projects` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_projects
-- ----------------------------
INSERT INTO `cdb_projects` VALUES ('1', '技术性论坛', 'extcredit', '如果您不希望会员通过灌水、页面访问等方式得到积分，而是需要发布一些技术性的帖子获得积分。', 'a:4:{s:10:\"savemethod\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:14:\"creditsformula\";s:49:\"posts*0.5+digestposts*5+extcredits1*2+extcredits2\";s:13:\"creditspolicy\";s:299:\"a:12:{s:4:\"post\";a:0:{}s:5:\"reply\";a:0:{}s:6:\"digest\";a:1:{i:1;i:10;}s:10:\"postattach\";a:0:{}s:9:\"getattach\";a:0:{}s:2:\"pm\";a:0:{}s:6:\"search\";a:0:{}s:15:\"promotion_visit\";a:1:{i:3;i:2;}s:18:\"promotion_register\";a:1:{i:3;i:2;}s:13:\"tradefinished\";a:0:{}s:8:\"votepoll\";a:0:{}s:10:\"lowerlimit\";a:0:{}}\";s:10:\"extcredits\";s:1444:\"a:8:{i:1;a:8:{s:5:\"title\";s:4:\"威望\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:2;a:8:{s:5:\"title\";s:4:\"金钱\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:3;a:8:{s:5:\"title\";s:4:\"贡献\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:4;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:5;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:6;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:7;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:8;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}}\";}');
INSERT INTO `cdb_projects` VALUES ('2', '娱乐性论坛', 'extcredit', '此类型论坛的会员可以通过发布一些评论、回复等获得积分，同时扩大论坛的访问量。更重要的是希望会员发布一些有价值的娱乐新闻等。', 'a:4:{s:10:\"savemethod\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:14:\"creditsformula\";s:81:\"posts+digestposts*5+oltime*5+pageviews/1000+extcredits1*2+extcredits2+extcredits3\";s:13:\"creditspolicy\";s:315:\"a:12:{s:4:\"post\";a:1:{i:1;i:1;}s:5:\"reply\";a:1:{i:2;i:1;}s:6:\"digest\";a:1:{i:1;i:10;}s:10:\"postattach\";a:0:{}s:9:\"getattach\";a:0:{}s:2:\"pm\";a:0:{}s:6:\"search\";a:0:{}s:15:\"promotion_visit\";a:1:{i:3;i:2;}s:18:\"promotion_register\";a:1:{i:3;i:2;}s:13:\"tradefinished\";a:0:{}s:8:\"votepoll\";a:0:{}s:10:\"lowerlimit\";a:0:{}}\";s:10:\"extcredits\";s:1036:\"a:8:{i:1;a:6:{s:5:\"title\";s:4:\"威望\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;}i:2;a:6:{s:5:\"title\";s:4:\"金钱\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;}i:3;a:6:{s:5:\"title\";s:4:\"贡献\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;}i:4;a:6:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;}i:5;a:6:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;}i:6;a:6:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;}i:7;a:6:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;}i:8;a:6:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;}}\";}');
INSERT INTO `cdb_projects` VALUES ('3', '动漫、摄影类论坛', 'extcredit', '此类型论坛需要更多的图片附件发布给广大会员，因此增加一项扩展积分：魅力。', 'a:4:{s:10:\"savemethod\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:14:\"creditsformula\";s:86:\"posts+digestposts*2+pageviews/2000+extcredits1*2+extcredits2+extcredits3+extcredits4*3\";s:13:\"creditspolicy\";s:324:\"a:12:{s:4:\"post\";a:1:{i:2;i:1;}s:5:\"reply\";a:0:{}s:6:\"digest\";a:1:{i:1;i:10;}s:10:\"postattach\";a:1:{i:4;i:3;}s:9:\"getattach\";a:1:{i:2;i:-2;}s:2:\"pm\";a:0:{}s:6:\"search\";a:0:{}s:15:\"promotion_visit\";a:1:{i:3;i:2;}s:18:\"promotion_register\";a:1:{i:3;i:2;}s:13:\"tradefinished\";a:0:{}s:8:\"votepoll\";a:0:{}s:10:\"lowerlimit\";a:0:{}}\";s:10:\"extcredits\";s:1454:\"a:8:{i:1;a:8:{s:5:\"title\";s:4:\"威望\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:2;a:8:{s:5:\"title\";s:4:\"金钱\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:3;a:8:{s:5:\"title\";s:4:\"贡献\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:4;a:8:{s:5:\"title\";s:4:\"魅力\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:5;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:6;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:7;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:8;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}}\";}');
INSERT INTO `cdb_projects` VALUES ('4', '文章、小说类论坛', 'extcredit', '此类型的论坛更重视会员的原创文章或者是转发的文章，因此增加一项扩展积分：文采。', 'a:4:{s:10:\"savemethod\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:14:\"creditsformula\";s:57:\"posts+digestposts*8+extcredits2+extcredits3+extcredits4*2\";s:13:\"creditspolicy\";s:307:\"a:12:{s:4:\"post\";a:1:{i:2;i:1;}s:5:\"reply\";a:0:{}s:6:\"digest\";a:1:{i:4;i:10;}s:10:\"postattach\";a:0:{}s:9:\"getattach\";a:0:{}s:2:\"pm\";a:0:{}s:6:\"search\";a:0:{}s:15:\"promotion_visit\";a:1:{i:3;i:2;}s:18:\"promotion_register\";a:1:{i:3;i:2;}s:13:\"tradefinished\";a:0:{}s:8:\"votepoll\";a:0:{}s:10:\"lowerlimit\";a:0:{}}\";s:10:\"extcredits\";s:1454:\"a:8:{i:1;a:8:{s:5:\"title\";s:4:\"威望\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:2;a:8:{s:5:\"title\";s:4:\"金钱\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:3;a:8:{s:5:\"title\";s:4:\"贡献\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:4;a:8:{s:5:\"title\";s:4:\"文采\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:5;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:6;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:7;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:8;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}}\";}');
INSERT INTO `cdb_projects` VALUES ('5', '调研性论坛', 'extcredit', '此类型论坛更期望的是得到会员的建议和意见，主要是通过投票的方式体现会员的建议，因此增加一项积分策略为：参加投票，增加一项扩展积分为：积极性。', 'a:4:{s:10:\"savemethod\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:14:\"creditsformula\";s:63:\"posts*0.5+digestposts*2+extcredits1*2+extcredits3+extcredits4*2\";s:13:\"creditspolicy\";s:306:\"a:12:{s:4:\"post\";a:0:{}s:5:\"reply\";a:0:{}s:6:\"digest\";a:1:{i:1;i:8;}s:10:\"postattach\";a:0:{}s:9:\"getattach\";a:0:{}s:2:\"pm\";a:0:{}s:6:\"search\";a:0:{}s:15:\"promotion_visit\";a:1:{i:3;i:2;}s:18:\"promotion_register\";a:1:{i:3;i:2;}s:13:\"tradefinished\";a:0:{}s:8:\"votepoll\";a:1:{i:4;i:5;}s:10:\"lowerlimit\";a:0:{}}\";s:10:\"extcredits\";s:1456:\"a:8:{i:1;a:8:{s:5:\"title\";s:4:\"威望\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:2;a:8:{s:5:\"title\";s:4:\"金钱\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:3;a:8:{s:5:\"title\";s:4:\"贡献\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:4;a:8:{s:5:\"title\";s:6:\"积极性\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:5;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:6;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:7;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:8;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}}\";}');
INSERT INTO `cdb_projects` VALUES ('6', '贸易性论坛', 'extcredit', '此类型论坛更注重的是会员之间的交易，因此使用积分策略：交易成功，增加一项扩展积分：诚信度。', 'a:4:{s:10:\"savemethod\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:14:\"creditsformula\";s:55:\"posts+digestposts+extcredits1*2+extcredits3+extcredits4\";s:13:\"creditspolicy\";s:306:\"a:12:{s:4:\"post\";a:0:{}s:5:\"reply\";a:0:{}s:6:\"digest\";a:1:{i:1;i:5;}s:10:\"postattach\";a:0:{}s:9:\"getattach\";a:0:{}s:2:\"pm\";a:0:{}s:6:\"search\";a:0:{}s:15:\"promotion_visit\";a:1:{i:3;i:2;}s:18:\"promotion_register\";a:1:{i:3;i:2;}s:13:\"tradefinished\";a:1:{i:4;i:6;}s:8:\"votepoll\";a:0:{}s:10:\"lowerlimit\";a:0:{}}\";s:10:\"extcredits\";s:1456:\"a:8:{i:1;a:8:{s:5:\"title\";s:4:\"威望\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:2;a:8:{s:5:\"title\";s:4:\"金钱\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:3;a:8:{s:5:\"title\";s:4:\"贡献\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:4;a:8:{s:5:\"title\";s:6:\"诚信度\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:5;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:6;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:7;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:8;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}}\";}');
INSERT INTO `cdb_projects` VALUES ('7', '坛内事务类版块', 'forum', '该板块设置了不允许其他模块共享，以及设置了需要很高的权限才能浏览该版块。也适合于保密性高版块。', 'a:33:{s:7:\"styleid\";s:1:\"0\";s:12:\"allowsmilies\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"0\";s:11:\"allowbbcode\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowanonymous\";s:1:\"0\";s:10:\"allowshare\";s:1:\"0\";s:16:\"allowpostspecial\";s:1:\"0\";s:14:\"alloweditrules\";s:1:\"1\";s:10:\"recyclebin\";s:1:\"1\";s:11:\"modnewposts\";s:1:\"0\";s:6:\"jammer\";s:1:\"0\";s:16:\"disablewatermark\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:9:\"autoclose\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"threadcaches\";s:2:\"40\";s:16:\"allowpaytoauthor\";s:1:\"0\";s:13:\"alloweditpost\";s:1:\"1\";s:6:\"simple\";s:1:\"0\";s:11:\"postcredits\";s:0:\"\";s:12:\"replycredits\";s:0:\"\";s:16:\"getattachcredits\";s:0:\"\";s:17:\"postattachcredits\";s:0:\"\";s:13:\"digestcredits\";s:0:\"\";s:16:\"attachextensions\";s:0:\"\";s:11:\"threadtypes\";s:0:\"\";s:8:\"viewperm\";s:7:\"	1	2	3	\";s:8:\"postperm\";s:7:\"	1	2	3	\";s:9:\"replyperm\";s:7:\"	1	2	3	\";s:13:\"getattachperm\";s:7:\"	1	2	3	\";s:14:\"postattachperm\";s:7:\"	1	2	3	\";s:16:\"supe_pushsetting\";s:0:\"\";}');
INSERT INTO `cdb_projects` VALUES ('8', '技术交流类版块', 'forum', '该设置开启了主题缓存系数。其他的权限设置级别较低。', 'a:33:{s:7:\"styleid\";s:1:\"0\";s:12:\"allowsmilies\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"0\";s:11:\"allowbbcode\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowanonymous\";s:1:\"0\";s:10:\"allowshare\";s:1:\"1\";s:16:\"allowpostspecial\";s:1:\"5\";s:14:\"alloweditrules\";s:1:\"0\";s:10:\"recyclebin\";s:1:\"1\";s:11:\"modnewposts\";s:1:\"0\";s:6:\"jammer\";s:1:\"0\";s:16:\"disablewatermark\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:9:\"autoclose\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"threadcaches\";s:2:\"40\";s:16:\"allowpaytoauthor\";s:1:\"1\";s:13:\"alloweditpost\";s:1:\"1\";s:6:\"simple\";s:1:\"0\";s:11:\"postcredits\";s:0:\"\";s:12:\"replycredits\";s:0:\"\";s:16:\"getattachcredits\";s:0:\"\";s:17:\"postattachcredits\";s:0:\"\";s:13:\"digestcredits\";s:0:\"\";s:16:\"attachextensions\";s:0:\"\";s:11:\"threadtypes\";s:0:\"\";s:8:\"viewperm\";s:0:\"\";s:8:\"postperm\";s:0:\"\";s:9:\"replyperm\";s:0:\"\";s:13:\"getattachperm\";s:0:\"\";s:14:\"postattachperm\";s:0:\"\";s:16:\"supe_pushsetting\";s:0:\"\";}');
INSERT INTO `cdb_projects` VALUES ('9', '发布公告类版块', 'forum', '该设置开启了发帖审核，限制了允许发帖的用户组。', 'a:33:{s:7:\"styleid\";s:1:\"0\";s:12:\"allowsmilies\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"0\";s:11:\"allowbbcode\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowanonymous\";s:1:\"0\";s:10:\"allowshare\";s:1:\"1\";s:16:\"allowpostspecial\";s:1:\"1\";s:14:\"alloweditrules\";s:1:\"0\";s:10:\"recyclebin\";s:1:\"1\";s:11:\"modnewposts\";s:1:\"1\";s:6:\"jammer\";s:1:\"1\";s:16:\"disablewatermark\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:9:\"autoclose\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"threadcaches\";s:1:\"0\";s:16:\"allowpaytoauthor\";s:1:\"1\";s:13:\"alloweditpost\";s:1:\"0\";s:6:\"simple\";s:1:\"0\";s:11:\"postcredits\";s:0:\"\";s:12:\"replycredits\";s:0:\"\";s:16:\"getattachcredits\";s:0:\"\";s:17:\"postattachcredits\";s:0:\"\";s:13:\"digestcredits\";s:0:\"\";s:16:\"attachextensions\";s:0:\"\";s:11:\"threadtypes\";s:0:\"\";s:8:\"viewperm\";s:0:\"\";s:8:\"postperm\";s:7:\"	1	2	3	\";s:9:\"replyperm\";s:0:\"\";s:13:\"getattachperm\";s:0:\"\";s:14:\"postattachperm\";s:0:\"\";s:16:\"supe_pushsetting\";s:0:\"\";}');
INSERT INTO `cdb_projects` VALUES ('10', '发起活动类版块', 'forum', '该类型设置里发起主题一个月之后会自动关闭主题。', 'a:33:{s:7:\"styleid\";s:1:\"0\";s:12:\"allowsmilies\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"0\";s:11:\"allowbbcode\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowanonymous\";s:1:\"0\";s:10:\"allowshare\";s:1:\"1\";s:16:\"allowpostspecial\";s:1:\"9\";s:14:\"alloweditrules\";s:1:\"0\";s:10:\"recyclebin\";s:1:\"1\";s:11:\"modnewposts\";s:1:\"0\";s:6:\"jammer\";s:1:\"0\";s:16:\"disablewatermark\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"1\";s:9:\"autoclose\";s:2:\"30\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"threadcaches\";s:2:\"40\";s:16:\"allowpaytoauthor\";s:1:\"1\";s:13:\"alloweditpost\";s:1:\"0\";s:6:\"simple\";s:1:\"0\";s:11:\"postcredits\";s:0:\"\";s:12:\"replycredits\";s:0:\"\";s:16:\"getattachcredits\";s:0:\"\";s:17:\"postattachcredits\";s:0:\"\";s:13:\"digestcredits\";s:0:\"\";s:16:\"attachextensions\";s:0:\"\";s:11:\"threadtypes\";s:0:\"\";s:8:\"viewperm\";s:0:\"\";s:8:\"postperm\";s:22:\"	1	2	3	11	12	13	14	15	\";s:9:\"replyperm\";s:0:\"\";s:13:\"getattachperm\";s:0:\"\";s:14:\"postattachperm\";s:0:\"\";s:16:\"supe_pushsetting\";s:0:\"\";}');
INSERT INTO `cdb_projects` VALUES ('11', '娱乐灌水类版块', 'forum', '该设置了主题缓存系数，开启了所有的特殊主题按钮。', 'a:33:{s:7:\"styleid\";s:1:\"0\";s:12:\"allowsmilies\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"0\";s:11:\"allowbbcode\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowanonymous\";s:1:\"0\";s:10:\"allowshare\";s:1:\"1\";s:16:\"allowpostspecial\";s:2:\"15\";s:14:\"alloweditrules\";s:1:\"0\";s:10:\"recyclebin\";s:1:\"1\";s:11:\"modnewposts\";s:1:\"0\";s:6:\"jammer\";s:1:\"0\";s:16:\"disablewatermark\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:9:\"autoclose\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"threadcaches\";s:2:\"40\";s:16:\"allowpaytoauthor\";s:1:\"1\";s:13:\"alloweditpost\";s:1:\"1\";s:6:\"simple\";s:1:\"0\";s:11:\"postcredits\";s:0:\"\";s:12:\"replycredits\";s:0:\"\";s:16:\"getattachcredits\";s:0:\"\";s:17:\"postattachcredits\";s:0:\"\";s:13:\"digestcredits\";s:0:\"\";s:16:\"attachextensions\";s:0:\"\";s:11:\"threadtypes\";s:0:\"\";s:8:\"viewperm\";s:0:\"\";s:8:\"postperm\";s:0:\"\";s:9:\"replyperm\";s:0:\"\";s:13:\"getattachperm\";s:0:\"\";s:14:\"postattachperm\";s:0:\"\";s:16:\"supe_pushsetting\";s:0:\"\";}');

-- ----------------------------
-- Table structure for `cdb_promotions`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_promotions`;
CREATE TABLE `cdb_promotions` (
  `ip` char(15) NOT NULL default '',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` char(15) NOT NULL default '',
  PRIMARY KEY  (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_promotions
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_prompt`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_prompt`;
CREATE TABLE `cdb_prompt` (
  `uid` mediumint(8) unsigned NOT NULL,
  `typeid` smallint(6) unsigned NOT NULL,
  `number` smallint(6) unsigned NOT NULL,
  PRIMARY KEY  (`uid`,`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_prompt
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_promptmsgs`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_promptmsgs`;
CREATE TABLE `cdb_promptmsgs` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `typeid` smallint(6) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `extraid` int(10) unsigned NOT NULL default '0',
  `new` tinyint(1) NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `message` text NOT NULL,
  `actor` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`,`typeid`),
  KEY `new` (`new`),
  KEY `dateline` (`dateline`),
  KEY `extraid` (`extraid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_promptmsgs
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_prompttype`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_prompttype`;
CREATE TABLE `cdb_prompttype` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `key` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `script` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_prompttype
-- ----------------------------
INSERT INTO `cdb_prompttype` VALUES ('1', 'pm', '私人消息', 'pm.php?filter=newpm');
INSERT INTO `cdb_prompttype` VALUES ('2', 'announcepm', '公共消息', 'pm.php?filter=announcepm');
INSERT INTO `cdb_prompttype` VALUES ('3', 'task', '论坛任务', 'task.php?item=doing');
INSERT INTO `cdb_prompttype` VALUES ('4', 'systempm', '系统消息', '');
INSERT INTO `cdb_prompttype` VALUES ('5', 'friend', '好友消息', '');
INSERT INTO `cdb_prompttype` VALUES ('6', 'threads', '帖子消息', '');

-- ----------------------------
-- Table structure for `cdb_ranks`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_ranks`;
CREATE TABLE `cdb_ranks` (
  `rankid` smallint(6) unsigned NOT NULL auto_increment,
  `ranktitle` varchar(30) NOT NULL default '',
  `postshigher` mediumint(8) unsigned NOT NULL default '0',
  `stars` tinyint(3) NOT NULL default '0',
  `color` varchar(7) NOT NULL default '',
  PRIMARY KEY  (`rankid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_ranks
-- ----------------------------
INSERT INTO `cdb_ranks` VALUES ('1', '新生入学', '0', '1', '');
INSERT INTO `cdb_ranks` VALUES ('2', '小试牛刀', '50', '2', '');
INSERT INTO `cdb_ranks` VALUES ('3', '实习记者', '300', '5', '');
INSERT INTO `cdb_ranks` VALUES ('4', '自由撰稿人', '1000', '4', '');
INSERT INTO `cdb_ranks` VALUES ('5', '特聘作家', '3000', '5', '');

-- ----------------------------
-- Table structure for `cdb_ratelog`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_ratelog`;
CREATE TABLE `cdb_ratelog` (
  `pid` int(10) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` char(15) NOT NULL default '',
  `extcredits` tinyint(1) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `score` smallint(6) NOT NULL default '0',
  `reason` char(40) NOT NULL default '',
  KEY `pid` (`pid`,`dateline`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_ratelog
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_regips`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_regips`;
CREATE TABLE `cdb_regips` (
  `ip` char(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `count` smallint(6) NOT NULL default '0',
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_regips
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_relatedthreads`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_relatedthreads`;
CREATE TABLE `cdb_relatedthreads` (
  `tid` mediumint(8) NOT NULL default '0',
  `type` enum('general','trade') NOT NULL default 'general',
  `expiration` int(10) NOT NULL default '0',
  `keywords` varchar(255) NOT NULL default '',
  `relatedthreads` text NOT NULL,
  PRIMARY KEY  (`tid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_relatedthreads
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_reportlog`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_reportlog`;
CREATE TABLE `cdb_reportlog` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `fid` smallint(6) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL,
  `username` char(15) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL default '1',
  `type` tinyint(1) NOT NULL,
  `reason` char(40) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `pid` (`pid`,`uid`),
  KEY `dateline` (`fid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_reportlog
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_request`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_request`;
CREATE TABLE `cdb_request` (
  `variable` varchar(32) NOT NULL default '',
  `value` mediumtext NOT NULL,
  `type` tinyint(1) NOT NULL,
  `system` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`variable`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_request
-- ----------------------------
INSERT INTO `cdb_request` VALUES ('边栏模块_版块树形列表', 'a:4:{s:3:\"url\";s:83:\"function=module&module=forumtree.inc.php&settings=N%3B&jscharset=0&cachelife=864000\";s:9:\"parameter\";a:3:{s:6:\"module\";s:17:\"forumtree.inc.php\";s:9:\"cachelife\";s:6:\"864000\";s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:30:\"边栏版块树形列表模块\";s:4:\"type\";s:1:\"5\";}', '5', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_版主排行', 'a:4:{s:3:\"url\";s:79:\"function=module&module=modlist.inc.php&settings=N%3B&jscharset=0&cachelife=3600\";s:9:\"parameter\";a:3:{s:6:\"module\";s:15:\"modlist.inc.php\";s:9:\"cachelife\";s:4:\"3600\";s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:24:\"边栏版主排行模块\";s:4:\"type\";s:1:\"5\";}', '5', '0');
INSERT INTO `cdb_request` VALUES ('聚合模块_版块列表', 'a:4:{s:3:\"url\";s:382:\"function=module&module=rowcombine.inc.php&settings=a%3A1%3A%7Bs%3A4%3A%22data%22%3Bs%3A84%3A%22%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E7%89%88%E5%9D%97%E6%8E%92%E8%A1%8C%2C%E7%89%88%E5%9D%97%E6%8E%92%E8%A1%8C%0D%0A%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E7%89%88%E5%9D%97%E6%A0%91%E5%BD%A2%E5%88%97%E8%A1%A8%2C%E7%89%88%E5%9D%97%E5%88%97%E8%A1%A8%22%3B%7D&jscharset=0&cachelife=864000&\";s:9:\"parameter\";a:4:{s:6:\"module\";s:18:\"rowcombine.inc.php\";s:9:\"cachelife\";s:6:\"864000\";s:8:\"settings\";a:1:{s:4:\"data\";s:84:\"边栏模块_版块排行,版块排行\r\n边栏模块_版块树形列表,版块列表\";}s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:39:\"热门版块、版块树形聚合模块\";s:4:\"type\";s:1:\"5\";}', '5', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_版块排行', 'a:4:{s:3:\"url\";s:482:\"function=forums&startrow=0&items=0&newwindow=1&orderby=posts&jscharset=0&cachelife=43200&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E7%89%88%E5%9D%97%E6%8E%92%E8%A1%8C%3C%2Fh4%3E%0D%0A%3Cul%20class%3D%5C%22textinfolist%5C%22%3E%0D%0A%5Bnode%5D%3Cli%3E%3Cimg%20style%3D%5C%22vertical-align%3Amiddle%5C%22%20src%3D%5C%22images%2Fdefault%2Ftree_file.gif%5C%22%20%2F%3E%20%7Bforumname%7D%28%7Bposts%7D%29%3C%2Fli%3E%5B%2Fnode%5D%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E&\";s:9:\"parameter\";a:7:{s:10:\"jstemplate\";s:211:\"<div class=\\\"sidebox\\\">\r\n<h4>版块排行</h4>\r\n<ul class=\\\"textinfolist\\\">\r\n[node]<li><img style=\\\"vertical-align:middle\\\" src=\\\"images/default/tree_file.gif\\\" /> {forumname}({posts})</li>[/node]\r\n</ul>\r\n</div>\";s:9:\"cachelife\";s:5:\"43200\";s:8:\"startrow\";s:1:\"0\";s:5:\"items\";s:1:\"0\";s:9:\"newwindow\";i:1;s:7:\"orderby\";s:5:\"posts\";s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:24:\"边栏版块排行模块\";s:4:\"type\";s:1:\"1\";}', '1', '0');
INSERT INTO `cdb_request` VALUES ('聚合模块_热门主题', 'a:4:{s:3:\"url\";s:533:\"function=module&module=rowcombine.inc.php&settings=a%3A2%3A%7Bs%3A5%3A%22title%22%3Bs%3A12%3A%22%E7%83%AD%E9%97%A8%E4%B8%BB%E9%A2%98%22%3Bs%3A4%3A%22data%22%3Bs%3A112%3A%22%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E7%83%AD%E9%97%A8%E4%B8%BB%E9%A2%98_%E4%BB%8A%E6%97%A5%2C%E6%97%A5%0D%0A%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E7%83%AD%E9%97%A8%E4%B8%BB%E9%A2%98_%E6%9C%AC%E5%91%A8%2C%E5%91%A8%0D%0A%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E7%83%AD%E9%97%A8%E4%B8%BB%E9%A2%98_%E6%9C%AC%E6%9C%88%2C%E6%9C%88%22%3B%7D&jscharset=0&cachelife=1800&\";s:9:\"parameter\";a:4:{s:6:\"module\";s:18:\"rowcombine.inc.php\";s:9:\"cachelife\";s:4:\"1800\";s:8:\"settings\";a:2:{s:5:\"title\";s:12:\"热门主题\";s:4:\"data\";s:112:\"边栏模块_热门主题_今日,日\r\n边栏模块_热门主题_本周,周\r\n边栏模块_热门主题_本月,月\";}s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:48:\"今日、本周、本月热门主题聚合模块\";s:4:\"type\";s:1:\"5\";}', '5', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_热门主题_本月', 'a:4:{s:3:\"url\";s:556:\"function=threads&sidestatus=0&maxlength=20&fnamelength=0&messagelength=&startrow=0&picpre=images%2Fcommon%2Fslisticon.gif&items=5&tag=&tids=&special=0&rewardstatus=&digest=0&stick=0&recommend=0&newwindow=1&threadtype=0&highlight=0&orderby=hourviews&hours=720&jscharset=0&cachelife=86400&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%AC%E6%9C%88%E7%83%AD%E9%97%A8%3C%2Fh4%3E%0D%0A%3Cul%20class%3D%5C%22textinfolist%5C%22%3E%0D%0A%5Bnode%5D%3Cli%3E%7Bprefix%7D%7Bsubject%7D%3C%2Fli%3E%5B%2Fnode%5D%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E&\";s:9:\"parameter\";a:19:{s:10:\"jstemplate\";s:131:\"<div class=\\\"sidebox\\\">\r\n<h4>本月热门</h4>\r\n<ul class=\\\"textinfolist\\\">\r\n[node]<li>{prefix}{subject}</li>[/node]\r\n</ul>\r\n</div>\";s:9:\"cachelife\";s:5:\"86400\";s:10:\"sidestatus\";s:1:\"0\";s:8:\"startrow\";s:1:\"0\";s:5:\"items\";s:1:\"5\";s:9:\"maxlength\";s:2:\"20\";s:11:\"fnamelength\";s:1:\"0\";s:13:\"messagelength\";s:0:\"\";s:6:\"picpre\";s:27:\"images/common/slisticon.gif\";s:4:\"tids\";s:0:\"\";s:7:\"keyword\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:10:\"threadtype\";s:1:\"0\";s:9:\"highlight\";s:1:\"0\";s:9:\"recommend\";s:1:\"0\";s:9:\"newwindow\";i:1;s:7:\"orderby\";s:9:\"hourviews\";s:5:\"hours\";s:3:\"720\";s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:30:\"边栏本月热门主题模块\";s:4:\"type\";s:1:\"0\";}', '0', '0');
INSERT INTO `cdb_request` VALUES ('聚合模块_会员排行', 'a:4:{s:3:\"url\";s:533:\"function=module&module=rowcombine.inc.php&settings=a%3A2%3A%7Bs%3A5%3A%22title%22%3Bs%3A12%3A%22%E4%BC%9A%E5%91%98%E6%8E%92%E8%A1%8C%22%3Bs%3A4%3A%22data%22%3Bs%3A112%3A%22%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E4%BC%9A%E5%91%98%E6%8E%92%E8%A1%8C_%E4%BB%8A%E6%97%A5%2C%E6%97%A5%0D%0A%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E4%BC%9A%E5%91%98%E6%8E%92%E8%A1%8C_%E6%9C%AC%E5%91%A8%2C%E5%91%A8%0D%0A%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E4%BC%9A%E5%91%98%E6%8E%92%E8%A1%8C_%E6%9C%AC%E6%9C%88%2C%E6%9C%88%22%3B%7D&jscharset=0&cachelife=3600&\";s:9:\"parameter\";a:4:{s:6:\"module\";s:18:\"rowcombine.inc.php\";s:9:\"cachelife\";s:4:\"3600\";s:8:\"settings\";a:2:{s:5:\"title\";s:12:\"会员排行\";s:4:\"data\";s:112:\"边栏模块_会员排行_今日,日\r\n边栏模块_会员排行_本周,周\r\n边栏模块_会员排行_本月,月\";}s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:48:\"今日、本周、本月会员排行聚合模块\";s:4:\"type\";s:1:\"5\";}', '5', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_推荐主题', 'a:4:{s:3:\"url\";s:553:\"function=threads&sidestatus=0&maxlength=20&fnamelength=0&messagelength=&startrow=0&picpre=images%2Fcommon%2Fslisticon.gif&items=5&tag=&tids=&special=0&rewardstatus=&digest=0&stick=0&recommend=1&newwindow=1&threadtype=0&highlight=0&orderby=lastpost&hours=48&jscharset=0&cachelife=3600&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%8E%A8%E8%8D%90%E4%B8%BB%E9%A2%98%3C%2Fh4%3E%0D%0A%3Cul%20class%3D%5C%22textinfolist%5C%22%3E%0D%0A%5Bnode%5D%3Cli%3E%7Bprefix%7D%7Bsubject%7D%3C%2Fli%3E%5B%2Fnode%5D%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E&\";s:9:\"parameter\";a:19:{s:10:\"jstemplate\";s:131:\"<div class=\\\"sidebox\\\">\r\n<h4>推荐主题</h4>\r\n<ul class=\\\"textinfolist\\\">\r\n[node]<li>{prefix}{subject}</li>[/node]\r\n</ul>\r\n</div>\";s:9:\"cachelife\";s:4:\"3600\";s:10:\"sidestatus\";s:1:\"0\";s:8:\"startrow\";s:1:\"0\";s:5:\"items\";s:1:\"5\";s:9:\"maxlength\";s:2:\"20\";s:11:\"fnamelength\";s:1:\"0\";s:13:\"messagelength\";s:0:\"\";s:6:\"picpre\";s:27:\"images/common/slisticon.gif\";s:4:\"tids\";s:0:\"\";s:7:\"keyword\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:10:\"threadtype\";s:1:\"0\";s:9:\"highlight\";s:1:\"0\";s:9:\"recommend\";s:1:\"1\";s:9:\"newwindow\";i:1;s:7:\"orderby\";s:8:\"lastpost\";s:5:\"hours\";s:2:\"48\";s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:24:\"边栏推荐主题模块\";s:4:\"type\";s:1:\"0\";}', '0', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_最新图片', 'a:4:{s:3:\"url\";s:1385:\"function=images&sidestatus=0&isimage=1&threadmethod=1&maxwidth=140&maxheight=140&startrow=0&items=5&orderby=dateline&hours=0&digest=0&newwindow=1&jscharset=0&jstemplate=%3Cdiv%20%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%80%E6%96%B0%E5%9B%BE%E7%89%87%3C%2Fh4%3E%0D%0A%3Cscript%20type%3D%5C%22text%2Fjavascript%5C%22%3E%0D%0Avar%20slideSpeed%20%3D%202500%3B%0D%0Avar%20slideImgsize%20%3D%20%5B140%2C140%5D%3B%0D%0Avar%20slideTextBar%20%3D%200%3B%0D%0Avar%20slideBorderColor%20%3D%20%5C%27%23C8DCEC%5C%27%3B%0D%0Avar%20slideBgColor%20%3D%20%5C%27%23FFF%5C%27%3B%0D%0Avar%20slideImgs%20%3D%20new%20Array%28%29%3B%0D%0Avar%20slideImgLinks%20%3D%20new%20Array%28%29%3B%0D%0Avar%20slideImgTexts%20%3D%20new%20Array%28%29%3B%0D%0Avar%20slideSwitchBar%20%3D%201%3B%0D%0Avar%20slideSwitchColor%20%3D%20%5C%27black%5C%27%3B%0D%0Avar%20slideSwitchbgColor%20%3D%20%5C%27white%5C%27%3B%0D%0Avar%20slideSwitchHiColor%20%3D%20%5C%27%23C8DCEC%5C%27%3B%0D%0A%5Bnode%5D%0D%0AslideImgs%5B%7Border%7D%5D%20%3D%20%5C%22%7Bimgfile%7D%5C%22%3B%0D%0AslideImgLinks%5B%7Border%7D%5D%20%3D%20%5C%22%7Blink%7D%5C%22%3B%0D%0AslideImgTexts%5B%7Border%7D%5D%20%3D%20%5C%22%7Bsubject%7D%5C%22%3B%0D%0A%5B%2Fnode%5D%0D%0A%3C%2Fscript%3E%0D%0A%3Cscript%20language%3D%5C%22javascript%5C%22%20type%3D%5C%22text%2Fjavascript%5C%22%20src%3D%5C%22include%2Fjs%2Fslide.js%5C%22%3E%3C%2Fscript%3E%0D%0A%3C%2Fdiv%3E&\";s:9:\"parameter\";a:13:{s:10:\"jstemplate\";s:709:\"<div  class=\\\"sidebox\\\">\r\n<h4>最新图片</h4>\r\n<script type=\\\"text/javascript\\\">\r\nvar slideSpeed = 2500;\r\nvar slideImgsize = [140,140];\r\nvar slideTextBar = 0;\r\nvar slideBorderColor = \\\'#C8DCEC\\\';\r\nvar slideBgColor = \\\'#FFF\\\';\r\nvar slideImgs = new Array();\r\nvar slideImgLinks = new Array();\r\nvar slideImgTexts = new Array();\r\nvar slideSwitchBar = 1;\r\nvar slideSwitchColor = \\\'black\\\';\r\nvar slideSwitchbgColor = \\\'white\\\';\r\nvar slideSwitchHiColor = \\\'#C8DCEC\\\';\r\n[node]\r\nslideImgs[{order}] = \\\"{imgfile}\\\";\r\nslideImgLinks[{order}] = \\\"{link}\\\";\r\nslideImgTexts[{order}] = \\\"{subject}\\\";\r\n[/node]\r\n</script>\r\n<script language=\\\"javascript\\\" type=\\\"text/javascript\\\" src=\\\"include/js/slide.js\\\"></script>\r\n</div>\";s:9:\"cachelife\";s:0:\"\";s:10:\"sidestatus\";s:1:\"0\";s:8:\"startrow\";s:1:\"0\";s:5:\"items\";s:1:\"5\";s:7:\"isimage\";s:1:\"1\";s:8:\"maxwidth\";s:3:\"140\";s:9:\"maxheight\";s:3:\"140\";s:12:\"threadmethod\";s:1:\"1\";s:9:\"newwindow\";i:1;s:7:\"orderby\";s:8:\"dateline\";s:5:\"hours\";s:0:\"\";s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:30:\"边栏最新图片展示模块\";s:4:\"type\";s:1:\"4\";}', '4', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_最新主题', 'a:4:{s:3:\"url\";s:537:\"function=threads&sidestatus=0&maxlength=20&fnamelength=0&messagelength=&startrow=0&picpre=images%2Fcommon%2Fslisticon.gif&items=5&tag=&tids=&special=0&rewardstatus=&digest=0&stick=0&recommend=0&newwindow=1&threadtype=0&highlight=0&orderby=dateline&hours=0&jscharset=0&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%80%E6%96%B0%E4%B8%BB%E9%A2%98%3C%2Fh4%3E%0D%0A%3Cul%20class%3D%5C%22textinfolist%5C%22%3E%0D%0A%5Bnode%5D%3Cli%3E%7Bprefix%7D%7Bsubject%7D%3C%2Fli%3E%5B%2Fnode%5D%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E&\";s:9:\"parameter\";a:19:{s:10:\"jstemplate\";s:131:\"<div class=\\\"sidebox\\\">\r\n<h4>最新主题</h4>\r\n<ul class=\\\"textinfolist\\\">\r\n[node]<li>{prefix}{subject}</li>[/node]\r\n</ul>\r\n</div>\";s:9:\"cachelife\";s:0:\"\";s:10:\"sidestatus\";s:1:\"0\";s:8:\"startrow\";s:1:\"0\";s:5:\"items\";s:1:\"5\";s:9:\"maxlength\";s:2:\"20\";s:11:\"fnamelength\";s:1:\"0\";s:13:\"messagelength\";s:0:\"\";s:6:\"picpre\";s:27:\"images/common/slisticon.gif\";s:4:\"tids\";s:0:\"\";s:7:\"keyword\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:10:\"threadtype\";s:1:\"0\";s:9:\"highlight\";s:1:\"0\";s:9:\"recommend\";s:1:\"0\";s:9:\"newwindow\";i:1;s:7:\"orderby\";s:8:\"dateline\";s:5:\"hours\";s:0:\"\";s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:24:\"边栏最新主题模块\";s:4:\"type\";s:1:\"0\";}', '0', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_活跃会员', 'a:4:{s:3:\"url\";s:381:\"function=memberrank&startrow=0&items=12&newwindow=1&extcredit=1&orderby=posts&hours=0&jscharset=0&cachelife=43200&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%B4%BB%E8%B7%83%E4%BC%9A%E5%91%98%3C%2Fh4%3E%0D%0A%3Cul%20class%3D%5C%22avt_list%20s_clear%5C%22%3E%0D%0A%5Bnode%5D%3Cli%3E%7Bavatarsmall%7D%3C%2Fli%3E%5B%2Fnode%5D%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E&\";s:9:\"parameter\";a:9:{s:10:\"jstemplate\";s:131:\"<div class=\\\"sidebox\\\">\r\n<h4>活跃会员</h4>\r\n<ul class=\\\"avt_list s_clear\\\">\r\n[node]<li>{avatarsmall}</li>[/node]\r\n</ul>\r\n</div>\";s:9:\"cachelife\";s:5:\"43200\";s:8:\"startrow\";s:1:\"0\";s:5:\"items\";s:2:\"12\";s:9:\"newwindow\";i:1;s:9:\"extcredit\";s:1:\"1\";s:7:\"orderby\";s:5:\"posts\";s:5:\"hours\";s:0:\"\";s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:24:\"边栏活跃会员模块\";s:4:\"type\";s:1:\"2\";}', '2', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_热门主题_本版', 'a:4:{s:3:\"url\";s:569:\"function=threads&sidestatus=1&maxlength=20&fnamelength=0&messagelength=&startrow=0&picpre=images%2Fcommon%2Fslisticon.gif&items=5&tag=&tids=&special=0&rewardstatus=&digest=0&stick=0&recommend=0&newwindow=1&threadtype=0&highlight=0&orderby=replies&hours=0&jscharset=0&cachelife=1800&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%AC%E7%89%88%E7%83%AD%E9%97%A8%E4%B8%BB%E9%A2%98%3C%2Fh4%3E%0D%0A%3Cul%20class%3D%5C%22textinfolist%5C%22%3E%0D%0A%5Bnode%5D%3Cli%3E%7Bprefix%7D%7Bsubject%7D%3C%2Fli%3E%5B%2Fnode%5D%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E&\";s:9:\"parameter\";a:19:{s:10:\"jstemplate\";s:137:\"<div class=\\\"sidebox\\\">\r\n<h4>本版热门主题</h4>\r\n<ul class=\\\"textinfolist\\\">\r\n[node]<li>{prefix}{subject}</li>[/node]\r\n</ul>\r\n</div>\";s:9:\"cachelife\";s:4:\"1800\";s:10:\"sidestatus\";s:1:\"1\";s:8:\"startrow\";s:1:\"0\";s:5:\"items\";s:1:\"5\";s:9:\"maxlength\";s:2:\"20\";s:11:\"fnamelength\";s:1:\"0\";s:13:\"messagelength\";s:0:\"\";s:6:\"picpre\";s:27:\"images/common/slisticon.gif\";s:4:\"tids\";s:0:\"\";s:7:\"keyword\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:10:\"threadtype\";s:1:\"0\";s:9:\"highlight\";s:1:\"0\";s:9:\"recommend\";s:1:\"0\";s:9:\"newwindow\";i:1;s:7:\"orderby\";s:7:\"replies\";s:5:\"hours\";s:0:\"\";s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:30:\"边栏本版热门主题模块\";s:4:\"type\";s:1:\"0\";}', '0', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_热门主题_今日', 'a:4:{s:3:\"url\";s:554:\"function=threads&sidestatus=0&maxlength=20&fnamelength=0&messagelength=&startrow=0&picpre=images%2Fcommon%2Fslisticon.gif&items=5&tag=&tids=&special=0&rewardstatus=&digest=0&stick=0&recommend=0&newwindow=1&threadtype=0&highlight=0&orderby=hourviews&hours=24&jscharset=0&cachelife=1800&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E4%BB%8A%E6%97%A5%E7%83%AD%E9%97%A8%3C%2Fh4%3E%0D%0A%3Cul%20class%3D%5C%22textinfolist%5C%22%3E%0D%0A%5Bnode%5D%3Cli%3E%7Bprefix%7D%7Bsubject%7D%3C%2Fli%3E%5B%2Fnode%5D%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E&\";s:9:\"parameter\";a:19:{s:10:\"jstemplate\";s:131:\"<div class=\\\"sidebox\\\">\r\n<h4>今日热门</h4>\r\n<ul class=\\\"textinfolist\\\">\r\n[node]<li>{prefix}{subject}</li>[/node]\r\n</ul>\r\n</div>\";s:9:\"cachelife\";s:4:\"1800\";s:10:\"sidestatus\";s:1:\"0\";s:8:\"startrow\";s:1:\"0\";s:5:\"items\";s:1:\"5\";s:9:\"maxlength\";s:2:\"20\";s:11:\"fnamelength\";s:1:\"0\";s:13:\"messagelength\";s:0:\"\";s:6:\"picpre\";s:27:\"images/common/slisticon.gif\";s:4:\"tids\";s:0:\"\";s:7:\"keyword\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:10:\"threadtype\";s:1:\"0\";s:9:\"highlight\";s:1:\"0\";s:9:\"recommend\";s:1:\"0\";s:9:\"newwindow\";i:1;s:7:\"orderby\";s:9:\"hourviews\";s:5:\"hours\";s:2:\"24\";s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:30:\"边栏今日热门主题模块\";s:4:\"type\";s:1:\"0\";}', '0', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_最新回复', 'a:4:{s:3:\"url\";s:537:\"function=threads&sidestatus=0&maxlength=20&fnamelength=0&messagelength=&startrow=0&picpre=images%2Fcommon%2Fslisticon.gif&items=5&tag=&tids=&special=0&rewardstatus=&digest=0&stick=0&recommend=0&newwindow=1&threadtype=0&highlight=0&orderby=lastpost&hours=0&jscharset=0&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%80%E6%96%B0%E5%9B%9E%E5%A4%8D%3C%2Fh4%3E%0D%0A%3Cul%20class%3D%5C%22textinfolist%5C%22%3E%0D%0A%5Bnode%5D%3Cli%3E%7Bprefix%7D%7Bsubject%7D%3C%2Fli%3E%5B%2Fnode%5D%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E&\";s:9:\"parameter\";a:19:{s:10:\"jstemplate\";s:131:\"<div class=\\\"sidebox\\\">\r\n<h4>最新回复</h4>\r\n<ul class=\\\"textinfolist\\\">\r\n[node]<li>{prefix}{subject}</li>[/node]\r\n</ul>\r\n</div>\";s:9:\"cachelife\";s:0:\"\";s:10:\"sidestatus\";s:1:\"0\";s:8:\"startrow\";s:1:\"0\";s:5:\"items\";s:1:\"5\";s:9:\"maxlength\";s:2:\"20\";s:11:\"fnamelength\";s:1:\"0\";s:13:\"messagelength\";s:0:\"\";s:6:\"picpre\";s:27:\"images/common/slisticon.gif\";s:4:\"tids\";s:0:\"\";s:7:\"keyword\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:10:\"threadtype\";s:1:\"0\";s:9:\"highlight\";s:1:\"0\";s:9:\"recommend\";s:1:\"0\";s:9:\"newwindow\";i:1;s:7:\"orderby\";s:8:\"lastpost\";s:5:\"hours\";s:0:\"\";s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:24:\"边栏最新回复模块\";s:4:\"type\";s:1:\"0\";}', '0', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_最新图片_本版', 'a:4:{s:3:\"url\";s:1385:\"function=images&sidestatus=1&isimage=1&threadmethod=1&maxwidth=140&maxheight=140&startrow=0&items=5&orderby=dateline&hours=0&digest=0&newwindow=1&jscharset=0&jstemplate=%3Cdiv%20%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%80%E6%96%B0%E5%9B%BE%E7%89%87%3C%2Fh4%3E%0D%0A%3Cscript%20type%3D%5C%22text%2Fjavascript%5C%22%3E%0D%0Avar%20slideSpeed%20%3D%202500%3B%0D%0Avar%20slideImgsize%20%3D%20%5B140%2C140%5D%3B%0D%0Avar%20slideTextBar%20%3D%200%3B%0D%0Avar%20slideBorderColor%20%3D%20%5C%27%23C8DCEC%5C%27%3B%0D%0Avar%20slideBgColor%20%3D%20%5C%27%23FFF%5C%27%3B%0D%0Avar%20slideImgs%20%3D%20new%20Array%28%29%3B%0D%0Avar%20slideImgLinks%20%3D%20new%20Array%28%29%3B%0D%0Avar%20slideImgTexts%20%3D%20new%20Array%28%29%3B%0D%0Avar%20slideSwitchBar%20%3D%201%3B%0D%0Avar%20slideSwitchColor%20%3D%20%5C%27black%5C%27%3B%0D%0Avar%20slideSwitchbgColor%20%3D%20%5C%27white%5C%27%3B%0D%0Avar%20slideSwitchHiColor%20%3D%20%5C%27%23C8DCEC%5C%27%3B%0D%0A%5Bnode%5D%0D%0AslideImgs%5B%7Border%7D%5D%20%3D%20%5C%22%7Bimgfile%7D%5C%22%3B%0D%0AslideImgLinks%5B%7Border%7D%5D%20%3D%20%5C%22%7Blink%7D%5C%22%3B%0D%0AslideImgTexts%5B%7Border%7D%5D%20%3D%20%5C%22%7Bsubject%7D%5C%22%3B%0D%0A%5B%2Fnode%5D%0D%0A%3C%2Fscript%3E%0D%0A%3Cscript%20language%3D%5C%22javascript%5C%22%20type%3D%5C%22text%2Fjavascript%5C%22%20src%3D%5C%22include%2Fjs%2Fslide.js%5C%22%3E%3C%2Fscript%3E%0D%0A%3C%2Fdiv%3E&\";s:9:\"parameter\";a:13:{s:10:\"jstemplate\";s:709:\"<div  class=\\\"sidebox\\\">\r\n<h4>最新图片</h4>\r\n<script type=\\\"text/javascript\\\">\r\nvar slideSpeed = 2500;\r\nvar slideImgsize = [140,140];\r\nvar slideTextBar = 0;\r\nvar slideBorderColor = \\\'#C8DCEC\\\';\r\nvar slideBgColor = \\\'#FFF\\\';\r\nvar slideImgs = new Array();\r\nvar slideImgLinks = new Array();\r\nvar slideImgTexts = new Array();\r\nvar slideSwitchBar = 1;\r\nvar slideSwitchColor = \\\'black\\\';\r\nvar slideSwitchbgColor = \\\'white\\\';\r\nvar slideSwitchHiColor = \\\'#C8DCEC\\\';\r\n[node]\r\nslideImgs[{order}] = \\\"{imgfile}\\\";\r\nslideImgLinks[{order}] = \\\"{link}\\\";\r\nslideImgTexts[{order}] = \\\"{subject}\\\";\r\n[/node]\r\n</script>\r\n<script language=\\\"javascript\\\" type=\\\"text/javascript\\\" src=\\\"include/js/slide.js\\\"></script>\r\n</div>\";s:9:\"cachelife\";s:0:\"\";s:10:\"sidestatus\";s:1:\"1\";s:8:\"startrow\";s:1:\"0\";s:5:\"items\";s:1:\"5\";s:7:\"isimage\";s:1:\"1\";s:8:\"maxwidth\";s:3:\"140\";s:9:\"maxheight\";s:3:\"140\";s:12:\"threadmethod\";s:1:\"1\";s:9:\"newwindow\";i:1;s:7:\"orderby\";s:8:\"dateline\";s:5:\"hours\";s:0:\"\";s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:36:\"边栏本版最新图片展示模块\";s:4:\"type\";s:1:\"4\";}', '4', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_标签', 'a:4:{s:3:\"url\";s:126:\"function=module&module=tag.inc.php&settings=a%3A1%3A%7Bs%3A5%3A%22limit%22%3Bs%3A2%3A%2220%22%3B%7D&jscharset=0&cachelife=900&\";s:9:\"parameter\";a:4:{s:6:\"module\";s:11:\"tag.inc.php\";s:9:\"cachelife\";s:3:\"900\";s:8:\"settings\";a:1:{s:5:\"limit\";s:2:\"20\";}s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:18:\"边栏标签模块\";s:4:\"type\";s:1:\"5\";}', '5', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_会员排行_本月', 'a:4:{s:3:\"url\";s:574:\"function=memberrank&startrow=0&items=5&newwindow=1&extcredit=1&orderby=hourposts&hours=720&jscharset=0&cachelife=86400&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%AC%E6%9C%88%E6%8E%92%E8%A1%8C%3C%2Fh4%3E%0D%0A%5Bnode%5D%3Cdiv%20class%3D%5C%22s_clear%5C%22%20style%3D%5C%22margin-bottom%3A%205px%3B%5C%22%3E%3Cdiv%20style%3D%5C%22margin-right%3A%2010px%3B%20float%3A%20left%3B%5C%22%3E%7Bavatarsmall%7D%3C%2Fdiv%3E%3Cp%3E%7Bmember%7D%3C%2Fp%3E%3Cp%3E%E5%8F%91%E5%B8%96%20%7Bvalue%7D%20%E7%AF%87%3C%2Fp%3E%3C%2Fdiv%3E%5B%2Fnode%5D%0D%0A%3C%2Fdiv%3E&\";s:9:\"parameter\";a:9:{s:10:\"jstemplate\";s:235:\"<div class=\\\"sidebox\\\">\r\n<h4>本月排行</h4>\r\n[node]<div class=\\\"s_clear\\\" style=\\\"margin-bottom: 5px;\\\"><div style=\\\"margin-right: 10px; float: left;\\\">{avatarsmall}</div><p>{member}</p><p>发帖 {value} 篇</p></div>[/node]\r\n</div>\";s:9:\"cachelife\";s:5:\"86400\";s:8:\"startrow\";s:1:\"0\";s:5:\"items\";s:1:\"5\";s:9:\"newwindow\";i:1;s:9:\"extcredit\";s:1:\"1\";s:7:\"orderby\";s:9:\"hourposts\";s:5:\"hours\";s:3:\"720\";s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:36:\"边栏会员本月发帖排行模块\";s:4:\"type\";s:1:\"2\";}', '2', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_会员排行_本周', 'a:4:{s:3:\"url\";s:574:\"function=memberrank&startrow=0&items=5&newwindow=1&extcredit=1&orderby=hourposts&hours=168&jscharset=0&cachelife=43200&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%AC%E5%91%A8%E6%8E%92%E8%A1%8C%3C%2Fh4%3E%0D%0A%5Bnode%5D%3Cdiv%20class%3D%5C%22s_clear%5C%22%20style%3D%5C%22margin-bottom%3A%205px%3B%5C%22%3E%3Cdiv%20style%3D%5C%22margin-right%3A%2010px%3B%20float%3A%20left%3B%5C%22%3E%7Bavatarsmall%7D%3C%2Fdiv%3E%3Cp%3E%7Bmember%7D%3C%2Fp%3E%3Cp%3E%E5%8F%91%E5%B8%96%20%7Bvalue%7D%20%E7%AF%87%3C%2Fp%3E%3C%2Fdiv%3E%5B%2Fnode%5D%0D%0A%3C%2Fdiv%3E&\";s:9:\"parameter\";a:9:{s:10:\"jstemplate\";s:235:\"<div class=\\\"sidebox\\\">\r\n<h4>本周排行</h4>\r\n[node]<div class=\\\"s_clear\\\" style=\\\"margin-bottom: 5px;\\\"><div style=\\\"margin-right: 10px; float: left;\\\">{avatarsmall}</div><p>{member}</p><p>发帖 {value} 篇</p></div>[/node]\r\n</div>\";s:9:\"cachelife\";s:5:\"43200\";s:8:\"startrow\";s:1:\"0\";s:5:\"items\";s:1:\"5\";s:9:\"newwindow\";i:1;s:9:\"extcredit\";s:1:\"1\";s:7:\"orderby\";s:9:\"hourposts\";s:5:\"hours\";s:3:\"168\";s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:36:\"边栏会员本周发帖排行模块\";s:4:\"type\";s:1:\"2\";}', '2', '0');
INSERT INTO `cdb_request` VALUES ('边栏方案_主题列表页默认', 'a:4:{s:3:\"url\";s:432:\"function=side&jscharset=&jstemplate=%5Bmodule%5D%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E6%88%91%E7%9A%84%E5%8A%A9%E6%89%8B%5B%2Fmodule%5D%3Chr%20class%3D%22shadowline%22%2F%3E%5Bmodule%5D%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E7%83%AD%E9%97%A8%E4%B8%BB%E9%A2%98_%E6%9C%AC%E7%89%88%5B%2Fmodule%5D%3Chr%20class%3D%22shadowline%22%2F%3E%5Bmodule%5D%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E7%89%88%E5%9D%97%E6%8E%92%E8%A1%8C%5B%2Fmodule%5D&\";s:9:\"parameter\";a:3:{s:12:\"selectmodule\";a:3:{i:1;s:25:\"边栏模块_我的助手\";i:2;s:32:\"边栏模块_热门主题_本版\";i:3;s:25:\"边栏模块_版块排行\";}s:9:\"cachelife\";i:0;s:10:\"jstemplate\";s:181:\"[module]边栏模块_我的助手[/module]<hr class=\"shadowline\"/>[module]边栏模块_热门主题_本版[/module]<hr class=\"shadowline\"/>[module]边栏模块_版块排行[/module]\";}s:7:\"comment\";N;s:4:\"type\";s:2:\"-2\";}', '-2', '0');
INSERT INTO `cdb_request` VALUES ('边栏方案_首页默认', 'a:4:{s:3:\"url\";s:533:\"function=side&jscharset=&jstemplate=%5Bmodule%5D%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E6%88%91%E7%9A%84%E5%8A%A9%E6%89%8B%5B%2Fmodule%5D%3Chr%20class%3D%22shadowline%22%2F%3E%5Bmodule%5D%E8%81%9A%E5%90%88%E6%A8%A1%E5%9D%97_%E6%96%B0%E5%B8%96%5B%2Fmodule%5D%3Chr%20class%3D%22shadowline%22%2F%3E%5Bmodule%5D%E8%81%9A%E5%90%88%E6%A8%A1%E5%9D%97_%E7%83%AD%E9%97%A8%E4%B8%BB%E9%A2%98%5B%2Fmodule%5D%3Chr%20class%3D%22shadowline%22%2F%3E%5Bmodule%5D%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E6%B4%BB%E8%B7%83%E4%BC%9A%E5%91%98%5B%2Fmodule%5D&\";s:9:\"parameter\";a:3:{s:12:\"selectmodule\";a:4:{i:1;s:25:\"边栏模块_我的助手\";i:2;s:19:\"聚合模块_新帖\";i:3;s:25:\"聚合模块_热门主题\";i:4;s:25:\"边栏模块_活跃会员\";}s:9:\"cachelife\";i:0;s:10:\"jstemplate\";s:234:\"[module]边栏模块_我的助手[/module]<hr class=\"shadowline\"/>[module]聚合模块_新帖[/module]<hr class=\"shadowline\"/>[module]聚合模块_热门主题[/module]<hr class=\"shadowline\"/>[module]边栏模块_活跃会员[/module]\";}s:7:\"comment\";N;s:4:\"type\";s:2:\"-2\";}', '-2', '0');
INSERT INTO `cdb_request` VALUES ('聚合模块_新帖', 'a:4:{s:3:\"url\";s:387:\"function=module&module=rowcombine.inc.php&settings=a%3A2%3A%7Bs%3A5%3A%22title%22%3Bs%3A12%3A%22%E6%9C%80%E6%96%B0%E5%B8%96%E5%AD%90%22%3Bs%3A4%3A%22data%22%3Bs%3A66%3A%22%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E6%9C%80%E6%96%B0%E4%B8%BB%E9%A2%98%2C%E4%B8%BB%E9%A2%98%0D%0A%E8%BE%B9%E6%A0%8F%E6%A8%A1%E5%9D%97_%E6%9C%80%E6%96%B0%E5%9B%9E%E5%A4%8D%2C%E5%9B%9E%E5%A4%8D%22%3B%7D&jscharset=0&\";s:9:\"parameter\";a:4:{s:6:\"module\";s:18:\"rowcombine.inc.php\";s:9:\"cachelife\";s:0:\"\";s:8:\"settings\";a:2:{s:5:\"title\";s:12:\"最新帖子\";s:4:\"data\";s:66:\"边栏模块_最新主题,主题\r\n边栏模块_最新回复,回复\";}s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:39:\"最新主题、最新回复聚合模块\";s:4:\"type\";s:1:\"5\";}', '5', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_热门主题_本周', 'a:4:{s:3:\"url\";s:556:\"function=threads&sidestatus=0&maxlength=20&fnamelength=0&messagelength=&startrow=0&picpre=images%2Fcommon%2Fslisticon.gif&items=5&tag=&tids=&special=0&rewardstatus=&digest=0&stick=0&recommend=0&newwindow=1&threadtype=0&highlight=0&orderby=hourviews&hours=168&jscharset=0&cachelife=43200&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%AC%E5%91%A8%E7%83%AD%E9%97%A8%3C%2Fh4%3E%0D%0A%3Cul%20class%3D%5C%22textinfolist%5C%22%3E%0D%0A%5Bnode%5D%3Cli%3E%7Bprefix%7D%7Bsubject%7D%3C%2Fli%3E%5B%2Fnode%5D%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E&\";s:9:\"parameter\";a:19:{s:10:\"jstemplate\";s:131:\"<div class=\\\"sidebox\\\">\r\n<h4>本周热门</h4>\r\n<ul class=\\\"textinfolist\\\">\r\n[node]<li>{prefix}{subject}</li>[/node]\r\n</ul>\r\n</div>\";s:9:\"cachelife\";s:5:\"43200\";s:10:\"sidestatus\";s:1:\"0\";s:8:\"startrow\";s:1:\"0\";s:5:\"items\";s:1:\"5\";s:9:\"maxlength\";s:2:\"20\";s:11:\"fnamelength\";s:1:\"0\";s:13:\"messagelength\";s:0:\"\";s:6:\"picpre\";s:27:\"images/common/slisticon.gif\";s:4:\"tids\";s:0:\"\";s:7:\"keyword\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:10:\"threadtype\";s:1:\"0\";s:9:\"highlight\";s:1:\"0\";s:9:\"recommend\";s:1:\"0\";s:9:\"newwindow\";i:1;s:7:\"orderby\";s:9:\"hourviews\";s:5:\"hours\";s:3:\"168\";s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:30:\"边栏本周热门主题模块\";s:4:\"type\";s:1:\"0\";}', '0', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_会员排行_今日', 'a:4:{s:3:\"url\";s:572:\"function=memberrank&startrow=0&items=5&newwindow=1&extcredit=1&orderby=hourposts&hours=24&jscharset=0&cachelife=3600&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%5C%22%3E%0D%0A%3Ch4%3E%E4%BB%8A%E6%97%A5%E6%8E%92%E8%A1%8C%3C%2Fh4%3E%0D%0A%5Bnode%5D%3Cdiv%20class%3D%5C%22s_clear%5C%22%20style%3D%5C%22margin-bottom%3A%205px%3B%5C%22%3E%3Cdiv%20style%3D%5C%22margin-right%3A%2010px%3B%20float%3A%20left%3B%5C%22%3E%7Bavatarsmall%7D%3C%2Fdiv%3E%3Cp%3E%7Bmember%7D%3C%2Fp%3E%3Cp%3E%E5%8F%91%E5%B8%96%20%7Bvalue%7D%20%E7%AF%87%3C%2Fp%3E%3C%2Fdiv%3E%5B%2Fnode%5D%0D%0A%3C%2Fdiv%3E&\";s:9:\"parameter\";a:9:{s:10:\"jstemplate\";s:235:\"<div class=\\\"sidebox\\\">\r\n<h4>今日排行</h4>\r\n[node]<div class=\\\"s_clear\\\" style=\\\"margin-bottom: 5px;\\\"><div style=\\\"margin-right: 10px; float: left;\\\">{avatarsmall}</div><p>{member}</p><p>发帖 {value} 篇</p></div>[/node]\r\n</div>\";s:9:\"cachelife\";s:4:\"3600\";s:8:\"startrow\";s:1:\"0\";s:5:\"items\";s:1:\"5\";s:9:\"newwindow\";i:1;s:9:\"extcredit\";s:1:\"1\";s:7:\"orderby\";s:9:\"hourposts\";s:5:\"hours\";s:2:\"24\";s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:36:\"边栏会员今日发帖排行模块\";s:4:\"type\";s:1:\"2\";}', '2', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_论坛之星', 'a:4:{s:3:\"url\";s:668:\"function=memberrank&startrow=0&items=3&newwindow=1&extcredit=1&orderby=hourposts&hours=168&jscharset=0&cachelife=43200&jstemplate=%3Cdiv%20class%3D%5C%22sidebox%20s_clear%5C%22%3E%0D%0A%3Ch4%3E%E6%9C%AC%E5%91%A8%E4%B9%8B%E6%98%9F%3C%2Fh4%3E%0D%0A%5Bnode%5D%0D%0A%5Bshow%3D1%5D%3Cdiv%20style%3D%5C%22clear%3Aboth%5C%22%3E%3Cdiv%20style%3D%5C%22float%3Aleft%3B%20margin-right%3A%2016px%3B%5C%22%3E%7Bavatarsmall%7D%3C%2Fdiv%3E%5B%2Fshow%5D%7Bmember%7D%20%5Bshow%3D1%5D%3Cbr%20%2F%3E%E5%8F%91%E5%B8%96%20%7Bvalue%7D%20%E7%AF%87%3C%2Fdiv%3E%3Cdiv%20style%3D%5C%22clear%3Aboth%3Bmargin-top%3A2px%5C%22%20%2F%3E%3C%2Fdiv%3E%5B%2Fshow%5D%0D%0A%5B%2Fnode%5D%0D%0A%3C%2Fdiv%3E&\";s:9:\"parameter\";a:9:{s:10:\"jstemplate\";s:291:\"<div class=\\\"sidebox s_clear\\\">\r\n<h4>本周之星</h4>\r\n[node]\r\n[show=1]<div style=\\\"clear:both\\\"><div style=\\\"float:left; margin-right: 16px;\\\">{avatarsmall}</div>[/show]{member} [show=1]<br />发帖 {value} 篇</div><div style=\\\"clear:both;margin-top:2px\\\" /></div>[/show]\r\n[/node]\r\n</div>\";s:9:\"cachelife\";s:5:\"43200\";s:8:\"startrow\";s:1:\"0\";s:5:\"items\";s:1:\"3\";s:9:\"newwindow\";i:1;s:9:\"extcredit\";s:1:\"1\";s:7:\"orderby\";s:9:\"hourposts\";s:5:\"hours\";s:3:\"168\";s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:24:\"边栏论坛之星模块\";s:4:\"type\";s:1:\"2\";}', '2', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_我的助手', 'a:4:{s:3:\"url\";s:78:\"function=module&module=assistant.inc.php&settings=N%3B&jscharset=0&cachelife=0\";s:9:\"parameter\";a:3:{s:6:\"module\";s:17:\"assistant.inc.php\";s:9:\"cachelife\";s:1:\"0\";s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:24:\"边栏我的助手模块\";s:4:\"type\";s:1:\"5\";}', '5', '0');
INSERT INTO `cdb_request` VALUES ('边栏模块_Google搜索', 'a:4:{s:3:\"url\";s:171:\"function=module&module=google.inc.php&settings=a%3A2%3A%7Bs%3A4%3A%22lang%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22default%22%3Bs%3A1%3A%221%22%3B%7D&jscharset=0&cachelife=864000&\";s:9:\"parameter\";a:4:{s:6:\"module\";s:14:\"google.inc.php\";s:9:\"cachelife\";s:6:\"864000\";s:8:\"settings\";a:2:{s:4:\"lang\";s:0:\"\";s:7:\"default\";s:1:\"1\";}s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:26:\"边栏 Google 搜索模块\";s:4:\"type\";s:1:\"5\";}', '5', '0');
INSERT INTO `cdb_request` VALUES ('UCHome_最新动态', 'a:4:{s:3:\"url\";s:445:\"function=module&module=feed.inc.php&settings=a%3A6%3A%7Bs%3A5%3A%22title%22%3Bs%3A12%3A%22%E6%9C%80%E6%96%B0%E5%8A%A8%E6%80%81%22%3Bs%3A4%3A%22uids%22%3Bs%3A0%3A%22%22%3Bs%3A6%3A%22friend%22%3Bs%3A1%3A%220%22%3Bs%3A5%3A%22start%22%3Bs%3A1%3A%220%22%3Bs%3A5%3A%22limit%22%3Bs%3A2%3A%2210%22%3Bs%3A8%3A%22template%22%3Bs%3A54%3A%22%3Cdiv%20style%3D%5C%22padding-left%3A2px%5C%22%3E%7Btitle_template%7D%3C%2Fdiv%3E%22%3B%7D&jscharset=0&cachelife=0&\";s:9:\"parameter\";a:4:{s:6:\"module\";s:12:\"feed.inc.php\";s:9:\"cachelife\";s:1:\"0\";s:8:\"settings\";a:6:{s:5:\"title\";s:12:\"最新动态\";s:4:\"uids\";s:0:\"\";s:6:\"friend\";s:1:\"0\";s:5:\"start\";s:1:\"0\";s:5:\"limit\";s:2:\"10\";s:8:\"template\";s:54:\"<div style=\\\"padding-left:2px\\\">{title_template}</div>\";}s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:27:\"获取UCHome的最新动态\";s:4:\"type\";s:1:\"5\";}', '5', '0');
INSERT INTO `cdb_request` VALUES ('UCHome_最新更新空间', 'a:4:{s:3:\"url\";s:1388:\"function=module&module=space.inc.php&settings=a%3A17%3A%7Bs%3A5%3A%22title%22%3Bs%3A18%3A%22%E6%9C%80%E6%96%B0%E6%9B%B4%E6%96%B0%E7%A9%BA%E9%97%B4%22%3Bs%3A3%3A%22uid%22%3Bs%3A0%3A%22%22%3Bs%3A14%3A%22startfriendnum%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22endfriendnum%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22startviewnum%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22endviewnum%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22startcredit%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22endcredit%22%3Bs%3A0%3A%22%22%3Bs%3A6%3A%22avatar%22%3Bs%3A2%3A%22-1%22%3Bs%3A10%3A%22namestatus%22%3Bs%3A2%3A%22-1%22%3Bs%3A8%3A%22dateline%22%3Bs%3A1%3A%220%22%3Bs%3A10%3A%22updatetime%22%3Bs%3A1%3A%220%22%3Bs%3A5%3A%22order%22%3Bs%3A10%3A%22updatetime%22%3Bs%3A2%3A%22sc%22%3Bs%3A4%3A%22DESC%22%3Bs%3A5%3A%22start%22%3Bs%3A1%3A%220%22%3Bs%3A5%3A%22limit%22%3Bs%3A2%3A%2210%22%3Bs%3A8%3A%22template%22%3Bs%3A267%3A%22%3Ctable%3E%0D%0A%3Ctr%3E%0D%0A%3Ctd%20width%3D%5C%2250%5C%22%20rowspan%3D%5C%222%5C%22%3E%3Ca%20href%3D%5C%22%7Buserlink%7D%5C%22%20target%3D%5C%22_blank%5C%22%3E%3Cimg%20src%3D%5C%22%7Bphoto%7D%5C%22%20%2F%3E%3C%2Fa%3E%3C%2Ftd%3E%0D%0A%3Ctd%3E%3Ca%20href%3D%5C%22%7Buserlink%7D%5C%22%20%20target%3D%5C%22_blank%5C%22%20style%3D%5C%22text-decoration%3Anone%3B%5C%22%3E%7Busername%7D%3C%2Fa%3E%3C%2Ftd%3E%0D%0A%3C%2Ftr%3E%0D%0A%3Ctr%3E%3Ctd%3E%7Bupdatetime%7D%3C%2Ftd%3E%3C%2Ftr%3E%0D%0A%3C%2Ftable%3E%22%3B%7D&jscharset=0&cachelife=0&\";s:9:\"parameter\";a:4:{s:6:\"module\";s:13:\"space.inc.php\";s:9:\"cachelife\";s:1:\"0\";s:8:\"settings\";a:17:{s:5:\"title\";s:18:\"最新更新空间\";s:3:\"uid\";s:0:\"\";s:14:\"startfriendnum\";s:0:\"\";s:12:\"endfriendnum\";s:0:\"\";s:12:\"startviewnum\";s:0:\"\";s:10:\"endviewnum\";s:0:\"\";s:11:\"startcredit\";s:0:\"\";s:9:\"endcredit\";s:0:\"\";s:6:\"avatar\";s:2:\"-1\";s:10:\"namestatus\";s:2:\"-1\";s:8:\"dateline\";s:1:\"0\";s:10:\"updatetime\";s:1:\"0\";s:5:\"order\";s:10:\"updatetime\";s:2:\"sc\";s:4:\"DESC\";s:5:\"start\";s:1:\"0\";s:5:\"limit\";s:2:\"10\";s:8:\"template\";s:267:\"<table>\r\n<tr>\r\n<td width=\\\"50\\\" rowspan=\\\"2\\\"><a href=\\\"{userlink}\\\" target=\\\"_blank\\\"><img src=\\\"{photo}\\\" /></a></td>\r\n<td><a href=\\\"{userlink}\\\"  target=\\\"_blank\\\" style=\\\"text-decoration:none;\\\">{username}</a></td>\r\n</tr>\r\n<tr><td>{updatetime}</td></tr>\r\n</table>\";}s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:36:\"获取UCHome最新更新会员空间\";s:4:\"type\";s:1:\"5\";}', '5', '0');
INSERT INTO `cdb_request` VALUES ('UCHome_最新记录', 'a:4:{s:3:\"url\";s:1021:\"function=module&module=doing.inc.php&settings=a%3A6%3A%7Bs%3A5%3A%22title%22%3Bs%3A12%3A%22%E6%9C%80%E6%96%B0%E8%AE%B0%E5%BD%95%22%3Bs%3A3%3A%22uid%22%3Bs%3A0%3A%22%22%3Bs%3A4%3A%22mood%22%3Bs%3A1%3A%220%22%3Bs%3A5%3A%22start%22%3Bs%3A1%3A%220%22%3Bs%3A5%3A%22limit%22%3Bs%3A2%3A%2210%22%3Bs%3A8%3A%22template%22%3Bs%3A361%3A%22%0D%0A%3Cdiv%20style%3D%5C%22padding%3A0%200%205px%200%3B%5C%22%3E%0D%0A%3Ca%20href%3D%5C%22%7Buserlink%7D%5C%22%20target%3D%5C%22_blank%5C%22%3E%3Cimg%20src%3D%5C%22%7Bphoto%7D%5C%22%20width%3D%5C%2218%5C%22%20height%3D%5C%2218%5C%22%20align%3D%5C%22absmiddle%5C%22%3E%3C%2Fa%3E%20%3Ca%20href%3D%5C%22%7Buserlink%7D%5C%22%20%20target%3D%5C%22_blank%5C%22%3E%7Busername%7D%3C%2Fa%3E%EF%BC%9A%0D%0A%3C%2Fdiv%3E%0D%0A%3Cdiv%20style%3D%5C%22padding%3A0%200%205px%2020px%3B%5C%22%3E%0D%0A%3Ca%20href%3D%5C%22%7Blink%7D%5C%22%20style%3D%5C%22color%3A%23333%3Btext-decoration%3Anone%3B%5C%22%20target%3D%5C%22_blank%5C%22%3E%7Bmessage%7D%3C%2Fa%3E%0D%0A%3C%2Fdiv%3E%22%3B%7D&jscharset=0&cachelife=0&\";s:9:\"parameter\";a:4:{s:6:\"module\";s:13:\"doing.inc.php\";s:9:\"cachelife\";s:1:\"0\";s:8:\"settings\";a:6:{s:5:\"title\";s:12:\"最新记录\";s:3:\"uid\";s:0:\"\";s:4:\"mood\";s:1:\"0\";s:5:\"start\";s:1:\"0\";s:5:\"limit\";s:2:\"10\";s:8:\"template\";s:361:\"\r\n<div style=\\\"padding:0 0 5px 0;\\\">\r\n<a href=\\\"{userlink}\\\" target=\\\"_blank\\\"><img src=\\\"{photo}\\\" width=\\\"18\\\" height=\\\"18\\\" align=\\\"absmiddle\\\"></a> <a href=\\\"{userlink}\\\"  target=\\\"_blank\\\">{username}</a>：\r\n</div>\r\n<div style=\\\"padding:0 0 5px 20px;\\\">\r\n<a href=\\\"{link}\\\" style=\\\"color:#333;text-decoration:none;\\\" target=\\\"_blank\\\">{message}</a>\r\n</div>\";}s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:27:\"获取UCHome的最新记录\";s:4:\"type\";s:1:\"5\";}', '5', '0');
INSERT INTO `cdb_request` VALUES ('UCHome_竞价排名', 'a:4:{s:3:\"url\";s:255:\"function=module&module=html.inc.php&settings=a%3A3%3A%7Bs%3A4%3A%22type%22%3Bs%3A1%3A%220%22%3Bs%3A4%3A%22code%22%3Bs%3A27%3A%22%3Cdiv%20id%3D%5C%22sidefeed%5C%22%3E%3C%2Fdiv%3E%22%3Bs%3A4%3A%22side%22%3Bs%3A1%3A%220%22%3B%7D&jscharset=0&cachelife=864000&\";s:9:\"parameter\";a:4:{s:6:\"module\";s:12:\"html.inc.php\";s:9:\"cachelife\";s:6:\"864000\";s:8:\"settings\";a:3:{s:4:\"type\";s:1:\"0\";s:4:\"code\";s:27:\"<div id=\\\"sidefeed\\\"></div>\";s:4:\"side\";s:1:\"0\";}s:9:\"jscharset\";s:1:\"0\";}s:7:\"comment\";s:33:\"获取UCHome的竞价排名信息\";s:4:\"type\";s:1:\"5\";}', '5', '0');

-- ----------------------------
-- Table structure for `cdb_rewardlog`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_rewardlog`;
CREATE TABLE `cdb_rewardlog` (
  `tid` mediumint(8) unsigned NOT NULL default '0',
  `authorid` mediumint(8) unsigned NOT NULL default '0',
  `answererid` mediumint(8) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned default '0',
  `netamount` int(10) unsigned NOT NULL default '0',
  KEY `userid` (`authorid`,`answererid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_rewardlog
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_rsscaches`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_rsscaches`;
CREATE TABLE `cdb_rsscaches` (
  `lastupdate` int(10) unsigned NOT NULL default '0',
  `fid` smallint(6) unsigned NOT NULL default '0',
  `tid` mediumint(8) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `forum` char(50) NOT NULL default '',
  `author` char(15) NOT NULL default '',
  `subject` char(80) NOT NULL default '',
  `description` char(255) NOT NULL default '',
  UNIQUE KEY `tid` (`tid`),
  KEY `fid` (`fid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_rsscaches
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_searchindex`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_searchindex`;
CREATE TABLE `cdb_searchindex` (
  `searchid` int(10) unsigned NOT NULL auto_increment,
  `keywords` varchar(255) NOT NULL default '',
  `searchstring` text NOT NULL,
  `useip` varchar(15) NOT NULL default '',
  `uid` mediumint(10) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `expiration` int(10) unsigned NOT NULL default '0',
  `threadsortid` smallint(6) unsigned NOT NULL default '0',
  `threads` smallint(6) unsigned NOT NULL default '0',
  `tids` text NOT NULL,
  PRIMARY KEY  (`searchid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_searchindex
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_sessions`;
CREATE TABLE `cdb_sessions` (
  `sid` char(6) character set utf8 collate utf8_bin NOT NULL default '',
  `ip1` tinyint(3) unsigned NOT NULL default '0',
  `ip2` tinyint(3) unsigned NOT NULL default '0',
  `ip3` tinyint(3) unsigned NOT NULL default '0',
  `ip4` tinyint(3) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` char(15) NOT NULL default '',
  `groupid` smallint(6) unsigned NOT NULL default '0',
  `styleid` smallint(6) unsigned NOT NULL default '0',
  `invisible` tinyint(1) NOT NULL default '0',
  `action` tinyint(1) unsigned NOT NULL default '0',
  `lastactivity` int(10) unsigned NOT NULL default '0',
  `lastolupdate` int(10) unsigned NOT NULL default '0',
  `pageviews` smallint(6) unsigned NOT NULL default '0',
  `seccode` mediumint(6) unsigned NOT NULL default '0',
  `fid` smallint(6) unsigned NOT NULL default '0',
  `tid` mediumint(8) unsigned NOT NULL default '0',
  `bloguid` mediumint(8) unsigned NOT NULL default '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `uid` (`uid`),
  KEY `bloguid` (`bloguid`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_settings`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_settings`;
CREATE TABLE `cdb_settings` (
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_settings
-- ----------------------------
INSERT INTO `cdb_settings` VALUES ('accessemail', '');
INSERT INTO `cdb_settings` VALUES ('activitytype', '朋友聚会\r\n出外郊游\r\n自驾出行\r\n公益活动\r\n线上活动');
INSERT INTO `cdb_settings` VALUES ('adminipaccess', '');
INSERT INTO `cdb_settings` VALUES ('admode', '1');
INSERT INTO `cdb_settings` VALUES ('allowthreadplugin', '');
INSERT INTO `cdb_settings` VALUES ('archiverstatus', '1');
INSERT INTO `cdb_settings` VALUES ('attachbanperiods', '');
INSERT INTO `cdb_settings` VALUES ('attachdir', './attachments');
INSERT INTO `cdb_settings` VALUES ('attachexpire', '');
INSERT INTO `cdb_settings` VALUES ('attachimgpost', '1');
INSERT INTO `cdb_settings` VALUES ('attachrefcheck', '0');
INSERT INTO `cdb_settings` VALUES ('attachsave', '3');
INSERT INTO `cdb_settings` VALUES ('attachurl', 'attachments');
INSERT INTO `cdb_settings` VALUES ('authkey', '3ea1cdluS5T9wWhv');
INSERT INTO `cdb_settings` VALUES ('authoronleft', '0');
INSERT INTO `cdb_settings` VALUES ('avatarmethod', '0');
INSERT INTO `cdb_settings` VALUES ('backupdir', '821c68');
INSERT INTO `cdb_settings` VALUES ('baidusitemap', '1');
INSERT INTO `cdb_settings` VALUES ('baidusitemap_life', '12');
INSERT INTO `cdb_settings` VALUES ('bannedmessages', '1');
INSERT INTO `cdb_settings` VALUES ('bbclosed', '');
INSERT INTO `cdb_settings` VALUES ('bbname', 'Discuz! Board');
INSERT INTO `cdb_settings` VALUES ('bbrules', '0');
INSERT INTO `cdb_settings` VALUES ('bbrulestxt', '');
INSERT INTO `cdb_settings` VALUES ('bdaystatus', '0');
INSERT INTO `cdb_settings` VALUES ('boardlicensed', '0');
INSERT INTO `cdb_settings` VALUES ('cacheindexlife', '0');
INSERT INTO `cdb_settings` VALUES ('cachethreaddir', 'forumdata/threadcaches');
INSERT INTO `cdb_settings` VALUES ('cachethreadlife', '0');
INSERT INTO `cdb_settings` VALUES ('censoremail', '');
INSERT INTO `cdb_settings` VALUES ('censoruser', '');
INSERT INTO `cdb_settings` VALUES ('closedreason', '');
INSERT INTO `cdb_settings` VALUES ('creditnotice', '1');
INSERT INTO `cdb_settings` VALUES ('creditsformula', 'extcredits1');
INSERT INTO `cdb_settings` VALUES ('creditsformulaexp', '');
INSERT INTO `cdb_settings` VALUES ('creditsnotify', '');
INSERT INTO `cdb_settings` VALUES ('creditspolicy', 'a:12:{s:4:\"post\";a:0:{}s:5:\"reply\";a:0:{}s:6:\"digest\";a:1:{i:1;i:10;}s:10:\"postattach\";a:0:{}s:9:\"getattach\";a:0:{}s:6:\"sendpm\";a:0:{}s:6:\"search\";a:0:{}s:15:\"promotion_visit\";a:0:{}s:18:\"promotion_register\";a:0:{}s:13:\"tradefinished\";a:0:{}s:8:\"votepoll\";a:0:{}s:10:\"lowerlimit\";a:0:{}}');
INSERT INTO `cdb_settings` VALUES ('creditstax', '0.2');
INSERT INTO `cdb_settings` VALUES ('creditstrans', '2');
INSERT INTO `cdb_settings` VALUES ('customauthorinfo', 'a:1:{i:0;a:9:{s:3:\"uid\";a:1:{s:4:\"menu\";s:1:\"1\";}s:5:\"posts\";a:1:{s:4:\"menu\";s:1:\"1\";}s:6:\"digest\";a:1:{s:4:\"menu\";s:1:\"1\";}s:7:\"credits\";a:1:{s:4:\"menu\";s:1:\"1\";}s:8:\"readperm\";a:1:{s:4:\"menu\";s:1:\"1\";}s:8:\"location\";a:1:{s:4:\"menu\";s:1:\"1\";}s:6:\"oltime\";a:1:{s:4:\"menu\";s:1:\"1\";}s:7:\"regtime\";a:1:{s:4:\"menu\";s:1:\"1\";}s:8:\"lastdate\";a:1:{s:4:\"menu\";s:1:\"1\";}}}');
INSERT INTO `cdb_settings` VALUES ('custombackup', '');
INSERT INTO `cdb_settings` VALUES ('dateconvert', '1');
INSERT INTO `cdb_settings` VALUES ('dateformat', 'Y-n-j');
INSERT INTO `cdb_settings` VALUES ('debug', '1');
INSERT INTO `cdb_settings` VALUES ('delayviewcount', '0');
INSERT INTO `cdb_settings` VALUES ('deletereason', '');
INSERT INTO `cdb_settings` VALUES ('disallowfloat', 'a:2:{i:3;s:9:\"newthread\";i:4;s:5:\"reply\";}');
INSERT INTO `cdb_settings` VALUES ('domainwhitelist', '');
INSERT INTO `cdb_settings` VALUES ('doublee', '1');
INSERT INTO `cdb_settings` VALUES ('dupkarmarate', '0');
INSERT INTO `cdb_settings` VALUES ('dzfeed_limit', 'a:9:{s:14:\"thread_replies\";a:4:{i:0;s:3:\"100\";i:1;s:4:\"1000\";i:2;s:4:\"2000\";i:3;s:5:\"10000\";}s:12:\"thread_views\";a:3:{i:0;s:3:\"500\";i:1;s:4:\"5000\";i:2;s:5:\"10000\";}s:11:\"thread_rate\";a:3:{i:0;s:2:\"50\";i:1;s:3:\"200\";i:2;s:3:\"500\";}s:9:\"post_rate\";a:3:{i:0;s:2:\"20\";i:1;s:3:\"100\";i:2;s:3:\"300\";}s:14:\"user_usergroup\";a:4:{i:0;s:2:\"12\";i:1;s:2:\"13\";i:2;s:2:\"14\";i:3;s:2:\"15\";}s:11:\"user_credit\";a:3:{i:0;s:4:\"1000\";i:1;s:5:\"10000\";i:2;s:6:\"100000\";}s:12:\"user_threads\";a:5:{i:0;s:3:\"100\";i:1;s:3:\"500\";i:2;s:4:\"1000\";i:3;s:4:\"5000\";i:4;s:5:\"10000\";}s:10:\"user_posts\";a:4:{i:0;s:3:\"500\";i:1;s:4:\"1000\";i:2;s:4:\"5000\";i:3;s:5:\"10000\";}s:11:\"user_digest\";a:4:{i:0;s:2:\"50\";i:1;s:3:\"100\";i:2;s:3:\"500\";i:3;s:4:\"1000\";}}');
INSERT INTO `cdb_settings` VALUES ('ec_account', '');
INSERT INTO `cdb_settings` VALUES ('ec_contract', '');
INSERT INTO `cdb_settings` VALUES ('ec_credit', 'a:2:{s:18:\"maxcreditspermonth\";i:6;s:4:\"rank\";a:15:{i:1;i:4;i:2;i:11;i:3;i:41;i:4;i:91;i:5;i:151;i:6;i:251;i:7;i:501;i:8;i:1001;i:9;i:2001;i:10;i:5001;i:11;i:10001;i:12;i:20001;i:13;i:50001;i:14;i:100001;i:15;i:200001;}}');
INSERT INTO `cdb_settings` VALUES ('ec_maxcredits', '1000');
INSERT INTO `cdb_settings` VALUES ('ec_maxcreditspermonth', '0');
INSERT INTO `cdb_settings` VALUES ('ec_mincredits', '0');
INSERT INTO `cdb_settings` VALUES ('ec_ratio', '0');
INSERT INTO `cdb_settings` VALUES ('ec_tenpay_bargainor', '');
INSERT INTO `cdb_settings` VALUES ('ec_tenpay_key', '');
INSERT INTO `cdb_settings` VALUES ('editedby', '1');
INSERT INTO `cdb_settings` VALUES ('editoroptions', '1');
INSERT INTO `cdb_settings` VALUES ('edittimelimit', '');
INSERT INTO `cdb_settings` VALUES ('exchangemincredits', '100');
INSERT INTO `cdb_settings` VALUES ('extcredits', 'a:2:{i:1;a:3:{s:5:\"title\";s:6:\"威望\";s:12:\"showinthread\";s:0:\"\";s:9:\"available\";i:1;}i:2;a:3:{s:5:\"title\";s:6:\"金钱\";s:12:\"showinthread\";s:0:\"\";s:9:\"available\";i:1;}}');
INSERT INTO `cdb_settings` VALUES ('fastpost', '1');
INSERT INTO `cdb_settings` VALUES ('floodctrl', '15');
INSERT INTO `cdb_settings` VALUES ('forumjump', '0');
INSERT INTO `cdb_settings` VALUES ('forumlinkstatus', '1');
INSERT INTO `cdb_settings` VALUES ('frameon', '0');
INSERT INTO `cdb_settings` VALUES ('framewidth', '180');
INSERT INTO `cdb_settings` VALUES ('ftp', 'a:10:{s:2:\"on\";s:1:\"0\";s:3:\"ssl\";s:1:\"0\";s:4:\"host\";s:0:\"\";s:4:\"port\";s:2:\"21\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:9:\"attachdir\";s:1:\".\";s:9:\"attachurl\";s:0:\"\";s:7:\"hideurl\";s:1:\"0\";s:7:\"timeout\";s:1:\"0\";}');
INSERT INTO `cdb_settings` VALUES ('globalstick', '1');
INSERT INTO `cdb_settings` VALUES ('google', '1');
INSERT INTO `cdb_settings` VALUES ('gzipcompress', '0');
INSERT INTO `cdb_settings` VALUES ('heatthread', 'a:3:{s:5:\"reply\";i:5;s:9:\"recommend\";i:3;s:8:\"hottopic\";s:10:\"50,100,200\";}');
INSERT INTO `cdb_settings` VALUES ('hideprivate', '1');
INSERT INTO `cdb_settings` VALUES ('historyposts', '1	1');
INSERT INTO `cdb_settings` VALUES ('hottopic', '10');
INSERT INTO `cdb_settings` VALUES ('icp', '');
INSERT INTO `cdb_settings` VALUES ('imageimpath', '');
INSERT INTO `cdb_settings` VALUES ('imagelib', '0');
INSERT INTO `cdb_settings` VALUES ('indexhot', '');
INSERT INTO `cdb_settings` VALUES ('indexname', 'index.php');
INSERT INTO `cdb_settings` VALUES ('indextype', 'classics');
INSERT INTO `cdb_settings` VALUES ('infosidestatus', '0');
INSERT INTO `cdb_settings` VALUES ('initcredits', '0,0,0,0,0,0,0,0,0');
INSERT INTO `cdb_settings` VALUES ('inviteconfig', '');
INSERT INTO `cdb_settings` VALUES ('ipaccess', '');
INSERT INTO `cdb_settings` VALUES ('ipregctrl', '');
INSERT INTO `cdb_settings` VALUES ('jscachelife', '1800');
INSERT INTO `cdb_settings` VALUES ('jsdateformat', '');
INSERT INTO `cdb_settings` VALUES ('jspath', 'forumdata/cache/');
INSERT INTO `cdb_settings` VALUES ('jsrefdomains', '');
INSERT INTO `cdb_settings` VALUES ('jsstatus', '0');
INSERT INTO `cdb_settings` VALUES ('jswizard', '');
INSERT INTO `cdb_settings` VALUES ('karmaratelimit', '0');
INSERT INTO `cdb_settings` VALUES ('loadctrl', '0');
INSERT INTO `cdb_settings` VALUES ('losslessdel', '365');
INSERT INTO `cdb_settings` VALUES ('magicdiscount', '85');
INSERT INTO `cdb_settings` VALUES ('magicmarket', '1');
INSERT INTO `cdb_settings` VALUES ('magicstatus', '1');
INSERT INTO `cdb_settings` VALUES ('mail', 'a:10:{s:8:\"mailsend\";s:1:\"1\";s:6:\"server\";s:13:\"smtp.21cn.com\";s:4:\"port\";s:2:\"25\";s:4:\"auth\";s:1:\"1\";s:4:\"from\";s:26:\"Discuz <username@21cn.com>\";s:13:\"auth_username\";s:17:\"username@21cn.com\";s:13:\"auth_password\";s:8:\"password\";s:13:\"maildelimiter\";s:1:\"0\";s:12:\"mailusername\";s:1:\"1\";s:15:\"sendmail_silent\";s:1:\"1\";}');
INSERT INTO `cdb_settings` VALUES ('maxavatarpixel', '120');
INSERT INTO `cdb_settings` VALUES ('maxavatarsize', '20000');
INSERT INTO `cdb_settings` VALUES ('maxbdays', '0');
INSERT INTO `cdb_settings` VALUES ('maxchargespan', '0');
INSERT INTO `cdb_settings` VALUES ('maxfavorites', '100');
INSERT INTO `cdb_settings` VALUES ('maxincperthread', '0');
INSERT INTO `cdb_settings` VALUES ('maxmagicprice', '50');
INSERT INTO `cdb_settings` VALUES ('maxmodworksmonths', '3');
INSERT INTO `cdb_settings` VALUES ('maxonlinelist', '0');
INSERT INTO `cdb_settings` VALUES ('maxonlines', '5000');
INSERT INTO `cdb_settings` VALUES ('maxpolloptions', '10');
INSERT INTO `cdb_settings` VALUES ('maxpostsize', '10000');
INSERT INTO `cdb_settings` VALUES ('maxsearchresults', '500');
INSERT INTO `cdb_settings` VALUES ('maxsigrows', '100');
INSERT INTO `cdb_settings` VALUES ('maxsmilies', '10');
INSERT INTO `cdb_settings` VALUES ('maxspm', '0');
INSERT INTO `cdb_settings` VALUES ('membermaxpages', '100');
INSERT INTO `cdb_settings` VALUES ('memberperpage', '25');
INSERT INTO `cdb_settings` VALUES ('memliststatus', '1');
INSERT INTO `cdb_settings` VALUES ('minpostsize', '10');
INSERT INTO `cdb_settings` VALUES ('moddisplay', 'flat');
INSERT INTO `cdb_settings` VALUES ('modratelimit', '0');
INSERT INTO `cdb_settings` VALUES ('modreasons', '广告/SPAM\r\n恶意灌水\r\n违规内容\r\n文不对题\r\n重复发帖\r\n\r\n我很赞同\r\n精品文章\r\n原创内容');
INSERT INTO `cdb_settings` VALUES ('modworkstatus', '1');
INSERT INTO `cdb_settings` VALUES ('msgforward', 'a:3:{s:11:\"refreshtime\";i:3;s:5:\"quick\";i:1;s:8:\"messages\";a:13:{i:0;s:19:\"thread_poll_succeed\";i:1;s:19:\"thread_rate_succeed\";i:2;s:23:\"usergroups_join_succeed\";i:3;s:23:\"usergroups_exit_succeed\";i:4;s:25:\"usergroups_update_succeed\";i:5;s:20:\"buddy_update_succeed\";i:6;s:17:\"post_edit_succeed\";i:7;s:18:\"post_reply_succeed\";i:8;s:24:\"post_edit_delete_succeed\";i:9;s:22:\"post_newthread_succeed\";i:10;s:13:\"admin_succeed\";i:11;s:17:\"pm_delete_succeed\";i:12;s:15:\"search_redirect\";}}');
INSERT INTO `cdb_settings` VALUES ('msn', '');
INSERT INTO `cdb_settings` VALUES ('newbiespan', '0');
INSERT INTO `cdb_settings` VALUES ('newbietasks', '');
INSERT INTO `cdb_settings` VALUES ('newbietaskupdate', '');
INSERT INTO `cdb_settings` VALUES ('newsletter', '');
INSERT INTO `cdb_settings` VALUES ('nocacheheaders', '0');
INSERT INTO `cdb_settings` VALUES ('oltimespan', '10');
INSERT INTO `cdb_settings` VALUES ('onlinehold', '15');
INSERT INTO `cdb_settings` VALUES ('onlinerecord', '1	1040034649');
INSERT INTO `cdb_settings` VALUES ('outextcredits', '');
INSERT INTO `cdb_settings` VALUES ('postbanperiods', '');
INSERT INTO `cdb_settings` VALUES ('postmodperiods', '');
INSERT INTO `cdb_settings` VALUES ('postno', '#');
INSERT INTO `cdb_settings` VALUES ('postnocustom', '');
INSERT INTO `cdb_settings` VALUES ('postperpage', '10');
INSERT INTO `cdb_settings` VALUES ('pvfrequence', '60');
INSERT INTO `cdb_settings` VALUES ('pwdsafety', '');
INSERT INTO `cdb_settings` VALUES ('qihoo', 'a:9:{s:6:\"status\";i:0;s:9:\"searchbox\";i:6;s:7:\"summary\";i:1;s:6:\"jammer\";i:1;s:9:\"maxtopics\";i:10;s:8:\"keywords\";s:0:\"\";s:10:\"adminemail\";s:0:\"\";s:8:\"validity\";i:1;s:14:\"relatedthreads\";a:6:{s:6:\"bbsnum\";i:0;s:6:\"webnum\";i:0;s:4:\"type\";a:3:{s:4:\"blog\";s:4:\"blog\";s:4:\"news\";s:4:\"news\";s:3:\"bbs\";s:3:\"bbs\";}s:6:\"banurl\";s:0:\"\";s:8:\"position\";i:1;s:8:\"validity\";i:1;}}');
INSERT INTO `cdb_settings` VALUES ('ratelogrecord', '5');
INSERT INTO `cdb_settings` VALUES ('recommendthread', '');
INSERT INTO `cdb_settings` VALUES ('regctrl', '0');
INSERT INTO `cdb_settings` VALUES ('regfloodctrl', '0');
INSERT INTO `cdb_settings` VALUES ('reglinkname', '注册');
INSERT INTO `cdb_settings` VALUES ('regname', 'register.php');
INSERT INTO `cdb_settings` VALUES ('regstatus', '1');
INSERT INTO `cdb_settings` VALUES ('regverify', '0');
INSERT INTO `cdb_settings` VALUES ('relatedtag', '');
INSERT INTO `cdb_settings` VALUES ('reportpost', '1');
INSERT INTO `cdb_settings` VALUES ('rewritecompatible', '');
INSERT INTO `cdb_settings` VALUES ('rewritestatus', '0');
INSERT INTO `cdb_settings` VALUES ('rssstatus', '1');
INSERT INTO `cdb_settings` VALUES ('rssttl', '60');
INSERT INTO `cdb_settings` VALUES ('runwizard', '1');
INSERT INTO `cdb_settings` VALUES ('searchbanperiods', '');
INSERT INTO `cdb_settings` VALUES ('searchctrl', '30');
INSERT INTO `cdb_settings` VALUES ('seccodedata', 'a:13:{s:8:\"minposts\";s:0:\"\";s:16:\"loginfailedcount\";i:0;s:5:\"width\";i:150;s:6:\"height\";i:60;s:4:\"type\";s:1:\"0\";s:10:\"background\";s:1:\"1\";s:10:\"adulterate\";s:1:\"1\";s:3:\"ttf\";s:1:\"0\";s:5:\"angle\";s:1:\"0\";s:5:\"color\";s:1:\"1\";s:4:\"size\";s:1:\"0\";s:6:\"shadow\";s:1:\"1\";s:8:\"animator\";s:1:\"0\";}');
INSERT INTO `cdb_settings` VALUES ('seccodestatus', '0');
INSERT INTO `cdb_settings` VALUES ('seclevel', '1');
INSERT INTO `cdb_settings` VALUES ('secqaa', 'a:2:{s:8:\"minposts\";s:1:\"1\";s:6:\"status\";i:0;}');
INSERT INTO `cdb_settings` VALUES ('seodescription', '');
INSERT INTO `cdb_settings` VALUES ('seohead', '');
INSERT INTO `cdb_settings` VALUES ('seokeywords', '');
INSERT INTO `cdb_settings` VALUES ('seotitle', '');
INSERT INTO `cdb_settings` VALUES ('showemail', '');
INSERT INTO `cdb_settings` VALUES ('showimages', '1');
INSERT INTO `cdb_settings` VALUES ('showsettings', '7');
INSERT INTO `cdb_settings` VALUES ('sigviewcond', '0');
INSERT INTO `cdb_settings` VALUES ('sitemessage', '');
INSERT INTO `cdb_settings` VALUES ('sitename', 'Comsenz Inc.');
INSERT INTO `cdb_settings` VALUES ('siteuniqueid', 'NMYRO99995JmhUov');
INSERT INTO `cdb_settings` VALUES ('siteurl', 'http://www.comsenz.com/');
INSERT INTO `cdb_settings` VALUES ('smcols', '8');
INSERT INTO `cdb_settings` VALUES ('smrows', '5');
INSERT INTO `cdb_settings` VALUES ('smthumb', '20');
INSERT INTO `cdb_settings` VALUES ('spacedata', 'a:11:{s:9:\"cachelife\";s:3:\"900\";s:14:\"limitmythreads\";s:1:\"5\";s:14:\"limitmyreplies\";s:1:\"5\";s:14:\"limitmyrewards\";s:1:\"5\";s:13:\"limitmytrades\";s:1:\"5\";s:13:\"limitmyvideos\";s:1:\"0\";s:12:\"limitmyblogs\";s:1:\"8\";s:14:\"limitmyfriends\";s:1:\"0\";s:16:\"limitmyfavforums\";s:1:\"5\";s:17:\"limitmyfavthreads\";s:1:\"0\";s:10:\"textlength\";s:3:\"300\";}');
INSERT INTO `cdb_settings` VALUES ('spacestatus', '1');
INSERT INTO `cdb_settings` VALUES ('starthreshold', '2');
INSERT INTO `cdb_settings` VALUES ('statcode', '');
INSERT INTO `cdb_settings` VALUES ('statscachelife', '180');
INSERT INTO `cdb_settings` VALUES ('statstatus', '');
INSERT INTO `cdb_settings` VALUES ('styleid', '1');
INSERT INTO `cdb_settings` VALUES ('stylejump', '1');
INSERT INTO `cdb_settings` VALUES ('subforumsindex', '');
INSERT INTO `cdb_settings` VALUES ('swfupload', '1');
INSERT INTO `cdb_settings` VALUES ('tagstatus', '1');
INSERT INTO `cdb_settings` VALUES ('taskon', '0');
INSERT INTO `cdb_settings` VALUES ('threadmaxpages', '1000');
INSERT INTO `cdb_settings` VALUES ('threadsticky', '全局置顶,分类置顶,本版置顶');
INSERT INTO `cdb_settings` VALUES ('thumbheight', '300');
INSERT INTO `cdb_settings` VALUES ('thumbquality', '100');
INSERT INTO `cdb_settings` VALUES ('thumbstatus', '0');
INSERT INTO `cdb_settings` VALUES ('thumbwidth', '400');
INSERT INTO `cdb_settings` VALUES ('timeformat', 'H:i');
INSERT INTO `cdb_settings` VALUES ('timeoffset', '8');
INSERT INTO `cdb_settings` VALUES ('topicperpage', '20');
INSERT INTO `cdb_settings` VALUES ('tradetypes', '');
INSERT INTO `cdb_settings` VALUES ('transfermincredits', '1000');
INSERT INTO `cdb_settings` VALUES ('transsidstatus', '0');
INSERT INTO `cdb_settings` VALUES ('uc', 'a:1:{s:7:\"addfeed\";i:1;}');
INSERT INTO `cdb_settings` VALUES ('ucactivation', '1');
INSERT INTO `cdb_settings` VALUES ('upgradeurl', 'http://localhost/develop/dzhead/develop/upgrade.php');
INSERT INTO `cdb_settings` VALUES ('userdateformat', 'Y-n-j\r\nY/n/j\r\nj-n-Y\r\nj/n/Y');
INSERT INTO `cdb_settings` VALUES ('userstatusby', '1');
INSERT INTO `cdb_settings` VALUES ('viewthreadtags', '100');
INSERT INTO `cdb_settings` VALUES ('visitbanperiods', '');
INSERT INTO `cdb_settings` VALUES ('visitedforums', '10');
INSERT INTO `cdb_settings` VALUES ('vtonlinestatus', '1');
INSERT INTO `cdb_settings` VALUES ('wapcharset', '2');
INSERT INTO `cdb_settings` VALUES ('wapdateformat', 'n/j');
INSERT INTO `cdb_settings` VALUES ('wapmps', '500');
INSERT INTO `cdb_settings` VALUES ('wapppp', '5');
INSERT INTO `cdb_settings` VALUES ('wapregister', '0');
INSERT INTO `cdb_settings` VALUES ('wapstatus', '0');
INSERT INTO `cdb_settings` VALUES ('waptpp', '10');
INSERT INTO `cdb_settings` VALUES ('warningexpiration', '3');
INSERT INTO `cdb_settings` VALUES ('warninglimit', '3');
INSERT INTO `cdb_settings` VALUES ('watermarkminheight', '0');
INSERT INTO `cdb_settings` VALUES ('watermarkminwidth', '0');
INSERT INTO `cdb_settings` VALUES ('watermarkquality', '80');
INSERT INTO `cdb_settings` VALUES ('watermarkstatus', '0');
INSERT INTO `cdb_settings` VALUES ('watermarktext', '');
INSERT INTO `cdb_settings` VALUES ('watermarktrans', '65');
INSERT INTO `cdb_settings` VALUES ('watermarktype', '0');
INSERT INTO `cdb_settings` VALUES ('welcomemsg', '1');
INSERT INTO `cdb_settings` VALUES ('welcomemsgtitle', '{username}，您好，感谢您的注册，请阅读以下内容。');
INSERT INTO `cdb_settings` VALUES ('welcomemsgtxt', '尊敬的{username}，您已经注册成为{sitename}的会员，请您在发表言论时，遵守当地法律法规。\r\n如果您有什么疑问可以联系管理员，Email: {adminemail}。\r\n\r\n\r\n{bbname}\r\n{time}');
INSERT INTO `cdb_settings` VALUES ('whosonlinestatus', '1');
INSERT INTO `cdb_settings` VALUES ('whosonline_contract', '0');
INSERT INTO `cdb_settings` VALUES ('zoomstatus', '1');
INSERT INTO `cdb_settings` VALUES ('ratelogon', '0');
INSERT INTO `cdb_settings` VALUES ('forumseparator', '1');
INSERT INTO `cdb_settings` VALUES ('allowattachurl', '0');
INSERT INTO `cdb_settings` VALUES ('allowviewuserthread', '');
INSERT INTO `cdb_settings` VALUES ('ipverifywhite', '');
INSERT INTO `cdb_settings` VALUES ('tasktypes', 'a:3:{s:9:\"promotion\";a:2:{s:4:\"name\";s:18:\"论坛推广任务\";s:7:\"version\";s:3:\"1.0\";}s:4:\"gift\";a:2:{s:4:\"name\";s:15:\"红包类任务\";s:7:\"version\";s:3:\"1.0\";}s:6:\"avatar\";a:2:{s:4:\"name\";s:15:\"头像类任务\";s:7:\"version\";s:3:\"1.0\";}}');

-- ----------------------------
-- Table structure for `cdb_smilies`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_smilies`;
CREATE TABLE `cdb_smilies` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `typeid` smallint(6) unsigned NOT NULL,
  `displayorder` tinyint(3) NOT NULL default '0',
  `type` enum('smiley','icon','stamp') NOT NULL default 'smiley',
  `code` varchar(30) NOT NULL default '',
  `url` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_smilies
-- ----------------------------
INSERT INTO `cdb_smilies` VALUES ('1', '1', '1', 'smiley', ':)', 'smile.gif');
INSERT INTO `cdb_smilies` VALUES ('2', '1', '2', 'smiley', ':(', 'sad.gif');
INSERT INTO `cdb_smilies` VALUES ('3', '1', '3', 'smiley', ':D', 'biggrin.gif');
INSERT INTO `cdb_smilies` VALUES ('4', '1', '4', 'smiley', ':\'(', 'cry.gif');
INSERT INTO `cdb_smilies` VALUES ('5', '1', '5', 'smiley', ':@', 'huffy.gif');
INSERT INTO `cdb_smilies` VALUES ('6', '1', '6', 'smiley', ':o', 'shocked.gif');
INSERT INTO `cdb_smilies` VALUES ('7', '1', '7', 'smiley', ':P', 'tongue.gif');
INSERT INTO `cdb_smilies` VALUES ('8', '1', '8', 'smiley', ':$', 'shy.gif');
INSERT INTO `cdb_smilies` VALUES ('9', '1', '9', 'smiley', ';P', 'titter.gif');
INSERT INTO `cdb_smilies` VALUES ('10', '1', '10', 'smiley', ':L', 'sweat.gif');
INSERT INTO `cdb_smilies` VALUES ('11', '1', '11', 'smiley', ':Q', 'mad.gif');
INSERT INTO `cdb_smilies` VALUES ('12', '1', '12', 'smiley', ':lol', 'lol.gif');
INSERT INTO `cdb_smilies` VALUES ('13', '1', '13', 'smiley', ':loveliness:', 'loveliness.gif');
INSERT INTO `cdb_smilies` VALUES ('14', '1', '14', 'smiley', ':funk:', 'funk.gif');
INSERT INTO `cdb_smilies` VALUES ('15', '1', '15', 'smiley', ':curse:', 'curse.gif');
INSERT INTO `cdb_smilies` VALUES ('16', '1', '16', 'smiley', ':dizzy:', 'dizzy.gif');
INSERT INTO `cdb_smilies` VALUES ('17', '1', '17', 'smiley', ':shutup:', 'shutup.gif');
INSERT INTO `cdb_smilies` VALUES ('18', '1', '18', 'smiley', ':sleepy:', 'sleepy.gif');
INSERT INTO `cdb_smilies` VALUES ('19', '1', '19', 'smiley', ':hug:', 'hug.gif');
INSERT INTO `cdb_smilies` VALUES ('20', '1', '20', 'smiley', ':victory:', 'victory.gif');
INSERT INTO `cdb_smilies` VALUES ('21', '1', '21', 'smiley', ':time:', 'time.gif');
INSERT INTO `cdb_smilies` VALUES ('22', '1', '22', 'smiley', ':kiss:', 'kiss.gif');
INSERT INTO `cdb_smilies` VALUES ('23', '1', '23', 'smiley', ':handshake', 'handshake.gif');
INSERT INTO `cdb_smilies` VALUES ('24', '1', '24', 'smiley', ':call:', 'call.gif');
INSERT INTO `cdb_smilies` VALUES ('25', '2', '1', 'smiley', '{:2_25:}', '01.gif');
INSERT INTO `cdb_smilies` VALUES ('26', '2', '2', 'smiley', '{:2_26:}', '02.gif');
INSERT INTO `cdb_smilies` VALUES ('27', '2', '3', 'smiley', '{:2_27:}', '03.gif');
INSERT INTO `cdb_smilies` VALUES ('28', '2', '4', 'smiley', '{:2_28:}', '04.gif');
INSERT INTO `cdb_smilies` VALUES ('29', '2', '5', 'smiley', '{:2_29:}', '05.gif');
INSERT INTO `cdb_smilies` VALUES ('30', '2', '6', 'smiley', '{:2_30:}', '06.gif');
INSERT INTO `cdb_smilies` VALUES ('31', '2', '7', 'smiley', '{:2_31:}', '07.gif');
INSERT INTO `cdb_smilies` VALUES ('32', '2', '8', 'smiley', '{:2_32:}', '08.gif');
INSERT INTO `cdb_smilies` VALUES ('33', '2', '9', 'smiley', '{:2_33:}', '09.gif');
INSERT INTO `cdb_smilies` VALUES ('34', '2', '10', 'smiley', '{:2_34:}', '10.gif');
INSERT INTO `cdb_smilies` VALUES ('35', '2', '11', 'smiley', '{:2_35:}', '11.gif');
INSERT INTO `cdb_smilies` VALUES ('36', '2', '12', 'smiley', '{:2_36:}', '12.gif');
INSERT INTO `cdb_smilies` VALUES ('37', '2', '13', 'smiley', '{:2_37:}', '13.gif');
INSERT INTO `cdb_smilies` VALUES ('38', '2', '14', 'smiley', '{:2_38:}', '14.gif');
INSERT INTO `cdb_smilies` VALUES ('39', '2', '15', 'smiley', '{:2_39:}', '15.gif');
INSERT INTO `cdb_smilies` VALUES ('40', '2', '16', 'smiley', '{:2_40:}', '16.gif');
INSERT INTO `cdb_smilies` VALUES ('41', '3', '1', 'smiley', '{:3_41:}', '01.gif');
INSERT INTO `cdb_smilies` VALUES ('42', '3', '2', 'smiley', '{:3_42:}', '02.gif');
INSERT INTO `cdb_smilies` VALUES ('43', '3', '3', 'smiley', '{:3_43:}', '03.gif');
INSERT INTO `cdb_smilies` VALUES ('44', '3', '4', 'smiley', '{:3_44:}', '04.gif');
INSERT INTO `cdb_smilies` VALUES ('45', '3', '5', 'smiley', '{:3_45:}', '05.gif');
INSERT INTO `cdb_smilies` VALUES ('46', '3', '6', 'smiley', '{:3_46:}', '06.gif');
INSERT INTO `cdb_smilies` VALUES ('47', '3', '7', 'smiley', '{:3_47:}', '07.gif');
INSERT INTO `cdb_smilies` VALUES ('48', '3', '8', 'smiley', '{:3_48:}', '08.gif');
INSERT INTO `cdb_smilies` VALUES ('49', '3', '9', 'smiley', '{:3_49:}', '09.gif');
INSERT INTO `cdb_smilies` VALUES ('50', '3', '10', 'smiley', '{:3_50:}', '10.gif');
INSERT INTO `cdb_smilies` VALUES ('51', '3', '11', 'smiley', '{:3_51:}', '11.gif');
INSERT INTO `cdb_smilies` VALUES ('52', '3', '12', 'smiley', '{:3_52:}', '12.gif');
INSERT INTO `cdb_smilies` VALUES ('53', '3', '13', 'smiley', '{:3_53:}', '13.gif');
INSERT INTO `cdb_smilies` VALUES ('54', '3', '14', 'smiley', '{:3_54:}', '14.gif');
INSERT INTO `cdb_smilies` VALUES ('55', '3', '15', 'smiley', '{:3_55:}', '15.gif');
INSERT INTO `cdb_smilies` VALUES ('56', '3', '16', 'smiley', '{:3_56:}', '16.gif');
INSERT INTO `cdb_smilies` VALUES ('57', '3', '17', 'smiley', '{:3_57:}', '17.gif');
INSERT INTO `cdb_smilies` VALUES ('58', '3', '18', 'smiley', '{:3_58:}', '18.gif');
INSERT INTO `cdb_smilies` VALUES ('59', '3', '19', 'smiley', '{:3_59:}', '19.gif');
INSERT INTO `cdb_smilies` VALUES ('60', '3', '20', 'smiley', '{:3_60:}', '20.gif');
INSERT INTO `cdb_smilies` VALUES ('61', '3', '21', 'smiley', '{:3_61:}', '21.gif');
INSERT INTO `cdb_smilies` VALUES ('62', '3', '22', 'smiley', '{:3_62:}', '22.gif');
INSERT INTO `cdb_smilies` VALUES ('63', '3', '23', 'smiley', '{:3_63:}', '23.gif');
INSERT INTO `cdb_smilies` VALUES ('64', '3', '24', 'smiley', '{:3_64:}', '24.gif');
INSERT INTO `cdb_smilies` VALUES ('65', '0', '1', 'icon', '', 'icon1.gif');
INSERT INTO `cdb_smilies` VALUES ('66', '0', '2', 'icon', '', 'icon2.gif');
INSERT INTO `cdb_smilies` VALUES ('67', '0', '3', 'icon', '', 'icon3.gif');
INSERT INTO `cdb_smilies` VALUES ('68', '0', '4', 'icon', '', 'icon4.gif');
INSERT INTO `cdb_smilies` VALUES ('69', '0', '5', 'icon', '', 'icon5.gif');
INSERT INTO `cdb_smilies` VALUES ('70', '0', '6', 'icon', '', 'icon6.gif');
INSERT INTO `cdb_smilies` VALUES ('71', '0', '7', 'icon', '', 'icon7.gif');
INSERT INTO `cdb_smilies` VALUES ('72', '0', '8', 'icon', '', 'icon8.gif');
INSERT INTO `cdb_smilies` VALUES ('73', '0', '9', 'icon', '', 'icon9.gif');
INSERT INTO `cdb_smilies` VALUES ('74', '0', '10', 'icon', '', 'icon10.gif');
INSERT INTO `cdb_smilies` VALUES ('75', '0', '11', 'icon', '', 'icon11.gif');
INSERT INTO `cdb_smilies` VALUES ('76', '0', '12', 'icon', '', 'icon12.gif');
INSERT INTO `cdb_smilies` VALUES ('77', '0', '13', 'icon', '', 'icon13.gif');
INSERT INTO `cdb_smilies` VALUES ('78', '0', '14', 'icon', '', 'icon14.gif');
INSERT INTO `cdb_smilies` VALUES ('79', '0', '15', 'icon', '', 'icon15.gif');
INSERT INTO `cdb_smilies` VALUES ('80', '0', '16', 'icon', '', 'icon16.gif');
INSERT INTO `cdb_smilies` VALUES ('81', '0', '0', 'stamp', '精华', '001.gif');
INSERT INTO `cdb_smilies` VALUES ('82', '0', '1', 'stamp', '热帖', '002.gif');
INSERT INTO `cdb_smilies` VALUES ('83', '0', '2', 'stamp', '美图', '003.gif');
INSERT INTO `cdb_smilies` VALUES ('84', '0', '3', 'stamp', '优秀', '004.gif');
INSERT INTO `cdb_smilies` VALUES ('85', '0', '4', 'stamp', '置顶', '005.gif');
INSERT INTO `cdb_smilies` VALUES ('86', '0', '5', 'stamp', '推荐', '006.gif');
INSERT INTO `cdb_smilies` VALUES ('87', '0', '6', 'stamp', '原创', '007.gif');
INSERT INTO `cdb_smilies` VALUES ('88', '0', '7', 'stamp', '版主推荐', '008.gif');
INSERT INTO `cdb_smilies` VALUES ('89', '0', '8', 'stamp', '爆料', '009.gif');

-- ----------------------------
-- Table structure for `cdb_spacecaches`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_spacecaches`;
CREATE TABLE `cdb_spacecaches` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `variable` varchar(20) NOT NULL,
  `value` text NOT NULL,
  `expiration` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`,`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_spacecaches
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_stats`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_stats`;
CREATE TABLE `cdb_stats` (
  `type` char(10) NOT NULL default '',
  `variable` char(10) NOT NULL default '',
  `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`type`,`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_stats
-- ----------------------------
INSERT INTO `cdb_stats` VALUES ('total', 'hits', '1');
INSERT INTO `cdb_stats` VALUES ('total', 'members', '0');
INSERT INTO `cdb_stats` VALUES ('total', 'guests', '1');
INSERT INTO `cdb_stats` VALUES ('os', 'Windows', '1');
INSERT INTO `cdb_stats` VALUES ('os', 'Mac', '0');
INSERT INTO `cdb_stats` VALUES ('os', 'Linux', '0');
INSERT INTO `cdb_stats` VALUES ('os', 'FreeBSD', '0');
INSERT INTO `cdb_stats` VALUES ('os', 'SunOS', '0');
INSERT INTO `cdb_stats` VALUES ('os', 'OS/2', '0');
INSERT INTO `cdb_stats` VALUES ('os', 'AIX', '0');
INSERT INTO `cdb_stats` VALUES ('os', 'Spiders', '0');
INSERT INTO `cdb_stats` VALUES ('os', 'Other', '0');
INSERT INTO `cdb_stats` VALUES ('browser', 'MSIE', '1');
INSERT INTO `cdb_stats` VALUES ('browser', 'Netscape', '0');
INSERT INTO `cdb_stats` VALUES ('browser', 'Mozilla', '0');
INSERT INTO `cdb_stats` VALUES ('browser', 'Lynx', '0');
INSERT INTO `cdb_stats` VALUES ('browser', 'Opera', '0');
INSERT INTO `cdb_stats` VALUES ('browser', 'Konqueror', '0');
INSERT INTO `cdb_stats` VALUES ('browser', 'Other', '0');
INSERT INTO `cdb_stats` VALUES ('week', '0', '0');
INSERT INTO `cdb_stats` VALUES ('week', '1', '1');
INSERT INTO `cdb_stats` VALUES ('week', '2', '0');
INSERT INTO `cdb_stats` VALUES ('week', '3', '0');
INSERT INTO `cdb_stats` VALUES ('week', '4', '0');
INSERT INTO `cdb_stats` VALUES ('week', '5', '0');
INSERT INTO `cdb_stats` VALUES ('week', '6', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '00', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '01', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '02', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '03', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '04', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '05', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '06', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '07', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '08', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '09', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '10', '1');
INSERT INTO `cdb_stats` VALUES ('hour', '11', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '12', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '13', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '14', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '15', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '16', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '17', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '18', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '19', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '20', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '21', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '22', '0');
INSERT INTO `cdb_stats` VALUES ('hour', '23', '0');
INSERT INTO `cdb_stats` VALUES ('browser', 'Firefox', '0');
INSERT INTO `cdb_stats` VALUES ('browser', 'Safari', '0');

-- ----------------------------
-- Table structure for `cdb_statvars`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_statvars`;
CREATE TABLE `cdb_statvars` (
  `type` varchar(20) NOT NULL default '',
  `variable` varchar(20) NOT NULL default '',
  `value` mediumtext NOT NULL,
  PRIMARY KEY  (`type`,`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_statvars
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_styles`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_styles`;
CREATE TABLE `cdb_styles` (
  `styleid` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL default '',
  `available` tinyint(1) NOT NULL default '1',
  `templateid` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`styleid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_styles
-- ----------------------------
INSERT INTO `cdb_styles` VALUES ('1', '默认风格', '1', '1');

-- ----------------------------
-- Table structure for `cdb_stylevars`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_stylevars`;
CREATE TABLE `cdb_stylevars` (
  `stylevarid` smallint(6) unsigned NOT NULL auto_increment,
  `styleid` smallint(6) unsigned NOT NULL default '0',
  `variable` text NOT NULL,
  `substitute` text NOT NULL,
  PRIMARY KEY  (`stylevarid`),
  KEY `styleid` (`styleid`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_stylevars
-- ----------------------------
INSERT INTO `cdb_stylevars` VALUES ('1', '1', 'stypeid', '1');
INSERT INTO `cdb_stylevars` VALUES ('2', '1', 'available', '');
INSERT INTO `cdb_stylevars` VALUES ('3', '1', 'boardimg', 'logo.gif');
INSERT INTO `cdb_stylevars` VALUES ('4', '1', 'imgdir', '');
INSERT INTO `cdb_stylevars` VALUES ('5', '1', 'styleimgdir', '');
INSERT INTO `cdb_stylevars` VALUES ('6', '1', 'font', 'Verdana, Helvetica, Arial, sans-serif');
INSERT INTO `cdb_stylevars` VALUES ('7', '1', 'fontsize', '12px');
INSERT INTO `cdb_stylevars` VALUES ('8', '1', 'smfont', 'Verdana, Helvetica, Arial, sans-serif');
INSERT INTO `cdb_stylevars` VALUES ('9', '1', 'smfontsize', '0.83em');
INSERT INTO `cdb_stylevars` VALUES ('10', '1', 'tabletext', '#444');
INSERT INTO `cdb_stylevars` VALUES ('11', '1', 'midtext', '#666');
INSERT INTO `cdb_stylevars` VALUES ('12', '1', 'lighttext', '#999');
INSERT INTO `cdb_stylevars` VALUES ('13', '1', 'link', '#000');
INSERT INTO `cdb_stylevars` VALUES ('14', '1', 'highlightlink', '#09C');
INSERT INTO `cdb_stylevars` VALUES ('15', '1', 'noticetext', '#F60');
INSERT INTO `cdb_stylevars` VALUES ('16', '1', 'msgfontsize', '14px');
INSERT INTO `cdb_stylevars` VALUES ('17', '1', 'msgbigsize', '16px');
INSERT INTO `cdb_stylevars` VALUES ('18', '1', 'bgcolor', '#0D2345 bodybg.gif repeat-x 0 90px');
INSERT INTO `cdb_stylevars` VALUES ('19', '1', 'sidebgcolor', '#FFF sidebg.gif repeat-y 100% 0');
INSERT INTO `cdb_stylevars` VALUES ('20', '1', 'headerborder', '1px');
INSERT INTO `cdb_stylevars` VALUES ('21', '1', 'headerbordercolor', '#00B2E8');
INSERT INTO `cdb_stylevars` VALUES ('22', '1', 'headerbgcolor', '#00A2D2 header.gif repeat-x 0 100%');
INSERT INTO `cdb_stylevars` VALUES ('23', '1', 'headertext', '#97F2FF');
INSERT INTO `cdb_stylevars` VALUES ('24', '1', 'footertext', '#8691A2');
INSERT INTO `cdb_stylevars` VALUES ('25', '1', 'menuborder', '#B0E4EF');
INSERT INTO `cdb_stylevars` VALUES ('26', '1', 'menubgcolor', '#EBF4FD mtabbg.gif repeat-x 0 100%');
INSERT INTO `cdb_stylevars` VALUES ('27', '1', 'menutext', '#666');
INSERT INTO `cdb_stylevars` VALUES ('28', '1', 'menuhover', '#1E4B7E');
INSERT INTO `cdb_stylevars` VALUES ('29', '1', 'menuhovertext', '#C3D3E4');
INSERT INTO `cdb_stylevars` VALUES ('30', '1', 'wrapwidth', '960px');
INSERT INTO `cdb_stylevars` VALUES ('31', '1', 'wrapbg', '#FFF');
INSERT INTO `cdb_stylevars` VALUES ('32', '1', 'wrapborder', '0');
INSERT INTO `cdb_stylevars` VALUES ('33', '1', 'wrapbordercolor', '');
INSERT INTO `cdb_stylevars` VALUES ('34', '1', 'contentwidth', '600px');
INSERT INTO `cdb_stylevars` VALUES ('35', '1', 'contentseparate', '#D3E8F2');
INSERT INTO `cdb_stylevars` VALUES ('36', '1', 'inputborder', '#CCC');
INSERT INTO `cdb_stylevars` VALUES ('37', '1', 'inputborderdarkcolor', '#999');
INSERT INTO `cdb_stylevars` VALUES ('38', '1', 'inputbg', '#FFF');
INSERT INTO `cdb_stylevars` VALUES ('39', '1', 'commonborder', '#E6E7E1');
INSERT INTO `cdb_stylevars` VALUES ('40', '1', 'commonbg', '#F7F7F7');
INSERT INTO `cdb_stylevars` VALUES ('41', '1', 'specialborder', '#E3EDF5');
INSERT INTO `cdb_stylevars` VALUES ('42', '1', 'specialbg', '#EBF2F8');
INSERT INTO `cdb_stylevars` VALUES ('43', '1', 'interleavecolor', '#F5F5F5');
INSERT INTO `cdb_stylevars` VALUES ('44', '1', 'dropmenuborder', '#7FCAE2');
INSERT INTO `cdb_stylevars` VALUES ('45', '1', 'dropmenubgcolor', '#FEFEFE');
INSERT INTO `cdb_stylevars` VALUES ('46', '1', 'floatmaskbgcolor', '#7FCAE2');
INSERT INTO `cdb_stylevars` VALUES ('47', '1', 'floatbgcolor', '#F1F5FA');

-- ----------------------------
-- Table structure for `cdb_tags`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_tags`;
CREATE TABLE `cdb_tags` (
  `tagname` char(20) NOT NULL,
  `closed` tinyint(1) NOT NULL default '0',
  `total` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY  (`tagname`),
  KEY `total` (`total`),
  KEY `closed` (`closed`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_tags
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_tasks`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_tasks`;
CREATE TABLE `cdb_tasks` (
  `taskid` smallint(6) unsigned NOT NULL auto_increment,
  `relatedtaskid` smallint(6) unsigned NOT NULL default '0',
  `newbietask` tinyint(1) NOT NULL default '0',
  `available` tinyint(1) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `description` text NOT NULL,
  `icon` varchar(150) NOT NULL default '',
  `applicants` mediumint(8) unsigned NOT NULL default '0',
  `achievers` mediumint(8) unsigned NOT NULL default '0',
  `tasklimits` mediumint(8) unsigned NOT NULL default '0',
  `applyperm` text NOT NULL,
  `scriptname` varchar(50) NOT NULL default '',
  `starttime` int(10) unsigned NOT NULL default '0',
  `endtime` int(10) unsigned NOT NULL default '0',
  `period` int(10) unsigned NOT NULL default '0',
  `reward` enum('credit','magic','medal','invite','group') NOT NULL default 'credit',
  `prize` varchar(15) NOT NULL default '',
  `bonus` int(10) NOT NULL default '0',
  `displayorder` smallint(6) NOT NULL default '0',
  `version` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`taskid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_tasks
-- ----------------------------
INSERT INTO `cdb_tasks` VALUES ('1', '0', '1', '0', '回帖是一种美德', '学习回帖，看帖回帖是一种美德，BS看帖不回帖的', '', '0', '0', '0', 'all', 'newbie_post_reply', '0', '0', '0', 'credit', '2', '10', '-1', '');
INSERT INTO `cdb_tasks` VALUES ('2', '0', '1', '0', '我的第一次', '学会发主题帖，成为社区的焦点', '', '0', '0', '0', 'all', 'newbie_post_newthread', '0', '0', '0', 'credit', '2', '10', '-1', '');
INSERT INTO `cdb_tasks` VALUES ('3', '0', '1', '0', '与众不同', '修改个人资料，让你和别人与众不同', '', '0', '0', '0', 'all', 'newbie_modifyprofile', '0', '0', '0', 'credit', '2', '10', '-1', '');
INSERT INTO `cdb_tasks` VALUES ('4', '0', '1', '0', '我型我秀', '上传头像，让大家认识一个全新的你', '', '0', '0', '0', 'all', 'newbie_uploadavatar', '0', '0', '0', 'credit', '2', '10', '-1', '');
INSERT INTO `cdb_tasks` VALUES ('5', '0', '1', '0', '联络感情', '给其他用户发个发短消息，大家联络一下感情', '', '0', '0', '0', 'all', 'newbie_sendpm', '0', '0', '0', 'credit', '2', '10', '-1', '');
INSERT INTO `cdb_tasks` VALUES ('6', '0', '1', '0', '一个好汉三个帮', '出来混的，没几个好友怎么行，加个好友吧', '', '0', '0', '0', 'all', 'newbie_addbuddy', '0', '0', '0', 'credit', '2', '10', '-1', '');
INSERT INTO `cdb_tasks` VALUES ('7', '0', '1', '0', '信息时代', '信息时代最缺的什么？搜索', '', '0', '0', '0', 'all', 'newbie_search', '0', '0', '0', 'credit', '2', '10', '-1', '');

-- ----------------------------
-- Table structure for `cdb_taskvars`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_taskvars`;
CREATE TABLE `cdb_taskvars` (
  `taskvarid` mediumint(8) unsigned NOT NULL auto_increment,
  `taskid` smallint(6) unsigned NOT NULL default '0',
  `sort` enum('apply','complete','setting') NOT NULL default 'complete',
  `name` varchar(100) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `variable` varchar(40) NOT NULL default '',
  `type` varchar(20) NOT NULL default 'text',
  `value` text NOT NULL,
  `extra` text NOT NULL,
  PRIMARY KEY  (`taskvarid`),
  KEY `taskid` (`taskid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_taskvars
-- ----------------------------
INSERT INTO `cdb_taskvars` VALUES ('1', '1', 'complete', '回复指定主题', '设置会员只有回复该主题才能完成任务，请填写主题的 tid(比如一个主题的地址是 http://localhost/viewthread.php?tid=8 那么该主题的 tid 就是 8)，留空为不限制', 'threadid', 'text', '0', '');
INSERT INTO `cdb_taskvars` VALUES ('2', '1', 'setting', '', '', 'entrance', 'text', 'viewthread', '');
INSERT INTO `cdb_taskvars` VALUES ('3', '2', 'complete', '在指定版块发表新主题', '设置会员必须在某个版块发表至少一篇新主题才能完成任务', 'forumid', 'text', '', '');
INSERT INTO `cdb_taskvars` VALUES ('4', '2', 'setting', '', '', 'entrance', 'text', 'forumdisplay', '');
INSERT INTO `cdb_taskvars` VALUES ('5', '3', 'complete', '完善个人资料', '申请任务后只要把自己的个人资料填写完整即可完成任务', '', '', '', '');
INSERT INTO `cdb_taskvars` VALUES ('6', '3', 'setting', '', '', 'entrance', 'text', 'memcp', '');
INSERT INTO `cdb_taskvars` VALUES ('7', '4', 'complete', '上传头像', '申请任务后只要成功上传头像即可完成任务', '', '', '', '');
INSERT INTO `cdb_taskvars` VALUES ('8', '4', 'setting', '', '', 'entrance', 'text', 'memcp', '');
INSERT INTO `cdb_taskvars` VALUES ('9', '5', 'complete', '给指定会员发送短消息', '只有给该会员成功发送短消息才能完成任务，请填写该会员的用户名', 'authorid', 'text', '', '');
INSERT INTO `cdb_taskvars` VALUES ('10', '5', 'setting', '', '', 'entrance', 'text', 'space', '');
INSERT INTO `cdb_taskvars` VALUES ('11', '6', 'complete', '将指定会员加为好友', '只有将该会员加为好友才能完成任务，请填写该会员的用户名', 'authorid', 'text', '', '');
INSERT INTO `cdb_taskvars` VALUES ('12', '6', 'setting', '', '', 'entrance', 'text', 'space', '');
INSERT INTO `cdb_taskvars` VALUES ('13', '7', 'complete', '学会搜索', '申请任务后只要成功使用论坛搜索功能即可完成任务', '', '', '', '');
INSERT INTO `cdb_taskvars` VALUES ('14', '7', 'setting', '', '', 'entrance', 'text', 'search', '');

-- ----------------------------
-- Table structure for `cdb_templates`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_templates`;
CREATE TABLE `cdb_templates` (
  `templateid` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(30) NOT NULL default '',
  `directory` varchar(100) NOT NULL default '',
  `copyright` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`templateid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_templates
-- ----------------------------
INSERT INTO `cdb_templates` VALUES ('1', '默认模板套系', './templates/default', '康盛创想（北京）科技有限公司');

-- ----------------------------
-- Table structure for `cdb_threads`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_threads`;
CREATE TABLE `cdb_threads` (
  `tid` mediumint(8) unsigned NOT NULL auto_increment,
  `fid` smallint(6) unsigned NOT NULL default '0',
  `iconid` smallint(6) unsigned NOT NULL default '0',
  `typeid` smallint(6) unsigned NOT NULL default '0',
  `sortid` smallint(6) unsigned NOT NULL default '0',
  `readperm` tinyint(3) unsigned NOT NULL default '0',
  `price` smallint(6) NOT NULL default '0',
  `author` char(15) NOT NULL default '',
  `authorid` mediumint(8) unsigned NOT NULL default '0',
  `subject` char(80) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `lastpost` int(10) unsigned NOT NULL default '0',
  `lastposter` char(15) NOT NULL default '',
  `views` int(10) unsigned NOT NULL default '0',
  `replies` mediumint(8) unsigned NOT NULL default '0',
  `displayorder` tinyint(1) NOT NULL default '0',
  `highlight` tinyint(1) NOT NULL default '0',
  `digest` tinyint(1) NOT NULL default '0',
  `rate` tinyint(1) NOT NULL default '0',
  `special` tinyint(1) NOT NULL default '0',
  `attachment` tinyint(1) NOT NULL default '0',
  `moderated` tinyint(1) NOT NULL default '0',
  `closed` mediumint(8) unsigned NOT NULL default '0',
  `itemid` mediumint(8) unsigned NOT NULL default '0',
  `supe_pushstatus` tinyint(1) NOT NULL default '0',
  `recommends` smallint(6) NOT NULL,
  `recommend_add` smallint(6) NOT NULL,
  `recommend_sub` smallint(6) NOT NULL,
  `heats` int(10) unsigned NOT NULL default '0',
  `status` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`tid`),
  KEY `digest` (`digest`),
  KEY `sortid` (`sortid`),
  KEY `displayorder` (`fid`,`displayorder`,`lastpost`),
  KEY `typeid` (`fid`,`typeid`,`displayorder`,`lastpost`),
  KEY `recommends` (`recommends`),
  KEY `heats` (`heats`),
  KEY `authorid` (`authorid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_threads
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_threadsmod`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_threadsmod`;
CREATE TABLE `cdb_threadsmod` (
  `tid` mediumint(8) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` char(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `expiration` int(10) unsigned NOT NULL default '0',
  `action` char(5) NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  `magicid` smallint(6) unsigned NOT NULL,
  `stamp` tinyint(3) NOT NULL,
  KEY `tid` (`tid`,`dateline`),
  KEY `expiration` (`expiration`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_threadsmod
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_threadtags`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_threadtags`;
CREATE TABLE `cdb_threadtags` (
  `tagname` char(20) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  KEY `tagname` (`tagname`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_threadtags
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_threadtypes`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_threadtypes`;
CREATE TABLE `cdb_threadtypes` (
  `typeid` smallint(6) unsigned NOT NULL auto_increment,
  `displayorder` smallint(6) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `special` smallint(6) NOT NULL default '0',
  `modelid` smallint(6) unsigned NOT NULL default '0',
  `expiration` tinyint(1) NOT NULL default '0',
  `template` text NOT NULL,
  `stemplate` text NOT NULL,
  PRIMARY KEY  (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_threadtypes
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_tradecomments`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_tradecomments`;
CREATE TABLE `cdb_tradecomments` (
  `id` mediumint(8) NOT NULL auto_increment,
  `orderid` char(32) NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `raterid` mediumint(8) unsigned NOT NULL,
  `rater` char(15) NOT NULL,
  `rateeid` mediumint(8) unsigned NOT NULL,
  `ratee` char(15) NOT NULL,
  `message` char(200) NOT NULL,
  `explanation` char(200) NOT NULL,
  `score` tinyint(1) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `raterid` (`raterid`,`type`,`dateline`),
  KEY `rateeid` (`rateeid`,`type`,`dateline`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_tradecomments
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_tradelog`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_tradelog`;
CREATE TABLE `cdb_tradelog` (
  `tid` mediumint(8) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `orderid` varchar(32) NOT NULL,
  `tradeno` varchar(32) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quality` tinyint(1) unsigned NOT NULL default '0',
  `itemtype` tinyint(1) NOT NULL default '0',
  `number` smallint(5) unsigned NOT NULL default '0',
  `tax` decimal(6,2) unsigned NOT NULL default '0.00',
  `locus` varchar(100) NOT NULL,
  `sellerid` mediumint(8) unsigned NOT NULL,
  `seller` varchar(15) NOT NULL,
  `selleraccount` varchar(50) NOT NULL,
  `buyerid` mediumint(8) unsigned NOT NULL,
  `buyer` varchar(15) NOT NULL,
  `buyercontact` varchar(50) NOT NULL,
  `buyercredits` smallint(5) unsigned NOT NULL default '0',
  `buyermsg` varchar(200) default NULL,
  `status` tinyint(1) NOT NULL default '0',
  `lastupdate` int(10) unsigned NOT NULL default '0',
  `offline` tinyint(1) NOT NULL default '0',
  `buyername` varchar(50) NOT NULL,
  `buyerzip` varchar(10) NOT NULL,
  `buyerphone` varchar(20) NOT NULL,
  `buyermobile` varchar(20) NOT NULL,
  `transport` tinyint(1) NOT NULL default '0',
  `transportfee` smallint(6) unsigned NOT NULL default '0',
  `baseprice` decimal(8,2) NOT NULL,
  `discount` tinyint(1) NOT NULL default '0',
  `ratestatus` tinyint(1) NOT NULL default '0',
  `message` text NOT NULL,
  `credit` int(10) unsigned NOT NULL default '0',
  `basecredit` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `orderid` (`orderid`),
  KEY `sellerid` (`sellerid`),
  KEY `buyerid` (`buyerid`),
  KEY `status` (`status`),
  KEY `buyerlog` (`buyerid`,`status`,`lastupdate`),
  KEY `sellerlog` (`sellerid`,`status`,`lastupdate`),
  KEY `tid` (`tid`,`pid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_tradelog
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_tradeoptionvars`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_tradeoptionvars`;
CREATE TABLE `cdb_tradeoptionvars` (
  `sortid` smallint(6) unsigned NOT NULL default '0',
  `pid` mediumint(8) unsigned NOT NULL default '0',
  `optionid` smallint(6) unsigned NOT NULL default '0',
  `value` mediumtext NOT NULL,
  KEY `sortid` (`sortid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_tradeoptionvars
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_trades`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_trades`;
CREATE TABLE `cdb_trades` (
  `tid` mediumint(8) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `typeid` smallint(6) unsigned NOT NULL,
  `sellerid` mediumint(8) unsigned NOT NULL,
  `seller` char(15) NOT NULL,
  `account` char(50) NOT NULL,
  `subject` char(100) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `amount` smallint(6) unsigned NOT NULL default '1',
  `quality` tinyint(1) unsigned NOT NULL default '0',
  `locus` char(20) NOT NULL,
  `transport` tinyint(1) NOT NULL default '0',
  `ordinaryfee` smallint(4) unsigned NOT NULL default '0',
  `expressfee` smallint(4) unsigned NOT NULL default '0',
  `emsfee` smallint(4) unsigned NOT NULL default '0',
  `itemtype` tinyint(1) NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `expiration` int(10) unsigned NOT NULL default '0',
  `lastbuyer` char(15) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL default '0',
  `totalitems` smallint(5) unsigned NOT NULL default '0',
  `tradesum` decimal(8,2) NOT NULL default '0.00',
  `closed` tinyint(1) NOT NULL default '0',
  `aid` mediumint(8) unsigned NOT NULL,
  `displayorder` tinyint(1) NOT NULL,
  `costprice` decimal(8,2) NOT NULL,
  `credit` int(10) unsigned NOT NULL default '0',
  `costcredit` int(10) unsigned NOT NULL default '0',
  `credittradesum` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`tid`,`pid`),
  KEY `sellerid` (`sellerid`),
  KEY `totalitems` (`totalitems`),
  KEY `tradesum` (`tradesum`),
  KEY `displayorder` (`tid`,`displayorder`),
  KEY `sellertrades` (`sellerid`,`tradesum`,`totalitems`),
  KEY `typeid` (`typeid`),
  KEY `credittradesum` (`credittradesum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_trades
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_typemodels`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_typemodels`;
CREATE TABLE `cdb_typemodels` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `displayorder` tinyint(3) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `options` mediumtext NOT NULL,
  `customoptions` mediumtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_typemodels
-- ----------------------------
INSERT INTO `cdb_typemodels` VALUES ('1', '房屋交易信息', '0', '1', '7	10	13	65	66	68', '');
INSERT INTO `cdb_typemodels` VALUES ('2', '车票交易信息', '0', '1', '55	56	58	67	7	13	68', '');
INSERT INTO `cdb_typemodels` VALUES ('3', '兴趣交友信息', '0', '1', '8	9	31', '');
INSERT INTO `cdb_typemodels` VALUES ('4', '公司招聘信息', '0', '1', '34	48	54	51	47	46	44	45	52	53', '');

-- ----------------------------
-- Table structure for `cdb_typeoptions`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_typeoptions`;
CREATE TABLE `cdb_typeoptions` (
  `optionid` smallint(6) unsigned NOT NULL auto_increment,
  `classid` smallint(6) unsigned NOT NULL default '0',
  `displayorder` tinyint(3) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `identifier` varchar(40) NOT NULL default '',
  `type` varchar(20) NOT NULL default '',
  `unit` varchar(40) NOT NULL,
  `rules` mediumtext NOT NULL,
  PRIMARY KEY  (`optionid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=3001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_typeoptions
-- ----------------------------
INSERT INTO `cdb_typeoptions` VALUES ('1', '0', '0', '通用类', '', '', '', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('2', '0', '0', '房产类', '', '', '', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('3', '0', '0', '交友类', '', '', '', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('4', '0', '0', '求职招聘类', '', '', '', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('5', '0', '0', '交易类', '', '', '', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('6', '0', '0', '互联网类', '', '', '', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('7', '1', '0', '姓名', '', 'name', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('9', '1', '0', '年龄', '', 'age', 'number', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('10', '1', '0', '地址', '', 'address', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('11', '1', '0', 'QQ', '', 'qq', 'number', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('12', '1', '0', '邮箱', '', 'mail', 'email', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('13', '1', '0', '电话', '', 'phone', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('14', '5', '0', '培训费用', '', 'teach_pay', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('15', '5', '0', '培训时间', '', 'teach_time', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('20', '2', '0', '楼层', '', 'floor', 'number', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('21', '2', '0', '交通状况', '', 'traf', 'textarea', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('22', '2', '0', '地图', '', 'images', 'image', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('24', '2', '0', '价格', '', 'price', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('26', '5', '0', '培训名称', '', 'teach_name', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('28', '3', '0', '身高', '', 'heighth', 'number', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('29', '3', '0', '体重', '', 'weighth', 'number', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('33', '1', '0', '照片', '', 'photo', 'image', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('35', '5', '0', '服务方式', '', 'service_type', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('36', '5', '0', '服务时间', '', 'service_time', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('37', '5', '0', '服务费用', '', 'service_pay', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('39', '6', '0', '网址', '', 'site_url', 'url', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('40', '6', '0', '电子邮件', '', 'site_mail', 'email', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('42', '6', '0', '网站名称', '', 'site_name', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('46', '4', '0', '职位', '', 'recr_intend', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('47', '4', '0', '工作地点', '', 'recr_palce', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('49', '4', '0', '有效期至', '', 'recr_end', 'calendar', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('51', '4', '0', '公司名称', '', 'recr_com', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('52', '4', '0', '年龄要求', '', 'recr_age', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('54', '4', '0', '专业', '', 'recr_abli', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('55', '5', '0', '始发', '', 'leaves', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('56', '5', '0', '终点', '', 'boundfor', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('57', '6', '0', 'Alexa排名', '', 'site_top', 'number', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('58', '5', '0', '车次/航班', '', 'train_no', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('59', '5', '0', '数量', '', 'trade_num', 'number', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('60', '5', '0', '价格', '', 'trade_price', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('61', '5', '0', '有效期至', '', 'trade_end', 'calendar', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('63', '1', '0', '详细描述', '', 'detail_content', 'textarea', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('64', '1', '0', '籍贯', '', 'born_place', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('65', '2', '0', '租金', '', 'money', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('66', '2', '0', '面积', '', 'acreage', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('67', '5', '0', '发车时间', '', 'time', 'calendar', '', 'N;');
INSERT INTO `cdb_typeoptions` VALUES ('68', '1', '0', '所在地', '', 'now_place', 'text', '', '');
INSERT INTO `cdb_typeoptions` VALUES ('8', '1', '2', '性别', '', 'gender', 'radio', '', 'a:3:{s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:7:\"choices\";s:12:\"1=男\r\n2=女\";}');
INSERT INTO `cdb_typeoptions` VALUES ('16', '2', '0', '房屋类型', '', 'property', 'select', '', 'a:1:{s:7:\"choices\";s:64:\"1=写字楼\r\n2=公寓\r\n3=小区\r\n4=平房\r\n5=别墅\r\n6=地下室\";}');
INSERT INTO `cdb_typeoptions` VALUES ('17', '2', '0', '座向', '', 'face', 'radio', '', 'a:3:{s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:7:\"choices\";s:38:\"1=南向\r\n2=北向\r\n3=西向\r\n4=东向\";}');
INSERT INTO `cdb_typeoptions` VALUES ('18', '2', '0', '装修情况', '', 'makes', 'radio', '', 'a:3:{s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:7:\"choices\";s:40:\"1=无装修\r\n2=简单装修\r\n3=精装修\";}');
INSERT INTO `cdb_typeoptions` VALUES ('19', '2', '0', '居室', '', 'mode', 'select', '', 'a:1:{s:7:\"choices\";s:57:\"1=独居\r\n2=两居室\r\n3=三居室\r\n4=四居室\r\n5=别墅\";}');
INSERT INTO `cdb_typeoptions` VALUES ('23', '2', '0', '屋内设施', '', 'equipment', 'checkbox', '', 'a:3:{s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:7:\"choices\";s:167:\"1=水电\r\n2=宽带\r\n3=管道气\r\n4=有线电视\r\n5=电梯\r\n6=电话\r\n7=冰箱\r\n8=洗衣机\r\n9=热水器\r\n10=空调\r\n11=暖气\r\n12=微波炉\r\n13=油烟机\r\n14=饮水机\";}');
INSERT INTO `cdb_typeoptions` VALUES ('25', '2', '0', '是否中介', '', 'bool', 'radio', '', 'a:3:{s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:7:\"choices\";s:12:\"1=是\r\n2=否\";}');
INSERT INTO `cdb_typeoptions` VALUES ('27', '3', '0', '星座', '', 'Horoscope', 'select', '', 'a:1:{s:7:\"choices\";s:157:\"1=白羊座\r\n2=金牛座\r\n3=双子座\r\n4=巨蟹座\r\n5=狮子座\r\n6=处女座\r\n7=天秤座\r\n8=天蝎座\r\n9=射手座\r\n10=摩羯座\r\n11=水瓶座\r\n12=双鱼座\";}');
INSERT INTO `cdb_typeoptions` VALUES ('30', '3', '0', '婚姻状况', '', 'marrige', 'radio', '', 'a:1:{s:7:\"choices\";s:18:\"1=已婚\r\n2=未婚\";}');
INSERT INTO `cdb_typeoptions` VALUES ('31', '3', '0', '爱好', '', 'hobby', 'checkbox', '', 'a:1:{s:7:\"choices\";s:242:\"1=美食\r\n2=唱歌\r\n3=跳舞\r\n4=电影\r\n5=音乐\r\n6=戏剧\r\n7=聊天\r\n8=拍托\r\n9=电脑\r\n10=网络\r\n11=游戏\r\n12=绘画\r\n13=书法\r\n14=雕塑\r\n15=异性\r\n16=阅读\r\n17=运动\r\n18=旅游\r\n19=八卦\r\n20=购物\r\n21=赚钱\r\n22=汽车\r\n23=摄影\";}');
INSERT INTO `cdb_typeoptions` VALUES ('32', '3', '0', '收入范围', '', 'salary', 'select', '', 'a:3:{s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:7:\"choices\";s:109:\"1=保密\r\n2=800元以上\r\n3=1500元以上\r\n4=2000元以上\r\n5=3000元以上\r\n6=5000元以上\r\n7=8000元以上\";}');
INSERT INTO `cdb_typeoptions` VALUES ('34', '1', '0', '学历', '', 'education', 'radio', '', 'a:3:{s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:7:\"choices\";s:91:\"1=文盲\r\n2=小学\r\n3=初中\r\n4=高中\r\n5=中专\r\n6=大专\r\n7=本科\r\n8=研究生\r\n9=博士\";}');
INSERT INTO `cdb_typeoptions` VALUES ('38', '5', '0', '席别', '', 'seats', 'select', '', 'a:1:{s:7:\"choices\";s:48:\"1=站票\r\n2=硬座\r\n3=软座\r\n4=硬卧\r\n5=软卧\";}');
INSERT INTO `cdb_typeoptions` VALUES ('44', '4', '0', '是否应届', '', 'recr_term', 'radio', '', 'a:3:{s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:7:\"choices\";s:21:\"1=应届\r\n2=非应届\";}');
INSERT INTO `cdb_typeoptions` VALUES ('48', '4', '0', '薪金', '', 'recr_salary', 'select', '', 'a:1:{s:7:\"choices\";s:114:\"1=面议\r\n2=1000以下\r\n3=1000~1500\r\n4=1500~2000\r\n5=2000~3000\r\n6=3000~4000\r\n7=4000~6000\r\n8=6000~8000\r\n9=8000以上\";}');
INSERT INTO `cdb_typeoptions` VALUES ('50', '4', '0', '工作性质', '', 'recr_work', 'radio', '', 'a:3:{s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:7:\"choices\";s:18:\"1=全职\r\n2=兼职\";}');
INSERT INTO `cdb_typeoptions` VALUES ('53', '4', '0', '性别要求', '', 'recr_sex', 'checkbox', '', 'a:3:{s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:7:\"choices\";s:12:\"1=男\r\n2=女\";}');
INSERT INTO `cdb_typeoptions` VALUES ('62', '5', '0', '付款方式', '', 'pay_type', 'checkbox', '', 'a:3:{s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:7:\"choices\";s:41:\"1=电汇\r\n2=支付宝\r\n3=现金\r\n4=其他\";}');

-- ----------------------------
-- Table structure for `cdb_typeoptionvars`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_typeoptionvars`;
CREATE TABLE `cdb_typeoptionvars` (
  `sortid` smallint(6) unsigned NOT NULL default '0',
  `tid` mediumint(8) unsigned NOT NULL default '0',
  `optionid` smallint(6) unsigned NOT NULL default '0',
  `expiration` int(10) unsigned NOT NULL default '0',
  `value` mediumtext NOT NULL,
  KEY `sortid` (`sortid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_typeoptionvars
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_typevars`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_typevars`;
CREATE TABLE `cdb_typevars` (
  `sortid` smallint(6) NOT NULL default '0',
  `optionid` smallint(6) NOT NULL default '0',
  `available` tinyint(1) NOT NULL default '0',
  `required` tinyint(1) NOT NULL default '0',
  `unchangeable` tinyint(1) NOT NULL default '0',
  `search` tinyint(1) NOT NULL default '0',
  `displayorder` tinyint(3) NOT NULL default '0',
  `subjectshow` tinyint(1) NOT NULL default '0',
  UNIQUE KEY `optionid` (`sortid`,`optionid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_typevars
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_usergroups`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_usergroups`;
CREATE TABLE `cdb_usergroups` (
  `groupid` smallint(6) unsigned NOT NULL auto_increment,
  `radminid` tinyint(3) NOT NULL default '0',
  `type` enum('system','special','member') NOT NULL default 'member',
  `system` char(8) NOT NULL default 'private',
  `grouptitle` char(30) NOT NULL default '',
  `creditshigher` int(10) NOT NULL default '0',
  `creditslower` int(10) NOT NULL default '0',
  `stars` tinyint(3) NOT NULL default '0',
  `color` char(7) NOT NULL default '',
  `groupavatar` char(60) NOT NULL default '',
  `readaccess` tinyint(3) unsigned NOT NULL default '0',
  `allowvisit` tinyint(1) NOT NULL default '0',
  `allowpost` tinyint(1) NOT NULL default '0',
  `allowreply` tinyint(1) NOT NULL default '0',
  `allowpostpoll` tinyint(1) NOT NULL default '0',
  `allowpostreward` tinyint(1) NOT NULL default '0',
  `allowposttrade` tinyint(1) NOT NULL default '0',
  `allowpostactivity` tinyint(1) NOT NULL default '0',
  `allowdirectpost` tinyint(1) NOT NULL default '0',
  `allowgetattach` tinyint(1) NOT NULL default '0',
  `allowpostattach` tinyint(1) NOT NULL default '0',
  `allowvote` tinyint(1) NOT NULL default '0',
  `allowmultigroups` tinyint(1) NOT NULL default '0',
  `allowsearch` tinyint(1) NOT NULL default '0',
  `allowcstatus` tinyint(1) NOT NULL default '0',
  `allowuseblog` tinyint(1) NOT NULL default '0',
  `allowinvisible` tinyint(1) NOT NULL default '0',
  `allowtransfer` tinyint(1) NOT NULL default '0',
  `allowsetreadperm` tinyint(1) NOT NULL default '0',
  `allowsetattachperm` tinyint(1) NOT NULL default '0',
  `allowhidecode` tinyint(1) NOT NULL default '0',
  `allowhtml` tinyint(1) NOT NULL default '0',
  `allowcusbbcode` tinyint(1) NOT NULL default '0',
  `allowanonymous` tinyint(1) NOT NULL default '0',
  `allownickname` tinyint(1) NOT NULL default '0',
  `allowsigbbcode` tinyint(1) NOT NULL default '0',
  `allowsigimgcode` tinyint(1) NOT NULL default '0',
  `allowviewpro` tinyint(1) NOT NULL default '0',
  `allowviewstats` tinyint(1) NOT NULL default '0',
  `disableperiodctrl` tinyint(1) NOT NULL default '0',
  `reasonpm` tinyint(1) NOT NULL default '0',
  `maxprice` smallint(6) unsigned NOT NULL default '0',
  `maxsigsize` smallint(6) unsigned NOT NULL default '0',
  `maxattachsize` mediumint(8) unsigned NOT NULL default '0',
  `maxsizeperday` int(10) unsigned NOT NULL default '0',
  `maxpostsperhour` tinyint(3) unsigned NOT NULL default '0',
  `attachextensions` char(100) NOT NULL default '',
  `raterange` char(150) NOT NULL default '',
  `mintradeprice` smallint(6) unsigned NOT NULL default '1',
  `maxtradeprice` smallint(6) unsigned NOT NULL default '0',
  `minrewardprice` smallint(6) NOT NULL default '1',
  `maxrewardprice` smallint(6) NOT NULL default '0',
  `magicsdiscount` tinyint(1) NOT NULL,
  `allowmagics` tinyint(1) unsigned NOT NULL,
  `maxmagicsweight` smallint(6) unsigned NOT NULL,
  `allowbiobbcode` tinyint(1) unsigned NOT NULL default '0',
  `allowbioimgcode` tinyint(1) unsigned NOT NULL default '0',
  `maxbiosize` smallint(6) unsigned NOT NULL default '0',
  `allowinvite` tinyint(1) NOT NULL default '0',
  `allowmailinvite` tinyint(1) NOT NULL default '0',
  `maxinvitenum` tinyint(3) unsigned NOT NULL default '0',
  `inviteprice` smallint(6) unsigned NOT NULL default '0',
  `maxinviteday` smallint(6) unsigned NOT NULL default '0',
  `allowpostdebate` tinyint(1) NOT NULL default '0',
  `tradestick` tinyint(1) unsigned NOT NULL,
  `exempt` tinyint(1) unsigned NOT NULL,
  `allowsendpm` tinyint(1) NOT NULL default '1',
  `maxattachnum` smallint(6) NOT NULL default '0',
  `allowposturl` tinyint(1) NOT NULL default '3',
  `allowrecommend` tinyint(1) unsigned NOT NULL default '1',
  `edittimelimit` smallint(6) unsigned NOT NULL default '0',
  `allowpostrushreply` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`groupid`),
  KEY `creditsrange` (`creditshigher`,`creditslower`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_usergroups
-- ----------------------------
INSERT INTO `cdb_usergroups` VALUES ('1', '1', 'system', 'private', '管理员', '0', '0', '9', '', '', '200', '1', '1', '1', '1', '1', '1', '1', '3', '1', '1', '1', '1', '2', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '0', '30', '500', '2048000', '0', '0', '', '1	-30	30	500', '1', '0', '1', '0', '0', '2', '200', '2', '2', '0', '0', '0', '0', '0', '0', '1', '5', '255', '1', '0', '3', '1', '0', '1');
INSERT INTO `cdb_usergroups` VALUES ('2', '2', 'system', 'private', '超级版主', '0', '0', '8', '', '', '150', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '0', '1', '1', '1', '1', '1', '1', '0', '20', '300', '2048000', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '1	-15	15	50', '1', '0', '1', '0', '0', '2', '180', '2', '2', '0', '0', '0', '0', '0', '0', '1', '5', '255', '1', '0', '3', '1', '0', '0');
INSERT INTO `cdb_usergroups` VALUES ('3', '3', 'system', 'private', '版主', '0', '0', '7', '', '', '100', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '0', '1', '0', '1', '1', '1', '1', '1', '1', '0', '10', '200', '2048000', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '1	-10	10	30', '1', '0', '1', '0', '0', '2', '160', '2', '2', '0', '0', '0', '0', '0', '0', '1', '5', '224', '1', '0', '3', '1', '0', '0');
INSERT INTO `cdb_usergroups` VALUES ('4', '0', 'system', 'private', '禁止发言', '0', '0', '0', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '1', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '1', '0', '3', '1', '0', '0');
INSERT INTO `cdb_usergroups` VALUES ('5', '0', 'system', 'private', '禁止访问', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '1', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '1', '0', '3', '1', '0', '0');
INSERT INTO `cdb_usergroups` VALUES ('6', '0', 'system', 'private', '禁止 IP', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '1', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '1', '0', '3', '1', '0', '0');
INSERT INTO `cdb_usergroups` VALUES ('7', '0', 'system', 'private', '游客', '0', '0', '0', '', '', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'gif,jpg,jpeg,png', '', '1', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '1', '0', '3', '1', '0', '0');
INSERT INTO `cdb_usergroups` VALUES ('8', '0', 'system', 'private', '等待验证会员', '0', '0', '0', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '50', '0', '0', '0', '', '', '1', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '1', '0', '3', '1', '0', '0');
INSERT INTO `cdb_usergroups` VALUES ('9', '0', 'member', 'private', '乞丐', '-9999999', '0', '0', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'chm,pdf,zip,rar,tar,gz,bzip2,gif,jpg,jpeg,png', '', '1', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '1', '0', '3', '1', '0', '0');
INSERT INTO `cdb_usergroups` VALUES ('10', '0', 'member', 'private', '新手上路', '0', '50', '1', '', '', '10', '1', '1', '1', '0', '0', '1', '0', '0', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '0', '0', '80', '1024000', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '', '1', '0', '1', '0', '0', '1', '40', '1', '1', '0', '0', '0', '0', '0', '0', '1', '5', '0', '1', '0', '3', '1', '0', '0');
INSERT INTO `cdb_usergroups` VALUES ('11', '0', 'member', 'private', '注册会员', '50', '200', '2', '', '', '20', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '1', '0', '0', '0', '100', '1024000', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '', '1', '0', '1', '0', '0', '1', '60', '1', '1', '0', '0', '0', '0', '0', '0', '1', '5', '0', '1', '0', '3', '1', '0', '0');
INSERT INTO `cdb_usergroups` VALUES ('12', '0', 'member', 'private', '中级会员', '200', '500', '3', '', '', '30', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '1', '1', '0', '0', '0', '150', '1024000', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '', '1', '0', '1', '0', '0', '1', '80', '1', '1', '0', '0', '0', '0', '0', '0', '1', '5', '0', '1', '0', '3', '1', '0', '0');
INSERT INTO `cdb_usergroups` VALUES ('13', '0', 'member', 'private', '高级会员', '500', '1000', '4', '', '', '50', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '1', '0', '1', '1', '0', '0', '0', '200', '2048000', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '1	-10	10	30', '1', '0', '1', '0', '0', '2', '100', '2', '2', '0', '0', '0', '0', '0', '0', '1', '5', '0', '1', '0', '3', '1', '0', '0');
INSERT INTO `cdb_usergroups` VALUES ('14', '0', 'member', 'private', '金牌会员', '1000', '3000', '6', '', '', '70', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '0', '0', '0', '1', '1', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '0', '0', '300', '2048000', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '1	-15	15	40', '1', '0', '1', '0', '0', '2', '120', '2', '2', '0', '0', '0', '0', '0', '0', '1', '5', '0', '1', '0', '3', '1', '0', '0');
INSERT INTO `cdb_usergroups` VALUES ('15', '0', 'member', 'private', '论坛元老', '3000', '9999999', '8', '', '', '90', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '0', '1', '0', '1', '1', '0', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '500', '2048000', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '1	-20	20	50', '1', '0', '1', '0', '0', '2', '140', '2', '2', '0', '0', '0', '0', '0', '0', '1', '5', '0', '1', '0', '3', '1', '0', '0');
INSERT INTO `cdb_usergroups` VALUES ('16', '3', 'special', 'private', '实习版主', '0', '0', '7', '', '', '100', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '0', '1', '0', '1', '1', '1', '1', '1', '1', '0', '10', '200', '2048000', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '1 -10 10 30', '1', '0', '1', '0', '0', '2', '160', '1', '1', '0', '0', '0', '0', '0', '10', '1', '5', '188', '1', '0', '3', '0', '0', '0');
INSERT INTO `cdb_usergroups` VALUES ('17', '2', 'special', 'private', '网站编辑', '0', '0', '8', '', '', '150', '1', '1', '1', '1', '1', '1', '1', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '0', '1', '1', '1', '1', '1', '1', '0', '20', '300', '2048000', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '1 -15 15 50', '1', '0', '1', '0', '0', '2', '180', '1', '1', '0', '0', '0', '0', '0', '10', '1', '5', '255', '1', '0', '3', '0', '0', '0');
INSERT INTO `cdb_usergroups` VALUES ('18', '1', 'special', 'private', '信息监察员', '0', '0', '9', '', '', '200', '1', '1', '1', '1', '1', '1', '1', '3', '1', '1', '1', '1', '2', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '30', '500', '0', '0', '1', '', '1 -30 30 400 2 -30 30 400 3 -30 30 4000', '1', '0', '1', '0', '0', '2', '200', '1', '1', '0', '1', '1', '0', '1', '10', '1', '5', '255', '1', '0', '3', '3', '0', '0');
INSERT INTO `cdb_usergroups` VALUES ('19', '3', 'special', 'private', '审核员', '0', '0', '7', '', '', '100', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '0', '1', '0', '1', '1', '1', '1', '1', '1', '0', '10', '200', '2048000', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '1 -10 10 30', '1', '0', '1', '0', '0', '2', '160', '1', '1', '0', '0', '0', '0', '0', '10', '1', '5', '188', '1', '0', '3', '0', '0', '0');

-- ----------------------------
-- Table structure for `cdb_validating`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_validating`;
CREATE TABLE `cdb_validating` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `submitdate` int(10) unsigned NOT NULL default '0',
  `moddate` int(10) unsigned NOT NULL default '0',
  `admin` varchar(15) NOT NULL default '',
  `submittimes` tinyint(3) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `message` text NOT NULL,
  `remark` text NOT NULL,
  PRIMARY KEY  (`uid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_validating
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_warnings`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_warnings`;
CREATE TABLE `cdb_warnings` (
  `wid` smallint(6) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL,
  `operatorid` mediumint(8) unsigned NOT NULL,
  `operator` char(15) NOT NULL,
  `authorid` mediumint(8) unsigned NOT NULL,
  `author` char(15) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `reason` char(40) NOT NULL,
  PRIMARY KEY  (`wid`),
  UNIQUE KEY `pid` (`pid`),
  KEY `authorid` (`authorid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_warnings
-- ----------------------------

-- ----------------------------
-- Table structure for `cdb_words`
-- ----------------------------
DROP TABLE IF EXISTS `cdb_words`;
CREATE TABLE `cdb_words` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `admin` varchar(15) NOT NULL default '',
  `find` varchar(255) NOT NULL default '',
  `replacement` varchar(255) NOT NULL default '',
  `extra` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_words
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_activity`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_activity`;
CREATE TABLE `uchome_activity` (
  `id` tinyint(8) unsigned NOT NULL auto_increment,
  `subject` char(255) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `dateline` char(255) NOT NULL,
  `time` char(255) NOT NULL,
  `message` tinytext NOT NULL,
  `place` tinytext NOT NULL,
  `callplace` tinytext NOT NULL,
  `picid` smallint(6) NOT NULL,
  `hide` smallint(6) default '1' COMMENT '1 --显示，0--隐藏',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_activity
-- ----------------------------
INSERT INTO `uchome_activity` VALUES ('38', '333', '1', '1392101751', '1392191700', '333333', '333', '3333 ', '43', '0');
INSERT INTO `uchome_activity` VALUES ('35', '1', '1', '1391952796', '1392211200', '1', '1', '1 ', '0', '0');
INSERT INTO `uchome_activity` VALUES ('36', '2', '1', '1391948125', '1393073400', '2', '2', '2 ', '0', '0');
INSERT INTO `uchome_activity` VALUES ('37', '3', '1', '1391948143', '1393581300', '33', '3', '3 ', '0', '0');
INSERT INTO `uchome_activity` VALUES ('39', 'aaaaa', '1', '1392103215', '1392189300', 'aaaa', 'aaaa', 'aaaa ', '51', '0');
INSERT INTO `uchome_activity` VALUES ('40', '555', '1', '1392119846', '1393588500', '5555', '555', '555 ', '61', '0');
INSERT INTO `uchome_activity` VALUES ('18', '657567', '1', '1390732274', '1390761060', '75675', '567567', '575 ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('19', '567567', '1', '1390732327', '1390761060', '5675675', '6576575', '567567 ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('20', '567657', '1', '1390732394', '1390761180', '567567', '567657', '567657 ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('21', '765756', '1', '1390732487', '1390761240', '567', '567567', '567 ', '26', '1');
INSERT INTO `uchome_activity` VALUES ('22', '周末活动', '1', '1390819013', '1390847760', '快点哦，亲，我们要走好远的，具体活动详情看图片', '广州塔', '大岭山 ', '27', '1');
INSERT INTO `uchome_activity` VALUES ('23', '不错哦', '1', '1390821277', '1390850040', '3', '1231', '12312 ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('24', '啦啦', '1', '1390877526', '1390906260', '啊', '啊', '啊 ', '28', '1');
INSERT INTO `uchome_activity` VALUES ('25', '6765', '1', '1390877618', '1390906380', '45645', '45654', '4645 ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('26', '453', '1', '1390877657', '1390906440', '45345', '3453', '453 ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('27', '14年的王道全书怎么回事了？', '1', '1391755866', '1391784600', 'ggg', 'gg', 'gg ', '29', '1');
INSERT INTO `uchome_activity` VALUES ('28', '哈哈哈打发打发打发', '8888', '1391864832', '1393611900', '佛挡杀佛斯蒂芬斯蒂芬', '佛挡杀佛', '发生的 ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('29', '9999', '1', '1391945175', '1392255900', '9999999', '活动地点9999', '集合地点99999            ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('30', '6666666666666', '1', '1391945198', '1392284700', '66666', '活动地点6666666666666', '集合地点 666666                  ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('31', '0000', '2', '1391945230', '1392204900', '999999966666', '活动地点0000', '集合地点00000      ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('32', '333333', '1', '1391952856', '1392039000', '33333', '3333', '3333 ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('33', '1111', '1', '1391949357', '1392120000', '1111', '111', '111 ', '0', '0');

-- ----------------------------
-- Table structure for `uchome_activityenlist`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_activityenlist`;
CREATE TABLE `uchome_activityenlist` (
  `id` tinyint(8) unsigned NOT NULL auto_increment,
  `activityid` smallint(8) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_activityenlist
-- ----------------------------
INSERT INTO `uchome_activityenlist` VALUES ('20', '31', '1');
INSERT INTO `uchome_activityenlist` VALUES ('23', '30', '1');
INSERT INTO `uchome_activityenlist` VALUES ('24', '29', '1');
INSERT INTO `uchome_activityenlist` VALUES ('25', '40', '1');

-- ----------------------------
-- Table structure for `uchome_ad`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_ad`;
CREATE TABLE `uchome_ad` (
  `adid` smallint(6) unsigned NOT NULL auto_increment,
  `available` tinyint(1) NOT NULL default '1',
  `title` varchar(50) NOT NULL default '',
  `pagetype` varchar(20) NOT NULL default '',
  `adcode` text NOT NULL,
  `system` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`adid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_ad
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_adminsession`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_adminsession`;
CREATE TABLE `uchome_adminsession` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `ip` char(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `errorcount` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`uid`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_adminsession
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_album`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_album`;
CREATE TABLE `uchome_album` (
  `albumid` mediumint(8) unsigned NOT NULL auto_increment,
  `albumname` varchar(50) NOT NULL default '',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `picnum` smallint(6) unsigned NOT NULL default '0',
  `pic` varchar(60) NOT NULL default '',
  `picflag` tinyint(1) NOT NULL default '0',
  `friend` tinyint(1) NOT NULL default '0',
  `password` varchar(10) NOT NULL default '',
  `target_ids` text NOT NULL,
  PRIMARY KEY  (`albumid`),
  KEY `uid` (`uid`,`updatetime`),
  KEY `updatetime` (`updatetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_album
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_appcreditlog`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_appcreditlog`;
CREATE TABLE `uchome_appcreditlog` (
  `logid` mediumint(8) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `appid` mediumint(8) unsigned NOT NULL default '0',
  `appname` varchar(60) NOT NULL default '',
  `type` tinyint(1) NOT NULL default '0',
  `credit` mediumint(8) unsigned NOT NULL default '0',
  `note` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`logid`),
  KEY `uid` (`uid`,`dateline`),
  KEY `appid` (`appid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_appcreditlog
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_appset`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_appset`;
CREATE TABLE `uchome_appset` (
  `id` tinyint(3) unsigned zerofill NOT NULL auto_increment,
  `uid` mediumint(9) NOT NULL,
  `status` char(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_appset
-- ----------------------------
INSERT INTO `uchome_appset` VALUES ('003', '1', '1');

-- ----------------------------
-- Table structure for `uchome_blacklist`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_blacklist`;
CREATE TABLE `uchome_blacklist` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `buid` mediumint(8) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`,`buid`),
  KEY `uid` (`uid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_block`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_block`;
CREATE TABLE `uchome_block` (
  `bid` smallint(6) unsigned NOT NULL auto_increment,
  `blockname` varchar(40) NOT NULL default '',
  `blocksql` text NOT NULL,
  `cachename` varchar(30) NOT NULL default '',
  `cachetime` smallint(6) unsigned NOT NULL default '0',
  `startnum` tinyint(3) unsigned NOT NULL default '0',
  `num` tinyint(3) unsigned NOT NULL default '0',
  `perpage` tinyint(3) unsigned NOT NULL default '0',
  `htmlcode` text NOT NULL,
  PRIMARY KEY  (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_block
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_blog`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_blog`;
CREATE TABLE `uchome_blog` (
  `blogid` mediumint(8) unsigned NOT NULL auto_increment,
  `topicid` mediumint(8) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` char(15) NOT NULL default '',
  `subject` char(80) NOT NULL default '',
  `classid` smallint(6) unsigned NOT NULL default '0',
  `viewnum` mediumint(8) unsigned NOT NULL default '0',
  `replynum` mediumint(8) unsigned NOT NULL default '0',
  `hot` mediumint(8) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `pic` char(120) NOT NULL default '',
  `picflag` tinyint(1) NOT NULL default '0',
  `noreply` tinyint(1) NOT NULL default '0',
  `friend` tinyint(1) NOT NULL default '0',
  `password` char(10) NOT NULL default '',
  `click_1` smallint(6) unsigned NOT NULL default '0',
  `click_2` smallint(6) unsigned NOT NULL default '0',
  `click_3` smallint(6) unsigned NOT NULL default '0',
  `click_4` smallint(6) unsigned NOT NULL default '0',
  `click_5` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`blogid`),
  KEY `uid` (`uid`,`dateline`),
  KEY `topicid` (`topicid`,`dateline`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_blog
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_blogfield`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_blogfield`;
CREATE TABLE `uchome_blogfield` (
  `blogid` mediumint(8) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `tag` varchar(255) NOT NULL default '',
  `message` mediumtext NOT NULL,
  `postip` varchar(20) NOT NULL default '',
  `related` text NOT NULL,
  `relatedtime` int(10) unsigned NOT NULL default '0',
  `target_ids` text NOT NULL,
  `hotuser` text NOT NULL,
  `magiccolor` tinyint(6) NOT NULL default '0',
  `magicpaper` tinyint(6) NOT NULL default '0',
  `magiccall` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`blogid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_blogfield
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_cache`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_cache`;
CREATE TABLE `uchome_cache` (
  `cachekey` varchar(16) NOT NULL default '',
  `value` mediumtext NOT NULL,
  `mtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`cachekey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_cache
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_class`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_class`;
CREATE TABLE `uchome_class` (
  `classid` mediumint(8) unsigned NOT NULL auto_increment,
  `classname` char(40) NOT NULL default '',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`classid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_class
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_click`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_click`;
CREATE TABLE `uchome_click` (
  `clickid` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `icon` varchar(100) NOT NULL default '',
  `idtype` varchar(15) NOT NULL default '',
  `displayorder` tinyint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`clickid`),
  KEY `idtype` (`idtype`,`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_click
-- ----------------------------
INSERT INTO `uchome_click` VALUES ('1', '路过', 'luguo.gif', 'blogid', '0');
INSERT INTO `uchome_click` VALUES ('2', '雷人', 'leiren.gif', 'blogid', '0');
INSERT INTO `uchome_click` VALUES ('3', '握手', 'woshou.gif', 'blogid', '0');
INSERT INTO `uchome_click` VALUES ('4', '鲜花', 'xianhua.gif', 'blogid', '0');
INSERT INTO `uchome_click` VALUES ('5', '鸡蛋', 'jidan.gif', 'blogid', '0');
INSERT INTO `uchome_click` VALUES ('6', '漂亮', 'piaoliang.gif', 'picid', '0');
INSERT INTO `uchome_click` VALUES ('7', '酷毙', 'kubi.gif', 'picid', '0');
INSERT INTO `uchome_click` VALUES ('8', '雷人', 'leiren.gif', 'picid', '0');
INSERT INTO `uchome_click` VALUES ('9', '鲜花', 'xianhua.gif', 'picid', '0');
INSERT INTO `uchome_click` VALUES ('10', '鸡蛋', 'jidan.gif', 'picid', '0');
INSERT INTO `uchome_click` VALUES ('11', '搞笑', 'gaoxiao.gif', 'tid', '0');
INSERT INTO `uchome_click` VALUES ('12', '迷惑', 'mihuo.gif', 'tid', '0');
INSERT INTO `uchome_click` VALUES ('13', '雷人', 'leiren.gif', 'tid', '0');
INSERT INTO `uchome_click` VALUES ('14', '鲜花', 'xianhua.gif', 'tid', '0');
INSERT INTO `uchome_click` VALUES ('15', '鸡蛋', 'jidan.gif', 'tid', '0');

-- ----------------------------
-- Table structure for `uchome_clickuser`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_clickuser`;
CREATE TABLE `uchome_clickuser` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `id` mediumint(8) unsigned NOT NULL default '0',
  `idtype` varchar(15) NOT NULL default '',
  `clickid` smallint(6) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  KEY `id` (`id`,`idtype`,`dateline`),
  KEY `uid` (`uid`,`idtype`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_clickuser
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_comment`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_comment`;
CREATE TABLE `uchome_comment` (
  `cid` mediumint(8) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `id` mediumint(8) unsigned NOT NULL default '0',
  `idtype` varchar(20) NOT NULL default '',
  `authorid` mediumint(8) unsigned NOT NULL default '0',
  `author` varchar(15) NOT NULL default '',
  `ip` varchar(20) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `message` text NOT NULL,
  `magicflicker` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `authorid` (`authorid`,`idtype`),
  KEY `id` (`id`,`idtype`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_config`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_config`;
CREATE TABLE `uchome_config` (
  `var` varchar(30) NOT NULL default '',
  `datavalue` text NOT NULL,
  PRIMARY KEY  (`var`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_config
-- ----------------------------
INSERT INTO `uchome_config` VALUES ('sitename', '我的空间');
INSERT INTO `uchome_config` VALUES ('template', 'default');
INSERT INTO `uchome_config` VALUES ('adminemail', 'webmaster@localhost');
INSERT INTO `uchome_config` VALUES ('onlinehold', '1800');
INSERT INTO `uchome_config` VALUES ('timeoffset', '8');
INSERT INTO `uchome_config` VALUES ('maxpage', '100');
INSERT INTO `uchome_config` VALUES ('starcredit', '100');
INSERT INTO `uchome_config` VALUES ('starlevelnum', '5');
INSERT INTO `uchome_config` VALUES ('cachemode', 'database');
INSERT INTO `uchome_config` VALUES ('cachegrade', '0');
INSERT INTO `uchome_config` VALUES ('allowcache', '1');
INSERT INTO `uchome_config` VALUES ('allowdomain', '0');
INSERT INTO `uchome_config` VALUES ('allowrewrite', '0');
INSERT INTO `uchome_config` VALUES ('allowwatermark', '0');
INSERT INTO `uchome_config` VALUES ('allowftp', '0');
INSERT INTO `uchome_config` VALUES ('holddomain', 'www|*blog*|*space*|x');
INSERT INTO `uchome_config` VALUES ('mtagminnum', '5');
INSERT INTO `uchome_config` VALUES ('feedday', '7');
INSERT INTO `uchome_config` VALUES ('feedmaxnum', '100');
INSERT INTO `uchome_config` VALUES ('feedfilternum', '10');
INSERT INTO `uchome_config` VALUES ('importnum', '100');
INSERT INTO `uchome_config` VALUES ('maxreward', '10');
INSERT INTO `uchome_config` VALUES ('singlesent', '50');
INSERT INTO `uchome_config` VALUES ('groupnum', '8');
INSERT INTO `uchome_config` VALUES ('closeregister', '0');
INSERT INTO `uchome_config` VALUES ('closeinvite', '0');
INSERT INTO `uchome_config` VALUES ('close', '0');
INSERT INTO `uchome_config` VALUES ('networkpublic', '1');
INSERT INTO `uchome_config` VALUES ('networkpage', '1');
INSERT INTO `uchome_config` VALUES ('seccode_register', '1');
INSERT INTO `uchome_config` VALUES ('uc_tagrelated', '1');
INSERT INTO `uchome_config` VALUES ('manualmoderator', '1');
INSERT INTO `uchome_config` VALUES ('linkguide', '1');
INSERT INTO `uchome_config` VALUES ('showall', '1');
INSERT INTO `uchome_config` VALUES ('sendmailday', '0');
INSERT INTO `uchome_config` VALUES ('realname', '0');
INSERT INTO `uchome_config` VALUES ('namecheck', '0');
INSERT INTO `uchome_config` VALUES ('namechange', '0');
INSERT INTO `uchome_config` VALUES ('name_allowviewspace', '1');
INSERT INTO `uchome_config` VALUES ('name_allowfriend', '1');
INSERT INTO `uchome_config` VALUES ('name_allowpoke', '1');
INSERT INTO `uchome_config` VALUES ('name_allowdoing', '1');
INSERT INTO `uchome_config` VALUES ('name_allowblog', '0');
INSERT INTO `uchome_config` VALUES ('name_allowalbum', '0');
INSERT INTO `uchome_config` VALUES ('name_allowthread', '0');
INSERT INTO `uchome_config` VALUES ('name_allowshare', '0');
INSERT INTO `uchome_config` VALUES ('name_allowcomment', '0');
INSERT INTO `uchome_config` VALUES ('name_allowpost', '0');
INSERT INTO `uchome_config` VALUES ('showallfriendnum', '10');
INSERT INTO `uchome_config` VALUES ('feedtargetblank', '1');
INSERT INTO `uchome_config` VALUES ('feedread', '1');
INSERT INTO `uchome_config` VALUES ('feedhotnum', '3');
INSERT INTO `uchome_config` VALUES ('feedhotday', '2');
INSERT INTO `uchome_config` VALUES ('feedhotmin', '3');
INSERT INTO `uchome_config` VALUES ('feedhiddenicon', 'friend,profile,task,wall');
INSERT INTO `uchome_config` VALUES ('uc_tagrelatedtime', '86400');
INSERT INTO `uchome_config` VALUES ('privacy', 'a:2:{s:4:\"view\";a:12:{s:5:\"index\";i:0;s:7:\"profile\";i:0;s:6:\"friend\";i:0;s:4:\"wall\";i:0;s:4:\"feed\";i:0;s:4:\"mtag\";i:0;s:5:\"event\";i:0;s:5:\"doing\";i:0;s:4:\"blog\";i:0;s:5:\"album\";i:0;s:5:\"share\";i:0;s:4:\"poll\";i:0;}s:4:\"feed\";a:21:{s:5:\"doing\";i:1;s:4:\"blog\";i:1;s:6:\"upload\";i:1;s:5:\"share\";i:1;s:4:\"poll\";i:1;s:8:\"joinpoll\";i:1;s:6:\"thread\";i:1;s:4:\"post\";i:1;s:4:\"mtag\";i:1;s:5:\"event\";i:1;s:4:\"join\";i:1;s:6:\"friend\";i:1;s:7:\"comment\";i:1;s:4:\"show\";i:1;s:9:\"spaceopen\";i:1;s:6:\"credit\";i:1;s:6:\"invite\";i:1;s:4:\"task\";i:1;s:7:\"profile\";i:1;s:5:\"album\";i:1;s:5:\"click\";i:1;}}');
INSERT INTO `uchome_config` VALUES ('cronnextrun', '1392124500');
INSERT INTO `uchome_config` VALUES ('my_status', '0');
INSERT INTO `uchome_config` VALUES ('uniqueemail', '1');
INSERT INTO `uchome_config` VALUES ('updatestat', '1');
INSERT INTO `uchome_config` VALUES ('my_showgift', '1');
INSERT INTO `uchome_config` VALUES ('topcachetime', '60');
INSERT INTO `uchome_config` VALUES ('newspacenum', '3');

-- ----------------------------
-- Table structure for `uchome_creditlog`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_creditlog`;
CREATE TABLE `uchome_creditlog` (
  `clid` mediumint(8) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `rid` mediumint(8) unsigned NOT NULL default '0',
  `total` mediumint(8) unsigned NOT NULL default '0',
  `cyclenum` mediumint(8) unsigned NOT NULL default '0',
  `credit` mediumint(8) unsigned NOT NULL default '0',
  `experience` mediumint(8) unsigned NOT NULL default '0',
  `starttime` int(10) unsigned NOT NULL default '0',
  `info` text NOT NULL,
  `user` text NOT NULL,
  `app` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`clid`),
  KEY `uid` (`uid`,`rid`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_creditlog
-- ----------------------------
INSERT INTO `uchome_creditlog` VALUES ('1', '1', '1', '1', '1', '10', '0', '0', '', '', '', '1387876401');
INSERT INTO `uchome_creditlog` VALUES ('2', '1', '10', '17', '1', '15', '15', '0', '', '', '', '1392100161');

-- ----------------------------
-- Table structure for `uchome_creditrule`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_creditrule`;
CREATE TABLE `uchome_creditrule` (
  `rid` mediumint(8) unsigned NOT NULL auto_increment,
  `rulename` char(20) NOT NULL default '',
  `action` char(20) NOT NULL default '',
  `cycletype` tinyint(1) NOT NULL default '0',
  `cycletime` int(10) NOT NULL default '0',
  `rewardnum` tinyint(2) NOT NULL default '1',
  `rewardtype` tinyint(1) NOT NULL default '1',
  `norepeat` tinyint(1) NOT NULL default '0',
  `credit` mediumint(8) unsigned NOT NULL default '0',
  `experience` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`rid`),
  KEY `action` (`action`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_creditrule
-- ----------------------------
INSERT INTO `uchome_creditrule` VALUES ('1', '开通空间', 'register', '0', '0', '1', '1', '0', '10', '0');
INSERT INTO `uchome_creditrule` VALUES ('2', '实名认证', 'realname', '0', '0', '1', '1', '0', '20', '20');
INSERT INTO `uchome_creditrule` VALUES ('3', '邮箱认证', 'realemail', '0', '0', '1', '1', '0', '40', '40');
INSERT INTO `uchome_creditrule` VALUES ('4', '成功邀请好友', 'invitefriend', '4', '0', '20', '1', '0', '10', '10');
INSERT INTO `uchome_creditrule` VALUES ('5', '设置头像', 'setavatar', '0', '0', '1', '1', '0', '15', '15');
INSERT INTO `uchome_creditrule` VALUES ('6', '视频认证', 'videophoto', '0', '0', '1', '1', '0', '40', '40');
INSERT INTO `uchome_creditrule` VALUES ('7', '成功举报', 'report', '4', '0', '0', '1', '0', '2', '2');
INSERT INTO `uchome_creditrule` VALUES ('8', '更新心情', 'updatemood', '1', '0', '3', '1', '0', '3', '3');
INSERT INTO `uchome_creditrule` VALUES ('9', '热点信息', 'hotinfo', '4', '0', '0', '1', '0', '10', '10');
INSERT INTO `uchome_creditrule` VALUES ('10', '每天登陆', 'daylogin', '1', '0', '1', '1', '0', '15', '15');
INSERT INTO `uchome_creditrule` VALUES ('11', '访问别人空间', 'visit', '1', '0', '10', '1', '2', '1', '1');
INSERT INTO `uchome_creditrule` VALUES ('12', '打招呼', 'poke', '1', '0', '10', '1', '2', '1', '1');
INSERT INTO `uchome_creditrule` VALUES ('13', '留言', 'guestbook', '1', '0', '20', '1', '2', '2', '2');
INSERT INTO `uchome_creditrule` VALUES ('14', '被留言', 'getguestbook', '1', '0', '5', '1', '2', '1', '0');
INSERT INTO `uchome_creditrule` VALUES ('15', '发表记录', 'doing', '1', '0', '5', '1', '0', '1', '1');
INSERT INTO `uchome_creditrule` VALUES ('16', '发表日志', 'publishblog', '1', '0', '3', '1', '0', '5', '5');
INSERT INTO `uchome_creditrule` VALUES ('17', '上传图片', 'uploadimage', '1', '0', '10', '1', '0', '2', '2');
INSERT INTO `uchome_creditrule` VALUES ('18', '拍大头贴', 'camera', '1', '0', '5', '1', '0', '3', '3');
INSERT INTO `uchome_creditrule` VALUES ('19', '发表话题', 'publishthread', '1', '0', '5', '1', '0', '5', '5');
INSERT INTO `uchome_creditrule` VALUES ('20', '回复话题', 'replythread', '1', '0', '10', '1', '1', '1', '1');
INSERT INTO `uchome_creditrule` VALUES ('21', '创建投票', 'createpoll', '1', '0', '5', '1', '0', '2', '2');
INSERT INTO `uchome_creditrule` VALUES ('22', '参与投票', 'joinpoll', '1', '0', '10', '1', '1', '1', '1');
INSERT INTO `uchome_creditrule` VALUES ('23', '发起活动', 'createevent', '1', '0', '1', '1', '0', '3', '3');
INSERT INTO `uchome_creditrule` VALUES ('24', '参与活动', 'joinevent', '1', '0', '1', '1', '1', '1', '1');
INSERT INTO `uchome_creditrule` VALUES ('25', '推荐活动', 'recommendevent', '4', '0', '0', '1', '0', '10', '10');
INSERT INTO `uchome_creditrule` VALUES ('26', '发起分享', 'createshare', '1', '0', '3', '1', '0', '2', '2');
INSERT INTO `uchome_creditrule` VALUES ('27', '评论', 'comment', '1', '0', '40', '1', '1', '1', '1');
INSERT INTO `uchome_creditrule` VALUES ('28', '被评论', 'getcomment', '1', '0', '20', '1', '1', '1', '0');
INSERT INTO `uchome_creditrule` VALUES ('29', '安装应用', 'installapp', '4', '0', '0', '1', '3', '5', '5');
INSERT INTO `uchome_creditrule` VALUES ('30', '使用应用', 'useapp', '1', '0', '10', '1', '3', '1', '1');
INSERT INTO `uchome_creditrule` VALUES ('31', '信息表态', 'click', '1', '0', '10', '1', '1', '1', '1');
INSERT INTO `uchome_creditrule` VALUES ('32', '修改实名', 'editrealname', '0', '0', '1', '0', '0', '5', '0');
INSERT INTO `uchome_creditrule` VALUES ('33', '更改邮箱认证', 'editrealemail', '0', '0', '1', '0', '0', '5', '0');
INSERT INTO `uchome_creditrule` VALUES ('34', '头像被删除', 'delavatar', '0', '0', '1', '0', '0', '10', '10');
INSERT INTO `uchome_creditrule` VALUES ('35', '获取邀请码', 'invitecode', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `uchome_creditrule` VALUES ('36', '搜索一次', 'search', '0', '0', '1', '0', '0', '1', '0');
INSERT INTO `uchome_creditrule` VALUES ('37', '日志导入', 'blogimport', '0', '0', '1', '0', '0', '10', '0');
INSERT INTO `uchome_creditrule` VALUES ('38', '修改域名', 'modifydomain', '0', '0', '1', '0', '0', '5', '0');
INSERT INTO `uchome_creditrule` VALUES ('39', '日志被删除', 'delblog', '0', '0', '1', '0', '0', '10', '10');
INSERT INTO `uchome_creditrule` VALUES ('40', '记录被删除', 'deldoing', '0', '0', '1', '0', '0', '2', '2');
INSERT INTO `uchome_creditrule` VALUES ('41', '图片被删除', 'delimage', '0', '0', '1', '0', '0', '4', '4');
INSERT INTO `uchome_creditrule` VALUES ('42', '投票被删除', 'delpoll', '0', '0', '1', '0', '0', '4', '4');
INSERT INTO `uchome_creditrule` VALUES ('43', '话题被删除', 'delthread', '0', '0', '1', '0', '0', '4', '4');
INSERT INTO `uchome_creditrule` VALUES ('44', '活动被删除', 'delevent', '0', '0', '1', '0', '0', '6', '6');
INSERT INTO `uchome_creditrule` VALUES ('45', '分享被删除', 'delshare', '0', '0', '1', '0', '0', '4', '4');
INSERT INTO `uchome_creditrule` VALUES ('46', '留言被删除', 'delguestbook', '0', '0', '1', '0', '0', '4', '4');
INSERT INTO `uchome_creditrule` VALUES ('47', '评论被删除', 'delcomment', '0', '0', '1', '0', '0', '2', '2');

-- ----------------------------
-- Table structure for `uchome_cron`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_cron`;
CREATE TABLE `uchome_cron` (
  `cronid` smallint(6) unsigned NOT NULL auto_increment,
  `available` tinyint(1) NOT NULL default '0',
  `type` enum('user','system') NOT NULL default 'user',
  `name` char(50) NOT NULL default '',
  `filename` char(50) NOT NULL default '',
  `lastrun` int(10) unsigned NOT NULL default '0',
  `nextrun` int(10) unsigned NOT NULL default '0',
  `weekday` tinyint(1) NOT NULL default '0',
  `day` tinyint(2) NOT NULL default '0',
  `hour` tinyint(2) NOT NULL default '0',
  `minute` char(36) NOT NULL default '',
  PRIMARY KEY  (`cronid`),
  KEY `nextrun` (`available`,`nextrun`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_cron
-- ----------------------------
INSERT INTO `uchome_cron` VALUES ('1', '1', 'system', '更新浏览数统计', 'log.php', '1392124484', '1392124500', '-1', '-1', '-1', '0	5	10	15	20	25	30	35	40	45	50	55');
INSERT INTO `uchome_cron` VALUES ('2', '1', 'system', '清理过期feed', 'cleanfeed.php', '1392100281', '1392145440', '-1', '-1', '3', '4');
INSERT INTO `uchome_cron` VALUES ('3', '1', 'system', '清理个人通知', 'cleannotification.php', '1392100284', '1392152760', '-1', '-1', '5', '6');
INSERT INTO `uchome_cron` VALUES ('4', '1', 'system', '同步UC的feed', 'getfeed.php', '1392124479', '1392124620', '-1', '-1', '-1', '2	7	12	17	22	27	32	37	42	47	52');
INSERT INTO `uchome_cron` VALUES ('5', '1', 'system', '清理脚印和最新访客', 'cleantrace.php', '1392100274', '1392141780', '-1', '-1', '2', '3');

-- ----------------------------
-- Table structure for `uchome_data`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_data`;
CREATE TABLE `uchome_data` (
  `var` varchar(20) NOT NULL default '',
  `datavalue` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`var`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_data
-- ----------------------------
INSERT INTO `uchome_data` VALUES ('mail', 'a:3:{s:8:\"mailsend\";s:1:\"1\";s:13:\"maildelimiter\";s:1:\"0\";s:12:\"mailusername\";s:1:\"1\";}', '1387876386');
INSERT INTO `uchome_data` VALUES ('setting', 'a:4:{s:10:\"thumbwidth\";s:3:\"100\";s:11:\"thumbheight\";s:3:\"100\";s:12:\"watermarkpos\";s:1:\"4\";s:14:\"watermarktrans\";s:2:\"75\";}', '1387876386');
INSERT INTO `uchome_data` VALUES ('network', 'a:5:{s:4:\"blog\";a:2:{s:4:\"hot1\";s:1:\"3\";s:5:\"cache\";s:3:\"600\";}s:3:\"pic\";a:2:{s:4:\"hot1\";s:1:\"3\";s:5:\"cache\";s:3:\"700\";}s:6:\"thread\";a:2:{s:4:\"hot1\";s:1:\"3\";s:5:\"cache\";s:3:\"800\";}s:5:\"event\";a:1:{s:5:\"cache\";s:3:\"900\";}s:4:\"poll\";a:1:{s:5:\"cache\";s:3:\"500\";}}', '1387876386');
INSERT INTO `uchome_data` VALUES ('newspacelist', 'a:1:{i:0;a:6:{s:3:\"uid\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:4:\"name\";s:0:\"\";s:10:\"namestatus\";s:1:\"0\";s:11:\"videostatus\";s:1:\"0\";s:8:\"dateline\";s:10:\"1387876401\";}}', '1387876401');

-- ----------------------------
-- Table structure for `uchome_docomment`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_docomment`;
CREATE TABLE `uchome_docomment` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `upid` int(10) unsigned NOT NULL default '0',
  `doid` mediumint(8) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `message` text NOT NULL,
  `ip` varchar(20) NOT NULL default '',
  `grade` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `doid` (`doid`,`dateline`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_docomment
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_doing`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_doing`;
CREATE TABLE `uchome_doing` (
  `doid` mediumint(8) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `from` varchar(20) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `message` text NOT NULL,
  `ip` varchar(20) NOT NULL default '',
  `replynum` int(10) unsigned NOT NULL default '0',
  `mood` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`doid`),
  KEY `uid` (`uid`,`dateline`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_doing
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_event`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_event`;
CREATE TABLE `uchome_event` (
  `eventid` mediumint(8) unsigned NOT NULL auto_increment,
  `topicid` mediumint(8) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `title` varchar(80) NOT NULL default '',
  `classid` smallint(6) unsigned NOT NULL default '0',
  `province` varchar(20) NOT NULL default '',
  `city` varchar(20) NOT NULL default '',
  `location` varchar(80) NOT NULL default '',
  `poster` varchar(60) NOT NULL default '',
  `thumb` tinyint(1) NOT NULL default '0',
  `remote` tinyint(1) NOT NULL default '0',
  `deadline` int(10) unsigned NOT NULL default '0',
  `starttime` int(10) unsigned NOT NULL default '0',
  `endtime` int(10) unsigned NOT NULL default '0',
  `public` tinyint(3) NOT NULL default '0',
  `membernum` mediumint(8) unsigned NOT NULL default '0',
  `follownum` mediumint(8) unsigned NOT NULL default '0',
  `viewnum` mediumint(8) unsigned NOT NULL default '0',
  `grade` tinyint(3) NOT NULL default '0',
  `recommendtime` int(10) unsigned NOT NULL default '0',
  `tagid` mediumint(8) unsigned NOT NULL default '0',
  `picnum` mediumint(8) unsigned NOT NULL default '0',
  `threadnum` mediumint(8) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `hot` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`eventid`),
  KEY `grade` (`grade`,`recommendtime`),
  KEY `membernum` (`membernum`),
  KEY `uid` (`uid`,`eventid`),
  KEY `tagid` (`tagid`,`eventid`),
  KEY `topicid` (`topicid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_event
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_eventclass`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_eventclass`;
CREATE TABLE `uchome_eventclass` (
  `classid` smallint(6) unsigned NOT NULL auto_increment,
  `classname` varchar(80) NOT NULL default '',
  `poster` tinyint(1) NOT NULL default '0',
  `template` text NOT NULL,
  `displayorder` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`classid`),
  UNIQUE KEY `classname` (`classname`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_eventclass
-- ----------------------------
INSERT INTO `uchome_eventclass` VALUES ('1', '生活/聚会', '0', '费用说明：\r\n集合地点：\r\n着装要求：\r\n联系方式：\r\n注意事项：', '1');
INSERT INTO `uchome_eventclass` VALUES ('2', '出行/旅游', '0', '路线说明:\r\n费用说明:\r\n装备要求:\r\n交通工具:\r\n集合地点:\r\n联系方式:\r\n注意事项:', '2');
INSERT INTO `uchome_eventclass` VALUES ('3', '比赛/运动', '0', '费用说明：\r\n集合地点：\r\n着装要求：\r\n场地介绍：\r\n联系方式：\r\n注意事项：', '4');
INSERT INTO `uchome_eventclass` VALUES ('4', '电影/演出', '0', '剧情介绍：\r\n费用说明：\r\n集合地点：\r\n联系方式：\r\n注意事项：', '3');
INSERT INTO `uchome_eventclass` VALUES ('5', '教育/讲座', '0', '主办单位：\r\n活动主题：\r\n费用说明：\r\n集合地点：\r\n联系方式：\r\n注意事项：', '5');
INSERT INTO `uchome_eventclass` VALUES ('6', '其它', '0', '', '6');

-- ----------------------------
-- Table structure for `uchome_eventfield`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_eventfield`;
CREATE TABLE `uchome_eventfield` (
  `eventid` mediumint(8) unsigned NOT NULL auto_increment,
  `detail` text NOT NULL,
  `template` varchar(255) NOT NULL default '',
  `limitnum` mediumint(8) unsigned NOT NULL default '0',
  `verify` tinyint(1) NOT NULL default '0',
  `allowpic` tinyint(1) NOT NULL default '0',
  `allowpost` tinyint(1) NOT NULL default '0',
  `allowinvite` tinyint(1) NOT NULL default '0',
  `allowfellow` tinyint(1) NOT NULL default '0',
  `hotuser` text NOT NULL,
  PRIMARY KEY  (`eventid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_eventfield
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_eventinvite`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_eventinvite`;
CREATE TABLE `uchome_eventinvite` (
  `eventid` mediumint(8) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `touid` mediumint(8) unsigned NOT NULL default '0',
  `tousername` char(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`eventid`,`touid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_eventinvite
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_eventpic`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_eventpic`;
CREATE TABLE `uchome_eventpic` (
  `picid` mediumint(8) unsigned NOT NULL default '0',
  `eventid` mediumint(8) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` char(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`picid`),
  KEY `eventid` (`eventid`,`picid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_eventpic
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_feed`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_feed`;
CREATE TABLE `uchome_feed` (
  `feedid` int(10) unsigned NOT NULL auto_increment,
  `appid` smallint(6) unsigned NOT NULL default '0',
  `icon` varchar(30) NOT NULL default '',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `friend` tinyint(1) NOT NULL default '0',
  `hash_template` varchar(32) NOT NULL default '',
  `hash_data` varchar(32) NOT NULL default '',
  `title_template` text NOT NULL,
  `title_data` text NOT NULL,
  `body_template` text NOT NULL,
  `body_data` text NOT NULL,
  `body_general` text NOT NULL,
  `image_1` varchar(255) NOT NULL default '',
  `image_1_link` varchar(255) NOT NULL default '',
  `image_2` varchar(255) NOT NULL default '',
  `image_2_link` varchar(255) NOT NULL default '',
  `image_3` varchar(255) NOT NULL default '',
  `image_3_link` varchar(255) NOT NULL default '',
  `image_4` varchar(255) NOT NULL default '',
  `image_4_link` varchar(255) NOT NULL default '',
  `target_ids` text NOT NULL,
  `id` mediumint(8) unsigned NOT NULL default '0',
  `idtype` varchar(15) NOT NULL default '',
  `hot` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`feedid`),
  KEY `uid` (`uid`,`dateline`),
  KEY `dateline` (`dateline`),
  KEY `hot` (`hot`),
  KEY `id` (`id`,`idtype`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_feed
-- ----------------------------
INSERT INTO `uchome_feed` VALUES ('18', '1', 'activity', '1', 'admin', '1391755866', '0', 'b655fd371d99a6252d359860a6c6301d', '13e45d0116cba2a65e01cc0866fcd2c0', '<a href=\'space.php?do=activity\'>admin 发布了新活动“14年的王道全书怎么回事了？”</a>', 'N;', '', 'N;', '', '', '', '', '', '', '', '', '', '', '0', 'activity', '0');
INSERT INTO `uchome_feed` VALUES ('19', '1', 'activity', '1', 'admin', '1391864832', '0', 'cde293c52509c8661fa7cac3797cbb8f', '347d76729c11986c8d0d112b0831e76d', '<a href=\'space.php?do=activity\'>admin 发布了新活动“哈哈哈打发打发打发”</a>', 'N;', '', 'N;', '', '', '', '', '', '', '', '', '', '', '0', 'activity', '0');
INSERT INTO `uchome_feed` VALUES ('20', '1', 'activity', '1', 'admin', '1391865475', '0', 'd04609c207a7978987d4682461aed085', 'c1773da53647c91162bd92624722c788', '<a href=\'space.php?do=activity\'>admin 发布了新活动“嘿嘿嘿”</a>', 'N;', '', 'N;', '', '', '', '', '', '', '', '', '', '', '0', 'activity', '0');
INSERT INTO `uchome_feed` VALUES ('21', '1', 'activity', '1', 'admin', '1391925372', '0', '95af79a2175720649e9b2eab01da2c36', '429f2641adde07c5bcc364aaf2203e35', '<a href=\'space.php?do=activity\'>admin 发布了新活动“广告歌”</a>', 'N;', '', 'N;', '', '', '', '', '', '', '', '', '', '', '0', 'activity', '0');
INSERT INTO `uchome_feed` VALUES ('22', '1', 'activity', '1', 'admin', '1391927682', '0', 'e2f87d996e8f9c60fc8e91c846af1288', 'd6938b50b93e3c25b6b763fd0fbb2346', '<a href=\'space.php?do=activity\'>admin 发布了新活动“标题”</a>', 'N;', '', 'N;', '', '', '', '', '', '', '', '', '', '', '0', 'activity', '0');
INSERT INTO `uchome_feed` VALUES ('23', '1', 'activity', '1', 'admin', '1391945284', '0', 'fe97c802eae1ae86c53f723be6ffffb0', '768fe2d33827b2eb49adb27c9f7093f6', '<a href=\'space.php?do=activity\'>admin 发布了新活动“333333”</a>', 'N;', '', 'N;', '', '', '', '', '', '', '', '', '', '', '0', 'activity', '0');
INSERT INTO `uchome_feed` VALUES ('24', '1', 'activity', '1', 'admin', '1391945407', '0', '6b1de3563be561ccd56f1109127e5716', 'ba425ed7eed81fc616b8557d2d6bfaad', '<a href=\'space.php?do=activity\'>admin 发布了新活动“1111”</a>', 'N;', '', 'N;', '', '', '', '', '', '', '', '', '', '', '0', 'activity', '0');
INSERT INTO `uchome_feed` VALUES ('25', '1', 'activity', '1', 'admin', '1391948102', '0', 'bf802a53c6f50ac03d68056735963449', '276aeb975afccae29ecb636c292d5b82', '<a href=\'space.php?do=activity\'>admin 发布了新活动“1”</a>', 'N;', '', 'N;', '', '', '', '', '', '', '', '', '', '', '0', 'activity', '0');
INSERT INTO `uchome_feed` VALUES ('26', '1', 'activity', '1', 'admin', '1391948125', '0', 'e55d06c15b13bbc6848a760a2fb9e83e', '92ecbf9887c51a337b3778d1eba5c406', '<a href=\'space.php?do=activity\'>admin 发布了新活动“2”</a>', 'N;', '', 'N;', '', '', '', '', '', '', '', '', '', '', '0', 'activity', '0');
INSERT INTO `uchome_feed` VALUES ('27', '1', 'activity', '1', 'admin', '1391948143', '0', '46f57563d80142db505f17fd7e5f51a2', '588ba82e2d3d27132dade32ccd441fca', '<a href=\'space.php?do=activity\'>admin 发布了新活动“3”</a>', 'N;', '', 'N;', '', '', '', '', '', '', '', '', '', '', '0', 'activity', '0');
INSERT INTO `uchome_feed` VALUES ('28', '1', 'activity', '1', 'admin', '1392101751', '0', 'f4020f21161d9afa3b716a24659aa559', 'c41b6f9bec4fe2f9dcf8eeee14c3a8f7', '<a href=\'space.php?do=activity\'>admin 发布了新活动“333”</a>', 'N;', '', 'N;', '', '', '', '', '', '', '', '', '', '', '0', 'activity', '0');
INSERT INTO `uchome_feed` VALUES ('29', '1', 'activity', '1', 'admin', '1392103215', '0', '75228b71fe0bfa6e0fd78460becbc7ab', '6b1e84c490c9fe7df4ae039a81e4d45b', '<a href=\'space.php?do=activity\'>admin 发布了新活动“aaaaa”</a>', 'N;', '', 'N;', '', '', '', '', '', '', '', '', '', '', '0', 'activity', '0');
INSERT INTO `uchome_feed` VALUES ('30', '1', 'activity', '1', 'admin', '1392117376', '0', '5f0641c673c8d85922d1a07e0ce08ac4', 'fc809b5b052b526f1b59b5c9a00220bb', '<a href=\'space.php?do=activity\'>admin 发布了新活动“657567”</a>', 'N;', '', 'N;', '', '', '', '', '', '', '', '', '', '', '0', 'activity', '0');
INSERT INTO `uchome_feed` VALUES ('31', '1', 'activity', '1', 'admin', '1392117610', '0', 'ac560228d68406ab00c1d279cefeb05b', 'e79766602acd70a77d7e49a9b9abcc5e', '<a href=\'space.php?do=activity\'>admin 发布了新活动“567567”</a>', 'N;', '', 'N;', '', '', '', '', '', '', '', '', '', '', '0', 'activity', '0');
INSERT INTO `uchome_feed` VALUES ('32', '1', 'activity', '1', 'admin', '1392119846', '0', '47caacb36220618ad353c77da95c6dad', '1be551afd659cf31779473c01c0deb18', '<a href=\'space.php?do=activity\'>admin 发布了新活动“555”</a>', 'N;', '', 'N;', '', '', '', '', '', '', '', '', '', '', '0', 'activity', '0');

-- ----------------------------
-- Table structure for `uchome_friend`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_friend`;
CREATE TABLE `uchome_friend` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `fuid` mediumint(8) unsigned NOT NULL default '0',
  `fusername` varchar(15) NOT NULL default '',
  `status` tinyint(1) NOT NULL default '0',
  `gid` smallint(6) unsigned NOT NULL default '0',
  `note` varchar(50) NOT NULL default '',
  `num` mediumint(8) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`,`fuid`),
  KEY `fuid` (`fuid`),
  KEY `status` (`uid`,`status`,`num`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_friend
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_friendguide`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_friendguide`;
CREATE TABLE `uchome_friendguide` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `fuid` mediumint(8) unsigned NOT NULL default '0',
  `fusername` char(15) NOT NULL default '',
  `num` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`,`fuid`),
  KEY `uid` (`uid`,`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_friendguide
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_friendlog`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_friendlog`;
CREATE TABLE `uchome_friendlog` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `fuid` mediumint(8) unsigned NOT NULL default '0',
  `action` varchar(10) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`,`fuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_friendlog
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_invite`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_invite`;
CREATE TABLE `uchome_invite` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `code` varchar(20) NOT NULL default '',
  `fuid` mediumint(8) unsigned NOT NULL default '0',
  `fusername` varchar(15) NOT NULL default '',
  `type` tinyint(1) NOT NULL default '0',
  `email` varchar(100) NOT NULL default '',
  `appid` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_invite
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_log`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_log`;
CREATE TABLE `uchome_log` (
  `logid` mediumint(8) unsigned NOT NULL auto_increment,
  `id` mediumint(8) unsigned NOT NULL default '0',
  `idtype` char(20) NOT NULL default '',
  PRIMARY KEY  (`logid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_log
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_magic`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_magic`;
CREATE TABLE `uchome_magic` (
  `mid` varchar(15) NOT NULL default '',
  `name` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `forbiddengid` text NOT NULL,
  `charge` smallint(6) unsigned NOT NULL default '0',
  `experience` smallint(6) unsigned NOT NULL default '0',
  `provideperoid` int(10) unsigned NOT NULL default '0',
  `providecount` smallint(6) unsigned NOT NULL default '0',
  `useperoid` int(10) unsigned NOT NULL default '0',
  `usecount` smallint(6) unsigned NOT NULL default '0',
  `displayorder` smallint(6) unsigned NOT NULL default '0',
  `custom` text NOT NULL,
  `close` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_magic
-- ----------------------------
INSERT INTO `uchome_magic` VALUES ('invisible', '隐身草', '让自己隐身登录，不显示在线，24小时内有效', '', '50', '5', '86400', '10', '86400', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('friendnum', '好友增容卡', '在允许添加的最多好友数限制外，增加10个好友名额', '', '30', '3', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('attachsize', '附件增容卡', '使用一次，可以给自己增加 10M 的附件空间', '', '30', '3', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('thunder', '雷鸣之声', '发布一条全站信息，让大家知道自己上线了', '', '500', '5', '86400', '5', '86400', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('updateline', '救生圈', '把指定对象的发布时间更新为当前时间', '', '200', '5', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('downdateline', '时空机', '把指定对象的发布时间修改为过去的时间', '', '250', '5', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('color', '彩色灯', '把指定对象的标题变成彩色的', '', '50', '5', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('hot', '热点灯', '把指定对象的热度增加站点推荐的热点值', '', '50', '5', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('visit', '互访卡', '随机选择10个好友，向其打招呼、留言或访问空间', '', '20', '2', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('icon', '彩虹蛋', '给指定对象的标题前面增加图标（最多8个图标）', '', '20', '2', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('flicker', '彩虹炫', '让评论、留言的文字闪烁起来', '', '30', '3', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('gift', '红包卡', '在自己的空间埋下积分红包送给来访者', '', '20', '2', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('superstar', '超级明星', '在个人主页，给自己的头像增加超级明星标识', '', '30', '3', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('viewmagiclog', '八卦镜', '查看指定用户最近使用的道具记录', '', '100', '5', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('viewmagic', '透视镜', '查看指定用户当前持有的道具', '', '100', '5', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('viewvisitor', '偷窥镜', '查看指定用户最近访问过的10个空间', '', '100', '5', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('call', '点名卡', '发通知给自己的好友，让他们来查看指定的对象', '', '50', '5', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('coupon', '代金券', '购买道具时折换一定量的积分', '', '0', '0', '0', '0', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('frame', '相框', '给自己的照片添上相框', '', '30', '3', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('bgimage', '信纸', '给指定的对象添加信纸背景', '', '30', '3', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('doodle', '涂鸦板', '允许在留言、评论等操作时使用涂鸦板', '', '30', '3', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('anonymous', '匿名卡', '在指定的地方，让自己的名字显示为匿名', '', '50', '5', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('reveal', '照妖镜', '可以查看一次匿名用户的真实身份', '', '100', '5', '86400', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('license', '道具转让许可证', '使用许可证，将道具赠送给指定好友', '', '10', '1', '3600', '999', '0', '1', '0', '', '0');
INSERT INTO `uchome_magic` VALUES ('detector', '探测器', '探测埋了红包的空间', '', '10', '1', '86400', '999', '0', '1', '0', '', '0');

-- ----------------------------
-- Table structure for `uchome_magicinlog`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_magicinlog`;
CREATE TABLE `uchome_magicinlog` (
  `logid` mediumint(8) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `mid` varchar(15) NOT NULL default '',
  `count` smallint(6) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `fromid` mediumint(8) unsigned NOT NULL default '0',
  `credit` smallint(6) unsigned NOT NULL default '0',
  `dateline` int(10) NOT NULL default '0',
  PRIMARY KEY  (`logid`),
  KEY `uid` (`uid`,`dateline`),
  KEY `type` (`type`,`fromid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_magicinlog
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_magicstore`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_magicstore`;
CREATE TABLE `uchome_magicstore` (
  `mid` varchar(15) NOT NULL default '',
  `storage` smallint(6) unsigned NOT NULL default '0',
  `lastprovide` int(10) unsigned NOT NULL default '0',
  `sellcount` int(8) unsigned NOT NULL default '0',
  `sellcredit` int(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_magicstore
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_magicuselog`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_magicuselog`;
CREATE TABLE `uchome_magicuselog` (
  `logid` mediumint(8) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `mid` varchar(15) NOT NULL default '',
  `id` mediumint(8) unsigned NOT NULL default '0',
  `idtype` varchar(20) NOT NULL default '',
  `count` mediumint(8) unsigned NOT NULL default '0',
  `data` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL default '0',
  `expire` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`logid`),
  KEY `uid` (`uid`,`mid`),
  KEY `id` (`id`,`idtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_magicuselog
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_mailcron`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_mailcron`;
CREATE TABLE `uchome_mailcron` (
  `cid` mediumint(8) unsigned NOT NULL auto_increment,
  `touid` mediumint(8) unsigned NOT NULL default '0',
  `email` varchar(100) NOT NULL default '',
  `sendtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `sendtime` (`sendtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_mailcron
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_mailqueue`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_mailqueue`;
CREATE TABLE `uchome_mailqueue` (
  `qid` mediumint(8) unsigned NOT NULL auto_increment,
  `cid` mediumint(8) unsigned NOT NULL default '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`qid`),
  KEY `mcid` (`cid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_mailqueue
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_member`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_member`;
CREATE TABLE `uchome_member` (
  `uid` mediumint(8) unsigned NOT NULL auto_increment,
  `username` char(15) NOT NULL default '',
  `password` char(32) NOT NULL default '',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_member
-- ----------------------------
INSERT INTO `uchome_member` VALUES ('1', 'admin', '3f0080259e630a92fa392a893828f9e8');

-- ----------------------------
-- Table structure for `uchome_menuset`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_menuset`;
CREATE TABLE `uchome_menuset` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` char(255) NOT NULL,
  `message` tinytext NOT NULL,
  `english` char(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_menuset
-- ----------------------------
INSERT INTO `uchome_menuset` VALUES ('1', '国内新闻', '好多国内新闻哦', 'guoneixinwen');
INSERT INTO `uchome_menuset` VALUES ('2', '国外新闻', '挺多国外新闻的', 'guowaixinwen');

-- ----------------------------
-- Table structure for `uchome_mtag`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_mtag`;
CREATE TABLE `uchome_mtag` (
  `tagid` mediumint(8) unsigned NOT NULL auto_increment,
  `tagname` varchar(40) NOT NULL default '',
  `fieldid` smallint(6) NOT NULL default '0',
  `membernum` mediumint(8) unsigned NOT NULL default '0',
  `threadnum` mediumint(8) unsigned NOT NULL default '0',
  `postnum` mediumint(8) unsigned NOT NULL default '0',
  `close` tinyint(1) NOT NULL default '0',
  `announcement` text NOT NULL,
  `pic` varchar(150) NOT NULL default '',
  `closeapply` tinyint(1) NOT NULL default '0',
  `joinperm` tinyint(1) NOT NULL default '0',
  `viewperm` tinyint(1) NOT NULL default '0',
  `threadperm` tinyint(1) NOT NULL default '0',
  `postperm` tinyint(1) NOT NULL default '0',
  `recommend` tinyint(1) NOT NULL default '0',
  `moderator` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`tagid`),
  KEY `tagname` (`tagname`),
  KEY `threadnum` (`threadnum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_mtag
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_mtaginvite`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_mtaginvite`;
CREATE TABLE `uchome_mtaginvite` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `tagid` mediumint(8) unsigned NOT NULL default '0',
  `fromuid` mediumint(8) unsigned NOT NULL default '0',
  `fromusername` char(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`,`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_mtaginvite
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_myapp`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_myapp`;
CREATE TABLE `uchome_myapp` (
  `appid` mediumint(8) unsigned NOT NULL default '0',
  `appname` varchar(60) NOT NULL default '',
  `narrow` tinyint(1) NOT NULL default '0',
  `flag` tinyint(1) NOT NULL default '0',
  `version` mediumint(8) unsigned NOT NULL default '0',
  `displaymethod` tinyint(1) NOT NULL default '0',
  `displayorder` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`appid`),
  KEY `flag` (`flag`,`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_myapp
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_myinvite`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_myinvite`;
CREATE TABLE `uchome_myinvite` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `typename` varchar(100) NOT NULL default '',
  `appid` mediumint(8) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `fromuid` mediumint(8) unsigned NOT NULL default '0',
  `touid` mediumint(8) unsigned NOT NULL default '0',
  `myml` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL default '0',
  `hash` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `hash` (`hash`),
  KEY `uid` (`touid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_myinvite
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_notification`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_notification`;
CREATE TABLE `uchome_notification` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `type` varchar(20) NOT NULL default '',
  `new` tinyint(1) NOT NULL default '0',
  `authorid` mediumint(8) unsigned NOT NULL default '0',
  `author` varchar(15) NOT NULL default '',
  `note` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`,`new`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_notification
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_pic`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_pic`;
CREATE TABLE `uchome_pic` (
  `picid` mediumint(8) NOT NULL auto_increment,
  `albumid` mediumint(8) unsigned NOT NULL default '0',
  `topicid` mediumint(8) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `postip` varchar(20) NOT NULL default '',
  `filename` varchar(100) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `type` varchar(20) NOT NULL default '',
  `size` int(10) unsigned NOT NULL default '0',
  `filepath` varchar(60) NOT NULL default '',
  `thumb` tinyint(1) NOT NULL default '0',
  `remote` tinyint(1) NOT NULL default '0',
  `hot` mediumint(8) unsigned NOT NULL default '0',
  `click_6` smallint(6) unsigned NOT NULL default '0',
  `click_7` smallint(6) unsigned NOT NULL default '0',
  `click_8` smallint(6) unsigned NOT NULL default '0',
  `click_9` smallint(6) unsigned NOT NULL default '0',
  `click_10` smallint(6) unsigned NOT NULL default '0',
  `magicframe` tinyint(6) NOT NULL default '0',
  PRIMARY KEY  (`picid`),
  KEY `albumid` (`albumid`,`dateline`),
  KEY `topicid` (`topicid`,`dateline`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_pic
-- ----------------------------
INSERT INTO `uchome_pic` VALUES ('1', '0', '0', '1', 'admin', '1390703800', '127.0.0.1', 'camera.jpg', '', 'application/octet-st', '93064', '201401/26/1_13907038007xbw.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('2', '0', '0', '1', 'admin', '1390704854', '127.0.0.1', 'camera.jpg', '', 'application/octet-st', '93064', '201401/26/1_1390704854o6pG.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('3', '0', '0', '1', 'admin', '1390718317', '127.0.0.1', 'camera.jpg', '', 'application/octet-st', '93064', '201401/26/1_13907183178K4K.jpg', '1', '1', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('4', '0', '0', '1', 'admin', '1390719015', '127.0.0.1', 'camera.jpg', '', 'application/octet-st', '93064', '201401/26/1_1390719015pP2Z.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('5', '0', '0', '1', 'admin', '1390720785', '127.0.0.1', 'camera.jpg', '', 'application/octet-st', '93064', '201401/26/1_13907207859HnA.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('6', '0', '0', '1', 'admin', '1390724445', '127.0.0.1', 'camera.jpg', '', 'application/octet-st', '93064', '201401/26/1_1390724445c7IN.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('7', '0', '0', '1', 'admin', '1390725668', '127.0.0.1', 'camera.jpg', '', 'application/octet-st', '93064', '201401/26/1_139072566879sd.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('8', '0', '0', '1', 'admin', '1390726255', '127.0.0.1', 'flower.jpg', '', 'application/octet-st', '620888', '201401/26/1_1390726255yYdd.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('9', '0', '0', '1', 'admin', '1390726330', '127.0.0.1', 'flower.jpg', '', 'application/octet-st', '620888', '201401/26/1_1390726330t49l.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('10', '0', '0', '1', 'admin', '1390726600', '127.0.0.1', 'flower.jpg', '', 'application/octet-st', '620888', '201401/26/1_1390726600s2bM.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('11', '0', '0', '1', 'admin', '1390726677', '127.0.0.1', 'juhua.jpg', '', 'application/octet-st', '879394', '201401/26/1_13907266770VRK.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('12', '0', '0', '1', 'admin', '1390726710', '127.0.0.1', 'flower.jpg', '', 'application/octet-st', '620888', '201401/26/1_1390726710IE3U.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('13', '0', '0', '1', 'admin', '1390726790', '127.0.0.1', 'juhua.jpg', '', 'application/octet-st', '879394', '201401/26/1_139072679066L5.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('14', '0', '0', '1', 'admin', '1390727191', '127.0.0.1', 'flower.jpg', '', 'application/octet-st', '620888', '201401/26/1_1390727191b3dl.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('15', '0', '0', '1', 'admin', '1390727250', '127.0.0.1', 'flower.jpg', '', 'application/octet-st', '620888', '201401/26/1_1390727250SmQ1.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('16', '0', '0', '1', 'admin', '1390727337', '127.0.0.1', 'flower.jpg', '', 'application/octet-st', '620888', '201401/26/1_1390727337TAC2.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('17', '0', '0', '1', 'admin', '1390727466', '127.0.0.1', 'flower.jpg', '', 'application/octet-st', '620888', '201401/26/1_1390727466zc7Y.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('18', '0', '0', '1', 'admin', '1390727757', '127.0.0.1', 'flower.jpg', '', 'application/octet-st', '620888', '201401/26/1_1390727757cjHL.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('19', '0', '0', '1', 'admin', '1390728264', '127.0.0.1', 'flower.jpg', '', 'application/octet-st', '620888', '201401/26/1_1390728264mJJX.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('20', '0', '0', '1', 'admin', '1390729350', '127.0.0.1', 'flower.jpg', '', 'application/octet-st', '620888', '201401/26/1_1390729350531p.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('21', '0', '0', '1', 'admin', '1390729495', '127.0.0.1', 'flower.jpg', '', 'application/octet-st', '620888', '201401/26/1_1390729495GYN1.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('22', '0', '0', '1', 'admin', '1390732234', '127.0.0.1', 'flower.jpg', '', 'application/octet-st', '620888', '201401/26/1_1390732234yY6F.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('23', '0', '0', '1', 'admin', '1390732273', '127.0.0.1', 'flower.jpg', '', 'application/octet-st', '620888', '201401/26/1_13907322730t1b.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('24', '0', '0', '1', 'admin', '1390732321', '127.0.0.1', 'flower.jpg', '', 'application/octet-st', '620888', '201401/26/1_1390732321an6U.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('25', '0', '0', '1', 'admin', '1390732390', '127.0.0.1', 'flower.jpg', '', 'application/octet-st', '620888', '201401/26/1_1390732390K03k.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('26', '0', '0', '1', 'admin', '1390732486', '127.0.0.1', 'flower.jpg', '', 'application/octet-st', '620888', '201401/26/1_1390732486PvxP.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('27', '0', '0', '1', 'admin', '1390819009', '127.0.0.1', 'Hydrangeas.jpg', '', 'application/octet-st', '595284', '201401/27/1_13908190098IBn.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('28', '0', '0', '1', 'admin', '1390877515', '127.0.0.1', 'Lighthouse.jpg', '', 'application/octet-st', '561276', '201401/28/1_1390877515I6p6.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('29', '0', '0', '1', 'admin', '1391754678', '127.0.0.1', '1_1390726600s2bM.jpg', '', 'application/octet-st', '620888', '201402/7/1_1391754678L0GJ.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('30', '0', '0', '1', 'admin', '1391754704', '127.0.0.1', '1_1390726600s2bM.jpg', '', 'application/octet-st', '620888', '201402/7/1_1391754704OByj.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('31', '0', '0', '1', 'admin', '1391754840', '127.0.0.1', '1_1390726600s2bM.jpg', '', 'application/octet-st', '620888', '201402/7/1_13917548405D3g.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('32', '0', '0', '1', 'admin', '1391756658', '127.0.0.1', '1_1390726600s2bM.jpg', '', 'application/octet-st', '620888', '201402/7/1_1391756658j7eJ.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('33', '0', '0', '1', 'admin', '1391757478', '127.0.0.1', '1_1390726600s2bM.jpg', '', 'application/octet-st', '620888', '201402/7/1_1391757478NuC5.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('34', '0', '0', '1', 'admin', '1391757598', '127.0.0.1', '1_1390726600s2bM.jpg', '', 'application/octet-st', '620888', '201402/7/1_1391757598mpMr.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('35', '0', '0', '1', 'admin', '1391758025', '127.0.0.1', '1_1390726600s2bM.jpg', '', 'application/octet-st', '620888', '201402/7/1_13917580250APZ.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('36', '0', '0', '1', 'admin', '1391758121', '127.0.0.1', '1_1390726600s2bM.jpg', '', 'application/octet-st', '620888', '201402/7/1_13917581218unU.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('37', '0', '0', '1', 'admin', '1391758206', '127.0.0.1', '1_1390726600s2bM.jpg', '', 'application/octet-st', '620888', '201402/7/1_1391758206WA3Z.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('38', '0', '0', '1', 'admin', '1391758523', '127.0.0.1', '1_1390726600s2bM.jpg', '', 'application/octet-st', '620888', '201402/7/1_1391758523y0fZ.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('39', '0', '0', '1', 'admin', '1391758598', '127.0.0.1', '1_1390726600s2bM.jpg', '', 'application/octet-st', '620888', '201402/7/1_139175859862d4.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('40', '0', '0', '1', 'admin', '1391758956', '127.0.0.1', '1_1390726600s2bM.jpg', '', 'application/octet-st', '620888', '201402/7/1_1391758956zRXY.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('41', '0', '0', '1', 'admin', '1391761041', '127.0.0.1', '1_1390726600s2bM.jpg', '', 'application/octet-st', '620888', '201402/7/1_1391761041JfHq.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('42', '0', '0', '1', 'admin', '1391761064', '127.0.0.1', '1_1390726600s2bM.jpg', '', 'application/octet-st', '620888', '201402/7/1_1391761064jCeE.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('43', '0', '0', '0', '', '1392101736', '127.0.0.1', 'ddd.jpg', '', 'application/octet-st', '777835', '201402/11/0_1392101736Ptr3.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('44', '0', '0', '0', '', '1392101812', '127.0.0.1', 'ddd.jpg', '', 'application/octet-st', '777835', '201402/11/0_1392101812130g.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('45', '0', '0', '0', '', '1392101823', '127.0.0.1', 'ddd.jpg', '', 'application/octet-st', '777835', '201402/11/0_13921018233MM4.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('46', '0', '0', '0', '', '1392102178', '127.0.0.1', 'ddd.jpg', '', 'application/octet-st', '777835', '201402/11/0_139210217837b7.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('47', '0', '0', '0', '', '1392102189', '127.0.0.1', 'ddd.jpg', '', 'application/octet-st', '777835', '201402/11/0_1392102189IE3c.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('48', '0', '0', '0', '', '1392102955', '127.0.0.1', 'ddd.jpg', '', 'application/octet-st', '777835', '201402/11/0_1392102955NozC.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('49', '0', '0', '0', '', '1392103159', '127.0.0.1', 'ddd.jpg', '', 'application/octet-st', '777835', '201402/11/0_1392103159YYcZ.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('50', '0', '0', '0', '', '1392103175', '127.0.0.1', 'Koala.jpg', '', 'application/octet-st', '780831', '201402/11/0_1392103175qOaL.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('51', '0', '0', '0', '', '1392103197', '127.0.0.1', 'Koala.jpg', '', 'application/octet-st', '780831', '201402/11/0_1392103197ZIei.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('52', '0', '0', '0', '', '1392116942', '127.0.0.1', 'Hydrangeas.jpg', '', 'application/octet-st', '595284', '201402/11/0_1392116942qz1C.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('53', '0', '0', '0', '', '1392116971', '127.0.0.1', 'Tulips.jpg', '', 'application/octet-st', '620888', '201402/11/0_1392116971X4Zx.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('54', '0', '0', '0', '', '1392117097', '127.0.0.1', 'Jellyfish.jpg', '', 'application/octet-st', '775702', '201402/11/0_139211709736O6.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('55', '0', '0', '0', '', '1392117211', '127.0.0.1', 'Desert.jpg', '', 'application/octet-st', '845941', '201402/11/0_13921172117tc7.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('56', '0', '0', '0', '', '1392117363', '127.0.0.1', 'Lighthouse.jpg', '', 'application/octet-st', '561276', '201402/11/0_1392117363Q71G.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('57', '0', '0', '0', '', '1392117545', '127.0.0.1', 'Lighthouse.jpg', '', 'application/octet-st', '561276', '201402/11/0_13921175454MCU.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('58', '0', '0', '0', '', '1392117599', '127.0.0.1', 'Koala.jpg', '', 'application/octet-st', '780831', '201402/11/0_1392117599BzO2.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('59', '0', '0', '0', '', '1392118724', '127.0.0.1', 'Koala.jpg', '', 'application/octet-st', '780831', '201402/11/0_1392118724GwLE.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('60', '0', '0', '0', '', '1392118728', '127.0.0.1', 'Penguins.jpg', '', 'application/octet-st', '777835', '201402/11/0_1392118728RVP5.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_pic` VALUES ('61', '0', '0', '0', '', '1392119842', '127.0.0.1', 'Chrysanthemum.jpg', '', 'application/octet-st', '879394', '201402/11/0_13921198426mFR.jpg', '1', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `uchome_picfield`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_picfield`;
CREATE TABLE `uchome_picfield` (
  `picid` mediumint(8) unsigned NOT NULL default '0',
  `hotuser` text NOT NULL,
  PRIMARY KEY  (`picid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_picfield
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_poke`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_poke`;
CREATE TABLE `uchome_poke` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `fromuid` mediumint(8) unsigned NOT NULL default '0',
  `fromusername` varchar(15) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `iconid` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`,`fromuid`),
  KEY `uid` (`uid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_poke
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_poll`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_poll`;
CREATE TABLE `uchome_poll` (
  `pid` mediumint(8) unsigned NOT NULL auto_increment,
  `topicid` mediumint(8) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` char(15) NOT NULL default '',
  `subject` char(80) NOT NULL default '',
  `voternum` mediumint(8) unsigned NOT NULL default '0',
  `replynum` mediumint(8) unsigned NOT NULL default '0',
  `multiple` tinyint(1) NOT NULL default '0',
  `maxchoice` tinyint(3) NOT NULL default '0',
  `sex` tinyint(1) NOT NULL default '0',
  `noreply` tinyint(1) NOT NULL default '0',
  `credit` mediumint(8) unsigned NOT NULL default '0',
  `percredit` mediumint(8) unsigned NOT NULL default '0',
  `expiration` int(10) unsigned NOT NULL default '0',
  `lastvote` int(10) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `hot` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`pid`),
  KEY `uid` (`uid`,`dateline`),
  KEY `topicid` (`topicid`,`dateline`),
  KEY `voternum` (`voternum`),
  KEY `dateline` (`dateline`),
  KEY `lastvote` (`lastvote`),
  KEY `hot` (`hot`),
  KEY `percredit` (`percredit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_poll
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_pollfield`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_pollfield`;
CREATE TABLE `uchome_pollfield` (
  `pid` mediumint(8) unsigned NOT NULL default '0',
  `notify` tinyint(1) NOT NULL default '0',
  `message` text NOT NULL,
  `summary` text NOT NULL,
  `option` text NOT NULL,
  `invite` text NOT NULL,
  `hotuser` text NOT NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_pollfield
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_polloption`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_polloption`;
CREATE TABLE `uchome_polloption` (
  `oid` mediumint(8) unsigned NOT NULL auto_increment,
  `pid` mediumint(8) unsigned NOT NULL default '0',
  `votenum` mediumint(8) unsigned NOT NULL default '0',
  `option` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`oid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_polloption
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_polluser`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_polluser`;
CREATE TABLE `uchome_polluser` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `pid` mediumint(8) unsigned NOT NULL default '0',
  `option` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`,`pid`),
  KEY `pid` (`pid`,`dateline`),
  KEY `uid` (`uid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_polluser
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_post`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_post`;
CREATE TABLE `uchome_post` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `tagid` mediumint(8) unsigned NOT NULL default '0',
  `tid` mediumint(8) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `ip` varchar(20) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `message` text NOT NULL,
  `pic` varchar(255) NOT NULL default '',
  `isthread` tinyint(1) NOT NULL default '0',
  `hotuser` text NOT NULL,
  PRIMARY KEY  (`pid`),
  KEY `tid` (`tid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_post
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_profield`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_profield`;
CREATE TABLE `uchome_profield` (
  `fieldid` smallint(6) unsigned NOT NULL auto_increment,
  `title` varchar(80) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `formtype` varchar(20) NOT NULL default '0',
  `inputnum` smallint(3) unsigned NOT NULL default '0',
  `choice` text NOT NULL,
  `mtagminnum` smallint(6) unsigned NOT NULL default '0',
  `manualmoderator` tinyint(1) NOT NULL default '0',
  `manualmember` tinyint(1) NOT NULL default '0',
  `displayorder` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`fieldid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_profield
-- ----------------------------
INSERT INTO `uchome_profield` VALUES ('1', '自由联盟', '', 'text', '100', '', '0', '0', '1', '0');
INSERT INTO `uchome_profield` VALUES ('2', '地区联盟', '', 'text', '100', '', '0', '0', '1', '0');
INSERT INTO `uchome_profield` VALUES ('3', '兴趣联盟', '', 'text', '100', '', '0', '0', '1', '0');

-- ----------------------------
-- Table structure for `uchome_profilefield`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_profilefield`;
CREATE TABLE `uchome_profilefield` (
  `fieldid` smallint(6) unsigned NOT NULL auto_increment,
  `title` varchar(80) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `formtype` varchar(20) NOT NULL default '0',
  `maxsize` tinyint(3) unsigned NOT NULL default '0',
  `required` tinyint(1) NOT NULL default '0',
  `invisible` tinyint(1) NOT NULL default '0',
  `allowsearch` tinyint(1) NOT NULL default '0',
  `choice` text NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_profilefield
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_report`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_report`;
CREATE TABLE `uchome_report` (
  `rid` mediumint(8) unsigned NOT NULL auto_increment,
  `id` mediumint(8) unsigned NOT NULL default '0',
  `idtype` varchar(15) NOT NULL default '',
  `new` tinyint(1) NOT NULL default '0',
  `num` smallint(6) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `reason` text NOT NULL,
  `uids` text NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `id` (`id`,`idtype`,`num`,`dateline`),
  KEY `new` (`new`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_report
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_second`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_second`;
CREATE TABLE `uchome_second` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL,
  `sed_subject` varchar(80) NOT NULL default '',
  `sed_time` int(10) unsigned NOT NULL,
  `sed_price` char(255) NOT NULL,
  `sed_dateline` int(10) unsigned NOT NULL,
  `sed_membernum` mediumint(8) unsigned NOT NULL,
  `sed_message` tinytext NOT NULL,
  `sed_follownum` mediumint(8) unsigned NOT NULL,
  `sed_viewnum` mediumint(8) unsigned NOT NULL,
  `sed_hot` mediumint(8) unsigned NOT NULL,
  `sed_replynum` int(11) unsigned NOT NULL,
  `sed_picid` mediumint(8) unsigned NOT NULL,
  `sed_hide` tinyint(8) NOT NULL default '1' COMMENT '0为隐藏，1为显示',
  `sed_classification` char(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_second
-- ----------------------------
INSERT INTO `uchome_second` VALUES ('11', '1', '任溶溶', '1393611900', '13333', '1391864832', '0', '6666666666666666', '0', '0', '0', '0', '40', '0', '');
INSERT INTO `uchome_second` VALUES ('12', '1', '单车11111', '1393611900', '11111333', '1392030289', '0', '发生大幅度是否11111', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `uchome_second` VALUES ('13', '1', '汽车', '1393611900', '3333', '1391864832', '0', '就斤斤计较', '0', '0', '0', '0', '42', '1', '');
INSERT INTO `uchome_second` VALUES ('10', '1', '我问佛', '1393611900', '4333', '1391864832', '0', '方芳芳', '0', '0', '0', '0', '40', '1', '');
INSERT INTO `uchome_second` VALUES ('1', '1', '错错错', '1393611900', '5333', '1391864832', '0', '广泛大概', '0', '0', '0', '0', '42', '1', '');
INSERT INTO `uchome_second` VALUES ('14', '1', '嗖嗖嗖', '1392967800', '63333', '1392019385', '0', '防盗防复发', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `uchome_second` VALUES ('15', '1', '凤飞飞', '1392105600', '3333', '1392019478', '0', '33333', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `uchome_second` VALUES ('16', '1', 'QQ', '1392202800', '6666', '1392030232', '0', '6666', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `uchome_second` VALUES ('17', '1', '333', '1392191700', '3333', '1392119655', '0', '3333', '0', '0', '0', '0', '0', '1', '');
INSERT INTO `uchome_second` VALUES ('18', '1', 'gg', '1392376200', '44', '1392117376', '0', 'tttt', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `uchome_second` VALUES ('19', '1', 'tt', '1393410600', '66', '1392117610', '0', '888888', '0', '0', '0', '0', '58', '0', '');

-- ----------------------------
-- Table structure for `uchome_second_classification`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_second_classification`;
CREATE TABLE `uchome_second_classification` (
  `id` tinyint(8) unsigned NOT NULL auto_increment,
  `sed__name` char(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_second_classification
-- ----------------------------
INSERT INTO `uchome_second_classification` VALUES ('1', '数码电子');
INSERT INTO `uchome_second_classification` VALUES ('2', '图书/音像');
INSERT INTO `uchome_second_classification` VALUES ('3', '文体用品');
INSERT INTO `uchome_second_classification` VALUES ('4', '其他');

-- ----------------------------
-- Table structure for `uchome_session`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_session`;
CREATE TABLE `uchome_session` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` char(15) NOT NULL default '',
  `password` char(32) NOT NULL default '',
  `lastactivity` int(10) unsigned NOT NULL default '0',
  `ip` int(10) unsigned NOT NULL default '0',
  `magichidden` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`uid`),
  KEY `lastactivity` (`lastactivity`),
  KEY `ip` (`ip`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_session
-- ----------------------------
INSERT INTO `uchome_session` VALUES ('1', 'admin', '3f0080259e630a92fa392a893828f9e8', '1392124493', '127000000', '0');

-- ----------------------------
-- Table structure for `uchome_share`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_share`;
CREATE TABLE `uchome_share` (
  `sid` mediumint(8) unsigned NOT NULL auto_increment,
  `topicid` mediumint(8) unsigned NOT NULL default '0',
  `type` varchar(30) NOT NULL default '',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `title_template` text NOT NULL,
  `body_template` text NOT NULL,
  `body_data` text NOT NULL,
  `body_general` text NOT NULL,
  `image` varchar(255) NOT NULL default '',
  `image_link` varchar(255) NOT NULL default '',
  `hot` mediumint(8) unsigned NOT NULL default '0',
  `hotuser` text NOT NULL,
  PRIMARY KEY  (`sid`),
  KEY `uid` (`uid`,`dateline`),
  KEY `topicid` (`topicid`,`dateline`),
  KEY `hot` (`hot`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_share
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_show`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_show`;
CREATE TABLE `uchome_show` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `credit` int(10) unsigned NOT NULL default '0',
  `note` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`uid`),
  KEY `credit` (`credit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_show
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_space`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_space`;
CREATE TABLE `uchome_space` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `groupid` smallint(6) unsigned NOT NULL default '0',
  `credit` int(10) NOT NULL default '0',
  `experience` int(10) NOT NULL default '0',
  `username` char(15) NOT NULL default '',
  `name` char(20) NOT NULL default '',
  `namestatus` tinyint(1) NOT NULL default '0',
  `videostatus` tinyint(1) NOT NULL default '0',
  `domain` char(15) NOT NULL default '',
  `friendnum` int(10) unsigned NOT NULL default '0',
  `viewnum` int(10) unsigned NOT NULL default '0',
  `notenum` int(10) unsigned NOT NULL default '0',
  `addfriendnum` smallint(6) unsigned NOT NULL default '0',
  `mtaginvitenum` smallint(6) unsigned NOT NULL default '0',
  `eventinvitenum` smallint(6) unsigned NOT NULL default '0',
  `myinvitenum` smallint(6) unsigned NOT NULL default '0',
  `pokenum` smallint(6) unsigned NOT NULL default '0',
  `doingnum` smallint(6) unsigned NOT NULL default '0',
  `blognum` smallint(6) unsigned NOT NULL default '0',
  `albumnum` smallint(6) unsigned NOT NULL default '0',
  `threadnum` smallint(6) unsigned NOT NULL default '0',
  `pollnum` smallint(6) unsigned NOT NULL default '0',
  `eventnum` smallint(6) unsigned NOT NULL default '0',
  `sharenum` smallint(6) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `lastsearch` int(10) unsigned NOT NULL default '0',
  `lastpost` int(10) unsigned NOT NULL default '0',
  `lastlogin` int(10) unsigned NOT NULL default '0',
  `lastsend` int(10) unsigned NOT NULL default '0',
  `attachsize` int(10) unsigned NOT NULL default '0',
  `addsize` int(10) unsigned NOT NULL default '0',
  `addfriend` smallint(6) unsigned NOT NULL default '0',
  `flag` tinyint(1) NOT NULL default '0',
  `newpm` smallint(6) unsigned NOT NULL default '0',
  `avatar` tinyint(1) NOT NULL default '0',
  `regip` char(15) NOT NULL default '',
  `ip` int(10) unsigned NOT NULL default '0',
  `mood` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`),
  KEY `username` (`username`),
  KEY `domain` (`domain`),
  KEY `ip` (`ip`),
  KEY `updatetime` (`updatetime`),
  KEY `mood` (`mood`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_space
-- ----------------------------
INSERT INTO `uchome_space` VALUES ('1', '1', '265', '255', 'admin', '', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1387876401', '1391761064', '0', '0', '1392124482', '0', '22814324', '0', '0', '1', '0', '0', '127.0.0.1', '127000000', '0');

-- ----------------------------
-- Table structure for `uchome_spacefield`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_spacefield`;
CREATE TABLE `uchome_spacefield` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `sex` tinyint(1) NOT NULL default '0',
  `email` varchar(100) NOT NULL default '',
  `newemail` varchar(100) NOT NULL default '',
  `emailcheck` tinyint(1) NOT NULL default '0',
  `mobile` varchar(40) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `msn` varchar(80) NOT NULL default '',
  `msnrobot` varchar(15) NOT NULL default '',
  `msncstatus` tinyint(1) NOT NULL default '0',
  `videopic` varchar(32) NOT NULL default '',
  `birthyear` smallint(6) unsigned NOT NULL default '0',
  `birthmonth` tinyint(3) unsigned NOT NULL default '0',
  `birthday` tinyint(3) unsigned NOT NULL default '0',
  `blood` varchar(5) NOT NULL default '',
  `marry` tinyint(1) NOT NULL default '0',
  `birthprovince` varchar(20) NOT NULL default '',
  `birthcity` varchar(20) NOT NULL default '',
  `resideprovince` varchar(20) NOT NULL default '',
  `residecity` varchar(20) NOT NULL default '',
  `note` text NOT NULL,
  `spacenote` text NOT NULL,
  `authstr` varchar(20) NOT NULL default '',
  `theme` varchar(20) NOT NULL default '',
  `nocss` tinyint(1) NOT NULL default '0',
  `menunum` smallint(6) unsigned NOT NULL default '0',
  `css` text NOT NULL,
  `privacy` text NOT NULL,
  `friend` mediumtext NOT NULL,
  `feedfriend` mediumtext NOT NULL,
  `sendmail` text NOT NULL,
  `magicstar` tinyint(1) NOT NULL default '0',
  `magicexpire` int(10) unsigned NOT NULL default '0',
  `timeoffset` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_spacefield
-- ----------------------------
INSERT INTO `uchome_spacefield` VALUES ('1', '0', '', '', '0', '', '', '', '', '0', '', '0', '0', '0', '', '0', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '0', '0', '');

-- ----------------------------
-- Table structure for `uchome_spaceinfo`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_spaceinfo`;
CREATE TABLE `uchome_spaceinfo` (
  `infoid` mediumint(8) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `type` varchar(20) NOT NULL default '',
  `subtype` varchar(20) NOT NULL default '',
  `title` text NOT NULL,
  `subtitle` varchar(255) NOT NULL default '',
  `friend` tinyint(1) NOT NULL default '0',
  `startyear` smallint(6) unsigned NOT NULL default '0',
  `endyear` smallint(6) unsigned NOT NULL default '0',
  `startmonth` smallint(6) unsigned NOT NULL default '0',
  `endmonth` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`infoid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_spaceinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_spacelog`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_spacelog`;
CREATE TABLE `uchome_spacelog` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` char(15) NOT NULL default '',
  `opuid` mediumint(8) unsigned NOT NULL default '0',
  `opusername` char(15) NOT NULL default '',
  `flag` tinyint(1) NOT NULL default '0',
  `expiration` int(10) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_spacelog
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_stat`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_stat`;
CREATE TABLE `uchome_stat` (
  `daytime` int(10) unsigned NOT NULL default '0',
  `login` smallint(6) unsigned NOT NULL default '0',
  `register` smallint(6) unsigned NOT NULL default '0',
  `invite` smallint(6) unsigned NOT NULL default '0',
  `appinvite` smallint(6) unsigned NOT NULL default '0',
  `doing` smallint(6) unsigned NOT NULL default '0',
  `blog` smallint(6) unsigned NOT NULL default '0',
  `pic` smallint(6) unsigned NOT NULL default '0',
  `poll` smallint(6) unsigned NOT NULL default '0',
  `event` smallint(6) unsigned NOT NULL default '0',
  `share` smallint(6) unsigned NOT NULL default '0',
  `thread` smallint(6) unsigned NOT NULL default '0',
  `docomment` smallint(6) unsigned NOT NULL default '0',
  `blogcomment` smallint(6) unsigned NOT NULL default '0',
  `piccomment` smallint(6) unsigned NOT NULL default '0',
  `pollcomment` smallint(6) unsigned NOT NULL default '0',
  `pollvote` smallint(6) unsigned NOT NULL default '0',
  `eventcomment` smallint(6) unsigned NOT NULL default '0',
  `eventjoin` smallint(6) unsigned NOT NULL default '0',
  `sharecomment` smallint(6) unsigned NOT NULL default '0',
  `post` smallint(6) unsigned NOT NULL default '0',
  `wall` smallint(6) unsigned NOT NULL default '0',
  `poke` smallint(6) unsigned NOT NULL default '0',
  `click` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`daytime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_stat
-- ----------------------------
INSERT INTO `uchome_stat` VALUES ('20131224', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_stat` VALUES ('20140126', '1', '0', '0', '0', '0', '0', '26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_stat` VALUES ('20140127', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_stat` VALUES ('20140128', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_stat` VALUES ('20140207', '0', '0', '0', '0', '0', '0', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `uchome_stat` VALUES ('20140208', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `uchome_statuser`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_statuser`;
CREATE TABLE `uchome_statuser` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `daytime` int(10) unsigned NOT NULL default '0',
  `type` char(20) NOT NULL default '',
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_statuser
-- ----------------------------
INSERT INTO `uchome_statuser` VALUES ('1', '0', 'login');

-- ----------------------------
-- Table structure for `uchome_tag`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_tag`;
CREATE TABLE `uchome_tag` (
  `tagid` mediumint(8) unsigned NOT NULL auto_increment,
  `tagname` char(30) NOT NULL default '',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `blognum` smallint(6) unsigned NOT NULL default '0',
  `close` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`tagid`),
  KEY `tagname` (`tagname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_tagblog`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_tagblog`;
CREATE TABLE `uchome_tagblog` (
  `tagid` mediumint(8) unsigned NOT NULL default '0',
  `blogid` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`tagid`,`blogid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_tagblog
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_tagspace`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_tagspace`;
CREATE TABLE `uchome_tagspace` (
  `tagid` mediumint(8) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` char(15) NOT NULL default '',
  `grade` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`tagid`,`uid`),
  KEY `grade` (`tagid`,`grade`),
  KEY `uid` (`uid`,`grade`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_tagspace
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_task`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_task`;
CREATE TABLE `uchome_task` (
  `taskid` smallint(6) unsigned NOT NULL auto_increment,
  `available` tinyint(1) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `note` text NOT NULL,
  `num` mediumint(8) unsigned NOT NULL default '0',
  `maxnum` mediumint(8) unsigned NOT NULL default '0',
  `image` varchar(150) NOT NULL default '',
  `filename` varchar(50) NOT NULL default '',
  `starttime` int(10) unsigned NOT NULL default '0',
  `endtime` int(10) unsigned NOT NULL default '0',
  `nexttime` int(10) unsigned NOT NULL default '0',
  `nexttype` varchar(20) NOT NULL default '',
  `credit` smallint(6) NOT NULL default '0',
  `displayorder` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`taskid`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_task
-- ----------------------------
INSERT INTO `uchome_task` VALUES ('1', '1', '更新一下自己的头像', '头像就是你在这里的个人形象。<br>设置自己的头像后，会让更多的朋友记住您。', '0', '0', 'image/task/avatar.gif', 'avatar.php', '0', '0', '0', '', '20', '1');
INSERT INTO `uchome_task` VALUES ('2', '1', '将个人资料补充完整', '把自己的个人资料填写完整吧。<br>这样您会被更多的朋友找到的，系统也会帮您找到朋友。', '0', '0', 'image/task/profile.gif', 'profile.php', '0', '0', '0', '2', '20', '0');
INSERT INTO `uchome_task` VALUES ('3', '1', '发表自己的第一篇日志', '现在，就写下自己的第一篇日志吧。<br>与大家一起分享自己的生活感悟。', '0', '0', 'image/task/blog.gif', 'blog.php', '0', '0', '0', '', '5', '3');
INSERT INTO `uchome_task` VALUES ('4', '1', '寻找并添加五位好友', '有了好友，您发的日志、图片等会被好友及时看到并传播出去；<br>您也会在首页方便及时的看到好友的最新动态。', '0', '0', 'image/task/friend.gif', 'friend.php', '0', '0', '0', '', '50', '4');
INSERT INTO `uchome_task` VALUES ('5', '1', '验证激活自己的邮箱', '填写自己真实的邮箱地址并验证通过。<br>您可以在忘记密码的时候使用该邮箱取回自己的密码；<br>还可以及时接受站内的好友通知等等。', '0', '0', 'image/task/email.gif', 'email.php', '0', '0', '0', '', '10', '5');
INSERT INTO `uchome_task` VALUES ('6', '1', '邀请10个新朋友加入', '邀请一下自己的QQ好友或者邮箱联系人，让亲朋好友一起来加入我们吧。', '0', '0', 'image/task/friend.gif', 'invite.php', '0', '0', '0', '', '100', '6');
INSERT INTO `uchome_task` VALUES ('7', '1', '领取每日访问大礼包', '每天登录访问自己的主页，就可领取大礼包。', '0', '0', 'image/task/gift.gif', 'gift.php', '0', '0', '0', 'day', '5', '99');

-- ----------------------------
-- Table structure for `uchome_thread`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_thread`;
CREATE TABLE `uchome_thread` (
  `tid` mediumint(8) unsigned NOT NULL auto_increment,
  `topicid` mediumint(8) unsigned NOT NULL default '0',
  `tagid` mediumint(8) unsigned NOT NULL default '0',
  `eventid` mediumint(8) unsigned NOT NULL default '0',
  `subject` char(80) NOT NULL default '',
  `magiccolor` tinyint(6) unsigned NOT NULL default '0',
  `magicegg` tinyint(6) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` char(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `viewnum` mediumint(8) unsigned NOT NULL default '0',
  `replynum` mediumint(8) unsigned NOT NULL default '0',
  `lastpost` int(10) unsigned NOT NULL default '0',
  `lastauthor` char(15) NOT NULL default '',
  `lastauthorid` mediumint(8) unsigned NOT NULL default '0',
  `displayorder` tinyint(1) unsigned NOT NULL default '0',
  `digest` tinyint(1) NOT NULL default '0',
  `hot` mediumint(8) unsigned NOT NULL default '0',
  `click_11` smallint(6) unsigned NOT NULL default '0',
  `click_12` smallint(6) unsigned NOT NULL default '0',
  `click_13` smallint(6) unsigned NOT NULL default '0',
  `click_14` smallint(6) unsigned NOT NULL default '0',
  `click_15` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`tid`),
  KEY `tagid` (`tagid`,`displayorder`,`lastpost`),
  KEY `uid` (`uid`,`lastpost`),
  KEY `lastpost` (`lastpost`),
  KEY `topicid` (`topicid`,`dateline`),
  KEY `eventid` (`eventid`,`lastpost`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_thread
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_topic`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_topic`;
CREATE TABLE `uchome_topic` (
  `topicid` mediumint(8) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `subject` varchar(80) NOT NULL default '',
  `message` mediumtext NOT NULL,
  `jointype` varchar(255) NOT NULL default '',
  `joingid` varchar(255) NOT NULL default '',
  `pic` varchar(100) NOT NULL default '',
  `thumb` tinyint(1) NOT NULL default '0',
  `remote` tinyint(1) NOT NULL default '0',
  `joinnum` mediumint(8) unsigned NOT NULL default '0',
  `lastpost` int(10) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `endtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`topicid`),
  KEY `lastpost` (`lastpost`),
  KEY `joinnum` (`joinnum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_topic
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_topicuser`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_topicuser`;
CREATE TABLE `uchome_topicuser` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `topicid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`,`dateline`),
  KEY `topicid` (`topicid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_topicuser
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_userapp`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_userapp`;
CREATE TABLE `uchome_userapp` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `appid` mediumint(8) unsigned NOT NULL default '0',
  `appname` varchar(60) NOT NULL default '',
  `privacy` tinyint(1) NOT NULL default '0',
  `allowsidenav` tinyint(1) NOT NULL default '0',
  `allowfeed` tinyint(1) NOT NULL default '0',
  `allowprofilelink` tinyint(1) NOT NULL default '0',
  `narrow` tinyint(1) NOT NULL default '0',
  `menuorder` smallint(6) NOT NULL default '0',
  `displayorder` smallint(6) NOT NULL default '0',
  KEY `uid` (`uid`,`appid`),
  KEY `menuorder` (`uid`,`menuorder`),
  KEY `displayorder` (`uid`,`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_userapp
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_userappfield`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_userappfield`;
CREATE TABLE `uchome_userappfield` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `appid` mediumint(8) unsigned NOT NULL default '0',
  `profilelink` text NOT NULL,
  `myml` text NOT NULL,
  KEY `uid` (`uid`,`appid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_userappfield
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_userevent`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_userevent`;
CREATE TABLE `uchome_userevent` (
  `eventid` mediumint(8) unsigned NOT NULL default '0',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `status` tinyint(4) NOT NULL default '0',
  `fellow` mediumint(8) unsigned NOT NULL default '0',
  `template` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`eventid`,`uid`),
  KEY `uid` (`uid`,`dateline`),
  KEY `eventid` (`eventid`,`status`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_userevent
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_usergroup`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_usergroup`;
CREATE TABLE `uchome_usergroup` (
  `gid` smallint(6) unsigned NOT NULL auto_increment,
  `grouptitle` varchar(20) NOT NULL default '',
  `system` tinyint(1) NOT NULL default '0',
  `banvisit` tinyint(1) NOT NULL default '0',
  `explower` int(10) NOT NULL default '0',
  `maxfriendnum` smallint(6) unsigned NOT NULL default '0',
  `maxattachsize` int(10) unsigned NOT NULL default '0',
  `allowhtml` tinyint(1) NOT NULL default '0',
  `allowcomment` tinyint(1) NOT NULL default '0',
  `searchinterval` smallint(6) unsigned NOT NULL default '0',
  `searchignore` tinyint(1) NOT NULL default '0',
  `postinterval` smallint(6) unsigned NOT NULL default '0',
  `spamignore` tinyint(1) NOT NULL default '0',
  `videophotoignore` tinyint(1) NOT NULL default '0',
  `allowblog` tinyint(1) NOT NULL default '0',
  `allowdoing` tinyint(1) NOT NULL default '0',
  `allowupload` tinyint(1) NOT NULL default '0',
  `allowshare` tinyint(1) NOT NULL default '0',
  `allowmtag` tinyint(1) NOT NULL default '0',
  `allowthread` tinyint(1) NOT NULL default '0',
  `allowpost` tinyint(1) NOT NULL default '0',
  `allowcss` tinyint(1) NOT NULL default '0',
  `allowpoke` tinyint(1) NOT NULL default '0',
  `allowfriend` tinyint(1) NOT NULL default '0',
  `allowpoll` tinyint(1) NOT NULL default '0',
  `allowclick` tinyint(1) NOT NULL default '0',
  `allowevent` tinyint(1) NOT NULL default '0',
  `allowmagic` tinyint(1) NOT NULL default '0',
  `allowpm` tinyint(1) NOT NULL default '0',
  `allowviewvideopic` tinyint(1) NOT NULL default '0',
  `allowmyop` tinyint(1) NOT NULL default '0',
  `allowtopic` tinyint(1) NOT NULL default '0',
  `allowstat` tinyint(1) NOT NULL default '0',
  `magicdiscount` tinyint(1) NOT NULL default '0',
  `verifyevent` tinyint(1) NOT NULL default '0',
  `edittrail` tinyint(1) NOT NULL default '0',
  `domainlength` smallint(6) unsigned NOT NULL default '0',
  `closeignore` tinyint(1) NOT NULL default '0',
  `seccode` tinyint(1) NOT NULL default '0',
  `color` varchar(10) NOT NULL default '',
  `icon` varchar(100) NOT NULL default '',
  `manageconfig` tinyint(1) NOT NULL default '0',
  `managenetwork` tinyint(1) NOT NULL default '0',
  `manageprofilefield` tinyint(1) NOT NULL default '0',
  `manageprofield` tinyint(1) NOT NULL default '0',
  `manageusergroup` tinyint(1) NOT NULL default '0',
  `managefeed` tinyint(1) NOT NULL default '0',
  `manageshare` tinyint(1) NOT NULL default '0',
  `managedoing` tinyint(1) NOT NULL default '0',
  `manageblog` tinyint(1) NOT NULL default '0',
  `managetag` tinyint(1) NOT NULL default '0',
  `managetagtpl` tinyint(1) NOT NULL default '0',
  `managealbum` tinyint(1) NOT NULL default '0',
  `managecomment` tinyint(1) NOT NULL default '0',
  `managemtag` tinyint(1) NOT NULL default '0',
  `managethread` tinyint(1) NOT NULL default '0',
  `manageevent` tinyint(1) NOT NULL default '0',
  `manageeventclass` tinyint(1) NOT NULL default '0',
  `managecensor` tinyint(1) NOT NULL default '0',
  `managead` tinyint(1) NOT NULL default '0',
  `managesitefeed` tinyint(1) NOT NULL default '0',
  `managebackup` tinyint(1) NOT NULL default '0',
  `manageblock` tinyint(1) NOT NULL default '0',
  `managetemplate` tinyint(1) NOT NULL default '0',
  `managestat` tinyint(1) NOT NULL default '0',
  `managecache` tinyint(1) NOT NULL default '0',
  `managecredit` tinyint(1) NOT NULL default '0',
  `managecron` tinyint(1) NOT NULL default '0',
  `managename` tinyint(1) NOT NULL default '0',
  `manageapp` tinyint(1) NOT NULL default '0',
  `managetask` tinyint(1) NOT NULL default '0',
  `managereport` tinyint(1) NOT NULL default '0',
  `managepoll` tinyint(1) NOT NULL default '0',
  `manageclick` tinyint(1) NOT NULL default '0',
  `managemagic` tinyint(1) NOT NULL default '0',
  `managemagiclog` tinyint(1) NOT NULL default '0',
  `managebatch` tinyint(1) NOT NULL default '0',
  `managedelspace` tinyint(1) NOT NULL default '0',
  `managetopic` tinyint(1) NOT NULL default '0',
  `manageip` tinyint(1) NOT NULL default '0',
  `managehotuser` tinyint(1) NOT NULL default '0',
  `managedefaultuser` tinyint(1) NOT NULL default '0',
  `managespacegroup` tinyint(1) NOT NULL default '0',
  `managespaceinfo` tinyint(1) NOT NULL default '0',
  `managespacecredit` tinyint(1) NOT NULL default '0',
  `managespacenote` tinyint(1) NOT NULL default '0',
  `managevideophoto` tinyint(1) NOT NULL default '0',
  `managelog` tinyint(1) NOT NULL default '0',
  `magicaward` text NOT NULL,
  PRIMARY KEY  (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_usergroup
-- ----------------------------
INSERT INTO `uchome_usergroup` VALUES ('1', '站点管理员', '-1', '0', '0', '0', '0', '1', '1', '0', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '1', '1', '0', 'red', 'image/group/admin.gif', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '');
INSERT INTO `uchome_usergroup` VALUES ('2', '信息管理员', '-1', '0', '0', '0', '0', '1', '1', '0', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '3', '1', '0', 'blue', 'image/group/infor.gif', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `uchome_usergroup` VALUES ('3', '贵宾VIP', '1', '0', '0', '0', '0', '1', '1', '0', '1', '0', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '3', '0', '0', 'green', 'image/group/vip.gif', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `uchome_usergroup` VALUES ('4', '受限会员', '0', '0', '-999999999', '10', '10', '0', '0', '600', '0', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '1', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `uchome_usergroup` VALUES ('5', '普通会员', '0', '0', '0', '100', '20', '0', '1', '60', '0', '60', '0', '0', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `uchome_usergroup` VALUES ('6', '中级会员', '0', '0', '100', '200', '50', '0', '1', '30', '0', '30', '0', '0', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '5', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `uchome_usergroup` VALUES ('7', '高级会员', '0', '0', '1000', '300', '100', '1', '1', '10', '1', '10', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '3', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `uchome_usergroup` VALUES ('8', '禁止发言', '-1', '0', '0', '1', '1', '0', '0', '9999', '0', '9999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '99', '0', '1', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `uchome_usergroup` VALUES ('9', '禁止访问', '-1', '1', '0', '1', '1', '0', '0', '9999', '0', '9999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '99', '0', '1', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');

-- ----------------------------
-- Table structure for `uchome_userlog`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_userlog`;
CREATE TABLE `uchome_userlog` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `action` char(10) NOT NULL default '',
  `type` tinyint(1) NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_userlog
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_usermagic`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_usermagic`;
CREATE TABLE `uchome_usermagic` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` char(15) NOT NULL default '',
  `mid` varchar(15) NOT NULL default '',
  `count` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_usermagic
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_usertask`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_usertask`;
CREATE TABLE `uchome_usertask` (
  `uid` mediumint(8) unsigned NOT NULL,
  `username` char(15) NOT NULL default '',
  `taskid` smallint(6) unsigned NOT NULL default '0',
  `credit` smallint(6) NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `isignore` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`uid`,`taskid`),
  KEY `isignore` (`isignore`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_usertask
-- ----------------------------

-- ----------------------------
-- Table structure for `uchome_visitor`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_visitor`;
CREATE TABLE `uchome_visitor` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `vuid` mediumint(8) unsigned NOT NULL default '0',
  `vusername` char(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`,`vuid`),
  KEY `dateline` (`uid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_visitor
-- ----------------------------

-- ----------------------------
-- Table structure for `uc_admins`
-- ----------------------------
DROP TABLE IF EXISTS `uc_admins`;
CREATE TABLE `uc_admins` (
  `uid` mediumint(8) unsigned NOT NULL auto_increment,
  `username` char(15) NOT NULL default '',
  `allowadminsetting` tinyint(1) NOT NULL default '0',
  `allowadminapp` tinyint(1) NOT NULL default '0',
  `allowadminuser` tinyint(1) NOT NULL default '0',
  `allowadminbadword` tinyint(1) NOT NULL default '0',
  `allowadmintag` tinyint(1) NOT NULL default '0',
  `allowadminpm` tinyint(1) NOT NULL default '0',
  `allowadmincredits` tinyint(1) NOT NULL default '0',
  `allowadmindomain` tinyint(1) NOT NULL default '0',
  `allowadmindb` tinyint(1) NOT NULL default '0',
  `allowadminnote` tinyint(1) NOT NULL default '0',
  `allowadmincache` tinyint(1) NOT NULL default '0',
  `allowadminlog` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_admins
-- ----------------------------

-- ----------------------------
-- Table structure for `uc_applications`
-- ----------------------------
DROP TABLE IF EXISTS `uc_applications`;
CREATE TABLE `uc_applications` (
  `appid` smallint(6) unsigned NOT NULL auto_increment,
  `type` char(16) NOT NULL default '',
  `name` char(20) NOT NULL default '',
  `url` char(255) NOT NULL default '',
  `authkey` char(255) NOT NULL default '',
  `ip` char(15) NOT NULL default '',
  `viewprourl` char(255) NOT NULL,
  `apifilename` char(30) NOT NULL default 'uc.php',
  `charset` char(8) NOT NULL default '',
  `dbcharset` char(8) NOT NULL default '',
  `synlogin` tinyint(1) NOT NULL default '0',
  `recvnote` tinyint(1) default '0',
  `extra` mediumtext NOT NULL,
  `tagtemplates` mediumtext NOT NULL,
  PRIMARY KEY  (`appid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_applications
-- ----------------------------
INSERT INTO `uc_applications` VALUES ('1', 'UCHOME', '个人家园', 'http://localhost/upload/home', 'q0B0vfb722tdZa5dL8f96bBc8500N5b10208s9t9J6s0d77efbG7V2edY1Cf9dF8', '', '', 'uc.php', 'utf-8', 'utf8', '1', '1', '', '<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\r\n<root>\r\n	<item id=\"template\"><![CDATA[<a href=\"{url}\" target=\"_blank\">{subject}</a>]]></item>\r\n	<item id=\"fields\">\r\n		<item id=\"subject\"><![CDATA[日志标题]]></item>\r\n		<item id=\"uid\"><![CDATA[用户 ID]]></item>\r\n		<item id=\"username\"><![CDATA[用户名]]></item>\r\n		<item id=\"dateline\"><![CDATA[日期]]></item>\r\n		<item id=\"spaceurl\"><![CDATA[空间地址]]></item>\r\n		<item id=\"url\"><![CDATA[日志地址]]></item>\r\n	</item>\r\n</root>');
INSERT INTO `uc_applications` VALUES ('2', 'DISCUZ', 'Discuz!', 'http://localhost/upload/bbs', 'i8RbJ20d6219f62b2044NeX4p3Rdt9S810cbNbyeJ9k7RbI5E331Zebeq7y3O6F5', '', '', 'uc.php', 'utf-8', 'utf8', '1', '1', '', '<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\r\n<root>\r\n	<item id=\"template\"><![CDATA[<a href=\"{url}\" target=\"_blank\">{subject}</a>]]></item>\r\n	<item id=\"fields\">\r\n		<item id=\"subject\"><![CDATA[标题]]></item>\r\n		<item id=\"uid\"><![CDATA[用户 ID]]></item>\r\n		<item id=\"username\"><![CDATA[发帖者]]></item>\r\n		<item id=\"dateline\"><![CDATA[日期]]></item>\r\n		<item id=\"url\"><![CDATA[主题地址]]></item>\r\n	</item>\r\n</root>');

-- ----------------------------
-- Table structure for `uc_badwords`
-- ----------------------------
DROP TABLE IF EXISTS `uc_badwords`;
CREATE TABLE `uc_badwords` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `admin` varchar(15) NOT NULL default '',
  `find` varchar(255) NOT NULL default '',
  `replacement` varchar(255) NOT NULL default '',
  `findpattern` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `find` (`find`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_badwords
-- ----------------------------

-- ----------------------------
-- Table structure for `uc_domains`
-- ----------------------------
DROP TABLE IF EXISTS `uc_domains`;
CREATE TABLE `uc_domains` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `domain` char(40) NOT NULL default '',
  `ip` char(15) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_domains
-- ----------------------------

-- ----------------------------
-- Table structure for `uc_failedlogins`
-- ----------------------------
DROP TABLE IF EXISTS `uc_failedlogins`;
CREATE TABLE `uc_failedlogins` (
  `ip` char(15) NOT NULL default '',
  `count` tinyint(1) unsigned NOT NULL default '0',
  `lastupdate` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_failedlogins
-- ----------------------------

-- ----------------------------
-- Table structure for `uc_feeds`
-- ----------------------------
DROP TABLE IF EXISTS `uc_feeds`;
CREATE TABLE `uc_feeds` (
  `feedid` mediumint(8) unsigned NOT NULL auto_increment,
  `appid` varchar(30) NOT NULL default '',
  `icon` varchar(30) NOT NULL default '',
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `hash_template` varchar(32) NOT NULL default '',
  `hash_data` varchar(32) NOT NULL default '',
  `title_template` text NOT NULL,
  `title_data` text NOT NULL,
  `body_template` text NOT NULL,
  `body_data` text NOT NULL,
  `body_general` text NOT NULL,
  `image_1` varchar(255) NOT NULL default '',
  `image_1_link` varchar(255) NOT NULL default '',
  `image_2` varchar(255) NOT NULL default '',
  `image_2_link` varchar(255) NOT NULL default '',
  `image_3` varchar(255) NOT NULL default '',
  `image_3_link` varchar(255) NOT NULL default '',
  `image_4` varchar(255) NOT NULL default '',
  `image_4_link` varchar(255) NOT NULL default '',
  `target_ids` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`feedid`),
  KEY `uid` (`uid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_feeds
-- ----------------------------

-- ----------------------------
-- Table structure for `uc_friends`
-- ----------------------------
DROP TABLE IF EXISTS `uc_friends`;
CREATE TABLE `uc_friends` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `friendid` mediumint(8) unsigned NOT NULL default '0',
  `direction` tinyint(1) NOT NULL default '0',
  `version` int(10) unsigned NOT NULL auto_increment,
  `delstatus` tinyint(1) NOT NULL default '0',
  `comment` char(255) NOT NULL default '',
  PRIMARY KEY  (`version`),
  KEY `uid` (`uid`),
  KEY `friendid` (`friendid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_friends
-- ----------------------------

-- ----------------------------
-- Table structure for `uc_mailqueue`
-- ----------------------------
DROP TABLE IF EXISTS `uc_mailqueue`;
CREATE TABLE `uc_mailqueue` (
  `mailid` int(10) unsigned NOT NULL auto_increment,
  `touid` mediumint(8) unsigned NOT NULL default '0',
  `tomail` varchar(32) NOT NULL,
  `frommail` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `charset` varchar(15) NOT NULL,
  `htmlon` tinyint(1) NOT NULL default '0',
  `level` tinyint(1) NOT NULL default '1',
  `dateline` int(10) unsigned NOT NULL default '0',
  `failures` tinyint(3) unsigned NOT NULL default '0',
  `appid` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`mailid`),
  KEY `appid` (`appid`),
  KEY `level` (`level`,`failures`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_mailqueue
-- ----------------------------

-- ----------------------------
-- Table structure for `uc_memberfields`
-- ----------------------------
DROP TABLE IF EXISTS `uc_memberfields`;
CREATE TABLE `uc_memberfields` (
  `uid` mediumint(8) unsigned NOT NULL,
  `blacklist` text NOT NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_memberfields
-- ----------------------------
INSERT INTO `uc_memberfields` VALUES ('1', '');

-- ----------------------------
-- Table structure for `uc_members`
-- ----------------------------
DROP TABLE IF EXISTS `uc_members`;
CREATE TABLE `uc_members` (
  `uid` mediumint(8) unsigned NOT NULL auto_increment,
  `username` char(15) NOT NULL default '',
  `password` char(32) NOT NULL default '',
  `email` char(32) NOT NULL default '',
  `myid` char(30) NOT NULL default '',
  `myidkey` char(16) NOT NULL default '',
  `regip` char(15) NOT NULL default '',
  `regdate` int(10) unsigned NOT NULL default '0',
  `lastloginip` int(10) NOT NULL default '0',
  `lastlogintime` int(10) unsigned NOT NULL default '0',
  `salt` char(6) NOT NULL,
  `secques` char(8) NOT NULL default '',
  PRIMARY KEY  (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_members
-- ----------------------------
INSERT INTO `uc_members` VALUES ('1', 'admin', '0fc66aa058807c6815fb03c5a9a58573', 'webmastor@yourdomain.com', '', '', '127.0.0.1', '1387876401', '0', '0', '18d9be', '');

-- ----------------------------
-- Table structure for `uc_mergemembers`
-- ----------------------------
DROP TABLE IF EXISTS `uc_mergemembers`;
CREATE TABLE `uc_mergemembers` (
  `appid` smallint(6) unsigned NOT NULL,
  `username` char(15) NOT NULL,
  PRIMARY KEY  (`appid`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_mergemembers
-- ----------------------------

-- ----------------------------
-- Table structure for `uc_newpm`
-- ----------------------------
DROP TABLE IF EXISTS `uc_newpm`;
CREATE TABLE `uc_newpm` (
  `uid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_newpm
-- ----------------------------

-- ----------------------------
-- Table structure for `uc_notelist`
-- ----------------------------
DROP TABLE IF EXISTS `uc_notelist`;
CREATE TABLE `uc_notelist` (
  `noteid` int(10) unsigned NOT NULL auto_increment,
  `operation` char(32) NOT NULL,
  `closed` tinyint(4) NOT NULL default '0',
  `totalnum` smallint(6) unsigned NOT NULL default '0',
  `succeednum` smallint(6) unsigned NOT NULL default '0',
  `getdata` mediumtext NOT NULL,
  `postdata` mediumtext NOT NULL,
  `dateline` int(10) unsigned NOT NULL default '0',
  `pri` tinyint(3) NOT NULL default '0',
  `app1` tinyint(4) NOT NULL,
  `app2` tinyint(4) NOT NULL,
  PRIMARY KEY  (`noteid`),
  KEY `closed` (`closed`,`pri`,`noteid`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_notelist
-- ----------------------------
INSERT INTO `uc_notelist` VALUES ('1', 'updateapps', '1', '5', '0', '', '<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\r\n<root>\r\n	<item id=\"1\">\r\n		<item id=\"appid\"><![CDATA[1]]></item>\r\n		<item id=\"type\"><![CDATA[UCHOME]]></item>\r\n		<item id=\"name\"><![CDATA[个人家园]]></item>\r\n		<item id=\"url\"><![CDATA[http://localhost/upload/home]]></item>\r\n		<item id=\"ip\"><![CDATA[]]></item>\r\n		<item id=\"charset\"><![CDATA[utf-8]]></item>\r\n		<item id=\"synlogin\"><![CDATA[1]]></item>\r\n		<item id=\"extra\"><![CDATA[]]></item>\r\n	</item>\r\n	<item id=\"UC_API\"><![CDATA[http://localhost/upload/ucenter]]></item>\r\n</root>', '1387876431', '0', '-5', '0');
INSERT INTO `uc_notelist` VALUES ('2', 'updateapps', '0', '2', '0', '', '<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\r\n<root>\r\n	<item id=\"1\">\r\n		<item id=\"appid\"><![CDATA[1]]></item>\r\n		<item id=\"type\"><![CDATA[UCHOME]]></item>\r\n		<item id=\"name\"><![CDATA[个人家园]]></item>\r\n		<item id=\"url\"><![CDATA[http://localhost/upload/home]]></item>\r\n		<item id=\"ip\"><![CDATA[]]></item>\r\n		<item id=\"charset\"><![CDATA[utf-8]]></item>\r\n		<item id=\"synlogin\"><![CDATA[1]]></item>\r\n		<item id=\"extra\"><![CDATA[]]></item>\r\n	</item>\r\n	<item id=\"2\">\r\n		<item id=\"appid\"><![CDATA[2]]></item>\r\n		<item id=\"type\"><![CDATA[DISCUZ]]></item>\r\n		<item id=\"name\"><![CDATA[Discuz!]]></item>\r\n		<item id=\"url\"><![CDATA[http://localhost/upload/bbs]]></item>\r\n		<item id=\"ip\"><![CDATA[]]></item>\r\n		<item id=\"charset\"><![CDATA[utf-8]]></item>\r\n		<item id=\"synlogin\"><![CDATA[1]]></item>\r\n		<item id=\"extra\"><![CDATA[]]></item>\r\n	</item>\r\n	<item id=\"UC_API\"><![CDATA[http://localhost/upload/ucenter]]></item>\r\n</root>', '1387876493', '0', '0', '-2');

-- ----------------------------
-- Table structure for `uc_pms`
-- ----------------------------
DROP TABLE IF EXISTS `uc_pms`;
CREATE TABLE `uc_pms` (
  `pmid` int(10) unsigned NOT NULL auto_increment,
  `msgfrom` varchar(15) NOT NULL default '',
  `msgfromid` mediumint(8) unsigned NOT NULL default '0',
  `msgtoid` mediumint(8) unsigned NOT NULL default '0',
  `folder` enum('inbox','outbox') NOT NULL default 'inbox',
  `new` tinyint(1) NOT NULL default '0',
  `subject` varchar(75) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL default '0',
  `related` int(10) unsigned NOT NULL default '0',
  `fromappid` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`pmid`),
  KEY `msgtoid` (`msgtoid`,`folder`,`dateline`),
  KEY `msgfromid` (`msgfromid`,`folder`,`dateline`),
  KEY `related` (`related`),
  KEY `getnum` (`msgtoid`,`folder`,`delstatus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_pms
-- ----------------------------

-- ----------------------------
-- Table structure for `uc_protectedmembers`
-- ----------------------------
DROP TABLE IF EXISTS `uc_protectedmembers`;
CREATE TABLE `uc_protectedmembers` (
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `username` char(15) NOT NULL default '',
  `appid` tinyint(1) unsigned NOT NULL default '0',
  `dateline` int(10) unsigned NOT NULL default '0',
  `admin` char(15) NOT NULL default '0',
  UNIQUE KEY `username` (`username`,`appid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_protectedmembers
-- ----------------------------
INSERT INTO `uc_protectedmembers` VALUES ('1', 'admin', '1', '1387876401', 'admin');
INSERT INTO `uc_protectedmembers` VALUES ('1', 'admin', '2', '1387876462', '');

-- ----------------------------
-- Table structure for `uc_settings`
-- ----------------------------
DROP TABLE IF EXISTS `uc_settings`;
CREATE TABLE `uc_settings` (
  `k` varchar(32) NOT NULL default '',
  `v` text NOT NULL,
  PRIMARY KEY  (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_settings
-- ----------------------------
INSERT INTO `uc_settings` VALUES ('accessemail', '');
INSERT INTO `uc_settings` VALUES ('censoremail', '');
INSERT INTO `uc_settings` VALUES ('censorusername', '');
INSERT INTO `uc_settings` VALUES ('dateformat', 'y-n-j');
INSERT INTO `uc_settings` VALUES ('doublee', '1');
INSERT INTO `uc_settings` VALUES ('nextnotetime', '0');
INSERT INTO `uc_settings` VALUES ('timeoffset', '28800');
INSERT INTO `uc_settings` VALUES ('pmlimit1day', '100');
INSERT INTO `uc_settings` VALUES ('pmfloodctrl', '15');
INSERT INTO `uc_settings` VALUES ('pmcenter', '1');
INSERT INTO `uc_settings` VALUES ('sendpmseccode', '1');
INSERT INTO `uc_settings` VALUES ('pmsendregdays', '0');
INSERT INTO `uc_settings` VALUES ('maildefault', 'username@21cn.com');
INSERT INTO `uc_settings` VALUES ('mailsend', '1');
INSERT INTO `uc_settings` VALUES ('mailserver', 'smtp.21cn.com');
INSERT INTO `uc_settings` VALUES ('mailport', '25');
INSERT INTO `uc_settings` VALUES ('mailauth', '1');
INSERT INTO `uc_settings` VALUES ('mailfrom', 'UCenter <username@21cn.com>');
INSERT INTO `uc_settings` VALUES ('mailauth_username', 'username@21cn.com');
INSERT INTO `uc_settings` VALUES ('mailauth_password', 'password');
INSERT INTO `uc_settings` VALUES ('maildelimiter', '0');
INSERT INTO `uc_settings` VALUES ('mailusername', '1');
INSERT INTO `uc_settings` VALUES ('mailsilent', '1');
INSERT INTO `uc_settings` VALUES ('version', '1.5.0');

-- ----------------------------
-- Table structure for `uc_sqlcache`
-- ----------------------------
DROP TABLE IF EXISTS `uc_sqlcache`;
CREATE TABLE `uc_sqlcache` (
  `sqlid` char(6) NOT NULL default '',
  `data` char(100) NOT NULL,
  `expiry` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`sqlid`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_sqlcache
-- ----------------------------

-- ----------------------------
-- Table structure for `uc_tags`
-- ----------------------------
DROP TABLE IF EXISTS `uc_tags`;
CREATE TABLE `uc_tags` (
  `tagname` char(20) NOT NULL,
  `appid` smallint(6) unsigned NOT NULL default '0',
  `data` mediumtext,
  `expiration` int(10) unsigned NOT NULL,
  KEY `tagname` (`tagname`,`appid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_tags
-- ----------------------------

-- ----------------------------
-- Table structure for `uc_vars`
-- ----------------------------
DROP TABLE IF EXISTS `uc_vars`;
CREATE TABLE `uc_vars` (
  `name` char(32) NOT NULL default '',
  `value` char(255) NOT NULL default '',
  PRIMARY KEY  (`name`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uc_vars
-- ----------------------------
