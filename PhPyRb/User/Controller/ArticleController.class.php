<?php
	/**
	*  +----------------------------------------------------------------------------------------------+
	*   | Explain: 文章 
	*  +----------------------------------------------------------------------------------------------+
	*   | Author: ONLY <1123265518@qq.com>
	*	+----------------------------------------------------------------------------------------------+
	*   | Creater Time : 2014-4-24 下午4:58:00
	*  +----------------------------------------------------------------------------------------------+
	*   | Link :		http://www.phpyrb.com	     
	*  +----------------------------------------------------------------------------------------------+
	**/
	
	namespace User\Controller;
	use User\Controller\IniController;
	use Pub\Page;
	use PhPyRb\Article;
	
	class ArticleController extends IniController{
	protected $Article,$categorys,$tags;
		function _initialize(){
			parent::_initialize();
			import('Article');
			import('Page');
			$this->Article = new Article();
			if(! S('CateList')){
				S('CateList',$this->Article->catelist(),10000);
			}
			if(! S('Tags')){
				S('Tags',$this->Article->tags(),10000);
			}
// 			$this->assign('category',$this->Article->catelist());
// 			$this->assign('tags',$this->Article->tags());
			$this->assign('category',S('CateList'));
			$this->assign('tags',S('CateList'));
			$this->assign('status',array('hidden','show'));
		}
		
		function index(){
			$artcount = $this->Article->count();
			$tags = $this->Article->tags();
			$page = new Page($artcount,30);
			$limit = "$page->firstRow,$page->listRows";
			$artlist = $this->Article->artlist($limit);
			foreach ($artlist as $k => $v){
				$str = '';
				$tag = explode(',', $v['tags']);
				foreach ($tag as $key => $val){
					$str .= $tags["$val"]['name'].'  ';
				}
				$artlist[$k]['tagname'] = $str;
			}
			$artshow = $page->show();
			$this->assign('page',$artshow);
			$this->assign('artlist',$artlist);
			$this->display();
		}
		
		function edit(){
			$this->display();
		}
	}