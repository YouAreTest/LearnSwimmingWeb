 package com.swim.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Random;

import com.swim.database.DatabaseConnection;
import com.swim.domain.CourseTotal;
import com.swim.domain.SubscribeCourse;
import com.swim.domain.User;
import com.swim.idao.iuserdao;

public class userdao implements iuserdao {
	private DatabaseConnection defaultConnection=new DatabaseConnection();


	@Override
	public User login(User u) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		User realuser=new User();
		 Random random = new Random();
		 int imgnum = random.nextInt(5)%(5) + 1;
		 String imgUrl="./image/touxiang/"+imgnum+".jpg";
		try(Connection conn=defaultConnection.openConnection()){
			String userid=u.getUserid();
			String userpassword=u.getUserpassword();
			String sql="SELECT * FROM user WHERE userid=?";
			PreparedStatement pt=conn.prepareStatement(sql);
			pt.setString(1, userid);
			ResultSet rs=pt.executeQuery();
			if(rs.next()) {
				String selectpassword=rs.getString("userpassword");
				if(userpassword.equals(selectpassword)) {
					realuser.setUid(rs.getInt("uid"));
					realuser.setUsername(rs.getString("username"));
					realuser.setUserpassword(selectpassword);
					realuser.setUserid(userid);
					realuser.setTele(rs.getString("tele"));
					realuser.setImg(rs.getString("img"));
					realuser.setEmail(rs.getString("email"));
					realuser.setEducation(rs.getString("education"));
					realuser.setContent(rs.getString("content"));
					realuser.setImg(imgUrl);
					return realuser;
				}
			}
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	
	}

	@Override
	public User register(User u) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		User realuser=new User();
		try(Connection conn=defaultConnection.openConnection()){
			String userid=u.getUserid();
			String username=u.getUsername();
			String userpassword=u.getUserpassword();
			String sql="INSERT INTO user(userid,username,userpassword) VALUES(?,?,?)";
			PreparedStatement pt=conn.prepareStatement(sql);
			pt.setString(1, userid);
			pt.setString(2, username);
			pt.setString(3, userpassword);
			int rs=pt.executeUpdate();
			if(rs!=0) {
				realuser.setUserid(userid);
				realuser.setUsername(username);
				realuser.setUserpassword(userpassword);
			}
			return realuser;
		}catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	@Override
	public User changeassword(User u, String repassword) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		User realuser=new User();
		try(Connection conn=defaultConnection.openConnection()){
			int uid=u.getUid();
			String sql="UPDATE user SET userpassword=? WHERE uid=?";
			PreparedStatement pt=conn.prepareStatement(sql);
			pt.setString(1, repassword);
			pt.setInt(2, uid);
			int rs=pt.executeUpdate();
			if(rs!=0) {
				realuser.setUserid(u.getUserid());
				realuser.setUserpassword(repassword);
				realuser.setUsername(u.getUsername());
				realuser.setUid(uid);
			}
			return realuser;
		}catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	@Override
	public User changenfo(User u) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CourseTotal> getallCoursebyuid(int uid) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	
}
