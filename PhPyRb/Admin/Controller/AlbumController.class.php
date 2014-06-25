<?php
	/**
	*  +----------------------------------------------------------------------------------------------+
	*   | Explain:  相册
	*  +----------------------------------------------------------------------------------------------+
	*   | Author: ONLY <1123265518@qq.com>
	*  +----------------------------------------------------------------------------------------------+
	*   | Creater Time : 2014-5-23 	
	*  +----------------------------------------------------------------------------------------------+
	*   | Link :		http://www.phpyrb.com	     
	*  +----------------------------------------------------------------------------------------------+
	**/

	namespace Admin\Controller;
	use Admin\Controller\IniController;
	use PhPyRb\Photo;
	use Pub\Page;
		
	class AlbumController extends IniController{
		protected $photo;
		function _initialize(){
			parent::_initialize();
			import('Photo');
			import('Pub\Page');
			$this->photo = new Photo();
			$this->assign('view','Album');
		}
		
		/**
		* 相册列表
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-5-24  下午11:40:31
		*/
		function index(){
			$count = $this->photo->usertoalbum(NULL,array('uid'=>$_SESSION['uid']));
			$page = new Page($count, 16);
			$info = $this->photo->usertoalbum("$page->firstRow,$page->listRows",array('uid'=>$_SESSION['uid']));
			$this->assign('album',$info);
			$this->assign('page',$page->show());
			$this->assign('action','alist');
			$this->display();
		}
		
		/**
		* 给相册添加相片
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-5-24  下午11:41:52
		*/
		function phedit(){
			$this->display();
		}
		
		/**
		* 添加相册编辑页
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-5-24  下午11:41:12
		*/
		function aledit(){
			if($_REQUEST['albumid']){
				$album = $this->photo->albuminfo($_REQUEST['albumid']);
				$this->assign('album',$album);
			}
			$this->assign('action','albumedit');
			$this->display();
		}
		
		/**
		 * 照片编辑页
		 * @author MaWei (http://www.phpyrb.com)
		 * @date 2014-6-10 上午10:13:43
		 */
		function photo(){
			$photo = $this->photo->albumtophoto($_REQUEST['albumid']);
			$this->assign('photo',$photo);
			$this->assign('albumid',$_REQUEST['albumid']);
			$this->assign('action','albumedit');
			$this->display();
		}
		
		/**
		 * 添加、修改照片到相册
		 * @author MaWei (http://www.phpyrb.com)
		 * @date 2014-6-10 上午10:12:59
		 */
		function photoupdata(){
			$data = array();
			$data['album'] = $_REQUEST['albumid'];
			$data['addtime'] = time();
			$upload = _uploads(array());
			$data['path'] = $upload['path'];
			$data['name'] = $data['alt'] = array_shift((explode('.', $upload['name'])));
			$reid = add_updata($data,'Photo');
			if($reid === FALSE){
				echo FALSE;
			}else {
				echo $reid;
			}
		}
		
		/**
		* 相册更新、添加到数据库
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-5-25  上午12:14:25
		*/
		function albumupdata(){
			$data = array();
			$data['name'] = $_REQUEST['name'];
			$data['description'] = $_REQUEST['description'];
			$upload = _uploads(array('path'=>'cover/'.$_SESSION['uid'].'/'),TRUE);
			$data['cover'] = $upload['path'].'phpyrb-'.$upload['savename'];
			$data['uid'] = $_SESSION['uid'];
			$data['permission'] = $_REQUEST['status'];
			$_REQUEST['albumid'] ? $data['id'] = $_REQUEST['albumid'] : FALSE;
			$_REQUEST['albumid'] ? $data['uptime'] = time() : $data['uptime'] = $data['addtime'] = time();
			$reid = add_updata($data,'Album');
			if($reid === FALSE){
				$this->error('操作失败！',U('Album/aledit',array('albumid'=>$_REQUEST['albumid'])));
			}else {
				$this->success('操作成功！',U('Album/index'));
			}
		}
		
		function updata(){
			$config = array();
			$config['allowExts'] = 'jpg,png,gif,jpeg';
			$config['maxSize'] = 	'10487676';
			$upload_files = _uploads($config);
			
			dump($_REQUEST);
			dump($upload_files);
		}
		
		
	}