<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
<link rel="stylesheet" href="./css/Input.css">
<link rel="stylesheet" href="./css/head-portrait.css">
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
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

ul {
	display: inline-block;
	background-color: aliceblue;
	width: 240px;
	height: 300px;
	position: absolute;
	top: 124px;
	left: 0px;
}

.left ul li {
	list-style: none;
	height: 63px;
	line-height: 63px;
	border-top-left-radius: 20px;
	background-color: bisque;
	border-bottom-left-radius: 20px;
	text-align: center;
	font-size: 20px;
}

.left {
	position: relative;
	left: 51px;
}

.user-name {
	position: absolute;
	top: 12px;
}

.center {
	width: 662px;
	margin: 0 auto;
	text-align: center;
}
</style>
</head>
<body>
	<header>
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

	<div class="left">
		<span class="head-portrait">头像</span><span class="user-name"
			name="username">用户名</span>
		<ul>
			<li>主页</li>
			<li>个人资料</li>
			<li>账号管理</li>
		</ul>
	</div>
	<div class="center">
		<table class="information">
			<tr>
				<td>账号：</td>
				<td class="userid"></td>
			</tr>
			<tr>
				<td>用户名：</td>
				<td class="username"></td>
			</tr>
			<tr>
				<td>性别：</td>
				<td class="usersex"></td>
			</tr>
			<tr>
				<td>年龄：</td>
				<td class="userage"></td>
			</tr>

		</table>
		<a href="./Fillinformation.jsp"><button>完善信息</button></a>
	</div>
	</section>
	<footer></footer>

</body>
</html>