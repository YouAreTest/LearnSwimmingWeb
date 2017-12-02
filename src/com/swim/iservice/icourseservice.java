package com.swim.iservice;

import java.sql.SQLException;
import java.util.List;

import com.swim.domain.Course;
import com.swim.domain.CourseProcess;

import com.swim.domain.CourseTotal;
import com.swim.domain.SubscribeCourse;


public interface icourseservice {
	//订阅课程
	public List<SubscribeCourse> subscribeCoursebyuser(int uid,int ctid) throws SQLException, ClassNotFoundException;
	//取消订阅课程
	public List<SubscribeCourse> cancelCoursebyuser(int uid,int ctid) throws SQLException,ClassNotFoundException;
	//记录学习进度
	public List<CourseProcess> learnCoursebyuser(int uid,int ctid,int chid) throws SQLException, ClassNotFoundException;
	//课程页的展示
	public List<CourseTotal> showCoursebyuser(int uid,int ctid)throws SQLException,ClassNotFoundException;
	//展现具体课程章节
	public List<Course> showCourseChapter(int ctid)throws SQLException,ClassNotFoundException;
}
