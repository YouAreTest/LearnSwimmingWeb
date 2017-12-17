<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/login.js"></script>
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/course.css">
<link rel="stylesheet" href="./css/login.css">
<link rel="stylesheet" href="./css/register.css">
<link rel="stylesheet" href="./css/footer.css">
<link rel="stylesheet" href="./css/Input.css">
<script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	(function($) {
		$(function() {
			nav();
		});

		$(document).ready(function() {

			$(".login").click(function() {
				$("#login form ").show();
			});

			$(".close").click(function() {
				$("#login form").css("display", "none");
				/*},
				function(){
				 */
				$("#register form").css("display", "none");

			});

			$(".register").click(function() {

				$("#register form ").css({
					"display" : "block",
					"z-index" : "3"
				});
			});

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
			var nav = $(".nav");
			$(window).scroll(function() {
				if ($(window).scrollTop() > 300) {//如果滚动条顶部的距离大于topMain则就nav导航就添加类.nav_scroll，否则就移除
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
	box-sizing: border-box;
}

.search {
	height: 42px;
	width: 50%;
	background-color: #cdcde2;
	position: absolute;
	top: 195px;
	left: 335px;
}

input {
	z-index: 3;
	width: 94%;
	float: left;
	border-radius: 6px;
	height: 42px;
	background: #F9F0DA;
	padding-left: 15px;
}

from {
	position: absolute;
	top: 276px;
	left: 300px;
	width: 40%;
}

input, button {
	border: none;
	outline: none;
	border-radius: 3px;
	line-height: normal;
}

button, input, select, textarea {
	font-family: inherit;
	font-size: 100%;
	margin: 0;
}

button {
	height: 26px;
	width: 26px;
	background: #76b5de;
	cursor: pointer;
	position: relative;
	top: 8px;
	left: 6px;
}

.search {
	height: 42px;
	width: 50%;
	background-color: #f9f0da;
	position: absolute;
	top: 195px;
	left: 335px;
	border-radius: 6px;
}

body {
	background-color: #fafaff;
}

.page {
	margin: 0 auto;
	width: 230.58px;
	height: 34px;
}

.course:nth-of-type(9) {
	top: 370px;
	left: 46px;
}

.course:nth-of-type(10) {
	top: 370px;
	left: 372px;
}

.course:nth-of-type(11) {
	top: 370px;
	left: 698px;
}

.course:nth-of-type(12) {
	top: 370px;
	left: 1024px;
}
</style>

</head>
<body>
	<header> <!-- <div class="trapezoid"></div> -->
	<div id="header"></div>

	<div class="banner">
		<div class="nav-box">
			<ul>
				<li class="cur"><a href="./myIndex.jsp">主页</a></li>
				<li><a href="./ChooseCourse.jsp">课程</a></li>
				<li><a href="./Luntan.jsp">讨论区</a></li>

			</ul>
			<div class="nav-line"></div>
		</div>
		<p>
			&nbsp;&nbsp;&nbsp;&nbsp; <span class="glyphicon glyphicon-user"
				style="color: rgb(140, 140, 141); font-size: 14px;"></span><a
				class="login" href="#">&nbsp;登录</a>&nbsp;|&nbsp;<a class="register"
				href="#">注册</a>&nbsp;&nbsp;&nbsp;&nbsp;
		</p>
	</div>
	</header>
	<div id="login">

		<form action="#" method="post" onsubmit="return check_login();">
			<div align="center">
				<a class="close"><span class="glyphicon glyphicon-remove-sign"
					style="color: rgb(140, 140, 140); position: fixed; top: 165px; left: 880px; font-size: 20px; z-index: 2">
				</span> </a>
				<table cellspacing="5" cellpadding="5">
					<tr>

						<td style="height: 57px;">logo</td>

					</tr>
					<tr>

						<td><input type="text" size="20" id="userid" name="userid"
							maxlength="20" placeholder="请输入您的账号（长度4~16）" value=""
							style="padding-left: 10px; width: -webkit-fill-available;" /></td>

					</tr>

					<tr>

						<td><input type="password" placeholder="请输入密码"
							name="password" value="" size="20" id="password" maxlength="20"
							style="padding-left: 10px; width: -webkit-fill-available;" /></td>

					</tr>

					<tr>
						<td class="ti"><input class="button" type="submit" value="登录"></td>

					</tr>
				</table>
				<p>
					还没帐号？点击<a href="#" class="register">注册</a>
				</p>

			</div>
		</form>
	</div>

	<div id="register">

		<form action="#" method="post" onsubmit="return check_register();">
			<div align="center">
				<a class="close"><span class="glyphicon glyphicon-remove-sign"
					style="color: rgb(140, 140, 140); position: fixed; top: 165px; left: 880px; font-size: 20px; z-index: 2">
				</span> </a>
				<table cellspacing="5" cellpadding="5">
					<tr>

						<td style="height: 57px;">logo</td>

					</tr>
					<tr>

						<td><input type="text" size="20" id="userid1" name="userid"
							maxlength="20" placeholder="请输入您的账号（长度4~16）" value=""
							onblur="checkId1();"
							style="padding-left: 10px; width: -webkit-fill-available;" /></td>

					</tr>
					<tr>

						<td><input type="text" size="20" id="username1"
							name="username" maxlength="20" placeholder="请输入您的用户名" value=""
							onblur="checkName();"
							style="padding-left: 10px; width: -webkit-fill-available;" /></td>

					</tr>
					<tr>

						<td><input type="password" placeholder="请输入密码"
							name="userpassword" value="" size="20" id="password1"
							maxlength="20" onblur="checkPwd0();"
							style="padding-left: 10px; width: -webkit-fill-available;" /></td>

					</tr>

					<tr>

						<td><input type="password" placeholder="请确认密码"
							name="userpassword2" value="" size="20" id="password2"
							maxlength="20" onblur="checkPwd2();"
							style="padding-left: 10px; width: -webkit-fill-available;" /></td>

					</tr>

					<tr>
						<td class="ti"><input class="button" type="submit" value="注册"></td>

					</tr>
				</table>
				<div id="id_prompt" class="id"></div>
				<div id="pwd_prompt" class="pwd"></div>
				<div id="name_prompt"></div>
				<div id="pwd1_prompt"></div>
				<div id="pwd2_prompt"></div>
			</div>
		</form>
	</div>
	<div class="search">
		<form action="#" method="get">
			<input type="text" placeholder="搜索">
			<button type="submit">
				<span class="glyphicon glyphicon-search"> </span>
			</button>
		</form>
	</div>
	<div class="Choose-course">
		<p id="Choose-course" class="slide"></p>
		<div class="course"></div>
		<div class="course"></div>
		<div class="course"></div>
		<div class="course"></div>
		<div class="course"></div>
		<div class="course"></div>
		<div class="course"></div>
		<div class="course"></div>
		<div class="course"></div>
		<div class="course"></div>
		<div class="course"></div>
		<div class="course"></div>

	</div>

	<div class="page"
		style="margin: 0 auto; width: 230.58px; height: 34px; position: relative; top: 1501px;">
		<ul class="pagination"
			style="display: inline-block; padding-left: 0;
	/* margin: 20px 0; */ border-radius: 4px; box-shadow: 1px 1px 5px #d3d3d6;">
			<li><a href="#">&laquo;</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">&raquo;</a></li>
		</ul>
	</div>
	<div class="foot" style="top: 1573px;">
	支持我们
	</div>
</body>
</html>