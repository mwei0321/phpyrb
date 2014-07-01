<?php
	/**
	*  +----------------------------------------------------------------------------------------------+
	*   | Explain: 微博操作类
	*  +----------------------------------------------------------------------------------------------+
	*   | Author: MaWei <1123265518@qq.com>
	*	+----------------------------------------------------------------------------------------------+
	*   | Creater Time : 2014-6-11 上午10:22:37
	*  +----------------------------------------------------------------------------------------------+
	*   | Link :		http://www.phpyrb.com	     
	*  +----------------------------------------------------------------------------------------------+
	**/

	namespace PhPyRb;
	
	class Twitter {
		function __construct(){
			
		}
		
		/**
		 * 返回用户下的微博
		 * @param string $_uid 用户ID
		 * @param string $_limit 条数
		 * @return array $tlist
		 * @author MaWei (http://www.phpyrb.com)
		 * @date 2014-6-11 下午3:42:45
		 */
		function twitterlist($_limit = '0,10',$_uid = null){
			$m = M('Twitter');
			$where = $_uid ? array('uid'=>$_uid) : 1; 
			if($_limit == 'count'){
				return $m->where($where)->count();
			}
			$reid = $m->field('id')->where($where)->order('id DESC')->limit($_limit)->select();
			$tlist = $this->twiinfo(arr2to1($reid));
			return $tlist;
		}
		
		/**
		 * 根据ID返回信息
		 * @param array ids
		 * @return array $tinfo
		 * @author MaWei (http://www.phpyrb.com)
		 * @date 2014-6-11 下午3:41:32
		 */
		function twiinfo ($_ids){
			$filed = 't.id,cateid,title,addtime,description,path,thumb';
			$sql = "SELECT $filed FROM `twitter` t LEFT JOIN twitter_picture p ON t.id=p.twid WHERE t.id IN (".implode(',', $_ids).") ORDER BY t.id DESC";
			$info = M()->query($sql);
// 			echo M()->getlastsql();
// 			dump($info);
			$tinfo = merge_array($info);
			return $tinfo;			
		}
		
		/**
		 * 返回微博分类
		 * @return array $cate;
		 * @author MaWei (http://www.phpyrb.com)
		 * @date 2014-6-11 下午4:51:34
		 */
		function tcate($_limit = '0,30' , $_id = null){
			$where = $_id ? array('id'=>$_id) : 1;
			if($_limit == 'count'){
				return M('TwitterCate')->count();
			}
			$cate = M('TwitterCate')->where($where)->order('sort DESC')->select();
			return $cate;
		}
		
	}