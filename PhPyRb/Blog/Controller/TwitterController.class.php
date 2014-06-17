<?php
	/**
	*  +----------------------------------------------------------------------------------------------+
	*   | Explain: 微博
	*  +----------------------------------------------------------------------------------------------+
	*   | Author: MaWei <1123265518@qq.com>
	*	+----------------------------------------------------------------------------------------------+
	*   | Creater Time : 2014-6-11 下午3:49:48
	*  +----------------------------------------------------------------------------------------------+
	*   | Link :		http://www.phpyrb.com	     
	*  +----------------------------------------------------------------------------------------------+
	**/

	namespace Blog\Controller;
	use Blog\Controller\IniController;
	use PhPyRb\Twitter;
	use Pub\Page;
		
	class TwitterController extends IniController{
		protected $twitter;
		function _initialize(){
			parent::_initialize();
			$this->twitter = new Twitter();
			if(!S('TwiCate')){
				S('TwiCate',$this->twitter->tcate(),1000);
			}
			$this->assign('tcate',S('TwiCate'));
		}
		
		/**
		 * 微博显示
		 * @author MaWei (http://www.phpyrb.com)
		 * @date 2014-6-11 下午5:43:20
		 */
		function index(){
			$count = $this->twitter->twitterlist($this->uid,'count');
			$page = new Page($count, 10);
			$tlist = $this->twitter->twitterlist($this->uid,"$page->firstRow,$page->listRows");
// 			dump($tlist);
// 			exit;
// print_r($tlist);exit;
			$this->assign('tlist',$tlist);
			$this->display();
		}
	}