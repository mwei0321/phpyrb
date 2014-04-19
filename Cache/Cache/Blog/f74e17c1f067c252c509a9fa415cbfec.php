<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
    <title>python学习,马伟博客,python博客,php博客 ,Python博客,马伟个人博客,PhPyRb博客</title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
   	<meta name="keywords" content="PHP,Pythoy,Ruby,Js,Jquery,HTML5,Css,Ajax,python学习,个人主页,博客,网站建设,PHP建站" />
    <meta name="description" content="pythob学习,深圳PHP博客,马伟个人博客,python博客" />
    <link href="./Public/Css/base.css" rel="stylesheet" type="text/css" />
	<link type="text/css" rel="stylesheet" href="./Public/SyntaxHighlighter/styles/shCore.css"/>
	<link type="text/css" rel="stylesheet" href="./Public/SyntaxHighlighter/styles/shThemeDefault.css"/>
</head>
<body>
    <div class="header">
        <div class="logo">
            <h1><a href="/index.php?m=Index&a=index">PhPyRb<span> Blog</span></a><small style="font-size:13px;">&nbsp;&nbsp;&nbsp;MaWei</small></h1>
        </div>
        <div class="menu_nav">
            <ul>
              <li class="menufrist"><a href="/index.php?m=Index&a=index">Home</a></li>
			  <li><a href="/index.php?m=Index&a=index&cateid=3">PHP</a></li><li><a href="/index.php?m=Index&a=index&cateid=4">Python</a></li><li><a href="/index.php?m=Index&a=index&cateid=6">Jquery</a></li><li><a href="/index.php?m=Index&a=index&cateid=7">HTML</a></li><li><a href="/index.php?m=Index&a=index&cateid=8">CSS</a></li><li><a href="/index.php?m=Index&a=index&cateid=9">Linux</a></li><li><a href="/index.php?m=Index&a=index&cateid=10">Apache+MySQL</a></li><li><a href="/index.php?m=Index&a=index&cateid=23">Other</a></li>			  <!--
              <li><a href="support.html">Support</a></li>
              <li><a href="about.html">About Us</a></li>
              <li><a href="blog.html">Blog</a></li>
              <li><a href="contact.html">Contact Us</a></li>
			  -->
            </ul>
            <div class="search">
            	<form method="get" action="/index.php?m=Index&a=search">
	                <input type="search" name="keyword" style="width:160px;height:36px;line-height:36px;background:none;border:0px;font-size:16px;" />
	                <input type="submit" value=" " style="width:72px;height:25px;margin-left:3px;border:none;background:url(Public/Image/searchbtn.png) no-repeat 0 -1px;"/>
					<input type="hidden" name="m" value="Index">
					<input type="hidden" name="a" value="search">
				</form>
            </div>
        </div>
      <!--<div class="search">-->
        <!--<form id="form" name="form" method="post" action="">-->
          <!--<span>-->
          <!--<input name="q" type="text" class="keywords" id="textfield" maxlength="50" value="Search..." />-->
           <!--</span>-->
          <!--<input name="b" type="image" src="images/search.gif" class="button" />-->
        <!--</form>-->
       <!--</div>-->
   </div>

   <div class="content">
        <div class="left">
        	<div class="article first">
             		<h2 class="h123"><a href="/index.php?m=Article&a=index&artid=17" target="_blank">python 基础学习笔记1</a></h2>
                    <p class="tag">标 签：
					<a href="/index.php?m=Article&a=tagart&tagid=21"><span>python</span></a>					</p>
					<div class="clr"></div>
					<div class="date" style="border:none;box-shadow:none;z-index:-100;">
                    	<!--
                    	<p class="image"><a href="/index.php?m=Index&a=index"><img alt="PhPyRb博客!马伟博客!" src="./Public/Image/logo.jpg" /></a></p>
                        <p class="time"><a href="/index.php?m=Index&a=index">Ma Wei</a></p>
						-->
                    </div>
                    <div class="clr"></div>
                    <div class="cont" id="maxart">
                    	<p>
	1.python基础运算符：加(+)、减(-) 、乘(*)、除(/) 、除(//)、赋值(=) 、取余(%)、 乘方(**);说明是传统的除法，而是浮点除法，会对结果进行四舍五入。
</p>
<p>
	<br />
</p>
<p>
	2.python比较运算符：小于(&lt;) 、小于等于(&lt;=) 、大于(&gt;) 、大于等于(&gt;=)、 等于(==)&nbsp;、不等于(&nbsp;!=)、不等于(&lt;&gt;) ,python目前支持两种“不等于”，不过python日后会被淘汰，所以尽量使用 (!=)。
</p>
<p>
	<br />
</p>
<p>
	3.Python 逻辑运算符:与(and)、 或(or)、 非(not);
</p>
<p>
	4.python支持赋值有:整数、浮点数、字符、字符串、表达式等。
</p>
<p>
	5.python不支持自增(++1)、自减(--1)，但支持 n *=5,n +=5等这样的运算式。
</p>
<p>
	6.python的变量是区分大小写.
</p>
<p>
	7.Python字符串是指引号之间的字符集合，包括单引号或双引号或三引号，可以用索引运算符( [ ] )和切片运算符( [ : ] )得到子字符串，第一个字符的索引是 0，最后一个字符的索引是－1.
</p>
<p>
	8.Python字符连接可以用加号( + )，例：n=‘aa’+'bb';n=aabb。还可以用乘号(*),表示把字符串重复多少次，例：n=2*'aa';n=aaaa.
</p>
<p>
	9.可以将列表和元组当成普通的“数组”，它能保存任意数量任意类型的Python 对象。和数组一样，通过从0 开始的数字索引访问元素，但是列表和元组可以存储不同类型的对象。列表和元组有几处重要的区别。列表元素用中括号( [ ])包裹，元素的个数及元素的值可以改变。元组元素用小括号(( ))包裹，不可以更改（尽管他们的内容可以）。元组可以看成是只读的列表。通过切片运算( [ ] 和 [ : ] )可以得到子集，这一点与字符串的使用方法一样。
</p>                    </div>
                    <div class="info">
                    	<p>
                    		<span><a href="/index.php?m=Index&a=index&cateid=4" target="_blank">Python</a></span> / 
							<span><a href="/index.php?m=Article&a=index&artid=17" target="_blank">评 论&nbsp;(0)</a></span> / 
							<span>热度&nbsp;(188 ℃)</span> / 
							<span>2013-07-10</span> / 
							<span><a href="/index.php?m=Article&a=index&artid=17" target="_blank">阅读全文&nbsp;</a></span>
						</p>
					</div>
                </div>		   <div><div class="clr"></div>
		   </div>
		   <div id="page">
		   		<p>  <a class='textpage' href='/index.php?m=Index&a=index&cateid=4&p=2'>Next</a>     <span class='nowpage'>1</span><a href='/index.php?m=Index&a=index&cateid=4&p=2'>2</a><a href='/index.php?m=Index&a=index&cateid=4&p=3'>3</a><a href='/index.php?m=Index&a=index&cateid=4&p=4'>4</a><a href='/index.php?m=Index&a=index&cateid=4&p=5'>5</a>  <a class='textpage' href='/index.php?m=Index&a=index&cateid=4&p=6' >下5页</a> <a class='textpage' href='/index.php?m=Index&a=index&cateid=4&p=9' >Last</a></p>
		   </div>
        </div>
        <!-- start right -->
			<div class="right">
            <div class="sidebar">
              <h2>文章分类</h2>
              <div class="clr"></div>
              <ul class="sb_menu">
              	<li><a href="/index.php?m=Index&a=index&cateid=3">PHP</a>&nbsp;(2)</li><li><a href="/index.php?m=Index&a=index&cateid=4">Python</a>&nbsp;(9)</li><li><a href="/index.php?m=Index&a=index&cateid=6">Jquery</a>&nbsp;(4)</li><li><a href="/index.php?m=Index&a=index&cateid=7">HTML</a>&nbsp;(0)</li><li><a href="/index.php?m=Index&a=index&cateid=8">CSS</a>&nbsp;(0)</li><li><a href="/index.php?m=Index&a=index&cateid=9">Linux</a>&nbsp;(8)</li><li><a href="/index.php?m=Index&a=index&cateid=10">Apache+MySQL</a>&nbsp;(4)</li><li><a href="/index.php?m=Index&a=index&cateid=23">Other</a>&nbsp;(1)</li>              </ul>
            </div>
            
            <div class="sidebar">
              <h2>热门标签</h2>
              <div class="clr"></div>
			  <ul class="sb_menu two">
			  	<li><a href="/index.php?m=Article&a=tagart&tagid=13">Linux</a></li><li><a href="/index.php?m=Article&a=tagart&tagid=15">git</a></li><li><a href="/index.php?m=Article&a=tagart&tagid=17">debian</a></li><li><a href="/index.php?m=Article&a=tagart&tagid=19">php</a></li><li><a href="/index.php?m=Article&a=tagart&tagid=21">python</a></li>              </ul>
			  <ul class="sb_menu two">
			  	<li><a href="/index.php?m=Article&a=tagart&tagid=14">Vim</a></li><li><a href="/index.php?m=Article&a=tagart&tagid=16">mysql</a></li><li><a href="/index.php?m=Article&a=tagart&tagid=18">jquery</a></li><li><a href="/index.php?m=Article&a=tagart&tagid=20">wamp</a></li><li><a href="/index.php?m=Article&a=tagart&tagid=22">django</a></li>              </ul>
			</div>  
            <!--
            <div class="sidebar">
              <h2>Sidebar Menu</h2>
              <div class="clr"></div>
              <ul class="sb_menu">
                <li><a href="#">Home</a></li>
                <li><a href="#">TemplateInfo</a></li>
                <li><a href="#">Style Demo</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Archives</a></li>
                <li><a href="#" title="Website Templates">Web Templates</a></li>
              </ul>
            </div>
			-->
            
             <div class="sidebar">
              <h2>热门文章</h2>
              <div class="clr"></div>
              <ul class="sb_menu">
              	<li><a href="/index.php?m=Article&a=index&artid=1">debian 初始安装</a>&nbsp;(339)</li><li><a href="/index.php?m=Article&a=index&artid=10">Linux配置`.bashrc`,  `vim`， Linux配置命令缩写</a>&nbsp;(305)</li><li><a href="/index.php?m=Article&a=index&artid=6">php面试题 陷阱题</a>&nbsp;(264)</li><li><a href="/index.php?m=Article&a=index&artid=7">MySql常用语句</a>&nbsp;(247)</li><li><a href="/index.php?m=Article&a=index&artid=12">mysql分组group </a>&nbsp;(241)</li><li><a href="/index.php?m=Article&a=index&artid=8">wamp虚拟主机配置</a>&nbsp;(239)</li><li><a href="/index.php?m=Article&a=index&artid=2">Jquery 随屏滚动特效</a>&nbsp;(235)</li><li><a href="/index.php?m=Article&a=index&artid=3">php空间的在线解压 ZIP</a>&nbsp;(227)</li><li><a href="/index.php?m=Article&a=index&artid=15">vim基本命令,vim常用命令</a>&nbsp;(222)</li><li><a href="/index.php?m=Article&a=index&artid=11">Linux安装git</a>&nbsp;(216)</li>              </ul>
            </div>
           
	</div>	
		<!-- end right -->
	</div>
	<div class="clr"></div>

   <div class="footer">
        <p class="lr">© Copyright <a href="http://www.phpyrb.com">http://www.phpyrb.com http://www.cloudsskill.com</a>.</p>
        <p class="lf">Collect from: <a href="http://www.phpyrb.com" title="马伟博客" target="_blank">马伟博客</a></p>
        <div class="clr"></div>
   </div>
	<script type="text/javascript" src="./Public/SyntaxHighlighter/scripts/shCore.js"></script>
	<script type="text/javascript">
		SyntaxHighlighter.config.clipboardSwf = './Public/SyntaxHighlighter/scripts/clipboard.swf';
		SyntaxHighlighter.all();
	</script>
	<script type="text/javascript" src="./Public/Js/jquery-1.9.1.min.js"></script>
    
	<script type="text/javascript" src="./Public/SyntaxHighlighter/scripts/shBrushCss.js"></script>
	<script type="text/javascript" src="./Public/SyntaxHighlighter/scripts/shBrushJScript.js"></script>
    <script type="text/javascript" src="./Public/SyntaxHighlighter/scripts/shBrushPython.js"></script>
    <script type="text/javascript" src="./Public/SyntaxHighlighter/scripts/shBrushSql.js"></script>
    <script type="text/javascript" src="./Public/SyntaxHighlighter/scripts/shBrushBash.js"></script>
    <script type="text/javascript" src="./Public/SyntaxHighlighter/scripts/shBrushPython.js"></script>
    <script type="text/javascript" src="./Public/SyntaxHighlighter/scripts/shBrushPhp.js"></script>
    <div style="display:hidden;">
        <script type="text/javascript">
            var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
            document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F6238436e2f7b68b79f031f095826dc4b' type='text/javascript'%3E%3C/script%3E"));
        </script>
    </div>
</body>	
</html>