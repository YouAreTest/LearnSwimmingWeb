<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="js/videojs-ie8.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>视频播放测试</title>

</head>
<body>
<div style="text-align:center"> 
  <button onclick="playPause()">播放/暂停</button> 
  <button onclick="makeBig()">放大</button>
  <button onclick="makeSmall()">缩小</button>
  <button onclick="makeNormal()">普通</button>
  <button onclick="getCurrentTime()">获取当前播放时间</button>
  <br> 
  <video id="video1" preload="meta" height="70%" width="100%" onclick="banspeed()" data-setup="{}" controls >
    <source src="./video/example.mp4" type="video/mp4">
    您的浏览器不支持 HTML5 video 标签。
  </video>
</div>  
<span id="c"></span> 
<script> 
var myVideo=document.getElementById("video1"); 

myVideo.currentTime=120;  

function playPause()
{ 
if (myVideo.paused) 
  myVideo.play(); 
else 
  myVideo.pause(); 
} 

function makeBig()
{ 
myVideo.width=560; 
} 

function makeSmall()
{ 
myVideo.width=320; 
} 

function makeNormal()
{ 
myVideo.width=420; 
} 
function getCurrentTime()
{
	alert(myVideo.currentTime);
}
</script> 
<script> 

setInterval("stop()",200);
setInterval("setControl()",1);
var ptime=0;
function stop() {
	var video=document.getElementById("video1");
	document.getElementById("c").innerHTML = document.hasFocus(); 
    if (document.hasFocus()==false) {
    	document.getElementById("c").innerHTML = document.hasFocus(); 
    	//alert(document.hasFocus());
    	video.pause();
    	
    }
}
function setControl() {
    var video = document.getElementById("video1"); //获取video对象
    video.controls = true; //设置控制条显示
    ptime=video.currentTime;
}
function banspeed(){
	var time=document.getElementById("video1").currentTime;
	var speed=time-ptime;
	alert(speed);
	if(speed>2){
		alert("不可以快进");
		video.currentTime=ptime;
		video.pause();
	}
}

</script>
</body>
</html>