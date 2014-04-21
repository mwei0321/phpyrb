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
	namespace Blog\Controller;
	use \Blog\Controller\IniController;

	class IndexController extends IniController{
		protected $article;
		function _initialize(){
			parent::_initialize();
			$this->article = D('Article');
		}
		
		function index(){
			$artlist = $this->article->artlist();
			$this->assign('artlist',$artlist);
			$this->display();
		}
	}