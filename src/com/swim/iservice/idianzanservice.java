package com.swim.iservice;

import java.sql.SQLException;

import com.swim.domain.dianzanorfandui;

public interface idianzanservice {
	//��������
	public dianzanorfandui goodComment(int uid,int ccid) throws SQLException, ClassNotFoundException;

}