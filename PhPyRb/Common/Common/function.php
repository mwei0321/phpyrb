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
			$onearray[] = $v["$_field"];
		}
		return $onearray;
	}
	
	/**
	 * 把处理过的HTML还原
	 * @param array $_data 
	 * @param array $_field 要还原的KEY
	 * @return array $_data
	 * @author MaWei ( http://www.phpyrb.com )
	 * @date 2014-4-17 下午1:50:15
	 */
	function rehtml($_data,$_filed = array('content')){
		foreach ($_data as $key => $val){
			foreach ($val as $k => $v){
				if(in_array($k, $_filed)){
					$_data[$key][$k] = html_entity_decode($_data[$key][$k]);
				}
			}
		}
		return $_data;
	}
	
	function _uploads( $config = array(),$thumb = FALSE) {
// 		if(S('Upload')){
// 			S('Upload',new Pub\UploadFile());
// 		}
		$upload = new Pub\UploadFile();
		// 设置上传文件大小
		$upload -> maxSize = empty($config['maxSize']) ? 300292200 : $config['maxSize'];
		// 设置上传文件类型
		$allowExts = empty($config['allowExts']) ? 'jpg,png,gif,jpeg' : $config['allowExts'];
		$upload -> allowExts = explode(',', $allowExts);
		// 设置附件上传目录
		$path = empty($config['path']) ? date('Y-m') . '/'  :  $config['path'];
		$upload -> savePath = $config['path'] ? 'Uploads/' .$config['path'] : './Uploads/' . $path;
		mkdir($upload -> savePath);
		$path = 'Uploads/' . $path;
		// 设置上传文件规则
		$upload -> saveRule = 'uniqid';
		$upload -> diyname = 'phpyrb.com';
		$upload -> uploadReplace = true;
		if($thumb){
			$upload -> thumb = TRUE;
			$upload -> thumbRemoveOrigin = TRUE;
		}
		if (!$upload -> upload()) {
			// 捕获上传异常
			if ( $upload -> getErrorMsg() == '没有选择上传文件' ) {
				$uploadList = array('');
			} else
				$this -> error($upload -> getErrorMsg());
		} else {
			// 取得成功上传的文件信息
			$uploadList = $upload -> getUploadFileInfo();
			//$imgpath = $path . $uploadList[0]['savename'];
			$uploadList['path']=$path;
		}
		return $uploadList;
	}
	
	/**
	 * 数据添加、更新
	 * @param array $_data 数据
	 * @param string $_model 表名
	 * @param string $_upfiled 主键
	 * @return string | boolean $reid
	 * @author MaWei ( http://www.phpyrb.com )
	 * @date 2014-4-17 下午1:50:15
	 */
	function add_updata($_data = array(),$_model = 'Article',$_upfiled = 'id'){
		$model = M("$_model");
		$reid = FALSE;
		if($_data["$_upfiled"]){
			$where = array();
			$where["$_upfiled"] = $_data["$_upfiled"];
			unset($_data["$_upfiled"]);
			// 				dump($_data);exit;
			$reid = $model->where($where)->save($_data);
		}else{
			$reid = $model->add($_data);
		}
// 		dump($_data);
// 		echo $model->getLastSql();
// 		exit;
		return $reid;
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