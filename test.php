<?php
	/**
	*  +----------------------------------------------------------------------------------------------+
	*   | Explain: 
	*  +----------------------------------------------------------------------------------------------+
	*   | Author: MaWei <1123265518@qq.com>
	*	+----------------------------------------------------------------------------------------------+
	*   | Creater Time : 2014-7-9 下午12:17:11
	*  +----------------------------------------------------------------------------------------------+
	*   | Link :		http://www.phpyrb.com	     
	*  +----------------------------------------------------------------------------------------------+
	**/

	class test{
		protected $data = array();
		function __set($_key,$_val){
			return $this->data[$_key] = $_val;
 		}
	}