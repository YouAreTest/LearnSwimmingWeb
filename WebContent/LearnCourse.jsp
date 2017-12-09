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
<link rel="stylesheet" href="./css/head-portrait.css">
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
		});

		$(document).ready(function() {

			$(".post-comment div span").click(function() {
				var color = $(this).css("color");
				if (color != "red")
					$(this).css({
						"color" : "red"
					});
				else if (color == "red")
					$(this).css({
						"color" : "blue"
					})
			});
		});

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
			<span>课程简介：</span>
		</p>
	</div>






	<div></div>

	<object id="NSPlay" width=200 height=180
		classid="CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95"
		codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab&#35;Version=6,4,5,715"
		standby="Loading Microsoft Windows Media Player components..."
		type="application/x-oleobject" align="right" hspace="5">
		<!-- ASX File Name -->
		<param name="AutoRewind" value=1>
		<param name="FileName" value="xxxxxx.wmv">
		<!-- Display Controls
			-->
		<param name="ShowControls" value="1">
		<!-- Display Position Controls -->
		<param name="ShowPositionControls" value="0">
		<!-- Display Audio Controls -->
		<param name="ShowAudioControls" value="1">
		<!-- Display Tracker Controls -->
		<param name="ShowTracker" value="0">
		<!-- Show Display -->
		<param name="ShowDisplay" value="0">
		<!-- Display Status Bar -->
		<param name="ShowStatusBar" value="0">
		<!-- Display Go To Bar -->
		<param name="ShowGotoBar" value="0">
		<!-- Display Controls -->
		<param name="ShowCaptioning" value="0">
		<!-- Player Autostart -->
		<param name="AutoStart" value=1>
		<!-- Animation at Start -->
		<param name="Volume" value="-2500">
		<param name="AnimationAtStart" value="0">
		<!-- Transparent at Start
			-->
		<param name="TransparentAtStart" value="0">
		<!-- Do not allow a change in display size -->
		<param name="AllowChangeDisplaySize" value="0">
		<!-- Do not allow scanning -->
		<param name="AllowScan" value="0">
		<!-- Do not show contect menu on right mouse click -->
		<param name="EnableContextMenu" value="0">
		<!-- Do not allow playback toggling on mouse click -->
		<param name="ClickToPlay" value="0">
	</object> <embed src="./video/Wildlife.wmv" loop="true" width="200" height="150">
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
				<div>
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
						<span class="glyphicon glyphicon-thumbs-up"
							style="color: rgb(140, 140, 140);" onclick=""> </span> <span
							class="glyphicon glyphicon-thumbs-down"
							style="color: rgb(140, 140, 140);"> </span>
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
		</div>
	</div>
	<div class="teacher right">
		<hr>
		<div>
			<span class="head-portrait">头像 </span><span class="teacher-name"
				name="teachername">XX老师</span><br>
			<p class="position"></p>
			<div class="tips" name="tips">课程贴士</div>
		</div>
	</div>
	<p></p>
	</section>

	<footer> </footer>
</body>
</html>