/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : phpyrb

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2014-05-04 22:02:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `name` varchar(50) NOT NULL COMMENT '相册名',
  `cover` varchar(150) NOT NULL COMMENT '封面',
  `description` text NOT NULL COMMENT '描述',
  `addtime` int(11) NOT NULL COMMENT '添加时间表',
  `uptime` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='相册';

-- ----------------------------
-- Table structure for article
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
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Table structure for article_comment
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
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='评论、留言本';

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父ID',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `name` varchar(30) NOT NULL COMMENT '分类名',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（0 隐藏、1显示）',
  `menu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '菜单显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `artid` int(11) NOT NULL COMMENT '文章ID',
  `description` text NOT NULL COMMENT '描述',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`artid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章内容';

-- ----------------------------
-- Table structure for photo
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
-- Table structure for photo_comment
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
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `menu` tinyint(1) NOT NULL DEFAULT '0' COMMENT '菜单显示',
  `cateid` int(11) NOT NULL COMMENT '分类ID',
  `name` varchar(30) NOT NULL COMMENT '标签名',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（0 隐藏、1显示）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='标签表';

-- ----------------------------
-- Table structure for users
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
