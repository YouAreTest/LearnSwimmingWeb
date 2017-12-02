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
<script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="./css/login.css">
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
		};
		
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

a {
	text-decoration: none;
}

.trapezoid {
	border-bottom: 100px solid red;
	border-left: 50px solid transparent;
	border-right: 50px solid transparent;
	height: 0;
	width: 100px;
}

.banner {
	width: 100%;
	height: 70px;
	/*background-color: yellow;*/
}

.nav-box {
	width: 252px;
	/* float: right; */
	/* background-color: darkgray; */
	margin: 0 auto;
	background-color: aliceblue;
	/* background-color: black; */
	height: 34px;
	float: left;
	position: relative;
	top: 20px;
	left: 50px;
}

.nav-box ul {
	list-style: none;
}

.nav-box ul li {
	float: left;
	font-size: 14px;
	font-family: "微软雅黑";
	height: 30px;
	line-height: 30px;
	padding: 0 12px;
	/*  background-color: #F5F5F5;*/
}

.nav-box ul li a, .banner>p a {
	color: blue;
}

.nav-box ul li a, .banner>p a:hover {
	color: blue;
	text-decoration: none;
}

.nav-box .nav-line {
	background: none repeat scroll 0 0 #35C4FD;
	bottom: 0;
	font-size: 0;
	height: 2px;
	left: 0;
	line-height: 2px;
	position: absolute;
	width: 52px;
}

.banner>p {
	position: absolute;
	top: 25px;
	left: 1207px;
}

.background {
	background-image: url(image/index/214774.jpg);
	background-size: 100% 100%;
	height: 650px;
	width: 100%;
	position: absolute;
	top: 0;
	z-index: -3;
	/*filter:blur(10px);*/
}

#login {
	width: 50%;
	/*background-color: aliceblue;*/
	height: 210px;
	margin: 0 auto;
	position: fixed;
	top: 154px;
	left: 348px;
}

#login form {
	position: relative;
	margin: 0 auto;
	width: 452px;
	background: linear-gradient(#efefef, #eae9e9, #eaeaea, #d5d6d6);
	height: 270px;
	display: none;
	z-index: 1;
}

#register {
	width: 50%;
	/*background-color: aliceblue;*/
	height: 210px;
	margin: 0 auto;
	position: fixed;
	top: 154px;
	left: 348px;
	height: 0;
}

#register form {
	position: relative;
	margin: 0 auto;
	width: 452px;
	background: linear-gradient(#efefef, #eae9e9, #eaeaea, #d5d6d6);
	height: 340px;
	display: none;
	z-index: -1;
}

form div {
	height: 300px;
	padding: 10px;
}

td input {
	height: 36px;
	width: 250px;
	margin-bottom: 10px;
	font-size: 16px;
	line-height: 1;
	color: #777;
	background: #FCFCFC;
	border: 1px solid #CCC;
	border-radius: 20px;
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, .05);
	-webkit-transition: color .2s linear, border-color .3s linear;
	outline: none;
	-webkit-apperance: normal;
}

td input:visited {
	display: inline-block;
	padding: 0 10px;
	height: 36px;
	font-size: 16px;
	line-height: 1;
	color: #777;
	background: #FCFCFC;
	border: 1px solid #CCC;
	border-radius: 3px;
	width: 250px;
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, .05);
	-webkit-transition: color .2s linear, border-color .3s linear;
}

form div p {
	text-align: right;
	padding-right: 38px;
	color: #6f6f6f
}

.userid {
	padding-left: 10px;
	width: -webkit-fill-available;
}

.password {
	padding-left: 10px;
	width: -webkit-fill-available;
}

.prompt {
	width: 120px;
	height: 80px;
	background: red;
	position: relative;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	border-radius: 10px;
}

.prompt:before {
	content: "";
	position: absolute;
	right: 100%;
	top: 20px;
	width: 0;
	height: 0;
	border-top: 13px solid transparent;
	border-right: 26px solid red;
	border-bottom: 13px solid transparent;
}

#id_prompt {
	top: 67px;
	height: 37px;
	left: 373px;
	width: 197px;
}
</style>
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
	<div class="background"></div>
	<div id="login">

		<form action="#" method="post" onsubmit="return checkForm();">
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
						<td class="ti"><input class="button" type="submit" value="登录"
							onclick="check_login()"></td>

					</tr>
				</table>
				<p>
					还没帐号？点击<a href="#" class="register">注册</a>
				</p>

			</div>
		</form>
	</div>

	<div id="register">

		<form action="#" method="post" onsubmit="return checkForm();">
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
							onblur="checkId();"
							style="padding-left: 10px; width: -webkit-fill-available;" /></td>

					</tr>
					<tr>

						<td><input type="text" size="20" id="userid1" name="userid"
							maxlength="20" placeholder="请输入您的用户名" value=""
							onblur="checkId();"
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
							name="userpassword" value="" size="20" id="password2"
							maxlength="20" onblur="checkPwd2();"
							style="padding-left: 10px; width: -webkit-fill-available;" /></td>

					</tr>

					<tr>
						<td class="ti"><input class="button" type="submit" value="注册"
							onclick="checkForm2()"></td>

					</tr>
				</table>
				<div id="id_prompt" class="id"></div>
				<div id="pwd_prompt" class="pwd"></div>
				<div id="id1_prompt"></div>
				<div id="pwd1_prompt"></div>
				<div id="pwd2_prompt"></div>
			</div>
		</form>
	</div>

	</section>
	<footer> </footer>
</body>
</html>