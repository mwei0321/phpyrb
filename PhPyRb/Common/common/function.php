<?php
	/**
	*  +----------------------------------------------------------------------------------------------+
	*   | Explain: 公用函数库
	*  +----------------------------------------------------------------------------------------------+
	*   | Author: ONLY <1123265518@qq.com>
	*	+----------------------------------------------------------------------------------------------+
	*   | Creater Time : 2014-4-23 下午2:55:05
	*  +----------------------------------------------------------------------------------------------+
	*   | Link :		http://www.phpyrb.com	     
	*  +----------------------------------------------------------------------------------------------+
	**/
	
	/**
	 * 返回数组的某个值的集合
	 * @param array $_data
	 * @param string $_field
	 * @return array $onearray
	 * @author MaWei ( http://www.phpyrb.com )
	 * @date 2014-4-17 下午1:50:15
	 */
	function arr2to1($_data = array(),$_field = 'id'){
		$onearray = array();
		foreach ($_data as $k => $v){
			if(is_array($v["$_field"])){
				foreach ($v["$_field"] as $key => $val){
					$onearray[] = $val["$_field"];
				}
			}
			$onearr[] = $v["$_field"];
		}
		return $onearray;
	}
	
	/**
	 * 把数组的某的值做为键
	 * @param array $_data
	 * @param string $_field
	 * @return array $newdata
	 * @author MaWei ( http://www.phpyrb.com )
	 * @date 2014-4-17 下午1:50:15
	 */
	function fieldtokey($_data = array(),$_field = 'id'){
		$newdata = array();
		foreach ($_data as $k => $v){
			if(is_array($v["$_field"])){
				foreach ($v["$_field"] as $key => $val){
					$newdata[$v["$_field"]][$val["$_field"]] = $val;
				}
			}
			$newdata[$v["$_field"]] = $v;
		}
		return $newdata;
	}