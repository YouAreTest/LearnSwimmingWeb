package com.swim.service;

import java.sql.SQLException;
import java.util.List;

import com.swim.dao.impl.commentdao;
import com.swim.domain.CourseComment;
import com.swim.domain.dianzanorfandui;
import com.swim.idao.icommentdao;
import com.swim.iservice.icommentservice;

public  class commentservice implements icommentservice {
	icommentdao icd=new commentdao();
	@Override
	public CourseComment submitComment(CourseComment cc)throws SQLException, ClassNotFoundException{
		return icd.submitComment(cc);
	}
	
	@Override
	public List<CourseComment> showCommentbypage(int ctid)throws SQLException,ClassNotFoundException{
		return icd.showCommentbypage(ctid);
	}
		//点赞评论
		 @Override
	public dianzanorfandui goodComment(int uid,int ccid) throws SQLException, ClassNotFoundException{
			 return icd.goodComment(uid, ccid);
    }
		//反对评论
		 @Override
	public dianzanorfandui badComment(int uid,int ccid) throws SQLException, ClassNotFoundException{
			 return icd.badComment(uid, ccid);
			 
    }	 
}
