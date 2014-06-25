<?php
	/**
	*  +----------------------------------------------------------------------------------------------+
	*   | Explain: 微博
	*  +----------------------------------------------------------------------------------------------+
	*   | Author: MaWei <1123265518@qq.com>
	*	+----------------------------------------------------------------------------------------------+
	*   | Creater Time : 2014-6-9 下午5:03:48
	*  +----------------------------------------------------------------------------------------------+
	*   | Link :		http://www.phpyrb.com	     
	*  +----------------------------------------------------------------------------------------------+
	**/

	namespace Admin\Controller;
	use Admin\Controller\IniController;
	use PhPyRb\Twitter;
	use Pub\Page;
		
	class TwitterController extends IniController{
		protected $twitter;
		function _initialize(){
			parent::_initialize();
			import('Twitter');
			$this->twitter = new Twitter();
		}
		
		/**
		 * 微博列表页
		 * @author MaWei (http://www.phpyrb.com)
		 * @date 2014-6-11 下午3:46:59
		 */
		function index(){
			$list = $this->twitter->twitterlist($this->uid);
// 			dump($list);
// 			dump($this->twitter->twiinfo(array(9,8)));
		}
		
		/**
		 * 微博分类列表页
		 * @author MaWei (http://www.phpyrb.com)
		 * @date 2014-6-11 下午5:15:22
		 */
		function tcate(){
			$count = $this->twitter->tcate('conut',null);
			$page = new Page($count, 30);
			$cate = $this->twitter->tcate("$page->firstRow,$page->listRows");
			$this->assign('tcate',$cate);
			$this->display();
		}
		
		/**
		 * 微博分类编辑页
		 * @author MaWei (http://www.phpyrb.com)
		 * @date 2014-6-11 下午4:54:36
		 */
		function cedit(){
			if($_REQUEST['cid']){
				$info = $this->twitter->tcate($_REQUEST['cid']);
				$this->assign('cinfo',array_shift($info));
			}
			$this->display();
		}
		
		/**
		 * 删除分类
		 * @author MaWei (http://www.phpyrb.com)
		 * @date 2014-6-11 下午5:27:38
		 */
		function delcate(){
			$reid = M('TwitterCate')->delete($_REQUEST['cid']);
			if($reid === FALSE){
				$this->error('删除失败！',U('Twitter/tcate'));
			}else{
				$this->success('删除成功！',U('Twitter/tcate'));
			}
		}
		
		/**
		 * 添加分类数据到数据库
		 * @author MaWei (http://www.phpyrb.com)
		 * @date 2014-6-11 下午4:34:33
		 */
		function upadd_cate(){
			$data = array();
			$data['name'] = $_REQUEST['name'];
			$data['pid'] = 0;
			$data['status'] = $_REQUEST['status'];
			$data['description'] = $_REQUEST['des'];
			$data['sort'] = $_REQUEST['order'];
			$_REQUEST['cid'] ? $data['id'] = $_REQUEST['cid'] : FALSE;
			$reid = add_updata($data,'TwitterCate');
			if($reid === FALSE){
				$this->error('添加或修改失败！',U('Twitter/cedit',array('id'=>$_REQUEST['cid'])));
			}else{
				$this->success('添加或修改成功！',U('Twitter/tcate'));
			}
		}
		
		/**
		 * twitter编辑页
		 * @author MaWei (http://www.phpyrb.com)
		 * @date 2014-6-10 下午5:56:12
		 */
		function wedit(){
			header ("Cache-Control: no-cache, must-revalidate");
			header ("Pragma: no-cache");
			unset($_SESSION['twiphote']);
			$_SESSION['twistart'] = sha1(time());
			$this->assign('cate',$this->twitter->tcate());
			$this->assign('start',$_SESSION['twistart']);
			$this->display();
		}
		
		/**
		 * 添加吐槽
		 * @author MaWei (http://www.phpyrb.com)
		 * @date 2014-6-10 下午5:55:21
		 */
		function upadd_topic(){
			$data = array();
			$data['uid'] = $this->uid;
			$data['title'] = $_REQUEST['content'];
			$data['addtime'] = time();
			$data['cateid'] = $_REQUEST['cate'];
			$reid = add_updata($data,'Twitter');
// 			dump($reid);dump($_SESSION['twiphote']);exit;
			if($reid === false){
				$this->error('发布失败！',U('Twitter/wedit'));
			}else{
				if($_SESSION['twiphote']){
					foreach ($_SESSION['twiphote'] as $k => $v){
						$temp = array();
						$temp['id'] = $v;
						$temp['twid'] = $reid;
						add_updata($temp,'TwitterPicture','id',true);
					}
					unset($_SESSION['twiphote']);
				}
				$this->success('发布成功！',U('Twitter/index'));
			}
		}
		
		/**
		 * 给话题添加图片
		 * @author MaWei (http://www.phpyrb.com)
		 * @date 2014-6-10 下午5:35:00
		 */
		function upadd_photo(){
			if($_REQUEST['twid'] || $_REQUEST['start'] == $_SESSION['twistart']){
				$data = array();
				$_REQUEST['twid'] ? $data['twid'] = $_REQUEST['twid'] : FALSE;
				$data['description'] = $_REQUEST['des'];
				$config = array();
				$config['ImgWidth'] = 100;
				$config['Imgheight'] = 100;
				$config['path'] = 'Twitter';
				$upload = _uploads($config,true);
				$data['path'] = str_replace('\\',"/",$upload['path']);
				$data['thumb'] = str_replace('\\',"/",$upload['thumb']);
				$data['description'] = $upload['savename'];
// 				dump($upload);dump($data);exit;
				$reid = add_updata($data,'TwitterPicture');
				if($reid === false){
					echo 0;
				}else{
					echo $reid;
				}
				$_REQUEST['twid'] ? FALSE : $_SESSION['twiphote'][] = $reid;
			}else{
				unset($_SESSION['twiphote']);
			}
		}
	}