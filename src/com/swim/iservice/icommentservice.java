package com.swim.iservice;

import java.sql.SQLException;
import java.util.List;

import com.swim.domain.CourseComment;

public interface icommentservice {
	   //���ۿγ�
		public CourseComment submitComment(CourseComment cc)throws SQLException, ClassNotFoundException;
		//չʾ����
		public List<CourseComment> showCommentbypage(int ctid)throws SQLException, ClassNotFoundException;
		
}
