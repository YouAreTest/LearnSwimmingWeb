package com.swim.domain;

public class CourseProcess {
	private int uid; 
	private int ctid;
	private int chid; 
	private String pdate; //上次学习的时间
	private String lastlearn;//记录上次看到哪一章
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
	public int getChid() {
		return chid;
	}
	public void setChid(int chid) {
		this.chid = chid;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	public String getLastlearn() {
		return lastlearn;
	}
	public void setLastlearn(String lastlearn) {
		this.lastlearn = lastlearn;
	}
	
}
