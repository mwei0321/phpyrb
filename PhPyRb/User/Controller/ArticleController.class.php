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
	
	class ArticleController extends IniController{
	protected $Article,$categorys,$tags;
		function _initialize(){
			parent::_initialize();
			$this->assign('view','article');
		}
		
		/**
		* 文章列表
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-5-23  上午12:02:49
		*/
		function index(){
			$artcount = S('Article')->count();
			$tags = S('Article')->tags();
			$page = new Page($artcount,30);
			$limit = "$page->firstRow,$page->listRows";
			$artlist = S('Article')->artlist($limit);
			foreach ($artlist as $k => $v){
				$str = '';
				foreach ($v['tags'] as $key => $val){
					$str .= $tags["$val"]['name'].'  ';
				}
				$artlist[$k]['tagname'] = $str;
			}
			$artshow = $page->show();
			$this->assign('page',$artshow);
			$this->assign('artlist',$artlist);
			$this->assign('action','aindex');
			$this->display();
		}
		
		/**
		* 文章添加修改页面
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-5-23  上午12:01:35
		*/
		function edit(){
			if($_REQUEST['artid']){
				$artinfo = S('Article')->artinfo($_REQUEST['artid']);
// 				dump($artinfo);exit;
				$this->assign('artinfo',$artinfo);
			}
			$this->assign('action','aedit');
			$this->display();
		}
		
		/**
		* 文章添加修改入数据库
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-5-23  上午12:01:56
		*/
		function add_updata(){
			$data = array();
			$_REQUEST['artid'] ? $data['id'] = $_REQUEST['artid'] : FALSE;
			$data['title'] = $_REQUEST['title'];
			$data['uid'] = $_SESSION['userinfo']['id'];
			$data['cateid'] = $_REQUEST['cate'];
			$data['author'] = $_REQUEST['author'];
			$data['keyword'] = $_REQUEST['keyword'];
			$data['status'] = $_REQUEST['status'];
			$data['tags'] = implode(',', $_REQUEST['tags']);
			$_REQUEST['artid'] ? $data['uptime'] = time() : $data['uptime'] = $data['addtime'] = time();
			$artid = S('Article')->add_updata($data);
			if($artid === FALSE){
				$this->error('更新失败！',U('Article/edit',array('artid'=>$_REQUEST['artid'])));
			}else {
				$temp = array();
				$temp['artid'] = $_REQUEST['artid'] ? $_REQUEST['artid'] : $artid;
				$temp['description'] = $_REQUEST['description'];
				$temp['content'] = $_REQUEST['content'];
				$ret = S('Article')->add_updata($temp,'Content','artid');
				if($ret === FALSE){
					$this->error('文章内容更新失败',U('Article/edit',array('artid'=>$_REQUEST['artid'])));
				}else {
					$this->success('文章添加修改成功！',U('Article/index'));
				}
			}
			
		}
		
		/**
		* 文章删除
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-5-23  上午12:02:28
		*/
		function delart(){
			$artid = $_REQUEST['artid'];
			$reid = M('Article')->delete($artid);
			if($reid === FALSE){
				$this->error('删除失败！',U('Article/index'));
			}else {
				$reid = M('Content')->where(array('artid'=>$artid))->delete();
				if($reid === FALSE){
					$this->error('删除失败！',U('Article/index'));
				}else {
					$this->success('删除成功！',U('Article/index'));
				}
			}
		}
	}