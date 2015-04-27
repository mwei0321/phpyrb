/**
 * @author MaWei
 * @time 2014-08-26
 * @home http://www.phpyrb.com
 */
var layer = {};
;(function($, window, document, underfined) {
	//
	//浏览器宽度
	var SreenW = $(window).width();
	// //浏览器高度
	var SreenH = $(window).height();
	 //alert(SreenH +'=>'+SreenW);
	//初始化配置
	var Options = {
		bgOpacity : '0.8',
		bgColor : '#a1a1a1',
		EditW : 400,
		EditH : 600,
		ThumbW : 100,
		ThumbH : 100,
	}
	$.fn.extend(layer, {
		box : function(title, btn) {
			var h = '<div class="seach_select">' + '<form action="" method="post">' + ' <input type="text" name="uid" class="intext" value="" placeholder="用户ID"/>' + '<input type="text" name="keyword" class="intext" value="" placeholder="用户名或邮箱"/>' + '<input type="submit" class="btn btn-sm btn-primary" value="搜索"　/>' + '</form>' + '</div>';
			outbox('aaaa', h);
			close();
		},
		error : function(msg) {
			message(msg);
		},
		success : function(msg) {
			message(msg, 1);
		},
	});
	function message(msg, type, time) {
		var clas = type ? 'success' : 'error';
		var html = '<span class="' + clas + '">' + msg + '</span>';
		outbox(null, html);
		close();
	}

	function close(time) {
		var t = time ? time : 1.5;
		setTimeout(function() {
			$('#outsidebox').fadeOut('1000', function() {
				$(this).remove();
				$('#mwbg').remove();
			});
		}, t * 1000);
	}

	function outbox(title, ht, oboxw) {
		var t = title ? '<h3>' + title + '</h3>' : '';
		var html = '<div id="mwbg"></div>' + '<div id="outsidebox">' + t + ht + '<div class="clr></div></div>';
		$('body').append(html);
		style();
	}

	function style() {
		var oboxw = $('#outsidebox').width();
		var oboxh = $('#outsidebox').height();
		var oboxl = $('#outsidebox').css({
			'left' : (SreenW - oboxw) / 2 + 'px',
			'top' : (SreenH - oboxh) / 2 + 'px'
		})
		var style = '<style>#mwbg{width:' + SreenW + 'px;height:' + SreenH + 'px;display:block;position:fixed;z-index:900;opacity: 0.8;filter:Alpha(Opacity=90);postion:fixed;background:' + Options.bgColor + ';top:0;left:0;}' + 
		'#outsidebox{border:5px solid #666;background:#fff;border-radius:10px;z-index:990;position:fixed;padding:10px;} #outsidebox h3{height:35px;line-height:35px;border-bottom:1px solid #ccc;background:#efefef;}' +
		 '#outsidebox {} #outsidebox .error{color:red;font-size:14px;} #outsidebox .success{color:green;font-size:14px;} ' + '#outsidebox .clr{clear:both;padding:0;margin:0;}' + 
		 '</style>';
		$("head").append(style);
	}

})(jQuery, window, document)
