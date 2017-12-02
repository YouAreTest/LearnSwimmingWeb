package com.swim.iservice;

import java.sql.SQLException;
import java.util.List;

import com.swim.domain.Course;
import com.swim.domain.CourseProcess;

import com.swim.domain.CourseTotal;


public interface icourseservice {
	//���Ŀγ�
	public boolean subscribeCoursebyuser(int uid,int ctid) throws SQLException, ClassNotFoundException;
	//ȡ�����Ŀγ�
	public boolean cancelCoursebyuser(int uid,int ctid) throws SQLException,ClassNotFoundException;
	//��¼ѧϰ����,��¼��һ�� ����Ҫ���б����ܺ��ڻ���Ҫ�ڽ����޸ģ������Ƿ����һ���ۿ�ʱ�䣩
	public CourseProcess learnCoursebyuser(int uid,int ctid,int chid) throws SQLException, ClassNotFoundException;
	//���ӹ��ܲ�ѯѧϰ���ȹ���
	public CourseProcess LastProcess(int uid,int ctid,int chid) throws SQLException, ClassNotFoundException;
	//����Ǿ��壨һ�����Ŀγ�ҳ��չʾ����Ϊ����һ���γ̵�ҳ�棬���Բ���Ҫ���б���
	//ShowCoursebyuser �������ȸ���ctid��ÿγ̵����ԣ���ͨ��uid��ctid�������ı���subscribe���Խ������ã�����ǰ����ʾ��
	public CourseTotal showCoursebyuser(int uid,int ctid)throws SQLException,ClassNotFoundException;
	
	//��ʾ���еĿγ̣����û�����ѡ��
	public List<CourseTotal> showCoursebyall() throws SQLException,ClassNotFoundException;
	
	//չ�־���γ��½�
	public List<Course> showCourseChapter(int ctid)throws SQLException,ClassNotFoundException;
}
