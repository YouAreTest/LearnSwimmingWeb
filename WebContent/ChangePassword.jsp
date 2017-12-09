<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="./css/Input.css">
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
</style>
</head>
<body>
	<header>
	<div class="banner">
		<div class="nav-box">
			<ul>
				<li class="cur"><a href="#">主页</a></li>
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
	
	<div align="center">
				
				<table cellspacing="5" cellpadding="5">
					
					
					<tr>
						<td style="text-align: right">原密码:</td>
						<td><input type="password" placeholder="请输入原密码"
							name="password" value="" size="20" id="password" maxlength="20"
							style="padding-left: 10px; width: -webkit-fill-available;" /></td>

					</tr>

					<tr>
					<td style="text-align: right">新密码:</td>
						<td><input type="password" placeholder="请输入新密码"
							name="newpassword" value="" size="20" id="password" maxlength="20"
							style="padding-left: 10px; width: -webkit-fill-available;" /></td>

					</tr>
					<tr>
					<td style="text-align: right">确认新密码:</td>
						<td><input type="password" placeholder="请确认新密码"
							name="newpassword2" value="" size="20" id="password" maxlength="20"
							style="padding-left: 10px; width: -webkit-fill-available;" /></td>

					</tr>
				</table>
				
			<p></p>
			</div>
	</section>
	<footer></footer>
</body>
</html>