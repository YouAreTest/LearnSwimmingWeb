<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!-- 课程学习页 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 课程学习页 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/LearnCourse.css">
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

.course-info ul li {
	list-style: none;
	display: inline-block;
}

.course-info ul li button {
	height: 50px;
	vertical-align: middle;
}
</style>
<!-- Ajax -->
<script type="text/javascript">
var xmlhttp;
if(window.XMLHttpRequest){
	xmlhttp=new XMLHttpRequest();
}else{
	xmlhttp = new ActiveXObject("Microsoft.XMLHttp");
}
function subscribe(unid){
	xmlhttp.open("GET","subscribeuniversity?universityid="+unid,true);
	xmlhttp.send();
	xmlhttp.onreadystatechange=function(){
		if(xmlhttp.readyState==4&&xmlhttp.status==200){
			var rs = JSON.parse(xmlhttp.responseText);
			alert(rs);
			$("#subrs").remove();
			$("#universityinfo").append("<button id=\"cancelrs\" type=\"button\" class=\"btn btn-success\" onclick=\"cancelsubscribe("+rs.status+")\">已关注</button>")
			
		}
	};
}
function cancelsubscribe(unid){
	xmlhttp.open("GET","cancelsubscribeuniversity?universityid="+unid,true);
	xmlhttp.send();
	xmlhttp.onreadystatechange=function(){
		if(xmlhttp.readyState==4&&xmlhttp.status==200){
			var rs = JSON.parse(xmlhttp.responseText);
			
			//alert(rs);
			$("#cancelrs").remove();
			$("#universityinfo").append("<button id=\"subrs\" type=\"button\" class=\"btn btn-success\" onclick=\"subscribe("+rs.status+")\">+关注</button>")
			
		}
	};
}
</script>
<script type="text/javascript">


	(function($) {
		$(function() {
			nav();
		});

		function nav() {
			var $liCur = $(".nav-box ul li.cur"), curP = $liCur.position().left, curW = $liCur
					.outerWidth(true), $slider = $(".nav-line"), $targetEle = $(".nav-box ul li a"), $navBox = $(".nav-box");
			$slider.stop(true, true).animate({
				"left" : curP,
				"width" : curW
			});
			$targetEle.mouseenter(function() {
				var $_parent = $(this).parent(), _width = $_parent
						.outerWidth(true), posL = $_parent.position().left;
				$slider.stop(true, true).animate({
					"left" : posL,
					"width" : _width
				}, "fast");
			});
			$navBox.mouseleave(function(cur, wid) {
				cur = curP;
				wid = curW;
				$slider.stop(true, true).animate({
					"left" : cur,
					"width" : wid
				}, "fast");
			});
		}
		;

		$(document).ready(function() {
			var topMain = $("#header").height() + 20//是头部的高度加头部与nav导航之间的距离
			var nav = $(".nav");
			$(window).scroll(function() {
				if ($(window).scrollTop() > topMain) {//如果滚动条顶部的距离大于topMain则就nav导航就添加类.nav_scroll，否则就移除
					nav.addClass("nav_scroll");
				} else {
					nav.removeClass("nav_scroll");
				}
			});
		})

	})(jQuery);
