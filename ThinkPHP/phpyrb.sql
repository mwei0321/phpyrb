/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : phpyrb

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2014-06-09 18:39:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(15) NOT NULL COMMENT '名称',
  `passwd` char(40) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admins
-- ----------------------------

-- ----------------------------
-- Table structure for `album`
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `permission` tinyint(1) unsigned DEFAULT NULL COMMENT '权限',
  `name` varchar(50) NOT NULL COMMENT '相册名',
  `cover` varchar(100) NOT NULL COMMENT '封面',
  `description` varchar(150) NOT NULL COMMENT '描述',
  `addtime` int(11) NOT NULL COMMENT '添加时间表',
  `uptime` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='相册';

-- ----------------------------
-- Records of album
-- ----------------------------

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `cateid` int(11) NOT NULL COMMENT '分类ID',
  `tags` varchar(200) NOT NULL COMMENT '标签ID',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态（0 隐藏、1显示）',
  `title` varchar(150) NOT NULL COMMENT '文章标题',
  `author` varchar(30) NOT NULL COMMENT '作者名称',
  `hots` int(11) NOT NULL COMMENT '点击率',
  `keyword` varchar(100) DEFAULT NULL COMMENT '关键字',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `uptime` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '1', '9', '13,14,17', '1', 'debian 初始安装', 'PhPyRb-MaWei', '319', 'debian初始安装,debian安装设置,debian安装vim,debian安装代码提示,debian安装PHP环境,debian安装lnmp', '1371746494', '1398764172');
INSERT INTO `article` VALUES ('2', '1', '6', '18', '1', 'Jquery 随屏滚动特效', 'PhPyRb-MaWei', '361', 'Jquery随屏滚动特效 Jquery滚动特效 Jquery特效滚动 Jquery特效随屏滚动 ', '1371782692', '1372669889');
INSERT INTO `article` VALUES ('3', '1', '3', '16,19', '1', 'php空间的在线解压 ZIP', 'PhPyRb-MaWei', '368', 'php空间的在线解压 php空间的在线解压ZIP php空间解压ZIP 在线解压ZIP 在线解压zip 空间php解压 php空间解压', '1371871456', '1372669921');
INSERT INTO `article` VALUES ('4', '1', '6', '18', '1', 'Jquery随屏滚动特效', 'PhPyRb-MaWei', '316', 'Jquery随屏滚动特效 jquery滚动 jquery滚动特效 jquery特效', '1371872464', '1372756985');
INSERT INTO `article` VALUES ('6', '1', '3', '16,19', '1', 'php面试题 陷阱题', 'PhPyRb-MaWei', '466', 'php面试题 php陷阱题 php基础题 php常见面试题 php考题', '1371896734', '1372757248');
INSERT INTO `article` VALUES ('7', '1', '10', '16,19', '1', 'MySql常用语句', 'PhPyRb-MaWei', '378', 'MySql常用语句 有用的MySQL语句 MySql语句', '1371899755', '1373789463');
INSERT INTO `article` VALUES ('18', '1', '4', '16,21', '0', 'python mysql基础 学习', 'PhPyRb-MaWei', '224', 'python mysql连接,python mysql', '1373942637', '1374059025');
INSERT INTO `article` VALUES ('8', '1', '10', '16,19,20', '1', 'wamp虚拟主机配置', 'PhPyRb-MaWei', '360', 'wamp5,apache 虚拟主机配置 wamp5虚拟主机配置 apache虚拟主机配置', '1371961592', '1373451770');
INSERT INTO `article` VALUES ('9', '1', '9', '13,17', '1', 'Liunx配置IP和DNS', 'PhPyRb-MaWei', '239', 'Liunx配置IP和DNS debian配置ip debian配置dns liunx配置ip和dns', '1371987080', '1372757673');
INSERT INTO `article` VALUES ('10', '1', '9', '13,14,17', '1', 'Linux配置`.bashrc`,  `vim`， Linux配置命令缩写', 'PhPyRb-MaWei', '232', 'Linux配置`.bashrc`,  `vim`  Linux配置命令缩写', '1371907485', '1395700191');
INSERT INTO `article` VALUES ('11', '1', '9', '13,15', '1', 'Linux安装git', 'PhPyRb-MaWei', '328', 'Linux安装git git linux配置安装 liunx git', '1371988171', '1373452568');
INSERT INTO `article` VALUES ('12', '1', '10', '16,19', '1', 'mysql分组group ', 'PhPyRb-MaWei', '375', 'mysql分组group mysql gorup mysql分组统计 mysql分组显示', '1372063686', '1372757732');
INSERT INTO `article` VALUES ('13', '1', '6', '18', '1', '  jQuery 获取高度宽度', 'PhPyRb-MaWei', '191', '  jQuery 获取屏幕高度、宽度,jquery 高度，jquery宽度', '1372415916', '1372757748');
INSERT INTO `article` VALUES ('15', '1', '9', '13,14', '1', 'vim基本命令,vim常用命令', 'PhPyRb-MaWei', '347', 'vim基本命令,vim常用命令', '1372865638', '1380112061');
INSERT INTO `article` VALUES ('14', '1', '4', '', '0', 'python各种类型转换-int,str,char,float,ord,hex,oct等', 'PhPyRb-MaWei', '1', 'python各种类型转换-int,str,char,float,ord,hex,oct等 ', '1372761865', '1372762175');
INSERT INTO `article` VALUES ('17', '1', '4', '21', '1', 'python 基础学习笔记1', 'PhPyRb-MaWei', '271', 'python 基础笔记 python基础 ', '1373437782', '1373440508');
INSERT INTO `article` VALUES ('19', '1', '4', '16,21', '1', 'python安装mysql', 'PhPyRb-MaWei', '303', 'python安装mysql', '1373956731', '1373957762');
INSERT INTO `article` VALUES ('20', '1', '3', '', '0', 'php 文件下载详解', 'PhPyRb-MaWei', '0', 'php 文件下载详解', '1375523177', '1375523177');
INSERT INTO `article` VALUES ('21', '1', '9', '13,14,17', '1', 'vim中tab转成空格', 'PhPyRb-MaWei', '237', 'vim中将tab自动转换成空格 ', '1377268337', '1377268337');
INSERT INTO `article` VALUES ('22', '1', '9', '13,17', '1', 'vps 安全登录的方法 ssh 登录', 'PhPyRb-MaWei', '295', 'vps 安全登录的方法 ssh  登录', '1377271802', '1377513177');
INSERT INTO `article` VALUES ('31', '1', '4', '21,22', '0', 'django 正则表达式－Python Django  学习笔记3', 'PhPyRb-MaWei', '204', '正则表达式用法，正则表达式详解，python中正则表达式。', '1382514720', '1384676800');
INSERT INTO `article` VALUES ('24', '1', '4', '21,22', '1', 'django 安装初始化-Python Django 学习笔记1', 'PhPyRb-MaWei', '350', 'django 初始化安装，python django学习笔记', '1377760757', '1395647313');
INSERT INTO `article` VALUES ('25', '1', '23', '14', '1', 'Sublime 快捷键', 'PhPyRb-MaWei', '238', 'Sublime 常用的快捷键。', '1378371104', '1378371170');
INSERT INTO `article` VALUES ('26', '1', '4', '13,17,19,21,22', '1', '反向代理', 'PhPyRb-MaWei', '186', 'Python使用反向代理，lnmp反向代理。', '1378779640', '1378779640');
INSERT INTO `article` VALUES ('27', '1', '10', '16', '1', 'mysql 数据库导入、导出', 'PhPyRb-MaWei', '253', 'mysql 数据库导入、导出', '1378909247', '1380795718');
INSERT INTO `article` VALUES ('28', '1', '4', '21,22', '0', 'django post csrf', 'PhPyRb-MaWei', '180', 'Python Django POST Forbidden (403)', '1380115040', '1380115380');
INSERT INTO `article` VALUES ('29', '1', '9', '13,17', '1', 'lftp 命令如何使用', 'PhPyRb-MaWei', '231', 'liunx lftp,debian lftp', '1380801134', '1380802115');
INSERT INTO `article` VALUES ('30', '1', '6', '18', '1', ' jQuery 如何为动态添加的元素绑定事件', 'PhPyRb-MaWei', '252', ' jQuery 如何为动态添加的元素绑定事件', '1381134321', '1381135077');
INSERT INTO `article` VALUES ('32', '1', '4', '21,22', '1', 'django url 详解 - Python Django  学习笔记4', 'PhPyRb-MaWei', '322', 'django的url配置、用法。', '1382521106', '1395647350');
INSERT INTO `article` VALUES ('33', '1', '4', '21,22', '1', 'django 新建工程和项目－Python Django 学习笔记2', 'PhPyRb-MaWei', '230', 'django如何新建工程和项目', '1382521966', '1384676829');
INSERT INTO `article` VALUES ('34', '1', '4', '21,22', '1', 'django 模板详解 － Python Django 学习笔记5', 'PhPyRb-MaWei', '192', 'django模型，django模型的新建。', '1384676770', '1384831398');
INSERT INTO `article` VALUES ('35', '1', '4', '16,21,22', '1', 'django模型详解之模型创建 － Python Django 学习笔记6', 'PhPyRb-MaWei', '205', '新建模型，模型语法', '1385174807', '1385279652');
INSERT INTO `article` VALUES ('36', '1', '4', '', '0', 'django模型详解之数据库操作 － Python Django 学习笔记7', 'PhPyRb-MaWei', '12', '', '1385279767', '1389189068');
INSERT INTO `article` VALUES ('37', '1', '4', '16,21,22', '1', 'django如何连接mysql,django如何安装mysql', 'PhPyRb-MaWei', '154', 'django如何安装mysql,django如何连接msyql.', '1389189913', '1389191862');
INSERT INTO `article` VALUES ('38', '1', '4', '21', '1', 'python string函数详解', 'PhPyRb-MaWei', '137', 'python的string类里面的函数解析', '1389872770', '1389874282');
INSERT INTO `article` VALUES ('39', '1', '4', '21', '1', 'Python列表常用函数详解', 'PhPyRb-MaWei', '145', 'Python列表常用函数详解, index,in,extend,append,insert', '1389876762', '1389932826');
INSERT INTO `article` VALUES ('40', '1', '4', '21,22', '1', 'django request 的使用方法 － Python Django 学习笔记8', 'PhPyRb-MaWei', '108', 'django request的使用方法。', '1392724975', '1392731001');
INSERT INTO `article` VALUES ('42', '1', '24', '25,26', '1', 'MongoDB安装', 'PhPyRb-MaWei', '74', 'mongodb安装,nosql mongodb.', '1394698314', '1394699720');
INSERT INTO `article` VALUES ('44', '1', '23', '15', '1', 'git配置使用 - 客户端', 'PhPyRb-MaWei', '75', 'git初始配置,git的配置.', '1395972632', '1395978380');
INSERT INTO `article` VALUES ('45', '1', '3', '16,19', '1', 'curl_init()函数', 'PhPyRb-MaWei', '27', 'curl_init()函数不可用,curl_init()函数报错的解决办法', '1398583917', '1398583917');
INSERT INTO `article` VALUES ('46', '1', '0', '16,19', '1', 'mysql如何把一表的某个字体更新到另一表的相同字段', 'PhPyRb-MaWei', '30', 'mysql如何把一表的某个字体更新到另一表的相同字段', '1398611931', '1398612026');
INSERT INTO `article` VALUES ('47', '1', '10', '16,19,20', '1', 'wamp5虚拟机配置', 'PhPyRb-MaWei', '59', 'wamp5虚拟主机的配置', '1398757407', '1398759789');
INSERT INTO `article` VALUES ('55', '1', '8', '22,21,20,12,11', '1', 'adfasdfasdfaaaaaaaaaaa', 'MaWei', '0', 'adsfasdaaaaaaaaaa', '1401333860', '1401336632');
INSERT INTO `article` VALUES ('56', '1', '9', '25,22,13,12,11', '1', 'dfasdfasdfasdfasdf', 'MaWei-PhPyRb', '0', 'asdfasdfasdfasdf', '1401338163', '1401338279');
INSERT INTO `article` VALUES ('57', '1', '1', '19', '1', 'fweqwe', 'MaWei-PhPyRb', '0', 'asdfasdf', '1401423183', '1401427137');

-- ----------------------------
-- Table structure for `article_comment`
-- ----------------------------
DROP TABLE IF EXISTS `article_comment`;
CREATE TABLE `article_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `artid` int(11) NOT NULL COMMENT '文章ID',
  `uid` int(11) NOT NULL DEFAULT '-1' COMMENT '用户ID',
  `content` text NOT NULL COMMENT '内容',
  `uname` varchar(15) DEFAULT NULL COMMENT '用户名',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（0 隐藏、1显示）',
  `email` varchar(60) DEFAULT NULL COMMENT '邮箱',
  `homepage` varchar(80) DEFAULT NULL COMMENT '个人主页',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论、留言本';

-- ----------------------------
-- Records of article_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父ID',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `name` varchar(30) NOT NULL COMMENT '分类名',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（0 隐藏、1显示）',
  `menu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '菜单显示',
  `description` varchar(120) DEFAULT NULL COMMENT '描述',
  `sort` tinyint(3) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '0', '1', 'Skill', '1', '1', '', null);
INSERT INTO `category` VALUES ('2', '1', '1', 'Program', '1', '1', '', null);
INSERT INTO `category` VALUES ('3', '2', '1', 'PHP', '1', '1', '', null);
INSERT INTO `category` VALUES ('4', '2', '1', 'Python', '1', '1', '', null);
INSERT INTO `category` VALUES ('5', '2', '1', 'Ruby', '1', '1', '', null);
INSERT INTO `category` VALUES ('6', '2', '1', 'Jquery', '1', '1', '', null);
INSERT INTO `category` VALUES ('7', '2', '1', 'HTML', '1', '1', '', null);
INSERT INTO `category` VALUES ('8', '2', '1', 'CSS', '1', '1', '', null);
INSERT INTO `category` VALUES ('9', '2', '1', 'Linux', '1', '1', '', null);
INSERT INTO `category` VALUES ('10', '2', '1', 'Apache+MySQL', '1', '1', '', null);
INSERT INTO `category` VALUES ('23', '2', '1', 'Other', '1', '1', '', null);
INSERT INTO `category` VALUES ('24', '2', '1', 'MongoDB', '1', '1', '', null);

