package com.swim.service;

import java.sql.SQLException;

import com.swim.dao.impl.dianzandao;
import com.swim.domain.dianzanorfandui;
import com.swim.idao.idianzandao;
import com.swim.iservice.idianzanservice;

public class dianzanservice implements idianzanservice {
	 idianzandao good=new dianzandao();
	//��������
	 @Override
	public dianzanorfandui goodComment(int uid,int ccid) throws SQLException, ClassNotFoundException{
		 return good.goodComment(uid, ccid);
	 }

}