</script>
</head>
<body>
	<header> <!-- <div class="trapezoid"></div> -->


	<div class="banner">
		<div class="nav-box">
			<ul>
				<li class="cur"><a href="#">主页</a></li>
				<li><a href="#">课程</a></li>
				<li><a href="#">讨论区</a></li>
				<li><a href="#">精彩文章</a></li>

			</ul>
			<div class="nav-line"></div>
		</div>
		<p>
			<a class="login" href="#">登录</a>|<a class="register" href="#">注册</a>
		</p>
	</div>
	</header>


	<section>
	<div class="top">
	<h2 class="course-name" name="course-name">XXX课程</h2>
	<div class="course-info">
		<ul>
			<li><button class="begin">开始学习</button></li>
			<li>学习人数<br> <span name=""></span></li>
			<li>课程时长<br> <span></span></li>
			<li>课程评分<br> <span></span></li>
		</ul>
	</div>
	<p class="intro">
		<span >课程简介：</span>
	</p>
	</div>
	<div class="video" width="320" height="240" controls>
		<video >
			<source src="./video/example.mp4" type="video/mp4">
			<source src="" type="">
		</video>
		
		
		
		
		<div></div>
		
		<object id="MediaPlayer"
		classid="clsid:22D6F312-B0F6-11D0-94AB-0080C74C7E95" width="100%"
		height="768" standby="Loading Windows Media Player components…"
		type="application/x-oleobject"
		codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=6,4,7,1112">
		<param name="FileName" value="/LearnSwimmingWeb/WebContent/video/Wildlife.wmv">
		<param name="AutoStart" value="true">
		<param name="ShowControls" value="true">
		<param name="BufferingTime" value="2">
		<param name="ShowStatusBar" value="true">
		<param name="AutoSize" value="true">
		<param name="InvokeURLs" value="false">
		<param name="AnimationatStart" value="1">
		<param name="TransparentatStart" value="1">
		<param name="EnableFullScreenControls " value="true">
        <param name="PlayCount" value="1">
		<param name="Loop" value="1">
		<embed type="application/x-mplayer2" src="路径" name="MediaPlayer"
			autostart="1" showstatusbar="1" showdisplay="1" showcontrols="1"
			loop="0" videoborder3d="0"
			pluginspage="http://www.microsoft.com/Windows/MediaPlayer/"
			width="800" height="600"></embed>
	</object>
		
		
		
		
		
		
		
	</div>
	<div class="left">
		<ul id="myTab" class="nav nav-tabs">
			<li class="active"><a href="#home" data-toggle="tab">章节</a></li>
			<li><a href="#ios" data-toggle="tab">评论</a></li>
			<!-- <li class="dropdown"><a href="#" id="myTabDrop1"
			class="dropdown-toggle" data-toggle="dropdown">Java <b
				class="caret"></b>
		</a>
			<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
				<li><a href="#jmeter" tabindex="-1" data-toggle="tab">
						jmeter</a></li>
				<li><a href="#ejb" tabindex="-1" data-toggle="tab"> ejb</a></li>
			</ul></li> -->
		</ul>
		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade in active" id="home">
				<div >
				<strong>第一章</strong>
				<ul>
					<li>。。。</li>
					<li>。。。</li>
					<li>。。。</li>
					<li>。。。</li>
				</ul>
				<strong>第二章</strong>
				<ul>
					<li>。。。</li>
					<li>。。。</li>
					<li>。。。</li>
					<li>。。。</li>
				</ul>
				</div>
			</div>
			<div class="tab-pane fade" id="ios">
				<div class="post-comment">

					<form action="">
						<span class="head-portrait">头像 </span>
						<textarea cols="4" rows="5"></textarea>
						<input type="submit" value="发表评论">
					</form>
					<br>
					<hr>
					<div>
						<span class="head-portrait">头像 </span>
						<p class="user-name" name="username">用户名</p>
						<div class="comments" name="comments">评论</div>
					</div>
					<hr>
				</div>
				<!-- <div class="tab-pane fade" id="jmeter">
			<p>jMeter 是一款开源的测试软件。它是 100% 纯 Java 应用程序，用于负载和性能测试。</p>
		</div>
		<div class="tab-pane fade" id="ejb">
			<p>Enterprise Java
				Beans（EJB）是一个创建高度可扩展性和强大企业级应用程序的开发架构，部署在兼容应用程序服务器（比如 JBOSS、Web Logic
				等）的 J2EE 上。</p>
		</div> -->
			</div>
		</div>

		<script>
			$(function() {
				$('#myTab .active a').tab('show');
			});
		</script>

		<div class="teacher right">
			<hr>
			<div>
				<span class="head-portrait">头像 </span><span class="teacher-name"
					name="teachername">XX老师</span><br>
				<p class="position"></p>
				<div class="tips" name="tips">课程贴士</div>
			</div>
		</div>
	</section>

	<footer>
	


	</footer>
</body>
</html>
</html>