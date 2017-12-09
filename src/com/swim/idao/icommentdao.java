package com.swim.idao;

import java.sql.SQLException;
import java.util.List;

import com.swim.domain.CourseComment;
import com.swim.domain.User;
import com.swim.domain.dianzanorfandui;

public interface icommentdao {
	     //评论课程
	public CourseComment submitComment(CourseComment cc)throws SQLException, ClassNotFoundException;
			//展示评论
	public List<CourseComment> showCommentbypage(int ctid)throws SQLException, ClassNotFoundException;
	//点赞评论
    public dianzanorfandui goodComment(int uid,int ccid) throws SQLException, ClassNotFoundException;
    //反对评论
    public dianzanorfandui badComment(int uid,int ccid) throws SQLException, ClassNotFoundException;

}
