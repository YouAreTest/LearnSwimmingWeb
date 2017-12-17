package com.swim.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.swim.database.DatabaseConnection;
import com.swim.domain.Course;
import com.swim.idao.ilearncoursedao;

public class learncoursedao implements ilearncoursedao {
	private DatabaseConnection defaultConnection=new DatabaseConnection();
	@Override
	public List<Course> showcoursebyctid(int ctid)throws SQLException, ClassNotFoundException{
		try(Connection conn=defaultConnection.openConnection()){
			String sql="SELECT * FROM course WHERE ctid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1,ctid);
			ResultSet rs=ps.executeQuery();
			List<Course>List=new ArrayList<Course>();
			Course course=null;
			while(rs.next()){
				course=new Course();
				course.setCtid(rs.getInt("ctid"));
				course.setChid(rs.getInt("chid"));
				course.setCtname(rs.getString("ctname"));
				course.setCtbrief(rs.getString("ctbrief"));
				course.setCttime(rs.getString("cttime"));
				course.setVideourl(rs.getString("videourl"));
				List.add(course);
				
			}
			return List;
			
		}catch(Exception e){
			
		}
		return null;
		
	}
	

}
