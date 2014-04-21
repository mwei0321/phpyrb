<?php
/**
*  +----------------------------------------------------------------------------------------------+
*   | Explain:  home page
*  +----------------------------------------------------------------------------------------------+
*   | Author: ONLY <491518132@qq.com>
*  +----------------------------------------------------------------------------------------------+
*   | Creater Time : 2014-1-17
*  +----------------------------------------------------------------------------------------------+
*   | Link :		http://www.phpyrb.com	     
*  +----------------------------------------------------------------------------------------------+
**/
	namespace Admin\Controller;
	use Admin\Controller\IniController;
	use PhPyRb\Page;
	
	class IndexController extends IniController{
		
		function _initalize(){
			
		}
		
		function index(){
			import('Page');
			$page = new Page($totalRows, $listRows);
			$this->display();
		}
	}