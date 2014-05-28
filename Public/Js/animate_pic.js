$(document).ready(function () {
	var $pageamount = $('.none').find('img').length;
	var $width = $('.none').find('dd').width();
	var $page = 1;
	$('.none').css('width',$pageamount * $width+3000+'px');
	
	for($i = 1;$i < $pageamount+1; $i++){		
		$('#page').children('span').append('<p>'+$i+'</p>');
	}
	$('#page').find('p').eq($page-1).addClass('stact').siblings('p').removeClass('stact');
	
	$autoplay = function (){
		if(! $('.none').is('animated')){
			if($page == $pageamount){
				$('.none').animate({left:'0px' },2000);
				$page = 1;
				$('#page').find('p').eq($page-1).addClass('stact').siblings('p').removeClass('stact');
			}else{
				$('.none').animate({left:'-='+$width+'px'},1000);
				$page ++;
				$('#page').find('p').eq($page-1).addClass('stact').siblings('p').removeClass('stact');
			}
		}
	}
	
	$play = setInterval("$autoplay()",4000);
	$('.show span').hover(function (){clearInterval($play);},function (){$play = setInterval("$autoplay()",4000);});
	
	$('.show span').find('p').live('click',function () {
		$page = $(this).index()+1;
		if(! $('.none').is('animated')){
			$('.none').animate({left:'-'+$width*($page-1)+'px'},1000);
			$('#page').find('p').eq($page-1).addClass('stact').siblings('p').removeClass('stact');
		}
	});
	
	$('.gg p span').click(function(){
			var $index = $(this).index();
			$('.gg dl').children('dd').eq($index).css('display','block').siblings('dd').css('display','none');
			$(this).addClass('hsow').siblings('span').removeClass('hsow');
		});
	
});
