ʹ�÷���:
���ļ������ThinkPHP��ܸ�Ŀ¼�µ�Library\Think\Session\Driver\Ŀ¼��

config���ò���:
	'SESSION_TYPE' => 'memcache',
	'SESSION_EXPIRE' => 3600, //session����ʱ��(��)
	'SESSION_TIMEOUT' => 1, //memcache���ӳ�ʱʱ��,Ĭ��1��
	"SESSION_SERVERS" => array(	//mamcache�ֲ�ʽ
		array("ip" => "10.8.8.32", "port" => 22222),
		array("ip" => "10.8.8.33", "port" => 22222),
		array("ip" => "10.8.8.34", "port" => 22222),
	),