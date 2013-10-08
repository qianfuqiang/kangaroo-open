/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : kangaroo

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2013-10-08 18:38:14
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `category_id` varchar(64) DEFAULT NULL,
  `type_id` varchar(64) DEFAULT NULL,
  `create_user_id` varchar(64) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `summary` varchar(1024) DEFAULT NULL,
  `introduction` varchar(4000) DEFAULT NULL,
  `lesson_info` varchar(128) DEFAULT NULL,
  `logo` varchar(64) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  `pay_or_not` int(11) DEFAULT NULL,
  `tag` varchar(128) DEFAULT NULL,
  `create_time` varchar(32) DEFAULT NULL,
  `watch_times` int(11) DEFAULT NULL,
  `reviewed` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('4028483b414deea101414df8fcdf0002', '1', '1', '1', 'Android深入浅出1', '目前Android市面的课程尽皆基础入门篇，讲解一下四大件就草草了事，讲讲操作但却不讲为什么，令人知其然而不知其所以然。因此Sundy有感，录制了这套深入浅出Android视频教程。', '<p><strong>Sundy老师Android学习群：164427941&nbsp;</strong></p>\r\n\r\n<p>有感于目前Android市面的课程尽皆基础入门篇，讲解一下四大件就草草了事，讲讲操作但却不讲为什么，令人知其然而不知其所以然。因此Sundy有感，录制了这套深入浅出Android视频教程。 目前是用一个个的主题，通过分析Framework源代码来分析Android的设计并且熟悉Android的开发过程，让程序员真正知其然而知其所以然，起到一个抛砖引玉的作用 。&nbsp;</p>\r\n\r\n<p>课程疑问咨询QQ：2224343088 874511079</p>\r\n', '总共 25 课时', null, '0.00', '0', ' Android ', '2013-09-25  14:50:1', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b414deea101414e07df310003', '1', '1', '1', 'RedHat5服务器架设视频教程', '如何架设Linux所有服务器的配置通过视频、操作，和个中所遇到问题一一讲解，非常实用的课程', '<p><strong>如何架设Linux所有服务器的配置通过视频、操作，和个中所遇到问题一一讲解，非常实用的课程</strong></p>\r\n', '20 课时', null, '200.00', '1', ' RedHat5', '2013-09-25  14:50:2', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b414deea101414e09bfe10004', '1', '1', '1', '2013新版CCNA认证培训', '本专题是等，拥有丰富的授课经验、深得大家喜欢。■新课程大纲', '<p>CCNA</p>\r\n', '20 课时', '2013-10-08/c21230b8-7771-4be0-b892-b45877844fef.png', '0.00', '0', '  CCNA', '2013-09-25  14:50:3', '3', '1', '0');
