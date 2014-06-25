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
		bgColor     : '#ccc',
		EditW		: 400,
		EditH		: 600,
	}
	
	var Html = function (Obj) {
		var html = "<div id='phpyrb'></div><div id='show'></div>";
		Obj.append(html);
		// alert(html);
		$('#phpyrb').css({'width':SreenW+'px','height':SreenH+'px','background':Options.bgColor,});
		$('#phpyrb').fadeTo(300,Options.bgOpacity);
		$('#show').css({'width':Options.EditW+'px','height':Options.EditH+'px','left':(SreenW-Options.EditW)/2+'px','top':(SreenH-Options.EditH)/2+'px'});
		
	}
	
	var SimpleEdit = function (){
		
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