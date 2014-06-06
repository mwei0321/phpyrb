(function (jquery) {
	
	//瀑布流每个元素对象，对象的宽，高
	var ElentObj = function (Obj) {
		//瀑布流元素对象数组
		var ElentArr = [];
		Obj.each(function (index) {
			ElentArr[index] = $(this);
			ElentArr[index].W = $(this).width() + SOption.Lmargin;
			ElentArr[index].H = $(this).height() + SOption.Bmargin;
		});
		return ElentArr;
	};
	//设置开始元素定位动画
	var StarElen = 0;
	//设置瀑布流定位动画
	var SetAnimate = function (Obj,top,left,index){
		//判断远征元素动画
		if(index <= StarElen){
			return true;
		}
		//动画特效
		switch(2){
			case 1:
				Obj.css({top:0,left:$(window).width()/2-SOption.ElenmentW +'px',position:'absolute'});
				//对象动画特效
				$(Obj).stop().animate({
					top:top,
					left:left,
					opacity: 'show'
				},SOption.AnimateTime);
				break;
			case 2:
				if(index/2){
					Obj.css({top:0,left:0,position:'absolute'});
				}else{
					Obj.css({top:0,left:$(window).width()-SOption.ElenmentW +'px',position:'absolute'});
				}	//对象动画特效
				$(Obj).stop().animate({
					top:top,
					left:left,
					opacity: 'show'
				},SOption.AnimateTime);
				break;
			case 3:
				if(index/2){
					Obj.css({top:$(document).height() + 'px',left:$(window).width()-SOption.ElenmentW +'px',position:'absolute'});
				}else{
					Obj.css({top:$(document).height() + 'px',left:$(window).width()/2-SOption.ElenmentW +'px',position:'absolute'});
				}	//对象动画特效
				$(Obj).stop().animate({
					top:top,
					left:left,
					opacity: 'show'
				},SOption.AnimateTime);
				break;
		}
		StarElen = index;
	}
	
	//设置瀑布元素定位
	var ElenH = function (Obj) {
		//每行元素的高度数组
		var ElenArrH = [];
		//瀑布行元素对象集合
		var EObj = ElentObj(Obj);
		//瀑布元素定位
		for(i=0;i < EObj.length;i++){
			if(i < SOption.ColNum){//第一行的元素，
				ElenArrH[i] = EObj[i].H;
				//设置第一行元素的间距
				if(i == 1 && i < SOption.ColNum){
					EObj[i].css('margin-left',SOption.Lmargin+'px');
				}
			}else{//第二行及以下的元素的定位
				//计算出行里面最低的行号下标
				var minH = ElenArrH.indexOf(Math.min.apply(Math,ElenArrH));
				//元素定位
				//EObj[i].css({top:ElenArrH[minH]+'px',left:EObj[i].W*minH+'px',position:'absolute'});
				//元素定位动画
				SetAnimate(EObj[i],ElenArrH[minH],EObj[i].W*minH,i);
				//把元素的高度添加到行里面
				ElenArrH[minH] += EObj[i].height() + SOption.Bmargin;
				
			}
		}
	};
	
	//时间瀑布初始化参数
	var TOption = {
		
	}
	
	$.fn.TimeLine = function () {
		
	}
	//瀑布流初始化参数
	var SOption = {
		ColNum : 5,//行数
		Bmargin : 20,//上下的间隔
		Lmargin : 20,//左右的间隔
		TimeLine : false,//以时间线显示
		SaultEl : 'saultEl',//元素的ClassName
		ElenmentW : 230, //元素的宽度
		AnimateStyle : 2,
		AmiamteTime : 4500
	}
	//瀑布流主函数
	$.fn.Sault = function (Obj) {
		//判断是个实例化对象
		if(Obj && typeof Obj === 'object'){
			//合并传入参数
			$.extend(SOption,Obj);
		}else{
			alert('请传入存在的对像元素')
		}

		//瀑布流元素
		var SaultElen = $('.'+SOption.SaultEl);

		//瀑布流行数
		$(window).resize(function () {
			
		});
		SOption.ColNum = Math.floor($(this).width() / SaultElenW);
		
		//调用函数
		ElenH(SaultElen,SOption.ColNum,SOption.Bmargin,SOption.Lmargin);
	}
})(jQuery)