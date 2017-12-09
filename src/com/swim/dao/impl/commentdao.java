package com.swim.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.swim.database.DatabaseConnection;
import com.swim.domain.CourseComment;
import com.swim.domain.User;
import com.swim.domain.dianzanorfandui;
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
			  user=new User();
				user.setUsername(rs.getString("username"));
				user.setUserid(rs.getString("userid"));
				user.setUid(rs.getInt("uid"));
				user.setTele(rs.getString("tele"));
				user.setImg(rs.getString("img"));
				user.setEmail(rs.getString("email"));
				user.setEducation(rs.getString("education"));
				user.setContent(rs.getString("content"));
				cc=new CourseComment();
				cc.setCcid(rs.getInt("ccid"));
				cc.setCtid(rs.getInt("ctid"));
				cc.setUid(rs.getInt("uid"));
				cc.setContent(rs.getString("content"));
				cc.setBadnumber(rs.getInt("badnumber"));
				cc.setGoodnumber(rs.getInt("goodnumber"));
				cc.setCdate(rs.getString("cdate"));
				cc.setUser( user);
				List.add(cc);
				
			}
			return List;
			
		}catch(Exception e){
			
		}
		return null;
		
	}
	//点赞
	@Override
	public dianzanorfandui goodComment(int uid,int ccid) throws SQLException, ClassNotFoundException{
		String strSelect="select * from dianzanorfanhui where uid='"+uid+"' and ccid='"+ccid+"'";
		dianzanorfandui userdz=new dianzanorfandui();		
		String strInsert="insert into dianzanorfanhui values('"+uid+"','"+ccid+"','1')";
		String strUpdate1="update dianzanorfanhui set judge=0 where uid='"+uid+"' and ccid='"+ccid+"'";
		String strUpdate2="update dianzanorfanhui set judge=1 where uid='"+uid+"' and ccid='"+ccid+"'";
		String strUpdate3="update coursecomment set goodnumber=goodnumber+1 where ccid='"+ccid+"'";
		String strUpdate4="update coursecomment set goodnumber=goodnumber-1 where ccid='"+ccid+"'";
		
		try {
			DatabaseConnection c = new DatabaseConnection();
			Connection connection = c.openConnection();
			Statement s = connection.createStatement();
			ResultSet rs = s.executeQuery(strSelect);
		
			if(rs.next())
			{
				userdz.setUid(rs.getInt(1));
				userdz.setCcid(rs.getInt(2));
				userdz.setJudge(rs.getInt(3));
				//judge= rs.getInt(3);
				//userdz.setJudge(rs.getInt(3));
				if(userdz.getJudge()==1) {
					int rs2 = s.executeUpdate(strUpdate1);
					System.out.println(rs2+"取消点赞成功");
					userdz.setJudge(0);
					int rs5=s.executeUpdate(strUpdate4);
					System.out.println(rs5+"总的点赞数-1");
				}
				else {
					int rs3=s.executeUpdate(strUpdate2);
					System.out.println(rs3+"再次点赞记录成功");
					int rs6=s.executeUpdate(strUpdate3);					
					System.out.println(rs6+"总的点赞数+1");
				}
			}
			else {
				int rs4=s.executeUpdate(strInsert);
				userdz.setUid(uid);
				userdz.setCcid(ccid);
				userdz.setJudge(1);
				System.out.println(rs4+"，首次点赞，点赞成功");
			    int rs7=s.executeUpdate(strUpdate3);
			    
			    System.out.println(rs7+"总的点赞数+1");
			}
			connection.close();
		}catch(Exception e) {
			e.printStackTrace();
		}		
		
		return userdz;
   }
	@Override
	public dianzanorfandui badComment(int uid,int ccid) throws SQLException, ClassNotFoundException{
		String strSelect="select * from dianzanorfanhui where uid='"+uid+"' and ccid='"+ccid+"'";
		dianzanorfandui userdz=new dianzanorfandui();		
		String strInsert="insert into dianzanorfanhui values('"+uid+"','"+ccid+"','1')";
		String strUpdate1="update dianzanorfanhui set judge=0 where uid='"+uid+"' and ccid='"+ccid+"'";
		String strUpdate2="update dianzanorfanhui set judge=1 where uid='"+uid+"' and ccid='"+ccid+"'";
		String strUpdate3="update coursecomment set badnumber=badnumber+1 where ccid='"+ccid+"'";
		String strUpdate4="update coursecomment set badnumber=badnumber-1 where ccid='"+ccid+"'";
		
		try {
			DatabaseConnection c = new DatabaseConnection();
			Connection connection = c.openConnection();
			Statement s = connection.createStatement();
			ResultSet rs = s.executeQuery(strSelect);
		
			if(rs.next())
			{
				userdz.setUid(rs.getInt(1));
				userdz.setCcid(rs.getInt(2));
				userdz.setJudge(rs.getInt(3));
				//judge= rs.getInt(3);
				//userdz.setJudge(rs.getInt(3));
				if(userdz.getJudge()==1) {
					int rs2 = s.executeUpdate(strUpdate1);
					System.out.println(rs2+"取消反对成功");
					userdz.setJudge(0);
					int rs5=s.executeUpdate(strUpdate4);
					System.out.println(rs5+"总的反对数-1");
				}
				else {
					int rs3=s.executeUpdate(strUpdate2);
					System.out.println(rs3+"再次反对记录成功");
					int rs6=s.executeUpdate(strUpdate3);					
					System.out.println(rs6+"总的反对数+1");
				}
			}
			else {
				int rs4=s.executeUpdate(strInsert);
				userdz.setUid(uid);
				userdz.setCcid(ccid);
				userdz.setJudge(1);
				System.out.println(rs4+"，首次反对，反对成功");
			    int rs7=s.executeUpdate(strUpdate3);
			    
			    System.out.println(rs7+"总的反对数+1");
			}
			connection.close();
		}catch(Exception e) {
			e.printStackTrace();
		}		
		
		return userdz;
	}

	
}
