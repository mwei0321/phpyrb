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
	
	class IniController extends Controller{
		protected $User;
		function _initialize(){
// 			$this->User = D('User');
			if($_REQUEST['only'] == 'mw'){
				$_SESSION['uid'] = 1;
			}
			if(empty($_SESSION['uid'])){
				header("Location:".U('Login/index'));
			}
			if($_REQUEST['delcache'] == 'y'){
				S('CateList',null);
				S('Tags',null);
			}
			import('Article');
			S('Article',new Article(),10000);
			if(! S('CateList')){
				S('CateList',S('Article')->level(S('Article')->catelist(array('uid'=>1))),10000);
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