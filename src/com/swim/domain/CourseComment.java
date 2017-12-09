package com.swim.domain;
/**
 * 课程评价表
 * @author Chan

 */
public class CourseComment {
	private int ccid;//评价的编号
	private String content;//评价内容
	private String cdate;//评价时间
	private int uid;
	private int ctid;
	private int goodnumber;//点赞数
	private int badnumber;//反对数
	private User user;  //user类
	public int getCcid() {
		return ccid;
	}
	public void setCcid(int ccid) {
		this.ccid = ccid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getCtid() {
		return ctid;
	}
	public void setCtid(int ctid) {
		this.ctid = ctid;
	}
	public int getGoodnumber() {
		return goodnumber;
	}
	public void setGoodnumber(int goodnumber) {
		this.goodnumber = goodnumber;
	}
	public int getBadnumber() {
		return badnumber;
	}
	public void setBadnumber(int badnumber) {
		this.badnumber = badnumber;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	

}
