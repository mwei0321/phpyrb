<?php
/**
*  +----------------------------------------------------------------------------------------------+
*   | Explain:  Project Public Function
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
	
	class IniController extends Controller{
		protected $User;
		function _initialize(){
			$this->User = D('User');
			if(empty($_SESSION['userinfo'])){
				header("Location:".U('Login/index'));
			}
		}
	}