/**
 * @author MaWei
 */
(function (jquery){
	//浏览器宽度
	var SreenW = $(window).width();
	// //浏览器高度
	var SreenH = $(window).height();
	
	//初始化配置
	var Options = {
		bgOpacity   : '0.6',
		bgColor     : '#666',
		EditW		: 400,
		EditH		: 600,
		ThumbW		: 100,
		ThumbH		: 100,
	}
	
	var Html = function (Obj) {
		var html = "<div id='phpyrb'></div><div id='show'></div>";
		Obj.append(html);
		// alert(html);
		$('#phpyrb').css({'width':SreenW+'px','height':SreenH+'px','background':Options.bgColor,});
		$('#phpyrb').fadeTo(300,Options.bgOpacity);
		$('#show').css({'width':Options.EditW+'px','height':Options.EditH+'px','left':(SreenW-Options.EditW)/2+'px','top':(SreenH-Options.EditH)/2+'px'});
		
	}
	
	var MultiImg = function (Obj){
		var html = "<div id='phpyrb'></div><div id='bigimg'><img src='##' /></div><div id='thumbimg'><dl></dl></div>";
		Obj.append(html);
		
	}
	
	$.fn.PopupImg = function (Obj){
		//遮照层
		var html = "<div id='phpyrb'></div>";
		//大图显示
		html += "<div id='bigimg'><img src='##'/></div>";
		//缩略图
		html += "<div id='thumbimg' style='width:"+SreenW+";height:"+Options.ThumbH+"px;top:"+(SreenH-Options.ThumbH-20)+"px;left:"+(SreenW-Options.ThumbW)/2+"px'><dl></dl></div>";
		//把html插入页面
		$('body').prepend(html);
		
		$(this).each(function (){
			var ObjImg = $(this).find('dd');
			ObjImg.click(function (){
				var parenthtml = $(this).parent('dl').html();
				$('#thumbimg').children('dl').append(parenthtml);
				$('#phpyrb').css({'dispaly':'block','width':SreenW+'px','height':SreenH+'px','background':Options.bgColor,}).fadeTo(500,0.8);
				var bigimg = $(this).children('img').attr('bigimg');
				$('#bigimg').css({'display':'block'}).children('img').attr('src',bigimg);
			});
		});
	}
	
	var BigImg = function(url){
		$('#bigimg').children('img').attr('src',url);
	}
	
	var SimpleEdit = function (Obj){
		var html = "<div id='phpyrb'></div><div id='show'><texteare name='content'></texteare></div>";
	}
	
	$.fn.Popup = function (Obj){
		
		if(Obj && typeof Obj === 'object'){
			$.extend(Options,Obj);
		}else{
//			alert('请传入正确的对象！');
		}
		var obj = $(this);
		Html(obj);
		$(this).append('<p>asdfa</p>');
		// alert($(this).attr('class'));
	}
})(jQuery)