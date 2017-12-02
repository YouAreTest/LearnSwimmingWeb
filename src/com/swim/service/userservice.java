package com.swim.service;

import java.sql.SQLException;
import java.util.List;

import com.swim.dao.impl.userdao;
import com.swim.domain.CourseTotal;
import com.swim.domain.SubscribeCourse;
import com.swim.domain.User;
import com.swim.idao.iuserdao;
import com.swim.iservice.iuserservice;

public class userservice implements iuserservice{
	private iuserdao ud= new userdao();
	@Override
	public User login(User u) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		User realuser=ud.login(u);
		return realuser;
	}

	@Override
	public User register(User u) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		User realuser=ud.register(u);
		return realuser;
		
	}

	@Override
	public User changeassword(User u,String repassword) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		return ud.changeassword(u,repassword);
	}

	@Override
	public User changenfo(User u) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		return ud.changenfo(u);
	}

	/*@Override
	public List<String> getallUserinformation(int uid) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		return ud.getallUserinformation(uid);
	}
	 */
	@Override
	public List<CourseTotal> getallCoursebyuid(int uid) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		return ud.getallCoursebyuid(uid);
	}

	

}
