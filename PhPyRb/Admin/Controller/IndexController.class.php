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
	use Pub\Page;
	use PhPyRb\Article;
	
	class IndexController extends IniController{
		protected $Article;
		function _initialize(){
			import('Article');
			import('Page');
			$this->Article = new Article();
// 			if(! S('CateList')){
// 				S('CateList',$this->Article->catelist(),100000);
// 			}
// 			if(! S('Tags')){
// 				S('Tags',$this->Article->tags(),100000);
// 			}
			$this->assign('category',$this->Article->catelist());
			$this->assign('tags',$this->Article->tags());
			$this->assign('status',array('hidden','show'));
		}
		
		function index(){
			echo U('Index/index',array('p'=>'page'));
			$count = $this->Article->count();
			$tags = $this->Article->tags();
			$page = new Page($count,5);
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
			$show = $page->show();
			$this->assign('page',$show);
			$this->assign('artlist',$artlist);
			$this->display();
		}
	}