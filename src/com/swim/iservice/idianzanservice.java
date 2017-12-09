package com.swim.iservice;

import java.sql.SQLException;

import com.swim.domain.dianzanorfandui;

public interface idianzanservice {
	//µ„‘ﬁ∆¿¬€
	public dianzanorfandui goodComment(int uid,int ccid) throws SQLException, ClassNotFoundException;

}