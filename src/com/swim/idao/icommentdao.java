package com.swim.idao;

import java.sql.SQLException;
import java.util.List;

import com.swim.domain.CourseComment;

public interface icommentdao {
	
	public CourseComment submitcomment(CourseComment cc) throws ClassNotFoundException, SQLException;
	//��������
	public int goodComment(int uid,int ccid) throws SQLException, ClassNotFoundException;
	//��������
	public int badComment(int uid,int ccid) throws SQLException, ClassNotFoundException;
	//չʾ����
	public List<CourseComment> showCommentbypage(int ctid)throws SQLException, ClassNotFoundException;
}
