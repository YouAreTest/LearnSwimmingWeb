package com.swim.iservice;

import java.sql.SQLException;
import java.util.List;

import com.swim.domain.Course;
import com.swim.domain.CourseProcess;

import com.swim.domain.CourseTotal;
import com.swim.domain.SubscribeCourse;


public interface icourseservice {
	//���Ŀγ�
	public List<SubscribeCourse> subscribeCoursebyuser(int uid,int ctid) throws SQLException, ClassNotFoundException;
	//ȡ�����Ŀγ�
	public List<SubscribeCourse> cancelCoursebyuser(int uid,int ctid) throws SQLException,ClassNotFoundException;
	//��¼ѧϰ����
	public List<CourseProcess> learnCoursebyuser(int uid,int ctid,int chid) throws SQLException, ClassNotFoundException;
	//�γ�ҳ��չʾ
	public List<CourseTotal> showCoursebyuser(int uid,int ctid)throws SQLException,ClassNotFoundException;
	//չ�־���γ��½�
	public List<Course> showCourseChapter(int ctid)throws SQLException,ClassNotFoundException;
}
