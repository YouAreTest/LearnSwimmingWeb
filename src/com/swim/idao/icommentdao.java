package com.swim.idao;

import java.sql.SQLException;

import com.swim.domain.CourseComment;
import com.swim.domain.User;

public interface icommentdao {
	
	public CourseComment submitcomment(CourseComment cc) throws ClassNotFoundException, SQLException;
}
