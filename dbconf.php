<?php
/**
*  +----------------------------------------------------------------------------------------------+
*   | Explain:  数据库配置
*  +----------------------------------------------------------------------------------------------+
*   | Author: ONLY <491518132@qq.com>
*  +----------------------------------------------------------------------------------------------+
*   | Creater Time : 2014-1-17 	
*  +----------------------------------------------------------------------------------------------+
*   | Link :		http://www.phpyrb.com	     
*  +----------------------------------------------------------------------------------------------+
**/

	$db = array(
			/* 数据库设置 */
			'DB_TYPE'               =>  'mysql',     // 数据库类型
			'DB_HOST'               =>  'localhost', // 服务器地址
			'DB_NAME'               =>  'phpyrb',          // 数据库名
			'DB_USER'               =>  'root',      // 用户名
			'DB_PWD'                =>  '',          // 密码
			'DB_PORT'               =>  '3306',        // 端口
			'DB_PREFIX'             =>  '',    // 数据库表前缀
			'DB_FIELDTYPE_CHECK'    =>  false,       // 是否进行字段类型检查
			'DB_FIELDS_CACHE'       =>  true,        // 启用字段缓存
			'DB_CHARSET'            =>  'utf8',      // 数据库编码默认采用utf8
	);