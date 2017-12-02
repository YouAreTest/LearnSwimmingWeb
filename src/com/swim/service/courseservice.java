package com.swim.service;

import java.sql.SQLException;
import java.util.List;

import com.swim.dao.impl.coursedao;
import com.swim.domain.Course;
import com.swim.domain.CourseProcess;
import com.swim.domain.CourseTotal;
import com.swim.idao.icoursedao;
import com.swim.iservice.icourseservice;

public class courseservice implements icourseservice{
	icoursedao cd=new coursedao();

	@Override
	public boolean subscribeCoursebyuser(int uid, int ctid) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return cd.subscribeCoursebyuser(uid, ctid);

	}

	@Override
	public boolean cancelCoursebyuser(int uid, int ctid) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return cd.cancelCoursebyuser(uid, ctid);
	}

	@Override
	public CourseProcess learnCoursebyuser(int uid, int ctid, int chid) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return cd.learnCoursebyuser(uid, ctid, chid);
	}

	@Override
	public CourseProcess LastProcess(int uid, int ctid, int chid) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return cd.LastProcess(uid, ctid, chid);
	}

	@Override
	public CourseTotal showCoursebyuser(int uid, int ctid) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return cd.showCoursebyuser(uid, ctid);
	}

	@Override
	public List<CourseTotal> showCoursebyall() throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return cd.showCoursebyall();
	}

	@Override
	public List<Course> showCourseChapter(int ctid) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return cd.showCourseChapter(ctid);
	}

}
