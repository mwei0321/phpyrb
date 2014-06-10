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

	namespace User\Controller;
	use User\Controller\IniController;
	
	class TwitterController extends IniController{
		
		function _initialize(){
			
		}
		
		function index(){
			
		}
		
		/**
		 * twitter编辑页
		 * @author MaWei (http://www.phpyrb.com)
		 * @date 2014-6-10 下午5:56:12
		 */
		function wedit(){
			header ("Cache-Control: no-cache, must-revalidate");
			header ("Pragma: no-cache");
			$_SESSION['twistart'] = sha1(time());
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
			$reid = add_updata($data,'Twitter');
			if($reid === false){
				$this->error('发布失败！',U('Twitter/wedit'));
			}else{
				if($_SESSION['twiphote']){
					foreach ($_SESSION['twiphote'] as $k => $v){
						$temp = array();
						$temp['id'] = $v;
						$temp['twid'] = $reid;
						add_updata($temp,'TwitterPicture');
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
			if($_REQUEST['start'] == $_SESSION['twistart']){
				$data = array();
				$data['twid'] = $_REQUEST['id'];
				$data['description'] = $_REQUEST['des'];
				$data['ctime'] = time();
				$config = array();
				$config['ImgWidth'] = 100;
				$config['Imgheight'] = 100;
				$config['path'] = 'Twitter';
				$upload = _uploads($config,true);
				$data['path'] = str_replace('\\',"/",$upload['path']);
				$data['thumb'] = str_replace('\\',"/",$upload['thumb']);
				$reid = add_updata($data,'TwitterPicture');
				if($reid === false){
					echo 0;
				}else{
					echo $reid;
				}
				$_SESSION['twiphote'][] = $reid;
			}else{
				unset($_SESSION['twiphote']);
			}
		}
	}