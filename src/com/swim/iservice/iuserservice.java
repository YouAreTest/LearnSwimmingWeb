package com.swim.iservice;

import java.sql.SQLException;
import java.util.List;

import com.swim.domain.CourseTotal;
import com.swim.domain.SubscribeCourse;
import com.swim.domain.User;


public interface iuserservice {
	public User login(User u) throws ClassNotFoundException, SQLException;
	public User register(User u) throws ClassNotFoundException, SQLException;
	public User changeassword(User u,String repassword) throws ClassNotFoundException, SQLException;
	public User changenfo(User u)throws ClassNotFoundException, SQLException;
	//public List<String> getallUserinformation(int uid)throws ClassNotFoundException, SQLException;
	//����û����Ŀγ�����Щ�γ�
	public List<CourseTotal> getallCoursebyuid(int uid) throws ClassNotFoundException, SQLException;
	
	

	

}
