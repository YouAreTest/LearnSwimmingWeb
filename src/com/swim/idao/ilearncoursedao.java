package com.swim.idao;

import java.sql.SQLException;
import java.util.List;

import com.swim.domain.Course;

public interface ilearncoursedao {
	public List<Course> showcoursebyctid(int ctid)throws SQLException, ClassNotFoundException;

}
