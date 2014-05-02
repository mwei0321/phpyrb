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
		function artlist($_limit = '0,25',$_order = 'id DESC',$_where = FALSE){
			$_where = $_where ? $_where : array('status'=>1,'uid'=>$_SESSION['userinfo']['userid']);
			$artlsit = $this->article->where($_where)->order($_order)->limit($_limit)->select();
			$artlsit = $this->_strtoarr($artlsit);
// 			echo $this->article->getLastSql();
			return $artlsit;
		}
		
		/**
		* 返回文章评论数
		* @param  string $_artid
		* @return array $count
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-4-27  下午5:54:02
		*/
		function countcomm($_artid = array()){
			$comm = M();
			$sql = "SELECT count(id) count,artid FROM `comment` WHERE status=1 and (`artid` in (".implode(',', $_artid).")) GROUP BY artid";
// 			echo $sql;
			$count = $comm->query($sql);
			return $count;
		}
		
		/**
		* 返回分类下的文章数
		* @param  string $_uid
		* @return array $count
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-5-1  下午10:14:58
		*/
		function catecount(){
			$cate = M();
			$sql = "SELECT count(id) cout,cateid FROM `article` WHERE uid=".$_SESSION['userinfo']['userid']." GROUP BY cateid";
			$count = $cate->query($sql);
			return fieldtokey($count,'cateid');
		}
		
		/**
		* 关键字搜索
		* @param  array $_keywords
		* @param  string $_limit
		* @return array $result
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-5-2  下午6:04:06
		*/
		function search($_keywords,$_limit = "0,15",$_count = FALSE){
			$field = empty($_count) ? "id,title,author,hots,uptime,keyword,tags,cateid,content" : 'count(id) cout';
			$sql = "SELECT $field FROM `article` a LEFT JOIN `content` c ON a.id=c.artid WHERE ((a.`title` like '%".$_keywords."%') OR (a.`keyword` like '%".$_keywords."%')) AND a.`status`=1 ORDER BY uptime LIMIT $_limit";
			$art = M();
			$result = $art->query($sql);
// 			echo $sql;
			$result = empty($_count) ? $result = $this->_strtoarr(fieldtokey($result)) : $result['0']['cout'];
			return $result;
		}
		
		/**
		* 返回文章的评论
		* @param  array 
		* @param  string 
		* @return array 
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-4-27  下午5:54:42
		*/
		function comment($_artid,$_limit = '0,15'){
			$comm = M('Comment');
			$comment = $comm->where(array('artid'=>$_artid,'status'=>1))->order('id DESC')->limit($_limit)->select();
			return $comment;
		}
		
		/**
		* 返回最新的文章
		* @param  string $_limit
		* @param  string $_order
		* @param  string $_uid
		* @return array $newest
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-4-27  下午5:33:45
		*/
		function articles($_limit = '0,5',$_where = FALSE,$_order = 'id DESC',$_count = FALSE){
			$_where = $_where ? $_where : 'a.uid='.$_SESSION['userinfo']['id'].' ';
			$field = empty($_count) ? "id,title,author,hots,uptime,keyword,tags,cateid,content" : 'count(id) cout';
			$sql = "SELECT $field FROM `article` a LEFT JOIN `content` c ON a.id=c.artid WHERE $_where AND a.`status`=1 ORDER BY $_order LIMIT $_limit";
			$art = M();
			$result = $art->query($sql);
// 			echo $sql;
			$result = empty($_count) ? $result = $this->_strtoarr(fieldtokey($result)) : $result['0']['cout'];
			return $result;
		}
		
		/**
		* 把数组里的某个字符变成数组
		* @param  array $_data
		* @param  string $_field
		* @return array $_data
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-4-27  下午4:45:42
		*/
		function _strtoarr($_data,$_field="tags"){
			foreach ($_data as $k => $v){
				$_data["$k"]["$_field"] = explode(',', $v["$_field"]);
			}
			return $_data;
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
// 			$where = is_array($_artid) ? "id IN (".implode(',', $_artid).")" : $_artid;
			$sql = "SELECT * FROM `article` as a LEFT JOIN `content` as c ON a.id=c.artid WHERE id=".$_artid;
			$artinfo = $model->query($sql);
// 			$artinfo = fieldtokey($artinfo);
			$artinfo = $this->_strtoarr($artinfo);
			return array_shift($artinfo);
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
		function catelist($_where = array('uid'=>'1','status'=>1)){
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
		function tags($_where = array('uid'=>'1','status'=>1)){
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
		function count($_model = 'Article',$_where = array('uid'=>1,'status'=>1)){
			$model = M("$_model");
			$count = $model->where($_where)->count();
// 			echo $model->getLastSql();
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
		function level($_data,$_pid = 0, $_level = 0){
			foreach ($_data as $k => $v){
				if($_pid == $v['pid']){
					self::$catelevel[$k] = $v;
					self::$catelevel[$k]['level'] = $_level;
					self::$catelevel[$k]['tree'] = $this->_tree($_level);
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
		function _tree($_level){
			$str = '|----';
			for ($i = 1;$i < $_level; $i++){
				$str .= $str;
			}
			return $str;
		}
		
	}