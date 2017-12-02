package com.swim.domain;
/**
 * 用户表
 * @author Chan
 *
 */
public class User {
	private int uid;//学生唯一编号，数据库主键、
	private String userid;//用户帐号
	private String username;//用户昵称
	private String userpassword;//用户密码
	private String img;//用户头像地址
	private String content;//自我介绍
	private String education;//用户学历
	private String tele;//用户电话
	private String email;//用户电子邮件
	private String usersex;//用户性别
	private String userage;//用户年龄
	
	
	
	public String getUsersex() {
		return usersex;
	}
	public void setUsersex(String usersex) {
		this.usersex = usersex;
	}
	public String getUserage() {
		return userage;
	}
	public void setUserage(String userage) {
		this.userage = userage;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getTele() {
		return tele;
	}
	public void setTele(String tele) {
		this.tele = tele;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	
}
