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
			$_SESSION['uid'] = 1;
			$this->article = new Article();
// 			S('Article',new Article());
			if(! S('CateList')){
				S('CateList',$this->article->catelist(),5000);
			}
			if(! S('Tags')){
				S('Tags',$this->article->tags(),5000);
			}
			if(! S('CateCT')){
				S('CateCT',$this->article->catecount(),5000);
			}
// 			$this->assign('catecount',S('Article')->catecount());
// 			$this->assign('catemean',S('Article')->level(S('CateList'),2));
			$this->assign('catecount',$this->article->catecount());
			$this->assign('catemean',$this->article->level(S('CateList'),2));
			$this->assign('cates',S('CateList'));
			$this->assign('tags',S('Tags'));
		}
	}