-- ----------------------------
-- Table structure for `content`
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `artid` int(11) NOT NULL COMMENT '文章ID',
  `description` text NOT NULL COMMENT '描述',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`artid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章内容';

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES ('1', 'debian初始安装,debian安装设置,debian安装vim,debian安装代码提示,debian安装PHP环境,debian安装lnmp,debian安装ctags', '<p>\r\n	1.下载debian&nbsp;网址:<a href=\"http://www.debian.org/distrib/\">http://www.debian.org/distrib/</a>&nbsp;\r\n</p>\r\n<p>\r\n	2.选择CD就可以了 32位 和 64 位随便选\r\n</p>\r\n<p>\r\n	3.安装debian 最好断网安装 网速快可以连网安装\r\n</p>\r\n<p>\r\n	3.安装好后修改源并更新\r\n</p>\r\n<p>\r\n	4.源\r\n</p>\r\n<pre class=\"brush:bash\">cd /etc/apt/sources.list</pre>\r\n<pre class=\"brush:bash\"> deb http://mirrors.163.com/debian squeeze main non-free contrib\r\ndeb http://mirrors.163.com/debian squeeze-proposed-updates main contrib non-free\r\ndeb-src http://mirrors.163.com/debian squeeze main non-free contrib\r\ndeb-src http://mirrors.163.com/debian squeeze-proposed-updates main contrib non-free\r\ndeb http://mirrors.163.com/debian-security squeeze/updates main contrib non-free\r\ndeb-src http://mirrors.163.com/debian-security squeeze/updates main contrib non-free\r\ndeb http://http.us.debian.org/debian squeeze main contrib non-free\r\ndeb http://non-us.debian.org/debian-non-US squeeze/non-US main contrib non-free\r\ndeb http://security.debian.org squeeze/updates main contrib non-free\r\n \r\n deb http://mirrors.163.com/debian/ wheezy main non-free contrib\r\n deb http://mirrors.163.com/debian/ wheezy-proposed-updates main non-free contrib\r\n deb http://mirrors.163.com/debian-security/ wheezy/updates main non-free contrib\r\n deb-src http://mirrors.163.com/debian/ wheezy main non-free contrib\r\n deb-src http://mirrors.163.com/debian/ wheezy-proposed-updates main non-free contrib\r\n deb-src http://mirrors.163.com/debian-security/ wheezy/updates main non-free contrib\r\n \r\n deb http://www.debian-multimedia.org/ wheezy main\r\n deb-src http://www.debian-multimedia.org/ wheezy main \r\n\r\n deb http://ftp.debian.org/debian/ wheezy main contrib non-free\r\n deb-src http://ftp.debian.org/debian/ wheezy main contrib non-free\r\n \r\n deb http://ftp.us.debian.org/debian/ wheezy main contrib non-free\r\n deb http://http.us.debian.org/debian/ wheezy main contrib non-free\r\n deb-src http://ftp.us.debian.org/debian/ wheezy main contrib non-free\r\n deb-src http://http.us.debian.org/debian/ wheezy main contrib non-free\r\n</pre>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;或者如下操作：\r\n</p>\r\n<pre class=\"brush:bash\">cd /etc/apt/\r\nwget http://mirrors.163.com/.help/sources.list.wheezy\r\ncp sources.list sources.list.bak\r\nmv sources.list.squeeze sources.list\r\n</pre>\r\n<p>\r\n	然后开始更新源：\r\n</p>\r\n<pre class=\"brush:bash\">apt-get update\r\napt-get upgrade</pre>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	5.安装`vim`, `ctags`, `postgresql`, `lnmp`, `setuptools`, `sqlite3`\r\n</p>\r\n<pre class=\"brush:bash\">apt-get install vim ctags sqlite3 libsqlite3-dev python-dev git  ruby rubygems postgresql </pre>\r\n<pre class=\"brush:bash\"># 要在安装 lnmp 之前安装 libmysqld-dev，否则安装 libmysqld-dev 就会破坏 lnmp 所安装的 mysql\r\napt-get install libmysqld-dev\r\n</pre>\r\n<pre class=\"brush:bash\">mkdir down\r\ncd down\r\nwget http://peak.telecommunity.com/dist/ez_setup.py\r\npython ez_setup.py\r\neasy_install mysql-python\r\n</pre>\r\n<pre class=\"brush:bash\">wget -c http://soft.vpser.net/lnmp/lnmp1.0-full.tar.gz &amp;&amp; tar zxvf lnmp1.0-full.tar.gz \r\ncd lnmp1.0-full \r\n./debian.sh\r\n</pre>\r\n<pre class=\"brush:bash\"># 修改 debian.sh 让安装后的 php-fpm 支持 postgresql，添加 `--with-pgsql=/var/lib/postgresql/8.4/main` 到374行的行尾\r\nvi debian.sh\r\n</pre>\r\n<pre class=\"brush:bash\"># 替换 vhost.sh 中所有的 wwwroot 为 www。让新建的站点默认的根目录在 /home/www 下\r\nvi vhost.sh\r\n</pre>\r\n<pre class=\"brush:bash\">./debian.sh\r\n\r\n./eaccelerator.sh\r\n./ionCube.sh\r\n./imageMagick.sh\r\n</pre>\r\n<pre class=\"brush:bash\"># 解决 memcached 找不到目录的问题\r\nmkdir -p /var/lock/subsys\r\n./memcached.sh</pre>\r\n<p>\r\n	<br />\r\n</p>\r\n安装vim,命命别名等、请阅读 <a href=\"http://www.phpyrb.com/Article/index/artid/10.html\">Linux配置`.bashrc`, `vim`， Linux配置命令缩写</a>');
INSERT INTO `content` VALUES ('2', 'Jquery随屏滚动特效 Jquery滚动特效 Jquery特效滚动 Jquery特效随屏滚动', '<p>\r\n	alert($(window).height());//浏览器当前窗口可视区域高度<br />\r\n<br />\r\nalert($(document).height());//浏览器当前窗口文档的高度<br />\r\n<br />\r\nalert($(document.body).height());//浏览器当前窗口文档body的高度<br />\r\n<br />\r\nalert($(document.body).outerHeight(true));//浏览器当前窗口文档body的总高度 包括border padding margin<br />\r\n<br />\r\nalert($(window).width());//浏览器当前窗口可视区域宽度<br />\r\n<br />\r\nalert($(document).width());//浏览器当前窗口文档对象宽度alert($(document.body).width());//浏览器当前窗口文档body的高度<br />\r\n<br />\r\nalert($(document.body).outerWidth(true));//浏览器当前窗口文档body的总宽度 包括border padding margin\r\n</p>\r\n<p>\r\n	// 获取页面的高度、宽度\r\n</p>\r\n<pre class=\"brush:jscript\">functiongetPageSize() {\r\n			varxScroll, yScroll;\r\n			if(window.innerHeight &amp;&amp; window.scrollMaxY) {\r\n				xScroll = window.innerWidth + window.scrollMaxX;\r\n				yScroll = window.innerHeight + window.scrollMaxY;\r\n			}else{\r\n				if(document.body.scrollHeight &gt; document.body.offsetHeight) {// all but Explorer Mac\r\n					xScroll = document.body.scrollWidth;\r\n					yScroll = document.body.scrollHeight;\r\n				}else{// Explorer Mac...would also work in Explorer 6 Strict, Mozilla and Safari\r\n					xScroll = document.body.offsetWidth;\r\n					yScroll = document.body.offsetHeight;\r\n				}\r\n			}\r\n			varwindowWidth, windowHeight;\r\n			if(self.innerHeight) {// all except Explorer\r\n				if(document.documentElement.clientWidth) {\r\n					windowWidth = document.documentElement.clientWidth;\r\n				}else{\r\n					windowWidth = self.innerWidth;\r\n				}\r\n				windowHeight = self.innerHeight;\r\n			}else{\r\n				if(document.documentElement &amp;&amp; document.documentElement.clientHeight) {// Explorer 6 Strict Mode\r\n					windowWidth = document.documentElement.clientWidth;\r\n					windowHeight = document.documentElement.clientHeight;\r\n				}else{\r\n					if(document.body) {// other Explorers\r\n						windowWidth = document.body.clientWidth;\r\n						windowHeight = document.body.clientHeight;\r\n					}\r\n				}\r\n			}\r\n			// for small pages with total height less then height of the viewport\r\n			if(yScroll &lt; windowHeight) {\r\n				pageHeight = windowHeight;\r\n			}else{\r\n				pageHeight = yScroll;\r\n			}\r\n			// for small pages with total width less then width of the viewport\r\n			if(xScroll &lt; windowWidth) {\r\n				pageWidth = xScroll;\r\n			}else{\r\n				pageWidth = windowWidth;\r\n			}\r\n			arrayPageSize =newArray(pageWidth, pageHeight, windowWidth, windowHeight);\r\n			returnarrayPageSize;\r\n		}\r\n</pre>\r\n<p>\r\n	<br />\r\n</p>');
INSERT INTO `content` VALUES ('3', 'php空间的在线解压 php空间的在线解压ZIP php空间解压ZIP 在线解压ZIP 在线解压zip 空间php解压 php空间解压 在线解压PHP空间 PHP空间在线解压方法', '<h2 align=\"center\">\r\n	php空间的在线解压 ZIP\r\n</h2>\r\n<p align=\"center\">\r\n	<br />\r\n</p>\r\n<h4 align=\"left\">\r\n	<span style=\"font-size:14px;\">把打包好的程序上传到空间后，在空间里面在线解压。步骤如下：（注：打包为ZIP）</span> \r\n</h4>\r\n<h4 align=\"left\">\r\n	&nbsp;\r\n</h4>\r\n<h4>\r\n	<span style=\"font-size:14px;\">可以通过php程序调用exec指令进行在线解压: 本地新建文档，内容如下：</span><span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;</span><br />\r\n<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.&nbsp;&nbsp;&nbsp; </span><span style=\"font-size:14px;\"><!--?php exec(\"unzip abc.zip\"); ?--></span><br />\r\n<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.&nbsp; 然后保存为php格式的文件放在需要解压文件的同文件夹下运行(其中abc.zip替换成您的zip包文件名即可)；</span> \r\n</h4>\r\n<h4>\r\n	<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-size:14px;\">请注意: 系统Linux默认UTF-8编码, Windows为GBK或等编码, 压缩包内部的文件夹或文件名不要使用中文,以免引起乱码</span> \r\n</h4>');
INSERT INTO `content` VALUES ('4', 'Jquery随屏滚动特效 jquery滚动 jquery滚动特效 jquery特效 ', '<h2 align=\"center\">\r\n	Jquery随屏滚动特效\r\n</h2>\r\n<p>\r\n	代码如下\r\n:\r\n</p>\r\n<pre class=\"brush:jscript\">$(function () {\r\n		var $offtop = $(\'.fdkf\').offset().top;\r\n		$(window).scroll(function () {\r\n			var $scrotop = $(window).scrollTop();\r\n			if($scrotop &gt; $offtop){\r\n				$(\'.fdkf\').stop(false,true).animate({\'top\':$offtop+$scrotop+\'px\'},300);\r\n			}\r\n			if($scrotop &lt; \'10\'){\r\n				$(\'.fdkf\').stop(false,true).animate({\'top\':$offtop+\'px\'},300);\r\n			}\r\n		});\r\n});</pre>');
INSERT INTO `content` VALUES ('6', 'php面试题 php陷阱题 php基础题 php常见面试题 php考题', '<h2 align=\"center\">\r\n	php面试题 陷阱题\r\n</h2>\r\n<p>\r\n	个人收集题目：<br />\r\n题1：\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"brush:php\">$a=3;\r\n$b=6;\r\n$c=1;\r\nif($a=0||$b=7 &amp;&amp; $c=10){\r\n    $a++;   \r\n    $b++;\r\n}\r\nvar_dump($a, $b,$c);</pre>\r\n1.把$a = 0 看成 $a == 0;<br />\r\n2.认为$a=0赋值成功$b=7没执行<br />\r\n4.认为$a的值为0，或者为false<br />\r\n3.认为$b=7赋值成功为7\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	正确答案应该为 <br />\r\n$a = true $b = true $c = 10\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	题2：\r\n</p>\r\n<pre class=\"brush:php\">if(\'0\' == \'all\'){\r\n	echo 123;\r\n&nbsp;&nbsp;&nbsp;&nbsp;}else{\r\n	echo 321;\r\n}</pre>\r\n<p>\r\n	1。错把字符转回int比较\r\n</p>\r\n<p>\r\n	答案：123；\r\n</p>\r\n<p>\r\n	<br />\r\n</p>');
INSERT INTO `content` VALUES ('7', '计算年数MySql语句 两个时间的差的MySql语句 显示某一列出现过N次的值的MySql语句 查找表中的主键MySql语句 查看你的数库有多大MySql语句', '<h2 align=\"center\">\r\n	MySql常用语句\r\n</h2>\r\n<p>\r\n	1. 计算年数通过生日计算出有几岁。\r\n</p>\r\n<pre class=\"brush:sql\">SELECT DATE_FORMAT(FROM_DAYS(TO_DAYS(now()) - TO_DAYS(@dateofbirth)), \'%Y\') + 0;\r\n&nbsp;</pre>\r\n<p>\r\n	2.显示某一列出现过N次的值\r\n</p>\r\n<pre class=\"brush:sql\">SELECT id FROM tbl GROUP BY id HAVING COUNT(*) = N;</pre>\r\n<p>\r\n	3.查找表中的主键\r\n</p>\r\n<pre class=\"brush:sql\">SELECT COUNT(*) FROM calendar WHERE d BETWEEN Start AND Stop AND DAYOFWEEK(d) NOT IN(1,7) AND holiday=0</pre>\r\n<p>\r\n	4.查看你的数库有多大\r\n</p>\r\n<pre class=\"brush:sql\">SELECT k.column_name FROM information_schema.table_constraints t JOIN information_schema.key_column_usage k USING (constraint_name,table_schema,table_name) \r\nWHERE t.constraint_type=\'PRIMARY KEY\' AND t.table_schema=\'db\' AND t.table_name=tbl\'</pre>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span id=\"__kindeditor_bookmark_start_2__\"></span> \r\n</p>');
INSERT INTO `content` VALUES ('18', 'python如何连接mysql,mysqld', '<p>\r\n	python mysql连接:\r\n</p>\r\n<p>\r\n	1.在python里面连接mysql，首先要安装MySqldb,详细的方法请看我的另一篇文章，<a href=\"http://phpyrb.com/Article/index/artid/18.html\" target=\"_blank\">python安装mysql</a>.\r\n</p>\r\n<p>\r\n	2.\r\n</p>');
INSERT INTO `content` VALUES ('8', 'wamp5虚拟主机配置 wamp虚拟主机配置 apache虚拟主机配置 虚拟主机配置', '<h2 align=\"center\">\r\n	wamp5虚拟主机配置\r\n</h2>\r\n<p align=\"center\">\r\n	<br />\r\n</p>\r\n<p>\r\n	1&nbsp; 编辑httpd.conf，查找Include conf/extra/httpd-vhosts.conf，把前面注释符号“#”删掉。<br />\r\n2&nbsp; 编辑httpd-vhosts.conf，我把WAMPServer安装在D:/wamp，所以我这里的路径是D:\\wamp\\Apache2\\conf\\extra。\r\n</p>\r\n<p>\r\n	3&nbsp; 把里面的内容清空掉，换成下面的内容：\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;\r\n<pre class=\"brush:bash\">NameVirtualHost *:80\r\n<virtualhost *:80=\"\">\r\nServerName www.host1.com\r\nServerAlias www.host1.com\r\nDocumentRoot \"D:/wamp/www/host1\"<virtualhost *:80=\"\">\r\nServerName www.host2.com\r\nServerAlias www.host2.com\r\nDocumentRoot \"D:/wamp/www/host2\"</pre>\r\n<pre class=\"brush:bash\">&nbsp;</pre>\r\n	<p>\r\n		4&nbsp; 修改C:/WINDOWS/system3/drivers/etc/host这个文件，用记事本打开，加上如下内容:\r\n	</p>\r\n<pre class=\"brush:bash\">127.0.0.1  www.host1.com\r\n127.0.0.1  www.host2.com</pre>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n<span id=\"__kindeditor_bookmark_start_30__\"></span> \r\n	<p align=\"left\">\r\n		&nbsp;好了，然后重启apache，在浏览器里面输入www.host1.com，看看访问到的内容是不是host1这个目录呢\r\n	</p>');
INSERT INTO `content` VALUES ('9', 'Liunx配置IP和DNS debian配置ip debian配置dns liunx配置ip和dns', '<h2 align=\"center\">\r\n	配置 IP 和 DNS\r\n</h2>\r\n配置IP和NDS，把 /etc/network/interfaces 修改成\r\n<pre class=\"brush:bash\"># This file describes the network interfaces available on your system\r\n# and how to activate them. For more information, see interfaces(5).\r\n\r\n# The loopback network interface\r\nauto lo\r\niface lo inet loopback\r\n\r\n# The primary network interface\r\nallow-hotplug eth0\r\niface eth0 inet static\r\n\r\naddress 192.168.1.23\r\nnetmask 255.255.255.0\r\nnetwork 192.168.1.0\r\nbroadcast 192.168.1.255\r\ngateway 192.168.1.1\r\n# dns-* options are implemented by the resolvconf package, if installed\r\ndns-nameservers 192.168.1.1</pre>\r\nDNS，把 /etc/resolv.conf 修改成\r\n<pre class=\"brush:bash\">nameserver 192.168.1.1</pre>\r\n<p>\r\n	之后运行 reboot 重启电脑\r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>');
INSERT INTO `content` VALUES ('10', 'Linux配置`.bashrc`,  `vim` Linux配置命令缩写 Linux配置git Linux配置vim vim配置', '<h2 align=\"center\">\r\n	Linux配置`.bashrc`,&nbsp; `vim`\r\n</h2>\r\n<p>\r\n	linux 命令缩写，简写配置命令如下：\r\n</p>\r\n<p>\r\n	配置&nbsp;`.bashrc`，修改成\r\n</p>\r\n<p>\r\n	首先执行命令 cd\r\n</p>\r\n<p>\r\n	然后输入 vi .bashrc 执行 然后把下面的的代码替换里面的找码，（复制需要升级VI 请看我的另一篇<a href=\"http://phpyrb.com/Article-index-artid-1.html\" target=\"_blank\"> debian 初始安装</a>）\r\n</p>\r\n<pre class=\"brush:bash\"># You may uncomment the following lines if you want `ls\' to be colorized:\r\n# export LS_OPTIONS=\'--color=auto\'\r\n# eval \"`dircolors`\"\r\nalias ls=\'ls -Ah --color=auto\'\r\nalias grep=\'grep --color=auto\'\r\nalias fgrep=\'fgrep --color=auto\'\r\nalias egrep=\'egrep --color=auto\'\r\n\r\nalias la=\'ls -AF\'\r\nalias ll=\'ls -lF\'\r\nalias l=\'ls -CF\'\r\n\r\n# Some more alias to avoid making mistakes:\r\nalias rm=\'rm -i\'\r\nalias cp=\'cp -i\'\r\nalias mv=\'mv -i\'\r\n\r\n</pre>\r\n配置 `vim`\r\n<p>\r\n	clone github 已经配置好的。 已配置的相关插件：\r\n</p>\r\n<ul>\r\n	<li>\r\n		blog\r\n	</li>\r\n	<li>\r\n		calendar\r\n	</li>\r\n	<li>\r\n		neocomplcache\r\n	</li>\r\n	<li>\r\n		NERD_commenter\r\n	</li>\r\n	<li>\r\n		NERD_tree\r\n	</li>\r\n	<li>\r\n		taglist\r\n	</li>\r\n	<li>\r\n		txtbrowser\r\n	</li>\r\n	<li>\r\n		vimwiki\r\n	</li>\r\n	<li>\r\n		voom\r\n	</li>\r\n	<li>\r\n		zencoding\r\n	</li>\r\n</ul>\r\n<p>\r\n	下载配置\r\n</p>\r\n<pre class=\"brush:bash\">cd\r\ngit clone https://github.com/fxiao/vimrc-linux_osx.git .vim\r\n\r\nln -s .vim/vimrc ./.vimrc</pre>\r\n配置联动提示\r\n<pre class=\"brush:bash\">ctags -R --languages=php .</pre>');
INSERT INTO `content` VALUES ('11', 'Linux配置安装git git linux配置 liunx git配置安装 git如何安装配置 linux中git如何安装配置 git在linux中如何安装配置 ', '<h2 align=\"center\">\r\n	Linux配置git\r\n</h2>\r\n<p>\r\n	配置 git 的基本信息和命令缩写\r\n</p>\r\n<pre class=\"brush:bash\">cd\r\nvi .gitconfig</pre>\r\n<p>\r\n	写入\r\n</p>\r\n<pre class=\"brush:bash\">[user]\r\n    name = mawei\r\n    email = 491518132@qq.com\r\n[core]\r\n    excludesfile = /root/.gitignore_global\r\n    editor = vim\r\n[alias]\r\n    co = checkout\r\n    ci = commit\r\n    st = status\r\n    ca = commit -a\r\n    b = branch\r\n    lg = log --graph --pretty=format:\'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset - %C(yellow)%cn%Creset\' --abbrev-commit --date=relative\r\n[diff]\r\n    tool = vimdiff\r\n[difftool]\r\n    prompt = No</pre>\r\n配置 git 忽略文件规则\r\n<pre class=\"brush:bash\">cd\r\nvi .gitignore_global</pre>\r\n写入\r\n<pre class=\"brush:bash\">#compiled source #\r\n###################\r\n*.com\r\n*.class\r\n*.dll\r\n*.exe\r\n*.o\r\n*.so\r\n*.pyc\r\n\r\n# Packages #\r\n############\r\n# it\'s better to unpack these files and commit the raw source\r\n# git has its own built in compression methods\r\n*.7z\r\n*.dmg\r\n*.gz\r\n*.iso\r\n*.jar\r\n*.rar\r\n*.tar\r\n*.zip\r\n\r\n# Logs and databases #\r\n######################\r\n*.log\r\n*.sqlite\r\n\r\n# OS generated files #\r\n######################\r\n.DS_Store*\r\nehthumbs.db\r\n._*\r\n.Spotlight-V100\r\n.Trashes\r\nIcon?\r\nThumbs.db\r\n.svn\r\n*.bak\r\nehthumbs.db\r\nRuntime\r\n*.swp\r\ntags\r\n*~</pre>');
INSERT INTO `content` VALUES ('12', 'mysql分组group mysql gorup mysql分组统计 mysql分组显示 mysql分组并显示id mysql分组统计', '<p align=\"center\">\r\n	mysql分组group\r\n</p>\r\n<p align=\"left\">\r\n	mysql分组并显示id\r\n</p>\r\n<pre class=\"brush:sql\">SELECT *,group_concat(id) as ids FROM tablename WHERE condition GROUP BY field</pre>\r\n<p align=\"left\">\r\n	mysql分组统计\r\n</p>\r\n<pre class=\"brush:sql\">SELECT *,COUNT(id) as count FROM tablename WHERE condition GROUP BY field</pre>\r\n<p align=\"left\">\r\n	<br />\r\n</p>');
INSERT INTO `content` VALUES ('13', '浏览器当前窗口可视区域高度 浏览器当前窗口文档body的总高度 包括border padding margin 浏览器当前窗口文档对象宽度alert($(document.body).width());//浏览器当前窗口文档body的高度', '<h3 style=\"text-align:center;\">\r\n	&nbsp; jQuery 获取屏幕高度、宽度\r\n</h3>\r\n<blockquote>\r\n	<br />\r\nalert($(window).height());//浏览器当前窗口可视区域高度<br />\r\nalert($(document).height());//浏览器当前窗口文档的高度<br />\r\nalert($(document.body).height());//浏览器当前窗口文档body的高度<br />\r\nalert($(document.body).outerHeight(true));//浏览器当前窗口文档body的总高度 包括border padding margin<br />\r\nalert($(window).width());//浏览器当前窗口可视区域宽度<br />\r\nalert($(document).width());//浏览器当前窗口文档对象宽度alert($(document.body).width());//浏览器当前窗口文档body的高度<br />\r\nalert($(document.body).outerWidth(true));//浏览器当前窗口文档body的总宽度 包括border padding margin<br />\r\n&nbsp;// 获取页面的高度、宽度<br />\r\n<pre class=\"brush:jscript\">functiongetPageSize() {\r\n			varxScroll, yScroll;\r\n			if(window.innerHeight &amp;&amp; window.scrollMaxY) {\r\n				xScroll = window.innerWidth + window.scrollMaxX;\r\n				yScroll = window.innerHeight + window.scrollMaxY;\r\n			}else{\r\n				if(document.body.scrollHeight &gt; document.body.offsetHeight) {// all but Explorer Mac\r\n					xScroll = document.body.scrollWidth;\r\n					yScroll = document.body.scrollHeight;\r\n				}else{// Explorer Mac...would also work in Explorer 6 Strict, Mozilla and Safari\r\n					xScroll = document.body.offsetWidth;\r\n					yScroll = document.body.offsetHeight;\r\n				}\r\n			}\r\n			varwindowWidth, windowHeight;\r\n			if(self.innerHeight) {// all except Explorer\r\n				if(document.documentElement.clientWidth) {\r\n					windowWidth = document.documentElement.clientWidth;\r\n				}else{\r\n					windowWidth = self.innerWidth;\r\n				}\r\n				windowHeight = self.innerHeight;\r\n			}else{\r\n				if(document.documentElement &amp;&amp; document.documentElement.clientHeight) {// Explorer 6 Strict Mode\r\n					windowWidth = document.documentElement.clientWidth;\r\n					windowHeight = document.documentElement.clientHeight;\r\n				}else{\r\n					if(document.body) {// other Explorers\r\n						windowWidth = document.body.clientWidth;\r\n						windowHeight = document.body.clientHeight;\r\n					}\r\n				}\r\n			}\r\n			// for small pages with total height less then height of the viewport\r\n			if(yScroll &lt; windowHeight) {\r\n				pageHeight = windowHeight;\r\n			}else{\r\n				pageHeight = yScroll;\r\n			}\r\n			// for small pages with total width less then width of the viewport\r\n			if(xScroll &lt; windowWidth) {\r\n				pageWidth = xScroll;\r\n			}else{\r\n				pageWidth = windowWidth;\r\n			}\r\n			arrayPageSize =newArray(pageWidth, pageHeight, windowWidth, windowHeight);\r\n			returnarrayPageSize;\r\n		}</pre>\r\n&nbsp;// 滚动条\r\n<pre class=\"brush:jscript\">document.body.scrollTop;\r\n$(document).scrollTop();\r\n</pre>\r\n<br />\r\n&nbsp;\r\n</blockquote>');
INSERT INTO `content` VALUES ('15', 'vim基本命令,linux下vim常用命令，vim常用命令', '<p>\r\n	vim是linux中很强大的文件编辑器，也是最基本的编辑器，他是用命令执行操作，如果不会命令，就没办法操作此编辑器\r\n</p>\r\n<p>\r\n	vim有两种基本模式 普通模式 和 插入模式\r\n</p>\r\n<p>\r\n	进入普通模式按 Esc ,进入插入模式按 i\r\n</p>\r\n<p>\r\n	vim基本命令如下：\r\n</p>\r\n<p>\r\n	vim file.txt 新建文件;\r\n</p>\r\n<p>\r\n	h(左) l(右) k(上) j(下) 移动光标，方向键也可以移动;\r\n</p>\r\n<p>\r\n	x 删除当前光标上的字符，\r\n</p>\r\n<p>\r\n	5x 在普通模式下删除当前光标为起点位置之后的5个字符\r\n</p>\r\n<p>\r\n	dd 在普通模式下删除一行\r\n</p>\r\n<p>\r\n	J 在普通模式下按大写J把当前光标和光标下一行合成一行\r\n</p>\r\n<p>\r\n	u 在普通模式下按u撤消操作\r\n</p>\r\n<p>\r\n	ctrl-r 返回之前的操作\r\n</p>\r\n<p>\r\n	a 在普通模式下输入a，表示把光标移动到下个位置并变成插入模式\r\n</p>\r\n<p>\r\n	o&nbsp;在普通模式下输入o，表示把光标移动到下行并变成插入模式\r\n</p>\r\n<p>\r\n	,+cc 注释\r\n</p>\r\n<p>\r\n	,+cu 删除注释\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	正则查找\r\n</p>\r\n<pre class=\"brush:bash\">：%s/aaa/bbb/</pre>\r\n<p>\r\n	%表示全文，s表示搜索替换，aaa表示查找的字符，bbb替换的字符\r\n</p>\r\n<p>\r\n	缩进\r\n</p>\r\n<pre class=\"brush:bash\">gg 表示跳到最前\r\n= 缩进\r\nG 跳到最后</pre>\r\n<p>\r\n	<br />\r\n</p>');
INSERT INTO `content` VALUES ('14', 'python各种类型转换-int,str,char,float,ord,hex,oct等 ', '<pre class=\"brush:python\">int(x [,base ])         将x转换为一个整数  \r\nlong(x [,base ])        将x转换为一个长整数  \r\nfloat(x )               将x转换到一个浮点数  \r\ncomplex(real [,imag ])  创建一个复数  \r\nstr(x )                 将对象 x 转换为字符串  \r\nrepr(x )                将对象 x 转换为表达式字符串  \r\neval(str )              用来计算在字符串中的有效Python表达式,并返回一个对象  \r\ntuple(s )               将序列 s 转换为一个元组  \r\nlist(s )                将序列 s 转换为一个列表  \r\nchr(x )                 将一个整数转换为一个字符  \r\nunichr(x )              将一个整数转换为Unicode字符  \r\nord(x )                 将一个字符转换为它的整数值  \r\nhex(x )                 将一个整数转换为一个十六进制字符串  \r\noct(x )                 将一个整数转换为一个八进制字符串  </pre>');
INSERT INTO `content` VALUES ('17', 'python的基础运算符，注释，逻辑运算符，运算优先级，字符串，列表，元组等', '<p>\r\n	1.python基础运算符：加(+)、减(-) 、乘(*)、除(/) 、除(//)、赋值(=) 、取余(%)、 乘方(**);说明是传统的除法，而是浮点除法，会对结果进行四舍五入。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	2.python比较运算符：小于(&lt;) 、小于等于(&lt;=) 、大于(&gt;) 、大于等于(&gt;=)、 等于(==)&nbsp;、不等于(&nbsp;!=)、不等于(&lt;&gt;) ,python目前支持两种“不等于”，不过python日后会被淘汰，所以尽量使用 (!=)。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	3.Python 逻辑运算符:与(and)、 或(or)、 非(not);\r\n</p>\r\n<p>\r\n	4.python支持赋值有:整数、浮点数、字符、字符串、表达式等。\r\n</p>\r\n<p>\r\n	5.python不支持自增(++1)、自减(--1)，但支持 n *=5,n +=5等这样的运算式。\r\n</p>\r\n<p>\r\n	6.python的变量是区分大小写.\r\n</p>\r\n<p>\r\n	7.Python字符串是指引号之间的字符集合，包括单引号或双引号或三引号，可以用索引运算符( [ ] )和切片运算符( [ : ] )得到子字符串，第一个字符的索引是 0，最后一个字符的索引是－1.\r\n</p>\r\n<p>\r\n	8.Python字符连接可以用加号( + )，例：n=‘aa’+\'bb\';n=aabb。还可以用乘号(*),表示把字符串重复多少次，例：n=2*\'aa\';n=aaaa.\r\n</p>\r\n<p>\r\n	9.可以将列表和元组当成普通的“数组”，它能保存任意数量任意类型的Python 对象。和数组一样，通过从0 开始的数字索引访问元素，但是列表和元组可以存储不同类型的对象。列表和元组有几处重要的区别。列表元素用中括号( [ ])包裹，元素的个数及元素的值可以改变。元组元素用小括号(( ))包裹，不可以更改（尽管他们的内容可以）。元组可以看成是只读的列表。通过切片运算( [ ] 和 [ : ] )可以得到子集，这一点与字符串的使用方法一样。\r\n</p>');
INSERT INTO `content` VALUES ('19', '在python中如何安装mysql,mysql在python中如何安装,python安装mysql.', '<h4>\r\n	python安装mysql\r\n</h4>\r\n<p>\r\n	1.在python安装msyql之前，首先需要安装python的安装支持包，详细安装请看我的另一篇博客文章<a href=\"http://phpyrb.com/Article/index/artid/1.html\" target=\"_blank\">《debian的初始安装》</a> \r\n</p>\r\n<p>\r\n	2.安装好python的安装支持包后就可以安装mysql数据库支持了，详细安装方法如下：\r\n</p>\r\n<pre class=\"brush:bash\">cd\r\neasy_install mysql-python</pre>\r\n<p>\r\n	等待安装完成，安装时间视你的网速而定，而此安装环境为linux下。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>');
INSERT INTO `content` VALUES ('20', '', 'header(\"Content-type:text/html;charset=utf-8\")的作用：在服务器响应浏览器的请求时，告诉浏览器以编码格式为UTF-8的编码显示该内容 <br />\r\n关于file_exists()函数不支持中文路径的问题:因为php函数比较早，不支持中文，所以如果被下载的文件名是中文的话，需要对其进行字符编码转换，否则file_exists()函数不能识别，可以使用iconv()函数进行编码转换 <br />\r\n$file_sub_path() 我使用的是绝对路径，执行效率要比相对路径高 <br />\r\nHeader(\"Content-type: application/octet-stream\")的作用：通过这句代码客户端浏览器就能知道服务端返回的文件形式 <br />\r\nHeader(\"Accept-Ranges: bytes\")的作用：告诉客户端浏览器返回的文件大小是按照字节进行计算的 <br />\r\nHeader(\"Accept-Length:\".$file_size)的作用：告诉浏览器返回的文件大小 <br />\r\nHeader(\"Content-Disposition: attachment; filename=\".$file_name)的作用:告诉浏览器返回的文件的名称 <br />\r\n以上四个Header()是必需的 <br />\r\nfclose($fp)可以把缓冲区内最后剩余的数据输出到磁盘文件中，并释放文件指针和有关的缓冲区 <br />\r\n详细出处参考：<a href=\"http://www.jb51.net/article/30563.htm\">http://www.jb51.net/article/30563.htm</a>');
INSERT INTO `content` VALUES ('21', 'vim中如何将tab转换成空格.', '<p>\r\n	在vim中，很多时候需要将tab转换成空格(space)。可以使用ret命令（replace tab）。<br />\r\n[range]ret[ab]!&nbsp; [new-tabstop]<br />\r\n<br />\r\n例子：\r\n</p>\r\n<p>\r\n	将整篇文章由第一行到最后一行的 tab 转换成 space ，如果tab用4个空格(space)替换。\r\n</p>\r\n<p>\r\n	先把vim转成命令模式\r\n<pre class=\"brush:bash\">\r\n:set  expandtab\r\n:%ret! 4</pre>\r\n<br />\r\n假如没有写4的话，则表示用当前的tab宽度设定替换为空格（space）。<br />\r\n<br />\r\n其它相关命令如下：<br />\r\n:set&nbsp; tabstop=4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 设定tab宽度为4个字符<br />\r\n:set shiftwidth=4&nbsp;&nbsp;&nbsp;&nbsp; 设定自动缩进为4个字符<br />\r\n:set&nbsp; expandtab&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用space替代tab的输入<br />\r\n:set noexpandtab&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 不用space替代tab的输入\r\n</p>');
INSERT INTO `content` VALUES ('22', '如何让你的VPS的安全登录的方法，可以用ssh登录，拒绝登录攻击的方法。', '<p>\r\n	详细方法如下：\r\n</p>\r\n<p>\r\n	第一步：禁止让你的root用户可以直接用ssh、sshd、ftp登录.\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;但登录VPS总要有个用户名，你可以新建一个用户，普通用户就可以了，然后 su 命令临时提升成 root 用户的权限.\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;su 命令解释：把当前用户临时转成指定用户的命令。以用户 mw 为例：\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;1.su root 临时切换到root用户，需要输入密码，切换后环境变量不变，取得root的部分权限，且只能使用trunk用户path路径中的命令，不能使用root用户path路径中的独有命令。\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;2.su - root 切换为root用户，需要输入密码，切换后环境变量改变，几乎可以不受限制的做任何事。\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;3。su -&nbsp;mw 从root切换回普通用户，无需输入密码，切换后只拥有 mw 权限。\r\n</p>\r\n<p>\r\n	第二步：可以通过修改 /etc/ssh/sshd_config 来禁止 root 直接登录控制你的VPS。用vim打开，找到\r\n</p>\r\n<p>\r\n	&nbsp;PermitRootLogin yes&nbsp;\r\n</p>\r\n<p>\r\n	把 yes 改成&nbsp;no.\r\n</p>\r\n<p>\r\n	第三步：启用 SSH Key 登录，现在用ssh登录到 root 用户不允许，会提示你没有权限。但可以使用一对公有SSH的 key来登录(ssh public/private key),详细的配置步骤如下：\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;a.在你的客户端运行如下的命令，来创建一对 key 用户登录验证\r\n</p>\r\n<pre class=\"brush:bash\">ssh-keygen -t rsa</pre>\r\n<p>\r\n	运行该命令，会产生两个文件(rsa 是一种加密算法)：(id_rsa) 和 (id_rsa.pub),前面一个为私有的key，后面的为公有key,在生成key的时候会提示你输入文件路径，直接回车。然后接着提示输入 passphrase，相当于密码一样的东西，如果不想登录的时候还要输入密码的话，最好回车，用来保护 private key不被滥用。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	第四步：在你的VPS上创建一个文件，在/root/.ssh/authorized_keys文件，把生成的公KEY(id_rsa.pub)的内容完整的复制到刚刚新建的文件。注意不要多添加任何东西，包括空格，空行。最好用命令。命令如下：\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"brush:bash\">cat id_rsa.pub &gt;&gt; authorized_keys</pre>\r\n<p></p>\r\n<p>\r\n	第五步：设置权限，.ssh目录权限是&nbsp; ssh-keygen自己生成的不要乱改，一般设置成 700 ，\r\n</p>\r\n<p>\r\n	id_rsa 权限为 600 ,设置权限的命令(chmod 600 filename);\r\n</p>\r\n<p>\r\n	.ssh 路径设置，在/etc/ssh/sshd_config<br />\r\n里面会有默认放key的位置 是 <br />\r\nAuthorizedKeysFile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .ssh/authorized_keys<br />\r\n如果不配就把key放那里就好。\r\n</p>');
INSERT INTO `content` VALUES ('31', 'django url 正则表达式的应用，正则表达式用法，正则表达式详解，python中正则表达式.', '<p align=\"center\">\r\n	django 正则表达式－Python 学习笔记3\r\n</p>\r\n<p align=\"left\">\r\n	1.正则是做字符匹配，就元字符匹配，正则表达式元字符列表如下：\r\n</p>\r\n<p align=\"left\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;. ^ $ * + ? { } [ ] \\ | ( )\r\n</p>\r\n<p align=\"left\">\r\n	下面就一一解释这些元字符，\r\n</p>\r\n<p align=\"left\">\r\n	.&nbsp; 点号表示匹配除换行符外的任意一个字符，匹配包括换行符以内的任意一个字符。\r\n</p>\r\n<p align=\"left\">\r\n	^ 上尖括号表示开头匹配。\r\n</p>\r\n<p align=\"left\">\r\n	$ 表示匹配一个字符串的结尾或者字符串最后面的换行符。\r\n</p>\r\n<p align=\"left\">\r\n	* 星号表示指定前一个字符被匹配零次或多次，而不是一次。\r\n</p>\r\n<p align=\"left\">\r\n	&nbsp;&nbsp;&nbsp; 例： “p*p” //里面的星号可以匹配：‘pp’,\'ppp\',\'pppp\'。中间星号可以匹配0个1个2个或者更多个。\r\n</p>\r\n<p align=\"left\">\r\n	+ 加号表示指定前一个字符被匹配 1 次或多次，至少要匹配 1 次。\r\n</p>\r\n<p align=\"left\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;例： “ph*p” //里面的星号可以匹配：‘php’,\'phhp\',\'phhhp\'。中间星号可以匹配1个2个3个或者更多个,至少要匹配1个。\r\n</p>\r\n<p align=\"left\">\r\n	?&nbsp; 问号表示将前面的字符匹配 0 次或者 1 次。\r\n</p>\r\n<p align=\"left\">\r\n	&nbsp;&nbsp;&nbsp; 例：“ph?p” //里面的问号可以匹配: ‘pp’,\'php\'。中间问号匹配 0 次 或 1 次。\r\n</p>\r\n<p align=\"left\">\r\n	{} 大特号表示匹配多少次，{m,n} m 和 n 都是数字，指定将前面的字符重复 m 到 n 次。\r\n</p>\r\n<p align=\"left\">\r\n	&nbsp;&nbsp;&nbsp; 例：‘ph{1,2}p’ //表示 h 匹配 1 次到 2 次。\r\n</p>\r\n<p align=\"left\">\r\n	[] 中括号表示你要匹配字符集，字符集区间。\r\n</p>\r\n<p align=\"left\">\r\n	&nbsp;&nbsp;&nbsp; 例：[a-d] //表示匹配 a,b,c,d 都可以匹配。\r\n</p>\r\n<p align=\"left\">\r\n	\\&nbsp; <span id=\"__kindeditor_bookmark_start_15__\"></span>反斜杆，转义特殊字符。\r\n</p>\r\n<p align=\"left\">\r\n	|&nbsp; 管道，表示匹配管道两边的任意一个字符。\r\n</p>\r\n<p align=\"left\">\r\n	&nbsp;&nbsp;&nbsp; 例：A|B 表示匹配 A 或者 B。\r\n</p>\r\n<p align=\"left\">\r\n	() 匹配圆括号里的字符内容，并指定组的开始和结束位置。组里面的内容可以被提取，也可以采用\\数字这样的特殊序列取里面的字符。\r\n</p>\r\n<p align=\"left\">\r\n	&nbsp;&nbsp;&nbsp; 例：“ph(py)rb” 可以用\\1取出 ‘py’。\r\n</p>\r\n<p align=\"left\">\r\n	\\d 匹配任何十进制数；它相当于类 [0-9]。<br />\r\n\\D 匹配任何非数字字符；它相当于类 [^0-9]。<br />\r\n\\s 匹配任何空白字符；它相当于类 [ \\t\\n\\r\\f\\v]。<br />\r\n\\S 匹配任何非空白字符；它相当于类 [^ \\t\\n\\r\\f\\v]。<br />\r\n\\w 匹配任何字母数字字符；它相当于类 [a-zA-Z0-9_]。<br />\r\n\\W 匹配任何非字母数字字符；它相当于类 [â-zA-Z0-9_]。\r\n</p>');
INSERT INTO `content` VALUES ('24', '本人最近开始学习python django ，为了方便自己复习，所以做一个自己的小小笔记。本笔记为本人个人学习所总结，有不对的地方希望各位高手指点。', '<p>\r\n	python django 学习笔记第一篇：django 安装等，（注：本django版本为1.5.2 ,系统为debain）\r\n</p>\r\n<p>\r\n	1.安装django,直接运行如下命令：\r\n</p>\r\n<pre class=\"brush:bash\">easy_install django\r\n</pre>\r\n<p>\r\n	安装的时候如果没有报错，并运行如下的命令测试\r\n</p>\r\n<pre class=\"brush:bash\">python -c \"import django; print(django.get_version())\"</pre>\r\n<p>\r\n	如果能看到版本就说明安装成功了。如果不成功看你是否安装了 easy_install ,详细情况请看我的另一篇博客文章 <a href=\"http://www.phpyrb.com/Article-index-artid-1.html\" target=\"_blank\">《debian 初始安装》</a> \r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>');
INSERT INTO `content` VALUES ('25', 'Sublime 常用的快捷键列表。', '<p>\r\n	<strong>Sublime 常用的快捷键列表如下：</strong> \r\n</p>\r\n<p>\r\n	Ctrl+L 选择整行（按住-继续选择下行）\r\n</p>\r\n<p>\r\n	Ctrl+KK 从光标处删除至行尾\r\n</p>\r\n<p>\r\n	Ctrl+Shift+K 删除整行\r\n</p>\r\n<p>\r\n	Ctrl+Shift+D 复制光标所在整行，插入在该行之前\r\n</p>\r\n<p>\r\n	Ctrl+J 合并行（已选择需要合并的多行时）\r\n</p>\r\n<p>\r\n	Ctrl+KU 改为大写\r\n</p>\r\n<p>\r\n	Ctrl+KL 改为小写\r\n</p>\r\n<p>\r\n	Ctrl+D 选词 （按住-继续选择下个相同的字符串）\r\n</p>\r\n<p>\r\n	Ctrl+M 光标移动至括号内开始或结束的位置\r\n</p>\r\n<p>\r\n	Ctrl+Shift+M 选择括号内的内容（按住-继续选择父括号）\r\n</p>\r\n<p>\r\n	Ctrl+/ 注释整行（如已选择内容，同“Ctrl+Shift+/”效果）\r\n</p>\r\n<p>\r\n	Ctrl+Shift+/ 注释已选择内容\r\n</p>\r\n<p>\r\n	Ctrl+Z 撤销\r\n</p>\r\n<p>\r\n	Ctrl+Y 恢复撤销\r\n</p>\r\n<p>\r\n	Ctrl+M 光标跳至对应的括号\r\n</p>\r\n<p>\r\n	Alt+. 闭合当前标签\r\n</p>\r\n<p>\r\n	Ctrl+Shift+A 选择光标位置父标签对儿\r\n</p>\r\n<p>\r\n	Ctrl+Shift+[ 折叠代码\r\n</p>\r\n<p>\r\n	Ctrl+K0 展开所有\r\n</p>\r\n<p>\r\n	Ctrl+U 软撤销\r\n</p>\r\n<p>\r\n	Ctrl+T 词互换\r\n</p>\r\n<p>\r\n	Ctrl+Shift+] 展开代码\r\n</p>\r\n<p>\r\n	Ctrl+KT 折叠属性\r\n</p>\r\n<p>\r\n	Tab 缩进 自动完成\r\n</p>\r\n<p>\r\n	Shift+Tab 去除缩进\r\n</p>\r\n<p>\r\n	Ctrl+Shift+↑ 与上行互换\r\n</p>\r\n<p>\r\n	Ctrl+Shift+↓ 与下行互换\r\n</p>\r\n<p>\r\n	Ctrl+K Backspace 从光标处删除至行首\r\n</p>\r\n<p>\r\n	Ctrl+Enter 光标后插入行\r\n</p>\r\n<p>\r\n	Ctrl+Shift+Enter 光标前插入行\r\n</p>\r\n<p>\r\n	Ctrl+F2 设置书签\r\n</p>\r\n<p>\r\n	F2 下一个书签\r\n</p>\r\n<p>\r\n	Shift+F2 上一个书签\r\n</p>');
INSERT INTO `content` VALUES ('26', '如何使用反向代理，反向代理如何配置等。', '<p>\r\n	反向代理的配置如下：\r\n</p>\r\n<pre class=\"brush:bash\">\r\nupstream oeserver {\r\n    server 127.0.0.1:8000;\r\n}\r\nserver\r\n{\r\n    listen       80;\r\n    server_name www.phpyrb.com phpyrb.com;\r\n    root /www/mw;\r\n\r\n    location /\r\n    {\r\n        proxy_next_upstream http_502 http_504 error timeout invalid_header;\r\n        proxy_pass_header Set-Cookie;\r\n        proxy_set_header   Host             $host;\r\n        proxy_set_header   X-Real-IP        $remote_addr;\r\n        proxy_set_header   X-Forwarded-For  $proxy_add_x_forwarded_for;\r\n        proxy_redirect  off;\r\n\r\n        proxy_pass http://oeserver;\r\n\r\n        proxy_buffering on;\r\n        proxy_cache_valid       1d;\r\n        expires 1d;\r\n    }\r\n\r\n    location ~* \\.(js|css|png|jpg|jpeg|gif|ico)$\r\n    {\r\n        proxy_buffering on;\r\n        proxy_cache_valid       1d;\r\n        expires 1d;\r\n    }\r\n\r\n    access_log off; \r\n}</pre>\r\n<p>\r\n	&nbsp;\r\n</p>');
INSERT INTO `content` VALUES ('27', 'mysql的数据库导入与导出的sql语句。', '<p>\r\n	mysql 数据库导入、导出\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	1.设置MYSQL的环境变量\r\n</p>\r\n<p>\r\n	2.然后按 win+r 打开远行，在输入框里面输入 cmd,打开DOS命令窗口。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	导出命令如下：\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"brush:bash\">mysqldump -u username -p password databasename &gt; d:\\\\test.sql (目录路径)</pre>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	导入命令如下：\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"brush:bash\">mysql -u username -p password databasename &lt; d:\\\\test.sql</pre>\r\n创建数据库命令如下：\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"brush:bash\">create database dbname</pre>\r\n<br />');
INSERT INTO `content` VALUES ('28', 'Python Django POST 方法运行时候会报错 Python Django POST Forbidden (403) ，解决办法如下', '<p>\r\n	在Django 中用POST提交时会报错，错误如下：\r\n</p>\r\n<h1 style=\"color:#000000;text-indent:0px;font-family:sans-serif;font-style:normal;font-weight:normal;\">\r\n	Forbidden<span class=\"Apple-converted-space\">&nbsp;</span><span style=\"color:#666666;font-size:16px;font-weight:normal;\">(403)</span> \r\n</h1>\r\n<p style=\"color:#000000;text-indent:0px;\">\r\n	CSRF verification failed. Request aborted.\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	这注意是django开启了防 跨站请求伪造 （Cross Site Request Forgery），所以在用POST提交没有带验证 CSRF；\r\n</p>\r\n<p>\r\n	解决办法如下，有二种：\r\n</p>\r\n<p>\r\n	第一种，很好做，既然是开启，那就是把他关掉就好了。\r\n</p>\r\n<p>\r\n	在你的项目配置文件里，找到&nbsp;\r\n</p>\r\n<p>\r\n	&nbsp;“MIDDLEWARE_CLASSES =“\r\n</p>\r\n<p>\r\n	把里面的\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;\'django.middleware.csrf.CsrfViewMiddleware\',\r\n</p>\r\n<p>\r\n	注释掉就可以，就是在前面加个#号就ok了。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	第二种方法是就过滤这个错误消息\r\n</p>\r\n<p>\r\n	在你要用到post 的类里面导入：\r\n</p>\r\n<pre class=\"brush:python\">from django.views.decorators.csrf import csrf_exempt </pre>\r\n<p>\r\n	并你要用到的函数前面加上如下代码：\r\n</p>\r\n<pre class=\"brush:python\">@csrf_exempt </pre>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	好了，现在看看行不：\r\n</p>\r\n<p>\r\n	还有种方法，我不是太懂\r\n</p>\r\n<p>\r\n	详细就去官方的文档\r\n</p>\r\nhttps://docs.djangoproject.com/en/dev/ref/contrib/csrf/#ajax');
INSERT INTO `content` VALUES ('29', 'lftp命令参数解析帮忙，lftp如何传单文件，如何传文件夹，liunx下使用lftp命令，如何使用lftp命令。', '<p>\r\n	lftp 命令使用如下：\r\n</p>\r\n<p>\r\n	1.首先安装lftp,安装命令如下：（本命令默认为debian系统）\r\n</p>\r\n<pre class=\"brush:bash\">apt-get install lftp</pre>\r\n<p>\r\n	2.如何使用lftp连接，连接命令如下：\r\n</p>\r\n<pre class=\"brush:bash\">lftp root:123@www.phpyrb.com\r\n</pre>\r\n<p>\r\n	命令解析如下：lftp 用户名：密码@你远端服务器域名，但这样一般如何你用户或密码错误是不会报错，所以你不知道到底连接正确没有，所以你要测试一下，很简单，只要用 ls 查看一下，如果能看到文件列表，那你就连接成功，否则就连接失败，那只能重新连接了。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	3.如何把你的连接加入到书签，这样以后就直接连，不用每回输入用户名和密码,连接正确后，输入命令，命令如下:\r\n</p>\r\n<pre class=\"brush:bash\">bookmark add phpyrb\r\n</pre>\r\n<p>\r\n	这样以后要连接，可以直接使用命令，命令如下：\r\n</p>\r\n<pre class=\"brush:bash\">lftp phpyrb</pre>\r\n<p>\r\n	其中 <a target=\"_blank\" href=\"http://www.phpyrb.com\">phpyrb</a> 为书签名。\r\n</p>\r\n<p>\r\n	4.把本地的修改好的文件传到远端，单文件传命令如下：\r\n</p>\r\n<pre class=\"brush:bash\"> put localhost.php -o remote.php</pre>\r\n<p>\r\n	传文件夹使命如下：\r\n</p>\r\n<pre class=\"brush:bash\">put localhost -O remote</pre>\r\n<p>\r\n	命令解析：localhost.php为本地的文件名路径，localhost为本地文件夹路径。remote.php为本地的文件名路径，remote为本地文件夹路径。如果要传文件用小写的 ‘‘o’’,文件夹为大写的“O”。\r\n</p>');
INSERT INTO `content` VALUES ('30', '在使用 jquery 时，如何为动态新添加的元素绑定事件，找了很久，后来发jquery有这样的方法，我还用过，只是一直不知道他是可以支持动态绑定的。', '<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;今天在用jquery写脚本的时候，要做个用jquery添加的新元素绑定一个删除事件，发现怎么绑定都不行，想了很久才发现是因为默认的事件只支持页面已经加载过的元素，新添加的元素是没有加载的。如何为动态新添加的元素绑定事件，找了很久，后来发jquery有这样的方法，我还用过，只是一直不知道他是可以支持动态绑定的。好了不费话了.\r\n</p>\r\n<br />\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 其实还有一个方法，就是要加载多一个插件，liveQuery. 这个插件我没有用过，有意是可以自己找资料。\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; .live() 方法能对一个还没有添加进DOM的元素有效，是由于使用了事件委托，<br />\r\n&nbsp;&nbsp;&nbsp; live 函数具体使用方法如下 ：\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;在jQuery 1.4.1 中，.live() 能接受多个，用空间分隔事件，在提供类似.bind()的功能 。例如，我们可以“live ” \r\n同时绑定mouseover和mouseout事件,像这样：\r\n</p>\r\n<pre class=\"brush:jscript\">$(\'.hoverme\').live(\'mouseover mouseout\', function(event) {\r\n  if (event.type == \'mouseover\') {\r\n    // do something on mouseover\r\n  } else {\r\n    // do something on mouseout\r\n  }\r\n});</pre>\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在jQuery 1.4.3中:你可以绑定一个或多个事件类型的字符串和函数的数据映射来执行他们\r\n<pre class=\"brush:jscript\">$(\"a\").live({\r\n  click: function() {\r\n    // do something on click\r\n  },\r\n  mouseover: function() {\r\n    // do something on mouseover\r\n  }\r\n});</pre>');
INSERT INTO `content` VALUES ('32', 'django url 详细配置，用法，说明，如何去配置url 等。', '<div align=\"center\">\r\n	<p>\r\n		<span style=\"font-size:16px;\">django url 详解</span> \r\n	</p>\r\n</div>\r\n<p align=\"left\">\r\n	&nbsp;&nbsp;&nbsp;django的url是你网站访问的路径。配置好你的URL是建好一个网站的重要核心。下面将详细讲解 Django url配置过程：\r\n</p>\r\n<p align=\"left\">\r\n	1.url 的路径，如果你用django建好了一个工程项目，那么在这个工程项目文件里面会有一个同名的文件夹，在这个文件夹下有个文件，文件名为 urls.py ，此文件里面就是整个工程项目的URL配置文件。（新工建程项目详解请看)\r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"font-size:16px;\"><span style=\"font-size:12px;\">2.在视图文件里的每个函数就是一个视图网页，而且每个函数都必需至少有一个参数，在视图文件里的函数第一个参数的类型是HttpRequest；它返回一个HttpResponse实例。为了使一个Python的函数成为一个Django可识别的视图，它必须满足这两个条件。</span></span> \r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"font-size:16px;\"><span style=\"font-size:12px;\">3.<span style=\"font-size:16px;\"><span style=\"font-size:12px;\">在 django 里面的 url 配置</span></span>其实访问各个函数内容的映射表。url 配置文件在根目录项目文件夹里面的 urls.py ，这个python文件就是你整个项目的 url 总配置文件，也是 django url 配置的入口文件。你可以把你整个项目的 url 配置在这个文件里面。文件情况如下：</span></span> \r\n</p>\r\n<pre class=\"brush:python\">from django.conf.urls.defaults import *\r\n\r\n# Uncomment the next two lines to enable the admin:\r\n# from django.contrib import admin\r\n# admin.autodiscover()\r\n\r\nurlpatterns = patterns(\'\',\r\n    # Example:\r\n    # (r\'^mysite/\', include(\'mysite.foo.urls\')),\r\n\r\n    # Uncomment the admin/doc line below and add \'django.contrib.admindocs\'\r\n    # to INSTALLED_APPS to enable admin documentation:\r\n    # (r\'^admin/doc/\', include(\'django.contrib.admindocs.urls\')),\r\n\r\n    # Uncomment the next line to enable the admin:\r\n    # (r\'^admin/\', include(admin.site.urls)),\r\n    url(r\'^blog/$\',\'blog.views.index\'),\r\n)</pre>\r\n<p>\r\n	配置 url 有几种方法，\r\n</p>\r\n<p>\r\n	第一种，是导入你的视图文件。如下图\r\n</p>\r\n<pre class=\"brush:python\">from django.conf.urls.defaults import *\r\nfrom blog.views import index\r\n#导入你的视图文件类，有多个就导入多个，在 Python 的 import 语法中 blog/views.py 会转成包的访问，变成 blog.views。\r\nurlpatterns = patterns(\'\',\r\n    #通过url参数，访问你视图里面的那个函数，如：www.b.com/blog<span id=\"__kindeditor_bookmark_end_7__\"></span>表示访问视图 views 文件里面的 index 函数。\r\n    (\'^blog/$\', index),\r\n&nbsp;&nbsp;&nbsp; #这个是 python 的元组应用，前面的是把 url 通过正则配置把参数提取出来，传给视图函数。\r\n&nbsp;&nbsp;&nbsp; # 为了简洁，看的更清楚，我移除了注释代码，可以不用移除，可以做为例子。\r\n)</pre>\r\n<p>\r\n	正则的详细情况请看我的另一篇文章<a href=\"http://phpyrb.com/Article-index-artid-31.html\">django 正则表达式－Python 学习笔记3</a> \r\n</p>\r\n<p>\r\n	4.其实 django 访问 url 是在配置文件里面定义的，在你项目里面的 setting.py 文件里面的\r\n</p>\r\n<pre class=\"brush:python\">ROOT_URLCONF = \'mysite.urls\'</pre>\r\n<p>\r\n	当通过 url 访问时，他会在配置文件里面找到 url 入口文件的路径。\r\n</p>\r\n<p>\r\n	5.第二种方法，\r\n</p>\r\n<pre class=\"brush:python\">from django.conf.urls.defaults import *\r\nfrom blog.views import *\r\n#导入你的视图文件类，有多个就导入多个，在 Python 的 import 语法中 blog/views.py 会转成包的访问，变成 blog.views。\r\nurlpatterns = patterns(\'\',\r\n    #通过url参数，访问你视图里面的那个函数，如：www.b.com/blog<span id=\"__kindeditor_bookmark_end_7__\"></span>表示访问视图 views 文件里面的 index 函数。\r\n    (\'^blog/$\', include(\'blog.views\'),\r\n&nbsp;&nbsp;&nbsp; #直接导入视图文件，然后在视图文件里面配置具体的 url 映射，这个种方法我个人认为是最好的，\r\n&nbsp;&nbsp;&nbsp; # 为了简洁，看的更清楚，我移除了注释代码，可以不用移除，可以做为例子。\r\n)\r\n</pre>\r\n在视图文件里面，把 url 配置写在所有的函数前面。如下：\r\n<pre class=\"brush:python\">from django.shortcuts import render_to_response\r\n\r\nurlpatterns = patterns(\'\',\r\n    (r\'^index/$\', index),\r\n)\r\n\r\ndef index(self):\r\n    return render_to_response(\'index.html\',{})</pre>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>');
INSERT INTO `content` VALUES ('33', 'django如何新建一个项目，如何新建一个django工程项目.', '<p style=\"font-size:16px;\" align=\"center\">\r\n	django如何新建项目工程\r\n</p>\r\n<p>\r\n	1.新建一个django项目目录，运行如下的命令：\r\n</p>\r\n<pre class=\"brush:python\">django-admin.py startproject phpyrb</pre>\r\n<p>\r\n	运行后查看你当前的目录里是否多出一个文件夹，名为 phpyrb的文件夹。\r\n</p>\r\n<p>\r\n	里面有如下的文件或文件夹：\r\n</p>\r\n<p>\r\n	manage.py&nbsp;&nbsp;&nbsp;&nbsp; //可以理解为你的项目启动文件\r\n</p>\r\n<p>\r\n	phpyrb/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //项目的包文件夹\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; __init__.py //要初始化的引入的配置文件\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; settings.py //项目设置文件\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; urls.py&nbsp; //url路径文件\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; wsgi.py&nbsp; //一个入口点,WSGI-compatible网路服务\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	2.新建项目前的一些基本设置,打开项目目录中的phpyrb中settings.py,命令如下：\r\n</p>\r\n<pre class=\"brush:bash\">vi phpyrb/settings.py</pre>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; A.数据库设置，找到 DATABASES 设置项，设置成你会的数据库，具体设置例子如下：\r\n</p>\r\n<pre class=\"brush:python\">DATABASES = {\r\n        \'default\': {\r\n        \'ENGINE\': \'django.db.backends.mysql\', # Add \'postgresql_psycopg2\', \'mysql\', \'sql    ite3\' or \'oracle\'.\r\n         \'NAME\': \'\',                      # Or path to database file if using sqlite3.\r\n         # The following settings are not used with sqlite3:\r\n         \'USER\': \'root\',\r\n         \'PASSWORD\': \'123\',\r\n         \'HOST\': \'localhost\',                      # Empty for localhost through domain s    ockets or \'127.0.0.1\' for localhost through TCP.\r\n          \'PORT\': \'3306\',                      # Set to empty string for default.\r\n      }\r\n  }\r\n</pre>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp; B.时区设置：TIME_ZONE，设置成中国时区，设置如下：\r\n</p>\r\n<pre class=\"brush:python\">TIME_ZONE = \'Asia/Shanghai\'</pre>\r\n&nbsp;&nbsp; C.语言设置：LANGUAGE_CODE，设置成中文，设置如下：\r\n<pre class=\"brush:python\">LANGUAGE_CODE = \'zh-cn\'</pre>\r\n<p>\r\n	&nbsp;&nbsp; D.项目名设置：INSTALLED_APPS ，设置你要新建的项目名，加在数组最下面，设置如下：\r\n</p>\r\n<pre class=\"brush:python\"> INSTALLED_APPS = (\r\n    \'django.contrib.auth\',\r\n    \'django.contrib.contenttypes\',\r\n    \'django.contrib.sessions\',\r\n     \'django.contrib.sites\',\r\n     \'django.contrib.messages\',\r\n    \'django.contrib.staticfiles\',\r\n    \'blog\',\r\n)</pre>\r\n<p>\r\n	如上面，新建了一个 blog 项目名。简单的基本设置就设置完了。\r\n</p>\r\n<p>\r\n	4.设置完了就可以新建一个django项目，运行如下的命令：\r\n</p>\r\n<pre class=\"brush:bash\">python manage.py startapp blog</pre>\r\n这里的 blog 要和上面的项目名一样，不错会报错。');
INSERT INTO `content` VALUES ('34', '如何新建django模板文件。django模板如何写。', '<h3 align=\"center\">\r\n	django 模板详解\r\n</h3>\r\n<p align=\"left\">\r\n	1.django模板其实是就是把处理好的数据按照一定的样式输出的静态文件，及html 文件。\r\n</p>\r\n<p align=\"left\">\r\n	2.其实python原始的输出方式就是用print函数打印字符。但这种方法我想是没有人去用的，先不说他麻烦，就是出错的BUG都让人不想去做。所有就产生出了许多的模板引擎。django也有自己的模板引擎。\r\n</p>\r\n<p align=\"left\">\r\n	3.django模板引擎最基本的用法如下 ：\r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>\r\n<pre class=\"brush:python\">from django.http import HttpResponse\r\n\r\ndef index(request):\r\n    html = \"hello world !.\"\r\n    return HttpResponse(html)</pre>\r\n<p>\r\n	直接输出字符串。如果是这样，肯定不会有人用的。这样太麻烦了。\r\n</p>\r\n<p>\r\n	4.模板的第二种使用方法如下：但首先要在APP目录下建名为 Templates 的文件夹。然后把你要显示的模板文件放入在里面，视图文件\r\n</p>\r\n<p>\r\n	<br />\r\n</p>');
INSERT INTO `content` VALUES ('35', '如何新建一个模型。模型字段详解。', '<h3 align=\"center\">\r\n	django模型详解之模型创建\r\n</h3>\r\n<p>\r\n	1.模型就是视图和数据库沟通的桥梁。\r\n</p>\r\n<p>\r\n	2.模型就是跟数据库拿数据，那么首先肯定是连接数据库，第一次是连接数据库设置，设置文件的位置之前介绍过了，这里就不重复了。不知道请看另一篇文章<a href=\"http://phpyrb.com/Article/index/artid/33.html\" target=\"_blank\">django 新建工程和项目－Python Django 学习笔记2</a>， 具体设置如下：\r\n</p>\r\n<pre class=\"brush:python\">DATABASES = {\r\n        \'default\': {\r\n        \'ENGINE\': \'django.db.backends.mysql\', # 这个是设置你要选择什么数据库，你可以选择你会的。我选择mysql。\r\n         \'NAME\': \'blog\',                      # 这个是设置数据库名。不过你得选择新建好该数据库\r\n         \'USER\': \'root\',                      # 这个是数据库用户名。\r\n         \'PASSWORD\': \'123456\',                # 这个是数据库密码。\r\n         \'HOST\': \'localhost\',                 # 这个是数据库连接地址。本机为 localhost\r\n         \'PORT\': \'3306\',                      # 这个是数据库连接端口。默认为 3306\r\n      }\r\n  }\r\n</pre>\r\n<p>\r\n	3.设置好数据库后，那下步就是新建表，当然django有他自己一套规则语法。\r\n</p>\r\n<p>\r\n	4.检查模型写正确没有，运行如下的命令：\r\n</p>\r\n<pre class=\"brush:python\">python manage.py validate</pre>\r\n<p>\r\n	5.查看新建的表的SQL语句，运行如下的命令：\r\n</p>\r\n<pre class=\"brush:python\">python manage.py sqlall blog</pre>\r\n<p>\r\n	6.数据库连接，连接命令如下：\r\n</p>\r\n<pre class=\"brush:python\">from django.shortcuts import render_to_response\r\nimport MySQLdb\r\n\r\ndef book_list(request):\r\n    db = MySQLdb.connect(user=\'root\', db=\'blog\', passwd=\'123\', host=\'localhost\')\r\n    cursor = db.cursor()\r\n    cursor.execute(\'SELECT name FROM category ORDER BY name\')\r\n    names = [row[0] for row in cursor.fetchall()]\r\n    db.close()\r\n    return render_to_response(\'index.html\', {\'names\': names})</pre>\r\n<p>\r\n	<br />\r\n</p>');
INSERT INTO `content` VALUES ('36', '', '<h3 align=\"center\">\r\n	django模型详解之数据库操作\r\n</h3>\r\n<p>\r\n	数据库操作如下：\r\n</p>\r\n<p>\r\n	1.写入命令如下：\r\n</p>\r\n<pre class=\"brush:python\">from </pre>\r\n<p>\r\n	<br />\r\n</p>');
INSERT INTO `content` VALUES ('37', 'django安装mysql支持,django如何连接mysql,django连接mysql设置,django连接mysql代码.', '<div align=\"center\">\r\n	<h3>\r\n		<br />\r\n	</h3>\r\n	<h3>\r\n		django如何连接mysql\r\n	</h3>\r\n	<p align=\"left\">\r\n		1.django 连接 mysql 之前先要安装 MySQLdb.\r\n	</p>\r\n	<p align=\"left\">\r\n		2.如何你还没有安装 MySQLdb,可以用如下的命令安装：\r\n	</p>\r\n<pre class=\"brush:bash\">easy_install MySQLdb </pre>\r\n	<p align=\"left\">\r\n		3.如何确定 mysqldb 安装成功，可以用如下方法：\r\n	</p>\r\n<pre class=\"brush:python\">python\r\nimport MySQLdb\r\n</pre>\r\n	<p align=\"left\">\r\n		如何没有报错的话，那恭喜你，你安装成功了，如何没有，请重复上面的步骤.\r\n	</p>\r\n	<p align=\"left\">\r\n		4.django 连接 mysql 的原代码如下：\r\n	</p>\r\n<pre class=\"brush:python\">import MySQLdb\r\n\r\ndef __init__(self):\r\n    db = MySQLdb.connect(user=\'root\', db=\'mydb\', passwd=\'\', host=\'localhost\')\r\n    cursor = db.cursor()\r\n    cursor.execute(\'SELECT name FROM mydb\')\r\n    names = [row[0] for row in cursor.fetchall()]\r\n    db.close()\r\n\r\n</pre>\r\n	<p>\r\n		<br />\r\n	</p>\r\n</div>');
INSERT INTO `content` VALUES ('38', 'python的string类里面的函数列表和解释.python的字符串常用函数.', '<div align=\"center\">\r\n	<h3>\r\n		Python String详解\r\n	</h3>\r\n</div>\r\n<p>\r\n	string类里面的函数列表如下：\r\n</p>\r\n<p>\r\n	&nbsp; 1. find 函数（查找一个字符串在不在别一个字符串里面，找到就返回索引，没有找到返回 -1）\r\n</p>\r\n<pre class=\"brush:python\">import string\r\n\r\n#找出‘py’第一次出现的索引\r\nindex = string.find(\'www.phpyrb.com\', \"py\")\r\nprint (index)   #结果：6\r\n\r\n#表明从哪开始搜寻子串\r\nindex = string.find(\'www.phpyrb.com\', \"py\",2)\r\nprint (index)   #结果：6\r\n\r\n#确定寻找字符串的索引范围\r\nindex = string.find(\'www.phpyrb.com\', \"py\",2,6)\r\nprint (index)   #结果：-1 \r\n</pre>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;2. string.lowercase 所有小写的英文字母\r\n</p>\r\n<pre class=\"brush:python\">import string\r\n\r\nprint string.lowercase #结果 abcdefghijklmnopqrstuvwxyz</pre>\r\n&nbsp;&nbsp;&nbsp;&nbsp; 3. string.uppercase 所有大写的英文字母\r\n<pre class=\"brush:python\">import string\r\n\r\nprint string.uppercase #结果 ABCDEFGHIJKLMNOPQRSTUVWXYZ</pre>\r\n<p>\r\n	<br />\r\n</p>\r\n&nbsp;&nbsp;&nbsp;&nbsp; 4. string.digits 从0到9的数字\r\n<pre class=\"brush:python\">import string\r\n\r\nprint string.digits #结果 0123456789</pre>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	&lt;&lt;&lt;&lt;待续……\r\n</p>');
INSERT INTO `content` VALUES ('39', '介绍一些python的常用的函数,如: index,in,extend,append,insert等式', '<h3 align=\"center\">\r\n	Python常用列表函数详解\r\n</h3>\r\n<p>\r\n	1. append 在列表的尾部追加元素:\r\n</p>\r\n<pre class=\"brush:python\">num = [0, 1, 2, 3]\r\nnum.append(4)\r\nprint number\r\n[0, 1, 2, 3, 4]\r\n</pre>\r\n<p>\r\n	2. insert在列表中插入元素:\r\n</p>\r\n<pre class=\"brush:python\">num.insert(3, 5)\r\nprint num\r\n[0, 1, 2, 5, 3, 4]\r\n</pre>\r\n<p>\r\n	3. extend合并两个列表:\r\n</p>\r\n<pre class=\"brush:python\">a = [1,2,3]\r\nb = [4,6,7]\r\na.extend(b)\r\nprint a #结果：[1,2,3,4,6,7]\r\nprint b #结果：[4,6,7]\r\n# 注意，extend的只有一个参数，也就是说他其实是一个添加操作，在一个列表里面加入另一个列表\r\n</pre>\r\n<p>\r\n	4. index取得元素的索引值:\r\n</p>\r\n<pre class=\"brush:python\">a = [1,2,3]\r\nprint a.index(3)  #结果： 2</pre>\r\n<p>\r\n	5.len返回列表的长度，即元素的个数：\r\n</p>\r\n<pre class=\"brush:python\"> a = [1,2,3,4]\r\n print len(a)  #结果: 4</pre>\r\n<p>\r\n	6.in是一个布尔操作符，它测试左边的操作数是否包含于列表:\r\n</p>\r\n<pre class=\"brush:python\">a = [1,2,3,4]\r\n\r\n1 in a #结果：True</pre>\r\n<p>\r\n	7. del删除列表中的元素:\r\n</p>\r\n<pre class=\"brush:python\"># 索引\r\na = [1,2,3,4]\r\ndel a[1]\r\nprint a #结果：[1,3,4]\r\n\r\na = [1,2,3,4]\r\ndel a[1:3]\r\nprint a #结果：[1,4]</pre>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	&lt;&lt;&lt;&lt;待续……\r\n</p>');
INSERT INTO `content` VALUES ('40', 'django request的属性，用法。', '<div align=\"center\">\r\n	<h3>\r\n		<br />\r\n	</h3>\r\n	<h3>\r\n		django request 详解 － Python Django 学习笔记8\r\n	</h3>\r\n	<p align=\"left\">\r\n		1.首先先了解 URL 的对象 HttpRequest 的一些常用属性方法：\r\n	</p>\r\n	<p align=\"left\">\r\n		&nbsp;&nbsp;&nbsp; a. request.path 除域名以外的请求路径，以正斜杠开头.\r\n	</p>\r\n	<p align=\"left\">\r\n		&nbsp;&nbsp;&nbsp; b. <span class=\"pre\">request.get_host()</span> 主机名（比如，通常所说的域名.\r\n	</p>\r\n	<p align=\"left\">\r\n		&nbsp;&nbsp;&nbsp; c. <span class=\"pre\">request.get_full_path()</span> 请求路径，可能包含查询字符串.\r\n	</p>\r\n	<p align=\"left\">\r\n		&nbsp;&nbsp;&nbsp; d. <span class=\"pre\">request.is_secure()</span> 如果通过HTTPS访问，则此方法返回True， 否则返回False.\r\n	</p>\r\n	<p align=\"left\">\r\n		&nbsp;&nbsp;&nbsp; e. request.META 是一个Python字典,里面有如下属性：\r\n	</p>\r\n	<p align=\"left\">\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.<span>HTTP_REFERER</span>，进站前链接网页<span>，如果有的话.（请注意，它是<span>REFERRER</span>的笔误.）</span> \r\n	</p>\r\n	<p align=\"left\">\r\n		<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.<span>HTTP_USER_AGENT</span>，用户浏览器的user-agent字符串，如果有的话.</span> \r\n	</p>\r\n	<p align=\"left\">\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.<span>REMOTE_ADDR</span>客户端IP,如果申请是经过代理服务器的话，那么它可能是以逗号分割的多个IP地址,如:\"211.162.78.1,211.162.78.3\".\r\n	</p>\r\n	<p align=\"left\">\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用法如：request.META[\'<span>HTTP_REFERER</span>\'].\r\n	</p>\r\n	<p align=\"left\">\r\n		2. 注意，当你访问的键不存在时，会触发一个KeyError异常。因为 HTTP header信息是由用户的浏览器所提交的，是可以伪造的，因些可以艇以下的两种为法解决：\r\n	</p>\r\n	<p align=\"left\">\r\n		&nbsp;&nbsp;&nbsp; a.可以使用 try/except 语句：\r\n	</p>\r\n<pre class=\"brush:python\">def test_request(request):\r\n    try:\r\n        req = request.META[\'HTTP_USER_AGENT\']\r\n    except KeyError:\r\n        req = \'unkown\'\r\n    return HttpResponse(\"Your browser is %s\" % req)</pre>\r\n</div>\r\n<p align=\"left\">\r\n	&nbsp;&nbsp;&nbsp; b.可以使用Python字典的 get() 方法来处理这些可能不存在的键：\r\n</p>\r\n<pre class=\"brush:python\">def test_request(request):\r\n    req = request.META.get(\'HTTP_USER_AGENT\', \'unknown\')\r\n    return HttpResponse(\"Your browser is %s\" % req)</pre>\r\n<p align=\"left\">\r\n	3. 当然最要注意是，在使用 request 前，先要导入一个 HttpRequest 对象：\r\n</p>\r\n<pre class=\"brush:python\">from django.http import HttpResponse</pre>\r\n<p>\r\n	<br />\r\n</p>');
INSERT INTO `content` VALUES ('42', '这是一篇讲mongodb如何安装的文章。mongodb是一种nosql数据库.', '<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 1.下载MongoDB，可以去MongoDB官网上下载，下载前面看你的系统的是32位还是64位，MongoDB不支持XP系统，网址：http://www.mongodb.org/downloads\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;2.下载下来后，到一个盘里面建两个文件夹，一个放mongodb的程序，一个放mongodb数据库，盘和文件夹名可以自定义。我建在D盘根目录：MongoDB文件夹放mongodb程序，MongoDBDataBase文件夹放mongodb数据库.把下载下来的mongodb程序解压到MongoDB文件夹里面。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 3.把你的mongo程序路径添加到你的系统环境变量里面，这样以后运行的时候不用输入路径。方法如下：\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a.右击我的电脑选择属性-&gt;系统高级设置-&gt;环境变量。\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b.选择系统变量里面的Path选项，然后在最后面添加mongo程序路径：‘D:\\MongoDB\\bin；’，然后确认。\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 4.现在就开始运行安装程序，把数据路径添加到mongo远行环境里面，首先打开运行输入‘cmd’，打开命令窗口，输入台下命令：\r\n</p>\r\n<pre class=\"brush:bash\">D:\\MongoDB\\bin\\mongod.exe --dbpath D:\\MongoDBDataBase\\\r\n</pre>\r\n运行后，会弹出防火墙警告，让你选择网络，然后把它们都钩上，然后确认。<br />\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 5.现在检查安装成功没有，另外再打开一个命令窗口。然后输入：mongo.exe，显示如下：\r\n</p>\r\n<pre class=\"brush:bash\">Microsoft Windows [Version 6.1.7601]\r\nCopyright (c) 2009 Microsoft Corporation.  All rights reserved.\r\n\r\nC:\\Users\\MaWei&gt;mongo.exe\r\nMongoDB shell version: 2.4.9\r\nconnecting to: test\r\nServer has startup warnings:\r\nThu Mar 13 16:00:53.174 [initandlisten]\r\nThu Mar 13 16:00:53.174 [initandlisten] ** NOTE: This is a 32 bit MongoDB binary</pre>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 6.现在介绍一个简单的方法，不然每次都这样，很麻烦，方法是这样的。在你的桌面上建一个批处理文件（mongo.bat）,在里面输入如下字符：\r\n</p>\r\n<pre class=\"brush:bash\">mongod --dbpath D:\\MongoDBDateBase\r\nmongo 127.0.0.1:27017/admin</pre>\r\n<p>\r\n	<br />\r\n</p>');
INSERT INTO `content` VALUES ('44', 'git配置，第一次初始化git配置，第一次如何使用git。', '<h3 align=\"center\">\r\n	git配置－客户端\r\n</h3>\r\n<p>\r\n	1.在使用 git 版本控制器，如何远程服务器已经配置好了，那使用起来会很简单，只要拿到远端地址，然后用命令拖下来就可以了，如何远程做了验证，那么你拖的时候，会要求你输入用户名。请直接看第三步。命令如下：\r\n</p>\r\n<pre class=\"brush:bash\">git clone url filename //url 远端项目地址， filename 存放本地的地址，不写就在当前目录\r\n</pre>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 注：如果连接远端用的是 ssh 的话，如 github就是用的这个协议，那需要用到 key 的使用，如何生成 KEY 可以参考我的别一篇博文 《<a href=\"http://phpyrb.com/Article-index-artid-22.html\">vps 安全登录的方法 ssh 登录</a>》，那你需要在拖的时候把你的 KEY 告诉 Git 。方法有两种\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; a.使用配置文件，在你的 .ssh 文件夹里面新建一个文件 config ,(如何是windows的话，你是没有办法建的，你可以从各种编辑器的安装目录里面的配置文件拷过来，然后再改），然后在里面输入如下内容：\r\n</p>\r\n<pre class=\"brush:bash\">Host hostname \r\nIdentityFile *.ppk</pre>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; b.使用 git 配置命令，命令如下：\r\n</p>\r\nwindow7下：\r\n<pre class=\"brush:bash\">eval $(ssh-agent)\r\nssh-add *.ppk</pre>\r\ndebian下：<pre class=\"brush:bash\">exec ssh-agent bash\r\nssh-add *.ppk</pre>\r\n<p>\r\n	2.git初始化，如何你是从远端拖下来的，这一步可以跳过。在你需要使用git项目目录文件中右击选择 git bash ，会打开一个命令窗口，首先初始化项目：\r\n</p>\r\n<pre class=\"brush:bash\">git init\r\n</pre>\r\n<p>\r\n	3.设置你的基本信息，这个是必须配置的，如果远端设置了验证那么在你拖下来的时候会要你验证，那样就不用下面的命令了：\r\n</p>\r\n<pre class=\"brush:bash\">git config --global user.email \'1123265518@qq.com\'\r\ngit config --global user.name mawei</pre>\r\n4.\r\n<p>\r\n	<br />\r\n</p>');
INSERT INTO `content` VALUES ('45', 'curl_init()函数不可用或报错的解决办法.开启curlr方法。', '<h2 align=\"center\">\r\n	curl_init()函数不可用或报错的解决办法\r\n</h2>\r\n<p>\r\n	1. curl是利用URL语法在命令行方式下工作的开源文件传输工具.\r\n</p>\r\n<p>\r\n	2. curl_init函数不可用，或者报错，其实是因为 curl 库没有开启。\r\n</p>\r\n<p>\r\n	3. curl 库需要几个动态链接库的支持：\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp; php_curl.dll<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;php5ts.dll<br />\r\n&nbsp; &nbsp; &nbsp;libeay32.dll<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ssleay32.dll\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 一般情况这几个都自带了，理论上是不需要处理。但如果按第四步做还不行，就把在PHP安装目录里面这个四个库拷到\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; C:/windows/system32 里面。然后重启。\r\n</p>\r\n<p>\r\n	4. 开启 curl 的方法：\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; a.找到php.ini ,修改extension=php_curl.dll 把前面的分号去掉.\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; b.然后重启服务器.\r\n</p>\r\n<p>\r\n	5. curl 常用函数：\r\n	&nbsp;&nbsp;&nbsp;&nbsp;\r\n</p>\r\n<ul class=\"chunklist chunklist_reference\">\r\n	<li>\r\n		curl_close — 关闭一个cURL会话\r\n	</li>\r\n	<li>\r\n		curl_copy_handle — 复制一个cURL句柄和它的所有选项\r\n	</li>\r\n	<li>\r\n		curl_errno — 返回最后一次的错误号\r\n	</li>\r\n	<li>\r\n		curl_error — 返回一个保护当前会话最近一次错误的字符串\r\n	</li>\r\n	<li>\r\n		curl_exec — 执行一个cURL会话\r\n	</li>\r\n	<li>\r\n		curl_getinfo — 获取一个cURL连接资源句柄的信息\r\n	</li>\r\n	<li>\r\n		curl_init — 初始化一个cURL会话\r\n	</li>\r\n	<li>\r\n		curl_multi_add_handle — 向curl批处理会话中添加单独的curl句柄\r\n	</li>\r\n	<li>\r\n		curl_multi_close — 关闭一组cURL句柄\r\n	</li>\r\n	<li>\r\n		curl_multi_exec — 解析一个cURL批处理句柄\r\n	</li>\r\n	<li>\r\n		curl_multi_getcontent — 如果设置了CURLOPT_RETURNTRANSFER，则返回获取的输出的文本流\r\n	</li>\r\n	<li>\r\n		curl_multi_info_read — 获取当前解析的cURL的相关传输信息\r\n	</li>\r\n        <li>\r\n		curl_multi_remove_handle — 移除curl批处理句柄资源中的某个句柄资源\r\n	</li>\r\n	<li>\r\n		curl_multi_select — 等待所有cURL批处理中的活动连接\r\n	</li>\r\n	<li>\r\n		curl_setopt_array — 为cURL传输会话批量设置选项\r\n	</li>\r\n	<li>\r\n		curl_setopt — 设置一个cURL传输选项\r\n	</li>\r\n	<li>\r\n		curl_version — 获取cURL版本信息\r\n	</li>\r\n	<li>\r\n		curl_multi_init — 返回一个新cURL批处理句柄\r\n	</li>\r\n	\r\n</ul>\r\n<p>\r\n	<br />\r\n</p>');
INSERT INTO `content` VALUES ('46', 'mysql如何把一表的某个字体更新到另一表的相同字段。', '<div align=\"center\">\r\n	<h2>\r\n		<br />\r\n	</h2>\r\n	<h2>\r\n		mysql如何把一表的某个字体更新到另一表的相同字段\r\n	</h2>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p align=\"left\">\r\n		1.当你想把一个表里的某个字段里的值更新到另一个表里面相同的字段的值，用insert into肯定是不行，因为他会写入一条新的记录，而且要做到批量更新。找了很多地方，才找到，现在把他发上来。\r\n	</p>\r\n	<p align=\"left\">\r\n		2.表的结构如下：\r\n	</p>\r\n	<p align=\"left\">\r\n		&nbsp;&nbsp;&nbsp; table1:\r\n	</p>\r\n	<p align=\"left\">\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; id B C D\r\n	</p>\r\n	<p align=\"left\">\r\n		&nbsp;&nbsp;&nbsp; table 2:\r\n	</p>\r\n	<p align=\"left\">\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; id E F G D\r\n	</p>\r\n	<p align=\"left\">\r\n		想要把table2里面的 D 字段更新到table1里面的 D 字段，而且是table1.id = table2.id，记录一一对应：\r\n	</p>\r\n	<p align=\"left\">\r\n		那么想要完成这个需求，sql语句如下：\r\n	</p>\r\n	<div align=\"left\">\r\n<pre class=\"brush:sql\">UPDATE table1 t1,table2 t2 SET t1.D=t2.D WHERE t1.id=t2.id</pre>\r\n<br />\r\n	</div>\r\n</div>');
INSERT INTO `content` VALUES ('47', 'wamp5下的虚拟主机的配置，wamp5如何配置虚拟主机。', '<h2 style=\"text-align:center;\">\r\n	wamp5虚拟主机的配置\r\n</h2>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre>wamp5虚拟主机的配置如下：</pre>\r\n<pre><span style=\"font-family:\'sans serif\', tahoma, verdana, helvetica;line-height:1.5;\">1.首先打你安装目录下的Apache配置文件C:\\wamp\\bin\\apache\\apache2.2.22\\conf\\htttpd.conf ,在里面查找 </span></pre>\r\n<pre><span style=\"font-family:\'sans serif\', tahoma, verdana, helvetica;line-height:1.5;\">&nbsp;&nbsp;&nbsp;&nbsp;#Include conf/extra/httpd-vhosts.conf</span></pre>\r\n<pre><span style=\"font-family:\'sans serif\', tahoma, verdana, helvetica;line-height:1.5;\">&nbsp;&nbsp;&nbsp;&nbsp;找到后把前面的 ‘‘#’’号去掉。 </span></pre>\r\n<pre><span style=\"font-family:\'sans serif\', tahoma, verdana, helvetica;line-height:1.5;\">2.在Apache配置目录里面找到C:\\wamp\\bin\\apache\\apache2.2.22\\conf\\extra\\httpd-vhosts.conf, 把里面的所有删除，然后在里面添加如下的内容：\r\n#默认端口，不需要修改\r\nNameVirtualHost *:80 \r\n\r\n#虚拟主机的相关配置，需要多个，复制多少，然后改一下域名和路径.\r\n<xmp>\r\n<VirtualHost *:80>\r\nServerName www.a.com\r\nServerAlias www.a.com\r\nDocumentRoot \"D:/wamp/www/a\"\r\n</VirtualHost>\r\n</xmp>\r\n需要多个虚拟主机时，就复制多个。改一下域名和路径就可以了。\r\n<pre><span style=\"font-family:\'sans serif\', tahoma, verdana, helvetica;line-height:1.5;\"><span style=\"font-family:\'sans serif\', tahoma, verdana, helvetica;line-height:1.5;\">3.修改你的host文件，把域名指向本机,host文件路径为C:\\Windows\\System32\\drivers\\etc\\hosts，在里面添加如下代码：\r\n127.0.0.1       www.a.com a.com www.b.com b.com\r\n4.重启你的服务器就可以了。</span><span style=\"font-family:\'sans serif\', tahoma, verdana, helvetica;line-height:1.5;\"></span></span></pre>\r\n</span></pre>');
INSERT INTO `content` VALUES ('55', 'fasdfasdfaaaaaaaaaaaaaaaaaaaaaa', '<p>\r\n	asdfadf\r\n</p>\r\n<p>\r\n	as\r\n</p>\r\n<p>\r\n	df\r\n</p>\r\n<p>\r\n	as\r\n</p>\r\n<p>\r\n	df\r\n</p>\r\n<p>\r\n	asdfasdfasdf\r\n</p>\r\n<p>\r\n	aaaaaaaaaaaaaaaaaa\r\n</p>\r\n<p>\r\n	aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\r\n</p>\r\n<p>\r\n	asd\r\n</p>\r\n<p>\r\n	f\r\n</p>\r\n<p>\r\n	as\r\n</p>\r\n<p>\r\n	dfas\r\n</p>\r\n<p>\r\n	fasdfs\r\n</p>');
INSERT INTO `content` VALUES ('56', 'asdfsadfasdfasdfasdf', '<p>\r\n	asdfasdf\r\n</p>\r\n<p>\r\n	asd\r\n</p>\r\n<p>\r\n	fas\r\n</p>\r\n<p>\r\n	as\r\n</p>\r\n<p>\r\n	df\r\n</p>\r\n<p>\r\n	asdf\r\n</p>\r\n<p>\r\n	as\r\n</p>\r\n<p>\r\n	df\r\n</p>\r\n<p>\r\n	asdf\r\n</p>\r\n<p>\r\n	df\r\n</p>\r\n<p>\r\n	as\r\n</p>\r\n<p>\r\n	df\r\n</p>\r\n<p>\r\n	asd\r\n</p>\r\n<p>\r\n	fasdf\r\n</p>\r\n<p>\r\n	asdfasdf\r\n</p>');
INSERT INTO `content` VALUES ('57', 'asdfasdf', '<h2 align=\"center\">\r\n	<br />\r\n&nbsp;&nbsp; &nbsp;JS只能输入数字,数字和字母等的正则表达式<br />\r\n</h2>\r\n<p>\r\n	&nbsp;&nbsp; &nbsp;1.input框里面只能输入自然数：\r\n</p>\r\n<pre class=\"brush:jscript\"><input name=\"\" onkeyup=\"value=value.replace(/[^\\d]/,\'\');\" type=\"text\" /></pre>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 2.input框里面只能输入数字，小数：\r\n</p>\r\n<pre class=\"brush:jscript\"><input name=\"\" onkeyup=\"value=value.replace(/[^\\d\\.]/,\'\');\" type=\"text\" /></pre>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 3.input框里面只能输入字母：\r\n</p>\r\n<pre class=\"brush:jscript\"><input name=\"\" onkeyup=\"value=value.replace(/[^A-Za-z]/,\'\');\" type=\"text\" /></pre>');

