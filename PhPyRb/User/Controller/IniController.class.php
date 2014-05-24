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

	namespace User\Controller;
	use Think\Controller;
	use PhPyRb\Article;
	use Pub\Page;
	
	class IniController extends Controller{
		protected $User;
		function _initialize(){
			import('Page');
			$this->User = D('User');
			$_SESSION['userinfo']['id'] = 1;
// 			if(empty($_SESSION['userinfo'])){
// 				header("Location:".U('Login/index'));
// 			}
			if($_REQUEST['delcache']){
				S('CateList',NULL);
				S('Tags',NULL);
			}
			import('Article');
			S('Article',new Article(),10000);
			if(! S('CateList')){
				S('CateList',S('Article')->level(S('Article')->catelist()),10000);
			}
			if(! S('Tags')){
				S('Tags',S('Article')->tags(),10000);
			}
// 			$this->assign('category',S('Article')->catelist());
// 			$this->assign('tags',S('Article')->tags());
			$this->assign('category',S('CateList'));
			$this->assign('tags',S('Tags'));
			$this->assign('status',array('hidden','show'));
		}
	}