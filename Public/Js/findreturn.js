(function () {
	
		var Options = {
			url  : 'index.php',
		}
		
		$.fn.ReFind = function (Obj) {
			if(Obj && Obj === 'object'){
				$.extend(Options,Obj);
			}else{
				alert('请传入一个正确并存在的元素对象!');
			}
			var EleObj = $(this);
			var input = EleObj.children('input');
			input.focus(function(){
				$(this).keyup(function () {
					EleObj.children('dl').remove();
					var val = $(this).val();
					$.ajax({
						type:"POST",
						url:Options.url,
						dataType:'json',
					}).done(function (data){
						JsonHtml(data,EleObj);
					});
				});
			});
		}
		
		var JsonHtml = function (JData,Obj) {
			var html = "<dl class='selectup' style='border:1px solid #ccc;width:120px;position:relative;top:30px;display:block;z-index:999;background:yellow;'>";
			$.each(JData,function(key,val){
				html = html+"<dd style='line-height:25px;height:25px;overflow:hidden;text-align:left;'>"+val+"</dd>";
			});
			html = html+"</dl>";
			Obj.append(html);
			$('.selectup').children('dd').click(function () {
				alert($(this).text());
			});
		}
})(jquery)