-- ----------------------------
-- Table structure for `photo`
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `album` int(11) NOT NULL COMMENT '相册ID',
  `name` varchar(50) NOT NULL COMMENT '相片名',
  `alt` varchar(50) NOT NULL COMMENT '标签',
  `path` varchar(120) NOT NULL COMMENT '路径',
  `addtime` int(11) NOT NULL COMMENT '添加时间表',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='照片';

-- ----------------------------
-- Records of photo
-- ----------------------------

-- ----------------------------
-- Table structure for `photo_comment`
-- ----------------------------
DROP TABLE IF EXISTS `photo_comment`;
CREATE TABLE `photo_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int(11) NOT NULL DEFAULT '-1' COMMENT '用户ID',
  `photo_id` int(11) DEFAULT NULL COMMENT '照片id',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `name` varchar(20) DEFAULT NULL COMMENT '用户名',
  `comment` varchar(200) DEFAULT NULL COMMENT '评论',
  `ctime` int(11) DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `tag`
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `menu` tinyint(1) NOT NULL DEFAULT '0' COMMENT '菜单显示',
  `cateid` int(11) NOT NULL COMMENT '分类ID',
  `name` varchar(30) NOT NULL COMMENT '标签名',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（0 隐藏、1显示）',
  `description` varchar(120) DEFAULT NULL COMMENT '标签描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='标签表';

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('11', '1', '0', '2', 'Skill', '1', '');
INSERT INTO `tag` VALUES ('12', '1', '0', '2', 'Program', '1', '');
INSERT INTO `tag` VALUES ('13', '1', '0', '2', 'Linux', '1', '');
INSERT INTO `tag` VALUES ('14', '1', '0', '2', 'Vim', '1', '');
INSERT INTO `tag` VALUES ('15', '1', '0', '2', 'git', '1', '');
INSERT INTO `tag` VALUES ('16', '1', '0', '2', 'mysql', '1', '');
INSERT INTO `tag` VALUES ('17', '1', '0', '2', 'debian', '1', '');
INSERT INTO `tag` VALUES ('18', '1', '0', '2', 'jquery', '1', '');
INSERT INTO `tag` VALUES ('19', '1', '0', '2', 'php', '1', '');
INSERT INTO `tag` VALUES ('20', '1', '0', '2', 'wamp', '1', '');
INSERT INTO `tag` VALUES ('21', '1', '0', '2', 'python', '1', '');
INSERT INTO `tag` VALUES ('22', '1', '0', '2', 'django', '1', '');
INSERT INTO `tag` VALUES ('25', '1', '0', '2', 'NoSQL', '1', '');
INSERT INTO `tag` VALUES ('26', '1', '0', '2', 'MongoDB', '1', '');

-- ----------------------------
-- Table structure for `twitter`
-- ----------------------------
DROP TABLE IF EXISTS `twitter`;
CREATE TABLE `twitter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `title` tinytext COMMENT '博客内容',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `uptime` int(11) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of twitter
-- ----------------------------

