<?php
//导入数据库配置
require_once './dbconf.php';

$conf = array(
		//'配置项'=>'配置值'
		'MODULE_ALLOW_LIST'     => array('Blog','Admin','User'),
		'DEFAULT_MODULE'     	=> 'Blog', //默认模块    
		'SESSION_AUTO_START' 	=> true, //是否开启session
		
		//操作配置
// 		'ACTION_SUFFIX'         =>  'Action', // 操作方法后缀
// 		'VAR_MODULE'            =>  'module',     // 默认模块获取变量
// 		'VAR_CONTROLLER'        =>  'controller',    // 默认控制器获取变量
// 		'VAR_ACTION'            =>  'action',    // 默认操作获取变量
		
		//URL 配置
		'URL_MODEL'          	=> '2', //URL模式
		'URL_PATHINFO_DEPR'		=>'-', // 更改PATHINFO参数分隔符
// 		'URL_CASE_INSENSITIVE'  =>  true,//true的时候表示URL地址不区分大小写
// 		'URL_DENY_SUFFIX' 		=> 'pdf|ico|png|gif|jpg', // URL禁止访问的后缀设置,URL_DENY_SUFFIX的优先级比URL_HTML_SUFFIX要高。
// 		'URL_HTML_SUFFIX'		=>'html|shtml|xml' , //静态后缀
// 		'URL_ROUTER_ON'   => true, // 开启路由
// 		'URL_ROUTE_RULES'=>array(    
// 				'news/:year/:month/:day' => array('News/archive', 'status=1'),    
// 				'news/:id'               => 'News/read',    
// 				'news/read/:id'          => '/news/:1',
// 		),
		
// 		'DEFAULT_V_LAYER'       =>  'Mobile', // 默认的视图层名称更改为Mobile

		//模板配置
		'DEFAULT_THEME'    =>    'default',// 设置默认的模板主题
// 		'VIEW_PATH'				=>'./Theme/',//视图目录指定
		'TMPL_FILE_DEPR'		=>'_',  //目录结构太深
// 		'DEFAULT_V_LAYER'       =>  'Template', // 设置默认的视图层名称  默认为 view
// 		'TMPL_ACTION_ERROR' 	=> THINK_PATH . 'Tpl/dispatch_jump.tpl',//默认错误跳转对应的模板文件
// 		'TMPL_ACTION_SUCCESS' 	=> THINK_PATH . 'Tpl/dispatch_jump.tpl',//默认成功跳转对应的模板文件
		
// 		'HTML_PATH'			=> './Html/',
// 		'HTML_CACHE_ON'     =>    true, // 开启静态缓存
// 		'HTML_CACHE_TIME'   =>    60,   // 全局静态缓存有效期（秒）
// 		'HTML_FILE_SUFFIX'  =>    '.html', // 设置静态缓存文件后缀
// 		'HTML_CACHE_RULES'  =>     array(  // 定义静态缓存规则     
		// 定义格式1 数组方式     
// 		'静态地址'    =>     array('静态规则', '有效期', '附加规则'),
		// 定义格式2 字符串方式     
// 		'静态地址'    =>     '静态规则', 
// 			'Blog:' => array('Blog-{:action}-{id}')
// 		),
		
);

return array_merge($db,$conf);