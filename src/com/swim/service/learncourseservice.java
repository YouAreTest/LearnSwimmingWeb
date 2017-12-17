package com.swim.service;

import java.sql.SQLException;
import java.util.List;

import com.swim.dao.impl.learncoursedao;
import com.swim.domain.Course;
import com.swim.idao.ilearncoursedao;
import com.swim.iservice.ilearncourseservice;

public class learncourseservice implements ilearncourseservice{
	ilearncoursedao ilc=new learncoursedao();
	@Override
	//œ‘ æ—ßœ∞øŒ≥Ã
	public List<Course> showcoursebyctid(int ctid)throws SQLException, ClassNotFoundException{
		return ilc.showcoursebyctid(ctid);
	}

}