-- ----------------------------
-- Table structure for `twitter_cate`
-- ----------------------------
DROP TABLE IF EXISTS `twitter_cate`;
CREATE TABLE `twitter_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) DEFAULT NULL COMMENT '分类名',
  `pid` int(11) DEFAULT NULL,
  `description` tinytext COMMENT '分类描述',
  `status` tinyint(1) DEFAULT NULL,
  `sort` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of twitter_cate
-- ----------------------------

-- ----------------------------
-- Table structure for `twitter_comment`
-- ----------------------------
DROP TABLE IF EXISTS `twitter_comment`;
CREATE TABLE `twitter_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `uname` varchar(25) DEFAULT NULL COMMENT '用户名',
  `content` tinytext COMMENT '评论内容',
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of twitter_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `twitter_picture`
-- ----------------------------
DROP TABLE IF EXISTS `twitter_picture`;
CREATE TABLE `twitter_picture` (
  `id` int(11) NOT NULL DEFAULT '0',
  `twid` int(11) DEFAULT NULL,
  `description` tinytext COMMENT '照片描述',
  `picname` varchar(50) DEFAULT NULL COMMENT '图片名称',
  `picpath` varchar(150) DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of twitter_picture
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `integral` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `role` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '角色',
  `uname` varchar(20) NOT NULL COMMENT '用户名',
  `alias` varchar(20) NOT NULL COMMENT '别名',
  `passwd` varchar(40) NOT NULL COMMENT '密码',
  `face` varchar(120) NOT NULL COMMENT '头像',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（0 隐藏、1显示）',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别（0 男、1 女）',
  `qq` varchar(15) NOT NULL COMMENT 'QQ号码 ',
  `birthday` int(11) NOT NULL COMMENT '生日',
  `profession` varchar(80) NOT NULL COMMENT '专业',
  `email` varchar(120) NOT NULL COMMENT '电子邮箱',
  `homepage` varchar(150) NOT NULL COMMENT '个人主页',
  `addtime` int(11) NOT NULL COMMENT '添加时间表',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
