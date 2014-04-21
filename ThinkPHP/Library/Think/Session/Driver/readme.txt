使用方法:
将文件存放在ThinkPHP框架根目录下的Library\Think\Session\Driver\目录下

config配置参数:
	'SESSION_TYPE' => 'memcache',
	'SESSION_EXPIRE' => 3600, //session过期时间(秒)
	'SESSION_TIMEOUT' => 1, //memcache连接超时时间,默认1秒
	"SESSION_SERVERS" => array(	//mamcache分布式
		array("ip" => "10.8.8.32", "port" => 22222),
		array("ip" => "10.8.8.33", "port" => 22222),
		array("ip" => "10.8.8.34", "port" => 22222),
	),