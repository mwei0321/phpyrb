<?php
/**
*  +----------------------------------------------------------------------------------------------+
*   | Explain:  
*  +----------------------------------------------------------------------------------------------+
*   | Author: ONLY <491518132@qq.com>
*  +----------------------------------------------------------------------------------------------+
*   | Creater Time : 2014-1-17 	
*  +----------------------------------------------------------------------------------------------+
*   | Link :		http://www.phpyrb.com	     
*  +----------------------------------------------------------------------------------------------+
**/

	namespace Blog\Controller;
	use Think\Controller;
	
	class IniController extends Controller{
		protected $user;
		function _initialize(){
			$this->user = 'admin';
		}
	}