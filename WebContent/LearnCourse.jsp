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
	<script type="text/javascript" src="./js/login.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/LearnCourse.css">
<link rel="stylesheet" href="./css/head-portrait.css">
<link rel="stylesheet" href="./css/login.css">
<link rel="stylesheet" href="./css/footer.css">
<link rel="stylesheet" href="./css/register.css">
<link rel="stylesheet" href="./css/Input.css">
<link rel="stylesheet" href="./css/course.css">
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

button, input:focus {
	outline: none;
}

.course-name {
	position: absolute;
	top: 65px;
	left: 109px;
	font-size: 37px;
	color: #cfdcde;
}

.course-info ul {
	position: absolute;
	top: 157px;
	left: 109px;
}

.course-info ul li {
	list-style: none;
	display: inline-block;
	color: #acc0c3;
	width: 126px;
	text-align: center;
}

.course-info ul li button {
	height: 50px;
	vertical-align: middle;
}

.back {
	width: 1349px;
	height: 212px;
	background-image: url(image/course/back.png);
	background-size: 100% 100%;
	position: absolute;
	top: 22px;
	z-index: -1;
	filter: blur(7px);
	-webkit-filter: blur(7px);
	-moz-filter: blur(7px);
	-ms-filter: blur(7px);
	-o-filter: blur(7px);
}

.begin {
	background: linear-gradient(#efc7bf, #d8aa94);
	border: 3px solid #e6baac;
	border-radius: 5px;
	width: 117px;
	color: #366c7b;
	font-size: 17px;
	font-family: "微软雅黑";
	font-weight: 600;
	letter-spacing: 2px;
}


.tips {
	width: 291px;
	height: 88%;
	background: linear-gradient(to bottom, #faebd8, #8ab2a9);
	/* margin: 0 auto; */
	position: relative;
	left: -20px;
	top: 33px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

hr {
	position: absolute;
	top: 310px;
	width: 122%;
	left: -43px;
	color: #d8d5d6;
}

.right-teacher {
	width: 97%;
	height: 400px;
	background-color: antiquewhite;
	position: absolute;
	top: 367px;
	left: -5px;
	padding: 20px;
	border-radius: 10px;
}

.panel-heading {
	background: linear-gradient(to bottom, #498282, #254851);
	color: #ffeece;
}

.panel-body ul li {
	border-bottom: 1px solid #dcddde;
}
</style>

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
	</header>


	<section>
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
	<div class="course-top">
		<div class="back"></div>
		<h2 class="course-name" name="course-name">XXX课程</h2>
		<div class="course-info">
			<ul>
				<li><a href="#NSPlay"><button class="begin">开始学习</button></a></li>
				<li>学习人数<br> <span></span></li>
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
		<div id="myTabContent" class="tab-content"
			style="position: relative; top: 10px;">
			<div class="tab-pane fade in active" id="home">
				<div>
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseOne"> 第一章 </a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<ul>
										<li>1</li>
										<li>2</li>
										<li>3</li>
										<li>4</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseTwo"> 第二章 </a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse">
								<div class="panel-body">
									<ul>
										<li>第一节</li>
										<li>第二节</li>
										<li>第三节</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseThree"> 第三章</a>
								</h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse">
								<div class="panel-body">
									<ul>
										<li>第一节</li>
										<li>第二节</li>
										<li>第三节</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="tab-pane fade" id="ios">
				<div class="post-comment">

					<form action="SubmitComment">
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
							style="color: rgb(140, 140, 140); color: rgb(140, 140, 140); position: relative; left: 623px; top: 15px;"
							onclick=""> </span> <span class="glyphicon glyphicon-thumbs-down"
							style="color: rgb(140, 140, 140); color: rgb(140, 140, 140); position: relative; left: 655px; top: 15px;">
						</span>
						<hr>
					</div>
					
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
		<div class="right-teacher">
			<span class="head-portrait">头像 </span><span class="teacher-name"
				name="teachername">XX老师</span><br>
			<p class="position"></p>
			<div class="tips" name="tips">课程贴士</div>
		</div>
	</div>
	<p></p>
	</section>

	
	<div class="foot" style="top: 443px;">
	支持我们
	</div>
</body>
</html>