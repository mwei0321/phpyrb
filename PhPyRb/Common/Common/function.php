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
		return array_unique($onearray);
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
		$pathd = date('Y-m') . '/';
		$upload -> savePath = $config['path'] ? 'Uploads/' .$config['path'].'/'.$pathd : './Uploads/Photo/' . $pathd;
		mkdir($upload -> savePath);
		$path = $upload -> savePath;
		// 设置上传文件规则
		$upload -> saveRule = 'uniqid';
		$upload -> diyname = 'phpyrb.com';
		$upload -> uploadReplace = true;
		if($thumb){
			$pathname = $config['path'] ? 'Uploads/Thumb/'.$config['path'].'/'.$pathd : 'Uploads/Thumb/Photo/'.$pathd;
			mkdir($pathname);
			$upload -> thumb = TRUE; //是否保存缩略图
// 			$upload -> thumbRemoveOrigin = TRUE; //是否移除原图
			$upload ->thumbPath = $pathname;// 缩略图保存路径
			$upload ->thumbFile = 'phpyrb-';// 缩略图文件名
			$upload ->thumbMaxWidth   =  $config['ImgWidth'] ? $config['ImgWidth'] : '220';// 缩略图最大宽度
			$upload ->thumbMaxHeight  =  $config['ImgHeight'] ? $config['ImgHeight'] : '240';// 缩略图最大高度
// 			$upload ->thumbExt  = '';// 缩略图扩展名
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
			$uploadList = count($uploadList) < 2 ? $uploadList[0] : $uploadList;
// 			$uploadList = $path . $uploadList[0]['savename'];
// 			$uploadList['path']=$path;
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
	function add_updata($_data = array(),$_model = 'Article',$_upfiled = 'id',$_debug = FALSE){
		$model = M("$_model");
		$reid = FALSE;
		if($_data["$_upfiled"]){
			$where = array();
			$where["$_upfiled"] = $_data["$_upfiled"];
			unset($_data["$_upfiled"]);
// 			dump($_data);exit;
			$reid = $model->where($where)->save($_data);
		}else{
			$reid = $model->add($_data);
		}
// 		dump($_data);
// 		echo $model->getLastSql();
// 		exit;
		if($_debug){
			dump($_data);
			echo $model->getLastSql();
			//exit;
		}
		return $reid;
	}
	
	/**
	 * 合并二维数组里面一些相同的元素
	 * @param array $data
	 * @param string $_key 共同点的下标
	 * @param string $_mergeKey 需要合并的字段
	 * @return array $new
	 * @author MaWei (http://www.phpyrb.com)
	 * @date 2014-6-11 下午3:38:27
	 */
	function merge_array($_data,$_key = 'id',$_mergeKey = array('description','path','thumb')){
		$new = array();
		$i = 0;
		foreach ($_data as $k => $v){
			if(!empty($new[$v[$_key]])){
				foreach ($_mergeKey as $key => $val){
					$new[$v[$_key]]['image'][$i]["$val"] = $v["$val"];
				}
				unset($_data["$k"]);
				$i++;
			}else{
				foreach ($v as $key => $val){
					if(!in_array($key, $_mergeKey)){
						$new[$v[$_key]][$key] = $val;
					}else{
						$new[$v[$_key]]['image'][$i][$key] = $val;
					}
				}
				$i++;
			}
		}
// 		dump($new);
		return $new;
	}
	
	/**
	 * 友好的时间显示
	 *
	 * @param int    $sTime 待显示的时间
	 * @param string $type  类型. normal | mohu | full | ymd | other
	 * @param string $alt   已失效
	 * @return string
	 */
	function friendlyDate($sTime,$type = 'normal',$alt = 'false') {
		if (!$sTime)
			return '';
		//sTime=源时间，cTime=当前时间，dTime=时间差
		$cTime      =   time();
		$dTime      =   $cTime - $sTime;
		$dDay       =   intval(date("z",$cTime)) - intval(date("z",$sTime));
		//$dDay     =   intval($dTime/3600/24);
		$dYear      =   intval(date("Y",$cTime)) - intval(date("Y",$sTime));
		//normal：n秒前，n分钟前，n小时前，日期
		if($type=='normal'){
			if( $dTime < 60 ){
				if($dTime < 10){
					return '刚刚';    //by yangjs
				}else{
					return intval(floor($dTime / 10) * 10)."秒前";
				}
			}elseif( $dTime < 3600 ){
				return intval($dTime/60)."分钟前";
				//今天的数据.年份相同.日期相同.
			}elseif( $dYear==0 && $dDay == 0  ){
				//return intval($dTime/3600)."小时前";
				return '今天'.date('H:i',$sTime);
			}elseif($dYear==0){
				return date("m月d日 H:i",$sTime);
			}else{
				return date("Y-m-d H:i",$sTime);
			}
		}elseif($type=='mohu'){
			if( $dTime < 60 ){
				return $dTime."秒前";
			}elseif( $dTime < 3600 ){
				return intval($dTime/60)."分钟前";
			}elseif( $dTime >= 3600 && $dDay == 0  ){
				return intval($dTime/3600)."小时前";
			}elseif( $dDay > 0 && $dDay<=7 ){
				return intval($dDay)."天前";
			}elseif( $dDay > 7 &&  $dDay <= 30 ){
				return intval($dDay/7) . '周前';
			}elseif( $dDay > 30 ){
				return intval($dDay/30) . '个月前';
			}
			//full: Y-m-d , H:i:s
		}elseif($type=='full'){
			return date("Y-m-d , H:i:s",$sTime);
		}elseif($type=='ymd'){
			return date("Y-m-d",$sTime);
		}else{
			if( $dTime < 60 ){
				return $dTime."秒前";
			}elseif( $dTime < 3600 ){
				return intval($dTime/60)."分钟前";
			}elseif( $dTime >= 3600 && $dDay == 0  ){
				return intval($dTime/3600)."小时前";
			}elseif($dYear==0){
				return date("Y-m-d H:i:s",$sTime);
			}else{
				return date("Y-m-d H:i:s",$sTime);
			}
		}
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