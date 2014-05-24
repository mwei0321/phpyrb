$(document).ready(function() {
	$('#tablebox').find('table').eq(0).show().siblings('table').hide();
	$(".content-box-tabs li").click(function() {
		var index = $(this).index();
		$(this).children('a').addClass('current');
		$(this).siblings('li').children('a').removeClass('current');
		$('#tablebox').find('table').eq(index).show().siblings('table').hide();
	});
	
	$('.check-all').click(function () {
		var status = $(this).prop('checked');
		$('tbody :checkbox').each(function (){
			$(this).prop('checked',status);
		});
	});
	
	/*
$('#main-nav li').children('ul').hide();
	$('#main-nav li:first').children('ul').show();
	$('#main-nav li').click(function (){
		$(this).children('ul').show();
		$(this).siblings('li').children('ul').hide();
	});
*/
});
