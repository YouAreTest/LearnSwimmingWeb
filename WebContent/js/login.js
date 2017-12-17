/**
 * login页面表单验证
 */
function c() {
	var name_prompt = document.getElementById("name_prompt");
	name_prompt.innerHTML = "";
}
function appendHtml(obj, str, className) {
	obj.innerHTML = str;
	obj.className = className;
}

function check_login() {
	var userid = document.getElementById("userid").value;
	var password = document.getElementById("password");

	if (userid == "" || userid.length < 4 || userid.length > 16) {
		alert("请正确输入账号");
		return false;
	}
	if (password = "" || password.length < 6) {
		alert("请正确输入密码");
		return false;
	}
	return true;
}
function check_register(){
	
	
	if(checkId1()&&checkName()&&checkPwd0()&&checkPwd2()) {
		
		return true;
	}
	else {
		alert("请正确输入信息");
		return false;
	}
}
function checkForm1() {
	if (checkId() && checkPwd0()) {
		return true;
	} else {
		return false;
	}
}
function checkForm2() {
	if (checkName() && checkPwd() && checkPwd2()) {
		return true;
	} else {
		return false;
	}
}

function checkId1() {
	var userid = document.getElementById("userid1").value;
	var id_prompt = document.getElementById("id_prompt");

	if (userid == "" || userid.length < 3) {
		appendHtml(id_prompt, "账号不能为空且长度须在4-16之间", "error_prompt")
		return false;
	} else {
		document.getElementById("id_prompt").style.display = "none";

		return true;
	}

}

function checkName() {
	var username = document.getElementById("username1").value;
	var name_prompt = document.getElementById("name_prompt");

	if (username >16 || username.length < 4) {
		appendHtml(name_prompt, "用户名长度在4-16之间", "error_prompt")
		return false;
	} else {
		document.getElementById("name_prompt").style.display = "none";
		return true;
	}

}

function checkPwd0() {
	var password = document.getElementById("password1").value;
	var pwd_prompt = document.getElementById("pwd_prompt");
	if (password == "" || password.length < 6) {
		appendHtml(pwd_prompt, "密码不能为空且长度不能小于6", "error_prompt")
		return false;
	} else {
		document.getElementById("pwd_prompt").style.display = "none";
		return true;
	}
}

function checkPwd1() {
	var password1 = document.getElementById("password1").value;
	var pwd1_prompt = document.getElementById("pwd1_prompt");
	if (password1 == "" || password1.length < 6) {
		appendHtml(pwd1_prompt, "密码不能为空且长度不能小于6", "error_prompt")
		return false;
	} else {
		document.getElementById("pwd1_prompt").style.display = "none";
		return true;
	}
}
function checkPwd2() {
	var password1 = document.getElementById("password1").value;
	var password2 = document.getElementById("password2").value;
	var pwd2_prompt = document.getElementById("pwd2_prompt");
	var password = document.getElementById("password").value;
	if (password2 != password1 || password2 == "") {
		appendHtml(pwd2_prompt, "密码输入不一致或为空", "error_prompt");
		return false;
	} else {
		document.getElementById("pwd2_prompt").style.display = "none";
		return true;
	}
}
