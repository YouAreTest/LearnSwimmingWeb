package com.swim.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.swim.domain.Course;
import com.swim.domain.CourseProcess;
import com.swim.domain.CourseTotal;
import com.swim.idao.icoursedao;

public class coursedao implements icoursedao {

	@Override
	public boolean subscribeCoursebyuser(int uid, int ctid) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean cancelCoursebyuser(int uid, int ctid) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public CourseProcess learnCoursebyuser(int uid, int ctid, int chid) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CourseProcess LastProcess(int uid, int ctid, int chid) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CourseTotal showCoursebyuser(int uid, int ctid) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CourseTotal> showCoursebyall() throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Course> showCourseChapter(int ctid) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	
}
