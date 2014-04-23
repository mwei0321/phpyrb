<?php
	/**
	*  +----------------------------------------------------------------------------------------------+
	*   | Explain: 文章共公操作类
	*  +----------------------------------------------------------------------------------------------+
	*   | Author: ONLY <1123265518@qq.com>
	*	+----------------------------------------------------------------------------------------------+
	*   | Creater Time : 2014-4-22 下午4:22:06
	*  +----------------------------------------------------------------------------------------------+
	*   | Link :		http://www.phpyrb.com	     
	*  +----------------------------------------------------------------------------------------------+
	**/
	
	namespace PhPyRb;

	class Article {
		protected $article,$tags;
		static $catelevel;
		function __construct(){
			$this->article = M('Article');
			self::$catelevel = array();
		}
		
		/**
		 * 返回文章列表
		 * @param string $_limit 页数 
		 * @param string $_order 排序 
		 * @param array $_where 条件 
		 * @return array $artlist 
		 * @author MaWei ( http://www.phpyrb.com )
		 * @date 2014-4-17 下午1:50:15
		 */
		function artlist($_limit = '0,25',$_order = 'id DESC',$_where = array('uid'=>'1')){
			$artlsit = $this->article->where($_where)->order($_order)->limit($_limit)->select();
			return $artlsit;
		}
		
		/**
		 * 返回文章详细信息
		 * @param array | string $_artid 文章ID
		 * @return array $artinfo 
		 * @author MaWei ( http://www.phpyrb.com )
		 * @date 2014-4-17 下午1:50:15
		 */
		function artinfo($_artid){
			$model = M();
			$where = is_array($_artid) ? "id IN (".implode(',', $_artid).")" : $_artid;
			$sql = "SELECT * FROM `article` as a LEFT JOIN `content` as c ON a.id=c.artid WHERE id=".$where;
			$artinfo = $model->query($sql);
			$artinfo = fieldtokey($artinfo);
			return $artinfo;
		}
		
		
		/**
		 * 数据添加、更新
		 * @param array $_data 数据
		 * @param string $_model 表名
		 * @param string $_upfiled 主键
		 * @return string | boolean $reid
		 * @author MaWei ( http://www.phpyrb.com )
		 * @date 2014-4-17 下午1:50:15
		 */
		function add_updata($_model = 'Article',$_data = array(),$_upfiled = 'id'){
			$model = M("$_model");
			$reid = FALSE;
			if($_data["$_upfiled"]){
				$where = array();
				if($_upfiled != 'id'){
					$where["$_upfiled"] = $_data["$_upfiled"];
					unset($_data["$_upfiled"]);
				}
				$reid = $model->where($where)->save($_data);
			}else{
				$reid = $model->add($_data);
			}
			return $reid;
		}
		
		/**
		 * 返回用户下的分类列表
		 * @param array $_where
		 * @return array $catelist
		 * @author MaWei ( http://www.phpyrb.com )
		 * @date 2014-4-17 下午1:50:15
		 */
		function catelist($_where = array('uid'=>'1')){
			$model = M('Category');
			$catelist = $model->where($_where)->select();
			$catelist = fieldtokey($catelist);
			return $catelist;
		}
		
		/**
		 * 返回标签
		 * @param array $_where
		 * @return array $tags
		 * @author MaWei ( http://www.phpyrb.com )
		 * @date 2014-4-17 下午1:50:15
		 */
		function tags($_where = array('uid'=>'1')){
			$model = M('Tag');
			$tags = $model->where($_where)->select();
			$tags = fieldtokey($tags);
// 			dump($model->getLastSql());
			return $tags;
		}
		
		/**
		 * 返回总记录条数
		 * @param array $_where 条件
		 * @param string $_model 表名
		 * @return int $count
		 * @author MaWei ( http://www.phpyrb.com )
		 * @date 2014-4-17 下午1:50:15
		 */
		function count($_model = 'Article',$_where = array('uid'=>1)){
			$model = M("$_model");
			$count = $model->where($_where)->count();
			return $count;
		}
		
		/**
		 * 返回层次分类
		 * @param array $_data
		 * @param string $_pid
		 * @param string $_level
		 * @return array $catelevel
		 * @author MaWei ( http://www.phpyrb.com )
		 * @date 2014-4-17 下午1:50:15
		 */
		function level($_data,$_pid = 0, $_level = 1){
			foreach ($_data as $k => $v){
				if($_pid == $v['pid']){
					self::$catelevel[$k] = $v;
					self::$catelevel[$k]['level'] = $_level;
					self::$catelevel[$k]['tree'] = $this->tree($_level);
					unset($_data[$k]);
					$this->level($_data,self::$catelevel[$k]['id'],$_level+1);					
				}				
			}
			return self::$catelevel;
		}
		
		/**
		 * 返回树形字符
		 * @param string $_level
		 * @return string $str
		 * @author MaWei ( http://www.phpyrb.com )
		 * @date 2014-4-17 下午1:50:15
		 */
		function tree($_level){
			$str = '|----';
			for ($i = 1;$i < $_level; $i++){
				$str .= $str;
			}
			return $str;
		}
		
	}