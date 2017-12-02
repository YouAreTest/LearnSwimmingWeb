package com.swim.domain;
/**
 * 课程总表
 * @author Chan
 *
 */
public class CourseTotal { 
	private int ctid;//课程主键
	private String ctname;//课程名
	private int tid;//课程教师编号
	private String studentnumber;//课程已经参与的学生数目
	private String ctbrief;//课程简介
	private String img;//课程封面
	private int subscribe;//课程是否被订阅 
	//默认是0 没有被订阅，数据库里面没有增加这一项，这一项仅仅是针对一个用户
	//如果是0，前台的按钮内容显示的就是订阅，函数就是subscribeCoursebyuser
	//如果是1，前台按钮就是已订阅，函数就是cancelCoursebyuser
	
	
	public int getSubscribe() {
		return subscribe;
	}
	public void setSubscribe(int subscribe) {
		this.subscribe = subscribe;
	}
	public int getCtid() {
		return ctid;
	}
	public void setCtid(int ctid) {
		this.ctid = ctid;
	}
	public String getCtname() {
		return ctname;
	}
	public void setCtname(String ctname) {
		this.ctname = ctname;
	}
	
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getStudentnumber() {
		return studentnumber;
	}
	public void setStudentnumber(String studentnumber) {
		this.studentnumber = studentnumber;
	}
	public String getCtbrief() {
		return ctbrief;
	}
	public void setCtbrief(String ctbrief) {
		this.ctbrief = ctbrief;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}

}
