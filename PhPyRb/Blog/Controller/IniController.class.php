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
	use PhPyRb\Article;
	
	class IniController extends Controller{
		protected $article,$uid;
		function _initialize(){
			import('Article');
			import('Page');
			$_SESSION['uid'] = 1;
			$this->uid = 1;
			$this->article = new Article();
// 			S('Article',new Article());
			if($_REQUEST['delcache'] = 'y'){
				S('CateList',NULL);
				S('Tags',NULL);
				S('CateCT',NULL);
				S('Menu',NULL);
			}
			if(! S('CateList')){
				S('CateList',$this->article->catelist(),5000);
			}
			if(! S('Tags')){
				S('Tags',$this->article->tags(),5000);
			}
			if(! S('CateCT')){
				S('CateCT',$this->article->catecount(),5000);
			}
			if(! S('Menu')){
				S('Menu',$this->article->menu(),50000);
// 				dump(S('Menu'));
			}
// 			$this->assign('catecount',S('Article')->catecount());
// 			$this->assign('catemean',S('Article')->level(S('CateList'),2));
			$this->assign('catecount',$this->article->catecount());
			$this->assign('catemean',S('Menu'));
			$this->assign('cates',S('CateList'));
			$this->assign('tags',S('Tags'));
		}
	}