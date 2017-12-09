package com.swim.iservice;

import java.sql.SQLException;

public interface idianzanorfanduiservice {
	
	//点赞评论
	public int goodComment(int uid,int ccid) throws SQLException, ClassNotFoundException;
	//反对评论
	public int badComment(int uid,int ccid) throws SQLException, ClassNotFoundException;
}
