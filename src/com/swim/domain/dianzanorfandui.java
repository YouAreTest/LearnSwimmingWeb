package com.swim.domain;

public class dianzanorfandui {
	private int ccid;//帖子编号
	private int uid;//用户编号
	private int judge;//是否点赞过,0:该用户未点过赞，1：已点过赞
	
	
	public int getCcid() {
		return ccid;
	}
	public void setCcid(int ccid) {
		this.ccid = ccid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getJudge() {
		return judge;
	}
	public void setJudge(int judge) {
		this.judge = judge;
	}
	
	

}
