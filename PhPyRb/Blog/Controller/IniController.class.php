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
		protected $article;
		function _initialize(){
			import('Article');
			import('Page');
			C('Article',new Article());
			if(! S('CateList')){
				S('CateList',C('Article')->catelist(),500000);
			}
			if(! S('Tags')){
				S('Tags',C('Article')->tags(),500000);
			}
			if(! S('CateCT')){
				S('CateCT',C('Article')->catecount(),100000);
			}
			$_SESSION['userinfo']['id'] = 1;
			$this->assign('catecount',C('Article')->catecount());
			$this->assign('catemean',C('Article')->level(S('CateList'),2));
			$this->assign('cates',S('CateList'));
			$this->assign('tags',S('Tags'));
		}
	}