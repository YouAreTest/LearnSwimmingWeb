package com.swim.idao;

import java.sql.SQLException;
import java.util.List;

import com.swim.domain.CourseComment;
import com.swim.domain.User;
import com.swim.domain.dianzanorfandui;

public interface icommentdao {
	     //���ۿγ�
	public CourseComment submitComment(CourseComment cc)throws SQLException, ClassNotFoundException;
			//չʾ����
	public List<CourseComment> showCommentbypage(int ctid)throws SQLException, ClassNotFoundException;
	//��������
    public dianzanorfandui goodComment(int uid,int ccid) throws SQLException, ClassNotFoundException;
    //��������
    public dianzanorfandui badComment(int uid,int ccid) throws SQLException, ClassNotFoundException;

}
