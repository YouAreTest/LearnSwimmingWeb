package com.swim.iservice;

import java.sql.SQLException;
import java.util.List;

import com.swim.domain.Course;

public interface ilearncourseservice {
	public List<Course> showcoursebyctid(int ctid)throws SQLException, ClassNotFoundException;


}
