<?php
	/**
	*  +----------------------------------------------------------------------------------------------+
	*   | Explain:  相册
	*  +----------------------------------------------------------------------------------------------+
	*   | Author: ONLY <1123265518@qq.com>
	*  +----------------------------------------------------------------------------------------------+
	*   | Creater Time : 2014-5-24 	
	*  +----------------------------------------------------------------------------------------------+
	*   | Link :		http://www.phpyrb.com	     
	*  +----------------------------------------------------------------------------------------------+
	**/

	namespace PhPyRb;
	
	class Photo {
		protected $config = array(
			'model'   =>  '',
		);
		
		protected $amodel,$pmodel,$uid;
		
		function __construct(){
			$this->amodel = M('Album');
			$this->pmodel = M('Photo');
			$this->uid = $_SESSION['uid'];
		}
		
		/**
		* 返回相册信息
		* @param  int 相册ID 
		* @return array $album 相册信息
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-5-24  下午11:38:46
		*/
		function albuminfo($_albumid){
			$album = $this->amodel->where(array('id'=>$_albumid))->find();
			return $album;
		}
		
		/**
		* 返回用户下的相册
		* @param  string $_limit 条数，如果值为NULL，则返回总条数。
		* @param  array $_where 条数
		* @param  string $_order 排序
		* @return array $album 返回相册信息
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-5-24  下午10:58:36
		*/
		function usertoalbum($_limit = '0,16',$_where = array(),$_order = 'uptime DESC'){
			if(is_null($_limit)){
				return $this->amodel->where($_where)->count();
			}
			$album = $this->amodel->where($_where)->order($_order)->limit($_limit)->select();
// 			echo $this->amodel->getlastsql();dump($album);
			return $album;
		}
		
		/**
		* 返回相册下的照片
		* @param  int $_albumid 相册ID 
		* @param  string $_limit 条数，如果值为NULL，则返回总条数。
		* @param  string $_order 排序
		* @return array $photo 相册下的照片信息
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-5-24  下午11:01:17
		*/
		function albumtophoto($_albumid ,$_limit = '0,32',$_order = 'addtime DESC'){
			if(is_null($_limit)){
				return $this->amodel->where($_where)->count();
			}
			$photo = $this->pmodel->where(array('album'=>intval($_albumid)))->order($_order)->limit($_limit)->select();
// 			echo $this->pmodel->getlastsql();exit;			
			return $photo;
		}
	}
	