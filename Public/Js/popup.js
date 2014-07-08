/**
 * @author MaWei
 */
(function (jquery){
	//浏览器宽度
	var SreenW = $(document).width();
	// //浏览器高度
	var SreenH = $(window).height();
	// alert(SreenH +'=>'+SreenW);
	
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
		//样式
		// alert((SreenH-Options.ThumbH-20));
		var style='<style>#imgpopup {display:none;} #imgpopup #phpyrb{width:'+SreenW+'px;height:'+SreenH+'px;display:block;position:fixed;z-index:900;opacity: 0.8;filter:Alpha(Opacity=90);postion:fixed;background:'+Options.bgColor+';top:0;left:0;}';
		style += '#imgpopup #bigimg{position:fixed;z-index:950;display:block;top:20px;} #imgpopup #bigimg img{border:4px solid #333;border-radius:12px;}';
		style += '#imgpopup #thumbimg{width:'+SreenW+'px;height:'+(Options.ThumbH+4)+'px;display:block;position:fixed;z-index:950;background:#bbb;opacity: 0.5;overflow:hidden;opacity: 0.5;top:'+(SreenH-Options.ThumbH-20)+'px;left:0;}';
		style += '#imgpopup #thumbimg #imglist{position:relative;top:0;left:'+((SreenW-Options.ThumbW)/2)+'px;}';
		style += '#imgpopup #thumbimg #imglist dd{margin:0px 10px;float:left;filter:Alpha(Opacity=90);}';
		style += '#imgpopup #thumbimg #imglist dd img{width:'+Options.ThumbW+'px;height:'+Options.ThumbH+'px;border:2px solid #333;border-radius:10px;}';
		//遮照层
		var html = "<div id='imgpopup'><div id='phpyrb'></div>";
		//大图显示
		html += "<div id='bigimg'><img src='##'/></div>";
		//缩略图
		html += "<div id='thumbimg'><dl id='imglist'></dl></div></div>";
		//把html插入页面
		$('body').prepend(html);
		$('#imgpopup').append(style);
		
		$(this).each(function (){
			var ObjImg = $(this).find('dd');
			ObjImg.click(function (){
				$('#imgpopup').show();
				var parenthtml = $(this).parent('dl').html();
				var bigimg = $(this).children('img').attr('bigimg');
				$('#imglist').html('').append(parenthtml);
				showpic(bigimg);
				$('#imglist').children('dd').each(function(){
					var index = $(this).index();
					$(this).click(function () {
						var left = SreenW/2-$(this).index()*(Options.ThumbW+20);
						$('#imglist').css({'left':left+'px'});
						showpic($(this).children('img').attr('bigimg'));
						// $('#bigimg').children('img').attr('src',$(this).children('img').attr('bigimg'));
					});
				});
				$('#phpyrb').click(function (){
					$('#imgpopup').hide();
				});
			});
		});
	}
	
	var showpic = function (src) {
		var bh = SreenH-Options.ThumbH - 70;
		var img = new Image();
		img.src = src;
		var w = 0;
		var h = 0;
		if(img.complete){
			w = img.width;
			h = img.height;
		}else{
			img.onload=function(){
				w = img.width;
				h = img.height;
			}
		}
		// alert(w+'=>'+h);
		var bl = 1;
		if(h > bh){
			if(w > h){
				bl = h/w;
			}else{
				bl = w/h;
			}
			w = w-((h-bh)*bl);
			h = bh;
		}
		// alert(w+'=>'+h);
		var left = Math.floor((SreenW-w)/2) + 'px';
		var top = Math.floor((SreenH-h-Options.ThumbH-40)/2) + 'px';
		$('#bigimg').css({'height':h+'px','width':w + 'px','left':left,'top':top}).children('img').attr('src',src);
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