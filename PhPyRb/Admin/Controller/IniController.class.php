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

	namespace Admin\Controller;
	use Think\Controller;
	use PhPyRb\Article;
	
	class IniController extends Controller{
		protected $User,$uid,$Article;
		function _initialize(){
// 			$this->User = D('User');
			//用户登入
			if($_REQUEST['only'] == 'mw'){
				$_SESSION['uid'] = 1;
			}
			$this->uid = $_SESSION['uid'];
			//判断用户登入
			if(empty($this->uid)){
				header("Location:".U('Login/index'));
			}
			//清除缓存
			if($_REQUEST['delcache'] == 'y'){
				S('CateList',null);
				S('Tags',null);
			}
			//导入文章类
			import('Article');
			$this->Article = new Article();
			//缓存文章对像
// 			if(! $this->Article){
// 				S('Article',new Article(),10000);
// 			}
			//缓存分类
			if(! S('CateList')){
				$cate = $this->Article->catelist(array('uid'=>1));
				$levelcate = $this->Article->level($cate);
				S('CateList',$levelcate,10000);
			}
			//缓存标签
			if(! S('Tags')){
				S('Tags',$this->Article->tags(),10000);
			}
// 			$this->assign('category',$this->Article->catelist());
// 			$this->assign('tags',$this->Article->tags());
			$this->assign('category',S('CateList'));
			
			$this->assign('tags',S('Tags'));
			$this->assign('status',array('hidden','show'));
		}
	}