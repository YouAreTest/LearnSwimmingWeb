package com.swim.iservice;

import java.sql.SQLException;
import java.util.List;

import com.swim.domain.CourseComment;
import com.swim.domain.dianzanorfandui;

public interface icommentservice {
	   //���ۿγ�
		public CourseComment submitComment(CourseComment cc)throws SQLException, ClassNotFoundException;
		//չʾ����
		public List<CourseComment> showCommentbypage(int ctid)throws SQLException, ClassNotFoundException;
		//��������
		public dianzanorfandui goodComment(int uid,int ccid) throws SQLException, ClassNotFoundException;
		//��������
	   public dianzanorfandui badComment(int uid,int ccid) throws SQLException, ClassNotFoundException;

}
