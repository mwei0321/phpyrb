<?php
/**
*  +----------------------------------------------------------------------------------------------+
*   | Explain:  文章
*  +----------------------------------------------------------------------------------------------+
*   | Author: ONLY <491518132@qq.com>
*  +----------------------------------------------------------------------------------------------+
*   | Creater Time : 2014-1-17 	
*  +----------------------------------------------------------------------------------------------+
*   | Link :		http://www.phpyrb.com	     
*  +----------------------------------------------------------------------------------------------+
**/
	namespace Blog\Controller;
	use Blog\Controller\IniController;
use Pub\Page;
		
	class ArticleController extends IniController{
		protected $article;
		function _initialize(){
			parent::_initialize();
			$this->assign('hots',C('Article')->articles('0,15','hots DESC'));
		}
		
		function index(){
			$count = C('Article')->count();
			$page = new Page($count, 5);
			$artlist = C('Article')->articles("$page->firstRow,$page->listRows");
			$countcomm = C('Article')->countcomm(arr2to1($artlist));
			$countcomm = fieldtokey($countcomm,artid);
			$this->assign('page',$page->show());
			$this->assign('countcomm',$countcomm);
			$this->assign('artlist',$artlist);
			$this->display();
		}
		
		function content(){
			$info = C('Article')->artinfo($_REQUEST['artid']);
			$this->assign('info',$info);
			$this->display();
		}
	}