INSERT INTO `course` VALUES ('4028483b414deea101414e0ad55e0005', '1', '1', '1', '系统集成项目实现全过程', '系统集成项目实现全过程系统集成项目实现全过程系统集成项目实现全过程', '<h2 style=\"font-style:normal\">系统集成项目实现全过程</h2>\r\n', '20 课时', null, '0.00', '0', ' 系统集成', '2013-09-25  14:50:4', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b414deea101414e0b86750006', '1', '1', '1', 'VMWare WorkStation 10 管理实战', 'VMWare WorkStation 10 管理实战VMWare WorkStation 10 管理实战', '<h2 style=\"font-style:normal\">VMWare WorkStation 10 管理实战</h2>\r\n', '20 课时', null, '0.00', '0', ' VMWare WorkStation 10 管理实战', '2013-09-25  14:50:5', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b414deea101414e0cdc540007', '1', '1', '1', '2012云计算架构师峰会现场演讲课程', '2012云计算架构师峰会现场演讲课程2012云计算架构师峰会现场演讲课程', '<h2 style=\"font-style:normal\">2012云计算架构师峰会现场演讲课程2012云计算架构师峰会现场演讲课程</h2>\r\n', '20 课时', null, '0.00', '0', '云计算', '2013-09-25  14:50:6', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b414deea101414e0d96000008', '1', '1', '1', 'iOS开发预备课程之C语言基础', 'iOS开发预备课程之C语言基础iOS开发预备课程之C语言基础', '<h2 style=\"font-style:normal\">iOS开发预备课程之C语言基础iOS开发预备课程之C语言基础</h2>\r\n', '20 课时', '2013-10-08/f8e5fd20-ebaf-4319-9b46-144ed77f85ef.png', '0.00', '0', ' iOS,C', '2013-09-25  14:50:7', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b414deea101414e0e54450009', '1', '1', '1', '疯狂软件Oracle数据库视频', '疯狂软件Oracle数据库视频疯狂软件Oracle数据库视频疯狂软件Oracle数据库视频', '<h2 style=\"font-style:normal\">疯狂软件Oracle数据库视频</h2>\r\n', '20 课时', '2013-10-08/1b090a6d-7107-450c-8388-3ce50b51bd27.png', '0.00', '0', 'Oracle,数据库', '2013-09-25  14:50:16', '6', '1', '0');
INSERT INTO `course` VALUES ('4028483b414deea101414e0f1970000a', '1', '1', '1', '上海交大计算机网络基础课程', '上海交大计算机网络基础课程上海交大计算机网络基础课程', '<h2 style=\"font-style:normal\">上海交大计算机网络基础课程上海交大计算机网络基础课程</h2>\r\n', '20 课时', null, '0.00', '0', '网络基础', '2013-09-25  14:50:16', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153512a0141539f15ee0000', '1', '2', '1', '果蔬挑选小窍门', '想知道怎么才能挑选到新鲜又健康的果蔬么？', '<p>想知道怎么才能挑选到新鲜又健康的果蔬么？</p>\r\n', '总共 20 课时', null, '0.00', '0', ' 果蔬', '2013-09-25  14:50:16', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153c92e014153e05d600000', '1', '2', '1', '贝太新煮艺', '贝太新煮艺是一档寓教于乐的教程类烹饪节目，由《贝太厨房》人气主编任芸丽担当节目主持人，面对不同厨艺水平观众分为初级、中级和高级课程；让观众在观赏一道美味佳肴的诞生过程的同时，更能轻松掌握烹饪技巧及丰富的营养信息。', '<p>&nbsp;&nbsp;&nbsp;&nbsp; <strong>贝太新煮艺</strong>是一档寓教于乐的教程类烹饪节目，由《贝太厨房》人气主编任芸丽担当节目主持人，面对不同厨艺水平观众分为初级、中级和高级课程；让观众在观赏一道美味佳肴的诞生过程的同时，更能轻松掌握烹饪技巧及丰富的营养信息。</p>\r\n', '总共 20 课时', null, '0.00', '0', ' 煮艺', '2013-09-25  14:50:16', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153c92e014153e1eaf30001', '1', '2', '1', '魔法美丽课堂：护肤类', '敏感肌在换季时会遇到的问题，以及如何解决的生活小窍门。', '<p><strong>敏感肌在换季时会遇到的问题，以及如何解决的生活小窍门。</strong></p>\r\n', '总共 20 课时', null, '0.00', '0', '          护肤', '2013-09-25  14:50:16', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c01415400b0df0000', '1', '2', '1', '魔发秀：韩式编发', '-----------------------韩式编发小窍门', '<p>韩式编发小窍门</p>\r\n', '总共 11 课时', null, '0.00', '0', '韩式,编发', '2013-09-25  15:23:53', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141540170080001', '1', '2', '1', '幸福空间：现代家居风格设计', '幸福空间：现代家居风格设计幸福空间：现代家居风格设计', '<h2 style=\"font-style:normal\">幸福空间：现代家居风格设计幸福空间：现代家居风格设计</h2>\r\n', '总共 20 课时', null, '0.00', '0', '家居,风格,设计', '2013-09-25  15:24:42', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141540297020002', '1', '3', '1', '你所不知道的唱歌十大秘密', '----你所不知道的唱歌十大秘密你----', '<p>唱歌有许多不为人知的&ldquo;秘密&rdquo;，这些秘密可能是专业人士深入研究几十年得到的理论，但不被一般人所了解。对于网络自学唱歌的朋友来说，掌握了这些&rdquo;秘密&ldquo;，可以少走几年甚至数十年的弯路。本课程用通俗易懂的方式告诉大家这些&rdquo;秘密&ldquo;，而且借鉴运用国外先进的声乐技术理论来讲解与示范。短时间内突破高音与升级音色，使唱歌技术突飞猛进。</p>\r\n', '总共 20 课时', null, '0.00', '0', '唱歌', '2013-09-25  15:25:57', '7', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c01415403f8f20003', '1', '3', '1', 'Abby学摄影', '《Abby学摄影》是卡图摄影教育中心重磅推出的免费的摄影视频教程，', '<p>&nbsp;&nbsp;&nbsp; 《Abby学摄影》是卡图摄影教育中心重磅推出的免费的摄影视频教程，它们实用并且诙谐有趣，在新浪微博等社交网站上引起巨大的反响，每集的覆盖人数都高达30余万，被色影无忌、锐意网等知名网站媒体广泛转载。<br />\r\n&nbsp;&nbsp;&nbsp; 在《Abby学摄影》中，卡图的在线讲师Abby现身说法，将貌似深奥的摄影技巧化作一段段诙谐幽默的教学视频，这里的每堂课都不超过3分钟，知识却非常丰富实用，深受摄影爱好者、专业摄影师，甚至各类媒体的欢迎。</p>\r\n', '20 课时', null, '0.00', '0', '摄影', '2013-09-25  15:27:28', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c01415404c3320004', '1', '3', '1', '手绘画系列教程', '生活中不乏有很多美好的画面，何不用画笔记录下来呢？那么就跟几分钟网一起来记录美好画面吧！', '<p>生活中不乏有很多美好的画面，何不用画笔记录下来呢？那么就跟几分钟网一起来记录美好画面吧！</p>\r\n', '总共 20 课时', null, '0.00', '0', '画面', '2013-09-25  15:28:20', '8', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141540568120005', '1', '3', '1', '把妹达人约会学', '如果你无法在有限的青春中吸引异性，你的基因将会被无情地淘汰。吸引异性是一门当今教育系统从未曾授予的幸福必修课。 ', '<p>如果你无法在有限的青春中吸引异性，你的基因将会被无情地淘汰。吸引异性是一门当今教育系统从未曾授予的幸福必修课。&nbsp;<br />\r\n<br />\r\n把妹达人论坛-坏男孩学院的《把妹达人约会学》，一套每个男人都应掌握的约会技巧入门课程。由亚洲知名把妹达人乐鱼主讲，深度分享了8个和每个男人的情感幸福攸关的主题，让你在面对女人的时候不再迷茫。</p>\r\n', '20 课时', null, '0.00', '0', '把妹', '2013-09-25  15:29:02', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c01415406266f0006', '1', '3', '1', '瑜伽课程系列——腰腹部塑形', '瑜伽课程系列——腰腹部塑形瑜伽课程系列——腰腹部塑形', '<p>针对有腰腹部塑形需求的人群，经常练习可以使腰腹部的肌肉更加紧实从而达到较好的塑形效果。</p>\r\n', '总共 20 课时', null, '0.00', '0', '人群', '2013-09-25  15:29:51', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141540732e90007', '1', '4', '1', '英语零基础入门：音标语音课', '英语零基础入门：音标语音课-英语零基础入门：音标语音课', '<p>在零起点学习英语的过程中，掌握26个英文字母的写法、读法，同时学习48个国际音标的正确发音与应用；精选300个实用、时鲜的英文词汇与100个生活必备的口语句子，让学习过程轻松愉快，效率更高。</p>\r\n', '总共 20 课时', null, '0.00', '0', '英语', '2013-09-25  15:30:59', '9', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c01415407c5800008', '1', '4', '1', '日语零基础：快乐玩转五十音', '想用日语念出大爱偶像的名字吗？\r\n想唱公信榜那些动听的日语歌曲吗？', '<p>想用日语念出大爱偶像的名字吗？<br />\r\n想唱公信榜那些动听的日语歌曲吗？<br />\r\n想说一口地道，漂亮，华丽的日语吗？<br />\r\n如果你的答案是YES，那么欢迎来到日语五十音图零基础入门课堂。在这里，华丽发音、正确书写、潮流短句、实用口语，一网打尽。与沪江网校萌神叶子老师轻松玩转日语50音，走好日语学习的第一步！</p>\r\n', '总共 20 课时', null, '0.00', '0', '日语', '2013-09-25  15:31:37', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141540d40e90009', '1', '4', '1', 'J博士美语', '来自美国的周若汉博士(Robert Johanson, Ph.D)是语言学博士，同时也是一个探险家。他遍游美国、欧洲、亚洲等各国，学习当地语言及文化是他的爱好。他总是能够以诙谐幽默的方式，表达出艰涩难懂的观念及发音。他热爱英语、美语教学，长达二十年的教学经验，让他总是能够信手捻来', '<p>来自美国的周若汉博士(Robert&nbsp;Johanson,&nbsp;Ph.D)是语言学博士，同时也是一个探险家。他遍游美国、欧洲、亚洲等各国，学习当地语言及文化是他的爱好。他总是能够以诙谐幽默的方式，表达出艰涩难懂的观念及发音。他热爱英语、美语教学，长达二十年的教学经验，让他总是能够信手捻来</p>\r\n', '20 课时', null, null, '0', '美语', '2013-09-25  15:37:36', '13', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141540edf72000a', '1', '4', '1', '英语词根词缀速记法', '从词根来源和词根含义入手，通过分析辅以逻辑推理，使学生更容易记住单词的意思', '<p>从词根来源和词根含义入手，通过分析辅以逻辑推理，使学生更容易记住单词的意思</p>\r\n', '总共 11 课时', null, null, '0', '英语', '2013-09-25  15:39:22', '12', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141540ff3a6000b', '1', '5', '1', '说服力，让你的PPT会说话', '全图型PPT怎样做？如何从杂志里模仿排版？有哪些分析问题的框架？这个课件包一定能启发你！', '<p>全图型PPT怎样做？如何从杂志里模仿排版？有哪些分析问题的框架？这个课件包一定能启发你！</p>\r\n', '20 课时', null, null, '0', 'PPT', '2013-09-25  15:40:33', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141541091d8000c', '1', '5', '1', 'Office2013 我们来了', '介绍了Office2013的新功能技巧--', '<p>介绍了Office2013的新功能技巧</p>\r\n', '总共 20 课时', null, null, '0', 'Office', '2013-09-25  15:41:14', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c01415411308a000d', '1', '5', '1', '职场那些事——找工作', '成功求职是需要方法和注意事项的，看看你是否都已经学会。提前了解，为成功求职打好基础。', '<p>成功求职是需要方法和注意事项的，看看你是否都已经学会。提前了解，为成功求职打好基础。</p>\r\n', '总共 8 课时', null, null, '0', '求职', '2013-09-25  15:41:54', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c014154121ffa000e', '1', '5', '1', '迈向卓越的心态修炼', '心态修炼是控制自我的行为和情绪，就是意志力的锻炼，本课程致力于帮助希望在生活、工作和学习中调整、管理和修炼心态的学习者掌握相关技能。', '<p>心态修炼是控制自我的行为和情绪，就是意志力的锻炼，本课程致力于帮助希望在生活、工作和学习中调整、管理和修炼心态的学习者掌握相关技能。</p>\r\n', '总共 8 课时', null, null, '0', '心态,修炼', '2013-09-25  15:42:55', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141541497f5000f', '1', '6', '1', '李涛Photoshop高手之路提高篇', '本系列视频源自良知塾与高等教育出版社合作数字艺术设计精品规划教材之《Photoshop CS5 中文版案例教程》。', '<p>本系列视频源自良知塾与高等教育出版社合作数字艺术设计精品规划教材之《Photoshop&nbsp;CS5&nbsp;中文版案例教程》。全书分为基础篇、方法篇和案例篇3篇，共10章。基础篇介绍平面设计的基本概念、流程、要求。方法篇从画笔、抠像、调色和材质4个方面让读者掌握Photoshop的核心使用方法。案例篇介绍了多个平面设计领域的基础知识和经典案例，使读者能够较全面地掌握各个平面设计领域的行业需求和专业技能。</p>\r\n', '总共 8 课时', null, null, '0', 'Photoshop', '2013-09-25  15:45:37', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141541555a30010', '1', '6', '1', 'Word 2007标准教程', '本套Word 2007视频教程主要从新版软件全新用户界面着手，详细讲解了Word 2007的基本应用、Word文档输入与编辑管理、格式化和表格制作等等。帮助学员更快速建立整合式文件管理的解决方案。', '<p>&nbsp;&nbsp; 本套Word 2007视频教程主要从新版软件全新用户界面着手，详细讲解了Word 2007的基本应用、Word文档输入与编辑管理、格式化和表格制作等等。帮助学员更快速建立整合式文件管理的解决方案。</p>\r\n', '总共 20 课时', null, null, '0', 'Word ', '2013-09-25  15:46:26', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c01415416231f0011', '1', '6', '1', 'PowerPoint 2003 入门', 'Powerpoint是用于设计制作专家报告、教师授课、产品演示、广告宣传的电子版幻灯片，制作的演示文稿可以通过电脑或者投影机播放。通过本套教程的学习，大家可以掌握到制作出集文字、图形、图象、声音。', '<p>Powerpoint是用于设计制作专家报告、教师授课、产品演示、广告宣传的电子版幻灯片，制作的演示文稿可以通过电脑或者投影机播放。通过本套教程的学习，大家可以掌握到制作出集文字、图形、图象、声音。</p>\r\n', '总共 20 课时', null, null, '0', 'Powerpoint', '2013-09-25  15:47:18', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c014154171d820012', '1', '6', '1', '3D游戏建模3dsMax基础篇', '3ds Max是Autodesk公司开发的三维制作软件，也是目前游戏行业使用最广泛的开发制作工具之一。3D游戏美术软件基础课结合游戏开发过程中所需要的技能、技巧和经验，由浅入深的讲授了3D游戏美术制作的完整流程，内容包括建模、UV分展、烘培、贴图制作等。', '<p>3ds Max是Autodesk公司开发的三维制作软件，也是目前游戏行业使用最广泛的开发制作工具之一。3D游戏美术软件基础课结合游戏开发过程中所需要的技能、技巧和经验，由浅入深的讲授了3D游戏美术制作的完整流程，内容包括建模、UV分展、烘培、贴图制作等。</p>\r\n', '总共 8 课时', null, null, '0', '3D,游戏', '2013-09-25  15:48:23', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141541856be0013', '1', '7', '1', '郎咸平：面向未来的创新思维', '韩国企业一无资金二无技术，为何却能迅速崛起，超日赶美？名不见经传的小公司又是如何异军突起，横扫国际时装界？面对日益激烈的市场竞争，中国企业缺的不是资金，不是技术，是与国际接轨的经营思维。郎咸平教授带着他最新的研究成果走进赢在前沿——2006中国市场经济论坛，深度剖析经典案例，畅谈企业面向未来的创新思维。', '<p>&nbsp;&nbsp; 韩国企业一无资金二无技术，为何却能迅速崛起，超日赶美？名不见经传的小公司又是如何异军突起，横扫国际时装界？面对日益激烈的市场竞争，中国企业缺的不是资金，不是技术，是与国际接轨的经营思维。郎咸平教授带着他最新的研究成果走进赢在前沿&mdash;&mdash;2006中国市场经济论坛，深度剖析经典案例，畅谈企业面向未来的创新思维。</p>\r\n', '总共 8 课时', null, null, '0', '郎咸平', '2013-09-25  15:49:43', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c014154191e4f0014', '1', '7', '1', '高绩效管理智慧', '  绩效管理通常会被归入人力资源管理范畴，在人力资源管理的六大模块中，绩效管理被认为是最难的一个。一方面是因为绩效管理设计难，另一方面是推行难，同时难于与企业的战略目标相结合，谈绩效色变。', '<p>绩效管理通常会被归入人力资源管理范畴，在人力资源管理的六大模块中，绩效管理被认为是最难的一个。一方面是因为绩效管理设计难，另一方面是推行难，同时难于与企业的战略目标相结合，谈绩效色变。这三个难点，导致很多企业的绩效管理以失败而告终。<br />\r\n那么，企业如何来解决这个三个难点呢？本课程的高绩效管理智慧帮助企业各级管理者和员工充分理解公司战略意图，掌握实现公司战略目标的系统方法；掌握对各部门工作成效的评价方法，帮助各级管理者和员工改善和提升个人绩效与部门绩效，进而最终实现公司绩效；明确企业各层级在绩效管理设计及推行过程中的贡献与作为，更好的实现战略目标的实现，达到绩效管理平衡。</p>\r\n', '总共 8 课时', null, null, '0', '绩效', '2013-09-25  15:50:34', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c01415419e4c40015', '1', '7', '1', '网络营销三大超级策略', '怎样找到精准的受众？怎样打造品牌、口碑？本课程通过一个个生动、现实的案例，为你解读三大策略：鱼饵营销、服务营销、口碑营销。', '<p>怎样找到精准的受众？怎样打造品牌、口碑？本课程通过一个个生动、现实的案例，为你解读三大策略：鱼饵营销、服务营销、口碑营销</p>\r\n', '总共 8 课时', null, null, '0', '营销', '2013-09-25  15:51:25', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141541a8a9d0016', '1', '7', '1', '打造顶尖销售高手', '     此课程融合了消费心理学，关注人，率先提出营销界的方法技巧学和成交策略学；课程尖锐的突出销售人员亲和力、洞察力、说服力等专业的实战情景训练课程；老师现场讲解示范、案例剖析、学员角色深入参与，现学现用，老师最后点评指导。 ', '<p>&nbsp;&nbsp;&nbsp; 此课程融合了消费心理学，关注人，率先提出营销界的方法技巧学和成交策略学；课程尖锐的突出销售人员亲和力、洞察力、说服力等专业的实战情景训练课程；老师现场讲解示范、案例剖析、学员角色深入参与，现学现用，老师最后点评指导。&nbsp;</p>\r\n', '总共 8 课时', null, null, '0', '心理学', '2013-09-25  15:52:07', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141541cde590017', '1', '8', '1', '会计基础1', '老会计手把手教做账，是南京优仕智业软件有限公司联手南京大学出版社在江苏省教育厅支持下，专门投入大量的人力、物力，采用计算机仿真技术，开发', '<p>老会计手把手教做账，是南京优仕智业软件有限公司联手南京大学出版社在江苏省教育厅支持下，专门投入大量的人力、物力，采用计算机仿真技术，开发<br />\r\n<br />\r\n出了网络时代的全媒体会计实务课程，自2011年启用以来，在南京大学校内以及社会上得到广泛好评。2012年正式推向社会，目前已经拥有超过万名学员，是目前国内最大的网上会计实务教学基地。</p>\r\n', '总共 20 课时', null, null, '0', '会计', '2013-09-25  15:54:40', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141541dab0a0018', '1', '8', '1', '2014国家公务员考试-行测-常识判断', '常识判断”是公务员考试行政能力测试五大部分之一。与其他四部分相比，常识判断更具有其自身的特殊性。', '<p>常识判断&rdquo;是公务员考试行政能力测试五大部分之一。与其他四部分相比，常识判断更具有其自身的特殊性。它重点在于考察考生多方面﹑多层次的综合知识的积累。常识部分涵盖法律﹑政治﹑经济﹑管理﹑人文﹑科技﹑日常生活等多个方面，重点在于考察应试者在这些方面应知应会的基本知识以及运用这些基本知识分析判断的基本能力。通过本节课程的学习同学们需要掌握常识判断命题特点﹑命题方法和复习技巧。</p>\r\n', '总共 20 课时', null, null, '0', '公务员', '2013-09-25  15:55:32', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141541e6ed20019', '1', '8', '1', '2013考研数学', '此课程设置难易程度分阶，学习知识点分模块，精讲细讲，点睛模拟，预测实战一站式服务，并附带高端vip特色服务内容，此课程让你达到一站式通关效果！', '<p>此课程设置难易程度分阶，学习知识点分模块，精讲细讲，点睛模拟，预测实战一站式服务，并附带高端vip特色服务内容，此课程让你达到一站式通关效果！</p>\r\n', '总共 20 课时', null, null, '0', '数学', '2013-09-25  15:56:22', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141541efd4e001a', '1', '8', '1', '二级建造师考试：施工管理', '1. 微知识点：按照教材章节体系全面讲解，结合各章节历年考情分析、重难点以及典型例题进行系统解析，帮助考生循序渐进掌握知识点、全面夯实基础。\r\n2. 大纲解析：解析新大纲，把握重要知识点与新考点。\r\n3. 历年真题：解析历年真题，明确备考方向，有针对性的安排复习计划。', '<p>1.&nbsp;微知识点：按照教材章节体系全面讲解，结合各章节历年考情分析、重难点以及典型例题进行系统解析，帮助考生循序渐进掌握知识点、全面夯实基础。<br />\r\n2.&nbsp;大纲解析：解析新大纲，把握重要知识点与新考点。<br />\r\n3.&nbsp;历年真题：解析历年真题，明确备考方向，有针对性的安排复习计划。</p>\r\n', '总共 20 课时', null, null, '0', '建造师', '2013-09-25  15:56:59', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141541f8c98001b', '1', '8', '1', '公务员考试：数学运算', '介绍公务员考试知识点，让学员在微小时间内快速掌握方法技巧。', '<p>介绍公务员考试知识点，让学员在微小时间内快速掌握方法技巧。</p>\r\n', '总共 20 课时', null, null, '0', '数学运算', '2013-09-25  15:57:35', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c01415420bff1001c', '1', '9', '1', '高一上学期数学重点知识点复习', '北京特级教师丁益祥老师对高一上学期数学的重点知识点进行依次讲解，包含经典试题，经典知识点等。', '<p>北京特级教师丁益祥老师对高一上学期数学的重点知识点进行依次讲解，包含经典试题，经典知识点等。</p>\r\n', '总共 20 课时', null, null, '0', '高一', '2013-09-25  15:58:54', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c014154215ce0001d', '1', '9', '1', '初中物理入门', '初中物理常常让许多学生头痛不已。通过这几集入门课程，我们帮同学们揭开初中物理的神秘面纱，让大家看到那些抽象的力、声音、能量是如何与我们的生活息息相关的紧密结合在一起，超级课堂率领最优秀的教研团队，灵活巧妙地带领你攻下了这些古老的城池。', '<p>初中物理常常让许多学生头痛不已。通过这几集入门课程，我们帮同学们揭开初中物理的神秘面纱，让大家看到那些抽象的力、声音、能量是如何与我们的生活息息相关的紧密结合在一起，超级课堂率领最优秀的教研团队，灵活巧妙地带领你攻下了这些古老的城池。</p>\r\n', '总共 20 课时', null, null, '0', '初中物理', '2013-09-25  15:59:34', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c014154220b7b001e', '1', '9', '1', '高三英语：语法精讲', '本课程主要讲解了高三英语的语法。----', '<p>本课程主要讲解了高三英语的语法。</p>\r\n', '总共 20 课时', null, null, '0', '高三英语', '2013-09-25  16:00:19', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c014154229944001f', '1', '9', '1', '高中数学：部分考点精讲', ' 明确复习方向，备考有的放矢。本课程首先解析高考数学考点——函数、导数、向量、数列与不等式、解析几何与圆锥曲线、立体几何、统计与概率； 接着根据经典例题巩固知识点，最后总结解题规律，使得解题游刃有余。', '<p>&nbsp;明确复习方向，备考有的放矢。本课程首先解析高考数学考点&mdash;&mdash;函数、导数、向量、数列与不等式、解析几何与圆锥曲线、立体几何、统计与概率； 接着根据经典例题巩固知识点，最后总结解题规律，使得解题游刃有余。</p>\r\n', '总共 20 课时', null, null, '0', '高中数学', '2013-09-25  16:00:55', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141542366c10020', '1', '91', '1', '父母做对才不累之一：父母必知的自有工具', '帮助您掌握正确的沟通技巧，助您脱离“无用功”。', '<h2 style=\"font-style:normal\">父母做对才不累之一：父母必知的自有工具</h2>\r\n', '总共 20 课时', null, null, '0', '父母', '2013-09-25  16:01:48', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141542408260021', '1', '91', '1', '经典儿童故事', '贝瓦网精选出经典的儿童故事并集合成辑。原创的动画、有爱的朗读，带领小朋友走进故事世界，丰富儿童知识，同时提升思维能力和想象能力。', '<p>贝瓦网精选出经典的儿童故事并集合成辑。原创的动画、有爱的朗读，带领小朋友走进故事世界，丰富儿童知识，同时提升思维能力和想象能力。</p>\r\n', '总共 20 课时', '2013-10-08/d917557e-0229-46a2-8fba-37155e14f47b.png', null, '0', '故事', '2013-09-25  16:02:29', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141542480640022', '1', '91', '1', '别让孩子输在父母手中', '问题孩子出自问题家庭，没有不好的孩子，只有不好的父母，孩子是父母的一面镜子。怎样才能让孩子赢在父母手中呢？就是父母要欣赏孩子，和孩子做朋友，平等的朋友，要不断赞扬和鼓励孩子，让孩子找到好孩子的感觉。', '<p>问题孩子出自问题家庭，没有不好的孩子，只有不好的父母，孩子是父母的一面镜子。怎样才能让孩子赢在父母手中呢？就是父母要欣赏孩子，和孩子做朋友，平等的朋友，要不断赞扬和鼓励孩子，让孩子找到好孩子的感觉。</p>\r\n', '总共 20 课时', '2013-10-08/8235f543-0f05-4508-8df8-d4757b15531c.png', null, '0', '孩子', '2013-09-25  16:03:00', '0', '1', '0');
INSERT INTO `course` VALUES ('4028483b4153eb1c0141542514ea0023', '1', '91', '1', '我爱学拼音', '通过对“拼音宝宝”有趣的介绍，让小朋友轻松掌握声母、韵母、音调的读法和写法。可爱的画面、简洁的教学，学习拼音从此不再枯燥', '<p>通过对&ldquo;拼音宝宝&rdquo;有趣的介绍，让小朋友轻松掌握声母、韵母、音调的读法和写法。可爱的画面、简洁的教学，学习拼音从此不再枯燥</p>\r\n', '总共 20 课时', '2013-10-08/4419ba0f-e5f8-450b-8d2c-95beb0c45890.png', null, '0', '拼音', '2013-09-25  16:03:38', '0', '1', '0');

-- ----------------------------
-- Table structure for `course_category`
-- ----------------------------
DROP TABLE IF EXISTS `course_category`;
CREATE TABLE `course_category` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(256) DEFAULT NULL,
  `indexs` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_category
-- ----------------------------
INSERT INTO `course_category` VALUES ('1', '讲师直播', '22');
INSERT INTO `course_category` VALUES ('2', '学校公开课', '1');
INSERT INTO `course_category` VALUES ('3', '签约讲师', '1');
INSERT INTO `course_category` VALUES ('4', '合作机构', '2');
INSERT INTO `course_category` VALUES ('5', '直播公开课', '2');

-- ----------------------------
-- Table structure for `course_lesson`
-- ----------------------------
DROP TABLE IF EXISTS `course_lesson`;
CREATE TABLE `course_lesson` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `course_id` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `introduction` varchar(4000) DEFAULT NULL,
  `pay_or_not` int(11) DEFAULT NULL,
  `watch_times` int(11) DEFAULT NULL,
  `file_id` varchar(64) DEFAULT NULL,
  `play_time` varchar(12) DEFAULT NULL,
  `create_time` varchar(32) DEFAULT NULL,
  `reviewed` int(11) DEFAULT NULL,
  `show_index` int(11) DEFAULT '1',
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_lesson
-- ----------------------------
INSERT INTO `course_lesson` VALUES ('4028483b4158ee08014159160e6d0005', '4028483b4153eb1c0141542514ea0023', '第一讲', '第一讲 任何做到爱学', null, null, '402880e74168cdcd014168cf8d7a0001', null, '2013-09-29  16:22:15', '1', '1', '0');
INSERT INTO `course_lesson` VALUES ('4028483b4158ee080141591623250006', '4028483b4153eb1c0141542514ea0023', '第二讲', '续第一讲 内容', null, null, null, null, '2013-09-30  14:18:26', '1', '2', '0');
INSERT INTO `course_lesson` VALUES ('4028483b416d83e501416da130cc0001', '4028483b4153eb1c0141542514ea0023', '第四讲', '第四讲。。。。。。。。。。。', null, null, '4028483b416d83e501416da124d50000', null, '2013-09-30  14:49:42', '1', '4', '0');
INSERT INTO `course_lesson` VALUES ('4028483b416e3bb101416e3cad1c0002', '4028483b4153eb1c0141542514ea0023', '第五讲', '...................................................rrereere', null, null, '4028483b416e4b8c01416e4ea27f0001', null, '2013-10-08  09:30:20', '1', '5', '0');
INSERT INTO `course_lesson` VALUES ('402880e741687744014168bd771f0001', '4028483b4153eb1c0141542514ea0023', '第三讲', '如果学会拼音', null, null, '402880e741687744014168bd41fa0000', null, '2013-09-29  16:02:29', '1', '3', '0');

-- ----------------------------
-- Table structure for `course_lesson_comment`
-- ----------------------------
DROP TABLE IF EXISTS `course_lesson_comment`;
CREATE TABLE `course_lesson_comment` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `lesson_id` varchar(64) DEFAULT NULL,
  `create_user_id` varchar(64) DEFAULT NULL,
  `comment` varchar(1024) DEFAULT NULL,
  `create_time` varchar(32) DEFAULT NULL,
  `reviewed` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_lesson_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `course_lesson_log`
-- ----------------------------
DROP TABLE IF EXISTS `course_lesson_log`;
CREATE TABLE `course_lesson_log` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `lesson_id` varchar(64) DEFAULT NULL,
  `new_info` varchar(512) DEFAULT NULL,
  `old_info` varchar(512) DEFAULT NULL,
  `create_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_lesson_log
-- ----------------------------

-- ----------------------------
-- Table structure for `course_lesson_material`
-- ----------------------------
DROP TABLE IF EXISTS `course_lesson_material`;
CREATE TABLE `course_lesson_material` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `lesson_id` varchar(64) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `file_id` varchar(64) DEFAULT NULL,
  `create_time` varchar(32) DEFAULT NULL,
  `reviewed` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_lesson_material
-- ----------------------------

-- ----------------------------
-- Table structure for `course_log`
-- ----------------------------
DROP TABLE IF EXISTS `course_log`;
CREATE TABLE `course_log` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `course_id` varchar(64) DEFAULT NULL,
  `old_info` varchar(512) DEFAULT NULL,
  `new_info` varchar(512) DEFAULT NULL,
  `create_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_log
-- ----------------------------

-- ----------------------------
-- Table structure for `course_type`
-- ----------------------------
DROP TABLE IF EXISTS `course_type`;
CREATE TABLE `course_type` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(256) DEFAULT NULL,
  `indexs` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_type
-- ----------------------------
INSERT INTO `course_type` VALUES ('1', 'IT与互联网', 'a');
INSERT INTO `course_type` VALUES ('2', '生活家居', 'b');
INSERT INTO `course_type` VALUES ('3', '兴趣爱好', 'c');
INSERT INTO `course_type` VALUES ('4', '外语学习', 'd');
INSERT INTO `course_type` VALUES ('5', '职场技能', 'e');
INSERT INTO `course_type` VALUES ('6', '实用软件', 'f');
INSERT INTO `course_type` VALUES ('7', '经管金融', 'g');
INSERT INTO `course_type` VALUES ('8', '考试认证', 'h');
INSERT INTO `course_type` VALUES ('9', '中小学', 'i');
INSERT INTO `course_type` VALUES ('91', '亲子育儿', 'k');

-- ----------------------------
-- Table structure for `ktask`
-- ----------------------------
DROP TABLE IF EXISTS `ktask`;
CREATE TABLE `ktask` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ktask
-- ----------------------------
INSERT INTO `ktask` VALUES ('1', 'Study PlayFramework 2.0', 'http://www.playframework.org/', '2');
INSERT INTO `ktask` VALUES ('2', 'Study Grails 2.0', 'http://www.grails.org/', '2');
INSERT INTO `ktask` VALUES ('3', 'Try SpringFuse', 'http://www.springfuse.com/', '2');
INSERT INTO `ktask` VALUES ('4', 'Try Spring Roo', 'http://www.springsource.org/spring-roo', '2');
INSERT INTO `ktask` VALUES ('5', 'Release SpringSide 4.0', 'As soon as posibble.', '2');
INSERT INTO `ktask` VALUES ('6', 'ddeee', 'dd', '1');
INSERT INTO `ktask` VALUES ('7', 'ee', 'ee', '1');
INSERT INTO `ktask` VALUES ('8', 'ewe', 'we', '1');
INSERT INTO `ktask` VALUES ('9', 'wewe', 'wew', '1');

-- ----------------------------
-- Table structure for `kuser`
-- ----------------------------
DROP TABLE IF EXISTS `kuser`;
CREATE TABLE `kuser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(64) NOT NULL,
  `roles` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_name` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kuser
-- ----------------------------
INSERT INTO `kuser` VALUES ('1', 'admin', 'Admin', '691b14d79bf0fa2215f155235df5e670b64394cc', '7efbd59d9741d34f', 'admin', '2012-06-04 01:00:00');
INSERT INTO `kuser` VALUES ('2', 'user', 'Calvin', '2488aa0c31c624687bd9928e0a5d29e7d1ed520b', '6d65d24122c30500', 'user', '2012-06-04 02:00:00');

-- ----------------------------
-- Table structure for `system_file`
-- ----------------------------
DROP TABLE IF EXISTS `system_file`;
CREATE TABLE `system_file` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `file_url` varchar(64) DEFAULT NULL,
  `file_type` varchar(16) DEFAULT NULL,
  `create_time` varchar(32) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_file
-- ----------------------------
INSERT INTO `system_file` VALUES ('4028483b4158ee080141590c137f0001', '2013-09-26-14-54-25_c35ccd2e-6584-4129-952c-ac5f3b39a00b.txt', 'txt', '2013-09-26-14-54-25', '1');
INSERT INTO `system_file` VALUES ('4028483b4158ee080141590ce0ef0003', '2013-09-26-14-55-18_393c910b-c9cb-43f8-93d6-db7ca94aeaaa.txt', 'txt', '2013-09-26-14-55-18', '1');
INSERT INTO `system_file` VALUES ('4028483b416d83e501416da124d50000', '2013-09-30-14-49-39_bbbde89b-b7ea-4ba3-a8a1-8307a8fab6a9.flv', 'flv', '2013-09-30-14-49-39', '1');
INSERT INTO `system_file` VALUES ('4028483b416e256401416e2b82d60001', '20130930172047-782354f4-60d2-47b9-bbdc-688eff469962.flv', 'mp4', '20130930172047', '1');
INSERT INTO `system_file` VALUES ('4028483b416e3bb101416e3ca3c80001', '20130930173929-22226799-a848-421f-ae2f-82f1186a868d.flv', 'mp4', '20130930173929', '1');
INSERT INTO `system_file` VALUES ('4028483b416e4b8c01416e4ea27f0001', '20130930175908-f69db6ca-99a3-4880-b460-326c7670b60a.flv', 'mp4', '20130930175908', '1');
INSERT INTO `system_file` VALUES ('402880e741687744014168bd41fa0000', null, null, null, null);
INSERT INTO `system_file` VALUES ('402880e741687744014168bf2b440002', null, null, null, null);
INSERT INTO `system_file` VALUES ('402880e741687744014168c137dd0003', '2013-09-29-16-06-35_4a73b5ab-c121-4bd1-9f7c-59236d9d4d7a.flv', 'flv', '2013-09-29-16-06-35', '1');
INSERT INTO `system_file` VALUES ('402880e74168c437014168c7097a0000', null, null, null, null);
INSERT INTO `system_file` VALUES ('402880e74168c9fb014168ca87550000', '2013-09-29-16-16-45_4299162e-87a2-4830-b048-61f90fe2804b.flv', 'flv', '2013-09-29-16-16-45', '1');
INSERT INTO `system_file` VALUES ('402880e74168cdcd014168cf8d7a0001', '2013-09-29-16-22-14_9a120f9c-6302-41a4-8541-800326badd1f.flv', 'flv', '2013-09-29-16-22-14', '1');

-- ----------------------------
-- Table structure for `video_convert`
-- ----------------------------
DROP TABLE IF EXISTS `video_convert`;
CREATE TABLE `video_convert` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `old_path` varchar(64) DEFAULT NULL,
  `new_path` varchar(64) DEFAULT NULL,
  `old_expanded` varchar(64) DEFAULT NULL,
  `new_expanded` varchar(64) DEFAULT NULL,
  `create_time` varchar(32) DEFAULT NULL,
  `reviewed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video_convert
-- ----------------------------
