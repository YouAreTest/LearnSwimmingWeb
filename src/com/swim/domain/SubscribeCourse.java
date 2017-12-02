package com.swim.domain;
/**
 * 用户订阅课程表
 * @author Chan
 *
 */
public class SubscribeCourse {
	private int uid;
	private int ctid;

	private String sdate;//订阅的时间
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
	
	
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	
	

}
