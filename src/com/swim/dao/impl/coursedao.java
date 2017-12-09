package com.swim.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.swim.database.DatabaseConnection;
import com.swim.domain.Course;
import com.swim.domain.CourseProcess;
import com.swim.domain.CourseTotal;
import com.swim.idao.icoursedao;

public class coursedao implements icoursedao {
	private DatabaseConnection defaultConnection=new DatabaseConnection();


	@Override
	public boolean subscribeCoursebyuser(int uid, int ctid) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean cancelCoursebyuser(int uid, int ctid) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		try (Connection conn=defaultConnection.openConnection()){
			String sql="DELETE FROM subscribeCourse WHERE uid=? and ctid=?";
			PreparedStatement pt = conn.prepareStatement(sql);
			pt.setInt(1, uid);
			pt.setInt(2, ctid);
			int rs = pt.executeUpdate();
			if(rs!=0) return true;
		}catch (Exception e) {
			// TODO: handle exception
		}
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
		CourseTotal ct=null;
		try (Connection conn=defaultConnection.openConnection()){
			String sql="SELECT  FROM coursetotal";
			PreparedStatement pstmt = conn.prepareStatement(sql);
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return null;
	}

	@Override
	public List<CourseTotal> showCoursebyall() throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		List<CourseTotal> list = new ArrayList<CourseTotal>();
		CourseTotal ct=null;
		try (Connection conn=defaultConnection.openConnection()){
			String sql="SELECT * FROM coursetotal";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				ct=new CourseTotal();
				ct.setCtid(rs.getInt("ctid"));
				ct.setCtname(rs.getString("ctname"));
				ct.setCtbrief(rs.getString("Ctbrief"));
				ct.setImg(rs.getString("img"));
				ct.setStudentnumber(rs.getString("studentnumber"));
				ct.setSubscribe(rs.getInt("subscribe"));
				ct.setTid(rs.getInt("Tid"));
				list.add(ct);
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	}

	@Override
	public List<Course> showCourseChapter(int ctid) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	
}
