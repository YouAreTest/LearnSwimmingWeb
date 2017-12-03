package com.swim.iservice;

import java.sql.SQLException;
import java.util.List;

import com.swim.domain.CourseComment;

public interface icommentservice {
	   //评论课程
		public CourseComment submitComment(CourseComment cc)throws SQLException, ClassNotFoundException;
		//展示评论
		public List<CourseComment> showCommentbypage(int ctid)throws SQLException, ClassNotFoundException;
		
}
