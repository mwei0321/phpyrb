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
		function _initialize(){
			parent::_initialize();
			if(!S('HotArt')){
				S('HotArt',$this->article->articles('0,15','1','hots DESC'),10000);
			}
			$this->assign('hots',S('HotArt'));
			$this->assign('keywors',$_REQUEST['keywords']);
		}
		
		/**
		* 首页
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-5-2  下午5:31:55
		*/
		function index(){
			$count = $this->article->count();
			$page = new Page($count, 10);
			$artlist = $this->article->articles("$page->firstRow,$page->listRows");
			$countcomm = $this->article->countcomm(arr2to1($artlist));
			$countcomm = fieldtokey($countcomm,artid);
			$this->assign('page',$page->show());
			$this->assign('countcomm',$countcomm);
			$this->assign('artlist',$artlist);
			$this->display();
		}
		
		/**
		* 分类标签下的文章
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-5-23  上午11:42:37
		*/
		function catags(){
			$where = $_REQUEST['cate'] ? 'a.cateid='.$_REQUEST['cate'] : 'FIND_IN_SET('.$_REQUEST['tag'].',tags)';
			$where .= ' AND a.uid='.$_SESSION['uid'];
			$countwhere['_string'] = $_REQUEST['cate'] ? 'cateid='.$_REQUEST['cate'] : 'FIND_IN_SET('.$_REQUEST['tag'].',tags)';
			$countwhere = array_merge($countwhere,array('uid'=>$_SESSION['uid'],'status'=>1));
			$count = $this->article->count('Article',$countwhere);
			$page = new Page($count,15);
			$artlist = $this->article->articles("$page->firstRow,$page->listRows",$where);
// 			dump($artlist);
			$this->assign('artlist',$artlist);
			$this->assign('page',$page->show());
			$this->display('index');
		}
		
		/**
		* 文章内容
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-5-2  下午5:31:37
		*/
		function content(){
			//文章内容
			$info = $this->article->artinfo($_REQUEST['artid']);
			$this->assign('info',$info);
			//文章评论
			$count = $this->article->count('Comment',array('artid'=>$_REQUEST['artid']));
			$page = new Page($count,20);
			$comment = $this->article->comment($_REQUEST['artid'],"$page->firstRow,$page->listRows");
			//点击率
			M('Article')->where(array('id'=>$_REQUEST['artid']))->setInc('hots');
			$this->assign('commpage',$count > 20 ? $page->show() : FALSE);
			$this->assign('comment',$comment);
			$this->assign('artid',$_REQUEST['artid']);
			$this->display();
		}
		
		/**
		* 文章评论
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-5-2  下午5:31:13
		*/
		function comment(){
			$data = array();
			$data['uname'] = $_REQUEST['name'];
			$data['email'] = $_REQUEST['email'];
			$data['homepage'] = $_REQUEST['home'];
			$data['content'] = $_REQUEST['comment'];
			$data['artid'] = $_REQUEST['artid'];
			$data['addtime'] = time();
			$data['uid'] = $_SESSION['uid'];
			$reid = $this->article->add_updata($data,'ArticleComment');
			if($reid === FALSE){
				$this->error('评论失败！',U('Article/content',array('artid'=>$_REQUEST['artid'])));
			}else {
				$this->success('评论成功！',U('Article/content',array('artid'=>$_REQUEST['artid'])));
			}
		}
		
		/**
		* 搜索
		* @author MaWei (http://www.phpyrb.com)
		* @date 2014-5-2  下午6:29:23
		*/
		function search(){
			if($_REQUEST['keywords']){
				$count = $this->article->search($_REQUEST['keywords'],'0,10',true);
				$page = new Page($count,15);
				$result = $this->article->search($_REQUEST['keywords'],"$page->firstRow,$page->listRows");
				$this->assign('artlist',$result);
				$this->assign('page',$page->show());
			}
			$this->display('index');
		}
	}