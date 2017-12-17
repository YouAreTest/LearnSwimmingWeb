<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/login.js"></script>
<link rel="stylesheet" href="./css/login.css">
<link rel="stylesheet" href="./css/register.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/footer.css">
<link rel="stylesheet" href="./css/Input.css">
<link rel="stylesheet" href="./css/course.css">
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
}

.nav_scroll {
	position: fixed;
	width: 100%;
	background-color: blue;
	margin: 0;
	left: 0;
	top: 0;
}

a {
	text-decoration: none;
}

.background {
	background-image: url(image/index/back.png);
	background-size: 100% 100%;
	height: 650px;
	width: 100%;
	position: absolute;
	top: 0;
	z-index: -3;
	/*filter:blur(10px);*/
}

section h1 {
	position: absolute;
	left: 200px;
	font-size: 80px;
	font-family: fantasy;
	letter-spacing: 5px;
	text-shadow: 2px 2px 13px #9e7f68;
	top: 165px;
	color: white;
}

section h2 {
	position: absolute;
	top: 477px;
	font-family: fantasy;
	color: #ffffff;
	left: 616px;
	text-shadow: 1px 1px 8px #635050;
	letter-spacing: 1px;
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
	<section>
	<div class="background"></div>
	<h1>
		Swimming?<br>Just take it easy
	</h1>
	<span class="glyphicon glyphicon-chevron-down"
		style="color: rgb(247, 223, 137); font-size: 60px; position: absolute; top: 400px; left: 653px; text-shadow: 1px 1px 13px #403718;">
	</span> <span class="glyphicon glyphicon-chevron-down"
		style="color: rgb(255, 255, 255); font-size: 60px; position: absolute; top: 435px; left: 653px; text-shadow: 0px 1px 11px #563939;">
	</span> <a href="#Choose-course"><h2>Start now</h2></a>
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
	<p class="test"></p>
	<div class="Choose-course">
		<p id="Choose-course" class="slide"></p>
		<h2>精彩课程</h2>
		<div class="course">
			<a href="./LearnCourse.jsp"></a>
		</div>
		<div class="course">
			<a href="./LearnCourse.jsp"></a>
		</div>
		<div class="course">
			<a href="./LearnCourse.jsp"></a>
		</div>
		<div class="course">
			<a href="./LearnCourse.jsp"></a>
		</div>
		<div class="course">
			<a href="./LearnCourse.jsp"></a>
		</div>
		<div class="course">
			<a href="./LearnCourse.jsp"></a>
		</div>
		<div class="course">
			<a href="./LearnCourse.jsp"></a>
		</div>
		<div class="course">
			<a href="./LearnCourse.jsp"></a>
		</div>

		<p>
			<a href="ChooseCourse.jsp">更多>></a>
		</p>
	</div>

	</section>
	<div class="foot" style="top: 1564px;">
	支持我们
	</div>
</body>
</html>