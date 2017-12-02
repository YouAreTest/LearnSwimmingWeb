package com.swim.iservice;

import java.sql.SQLException;
import java.util.List;

import com.swim.domain.Course;
import com.swim.domain.CourseProcess;

import com.swim.domain.CourseTotal;


public interface icourseservice {
	//订阅课程
	public boolean subscribeCoursebyuser(int uid,int ctid) throws SQLException, ClassNotFoundException;
	//取消订阅课程
	public boolean cancelCoursebyuser(int uid,int ctid) throws SQLException,ClassNotFoundException;
	//记录学习进度,记录是一条 不需要用列表（可能后期还需要在进行修改，参数是否加入一个观看时间）
	public CourseProcess learnCoursebyuser(int uid,int ctid,int chid) throws SQLException, ClassNotFoundException;
	//增加功能查询学习进度功能
	public CourseProcess LastProcess(int uid,int ctid,int chid) throws SQLException, ClassNotFoundException;
	//这个是具体（一个）的课程页的展示，因为这是一个课程的页面，所以不需要用列表返回
	//ShowCoursebyuser 方法首先根据ctid获得课程的属性，在通过uid和ctid搜索订阅表，对subscribe属性进行设置，控制前端显示。
	public CourseTotal showCoursebyuser(int uid,int ctid)throws SQLException,ClassNotFoundException;
	
	//显示所有的课程，让用户进行选择
	public List<CourseTotal> showCoursebyall() throws SQLException,ClassNotFoundException;
	
	//展现具体课程章节
	public List<Course> showCourseChapter(int ctid)throws SQLException,ClassNotFoundException;
}
