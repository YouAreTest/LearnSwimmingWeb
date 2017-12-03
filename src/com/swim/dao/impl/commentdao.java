package com.swim.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.swim.database.DatabaseConnection;
import com.swim.domain.CourseComment;
import com.swim.domain.User;
import com.swim.idao.icommentdao;

public class commentdao implements icommentdao {
	private DatabaseConnection defaultConnection=new DatabaseConnection();
	@Override
	public CourseComment submitComment(CourseComment cc)throws SQLException, ClassNotFoundException{
	try(Connection conn=defaultConnection.openConnection()){
		String content=cc.getContent();
		//SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		//String datetime = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
		
		String sql="INSERT INTO CourseComment(content,datetime) VALUES(?,?)";
		PreparedStatement pt=conn.prepareStatement(sql);
		
		pt.setString(1, content);
		pt.setDate(2,new Date(System.currentTimeMillis()));
		int rs=pt.executeUpdate();
		if(rs>0) {
			return cc;
		}
		else {
			return null;
		}

	}catch (Exception e) {
		// TODO: handle exception
	}
	return null;
}
	@Override
	public List<CourseComment> showCommentbypage(int ctid)throws SQLException, ClassNotFoundException{
		try(Connection conn=defaultConnection.openConnection()){
			String sql="SELECT * FROM coursecomment inner join user on cuserid=userid WHERE ctid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1,ctid);
			ResultSet rs=ps.executeQuery();
			List<CourseComment>List=new ArrayList<CourseComment>();
			CourseComment cc=null;
			User user=null;
			while(rs.next()){
			 /*   user=new User();
				user.setUsername(rs.getString("username"));
				user.setUserid(rs.getString("userid"));
				user.setUid(rs.getInt("uid"));
				user.setTele(rs.getString("tele"));
				user.setImg(rs.getString("img"));
				user.setEmail(rs.getString("email"));
				user.setEducation(rs.getString("education"));
				user.setContent(rs.getString("content"));*/
				cc=new CourseComment();
				cc.setCcid(rs.getInt("ccid"));
				cc.setCtid(rs.getInt("ctid"));
				cc.setUid(rs.getInt("uid"));
				cc.setContent(rs.getString("content"));
				cc.setBadnumber(rs.getInt("badnumber"));
				cc.setGoodnumber(rs.getInt("goodnumber"));
				cc.setCdate(rs.getString("cdate"));
				List.add(cc);
			}
			return List;
			
		}catch(Exception e){
			
		}
		return null;
		
	}
}
