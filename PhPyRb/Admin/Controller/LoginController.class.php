<?php
/**
*  +----------------------------------------------------------------------------------------------+
*   | Explain:  Admin Login
*  +----------------------------------------------------------------------------------------------+
*   | Author: ONLY <491518132@qq.com>
*  +----------------------------------------------------------------------------------------------+
*   | Creater Time : 2014-1-17 	
*  +----------------------------------------------------------------------------------------------+
*   | Link :		http://www.phpyrb.com	     
*  +----------------------------------------------------------------------------------------------+
**/

	namespace Admin\Controller;
	use Think\Controller;

	class LoginController extends Controller{
		function _initialize(){
			
		}
		
		/**
		 * 登入表单
		 * @author MaWei ( http://www.phpyrb.com )
		 * @date 2014-4-17 下午1:50:15
		 */
		function index(){
// 			echo sha1('phpyrb'.'phpyrb'.'mw');
			$this->display();
		}
		
		/**
		 * 登入验证
		 * @return array 
		 * @author MaWei ( http://www.phpyrb.com )
		 * @date 2014-4-17 下午1:50:15
		 */
		function Login(){
			$where = array();
			$where['uname'] = $_REQUEST['username'];
			$where['passwd'] = sha1('phpyrb'.$_REQUEST['password'].'mw');
			$model = M("Users");
			$info = $model->where($where)->find();
			$_SESSION['userinfo'] = $info;
			$this->redirect('Article/index');
		}
		
		/**
		 * 退出
		 * @return array 
		 * @author MaWei ( http://www.phpyrb.com )
		 * @date 2014-4-17 下午1:50:15
		 */
		function Logout(){
			unset($_SESSION['userinfo']);
		}
		
		function cookie(){
			
		}
	}