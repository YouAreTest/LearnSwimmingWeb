package com.swim.iservice;

import java.sql.SQLException;

public interface idianzanorfanduiservice {
	
	//��������
	public int goodComment(int uid,int ccid) throws SQLException, ClassNotFoundException;
	//��������
	public int badComment(int uid,int ccid) throws SQLException, ClassNotFoundException;
}
