package com.swim.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.swim.database.DatabaseConnection;
import com.swim.domain.dianzanorfandui;
import com.swim.idao.idianzandao;

public class dianzandao implements idianzandao {
	//点赞评论
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
	
	public static int dianzan(String userid, String cid1,String cid2){
		String sql="SELECT * FROM dzrecord WHERE useraccount = '"+userid+" ' AND useraccount2='"+cid1+"' and date='"+cid2+"'";
		String sql2="insert into dzrecord values('"+userid+"','"+cid1+"','"+cid2+"')";
		String sql3="update comment set CommentNumber=CommentNumber+1 where useraccount='"+cid1+"' and CommentDatetime='"+cid2+"'";
		String sql4="update comment set CommentNumber=CommentNumber-1 where useraccount='"+cid1+"' and CommentDatetime='"+cid2+"'";
		String sql5="delete from dzrecord where useraccount='"+userid+"' and useraccount2='"+cid1+"' and Date='"+cid2+"'";
		String sql6="SELECT * FROM comment WHERE useraccount='"+cid1+"' and CommentDatetime='"+cid2+"'";
		int dzcount = 0;
		try {
			DatabaseConnection c = new DatabaseConnection();
			Connection connection = c.openConnection();
			Statement s = connection.createStatement();
			ResultSet rs = s.executeQuery(sql);
		
			if(rs.next()){
				int rs2 = s.executeUpdate(sql4);
				int rs5= s.executeUpdate(sql5);
			}
			else{
				int rs3 = s.executeUpdate(sql2);
				int rs4 = s.executeUpdate(sql3);
			}
			ResultSet rs6=s.executeQuery(sql6);
			if(rs6.next()){
			dzcount= rs6.getInt(3);
			connection.close();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();//锟斤拷印锟斤拷锟届常锟斤拷锟斤拷锟? 锟届常锟斤拷锟皆诧拷锟斤拷写
		}
		return dzcount;//锟斤拷锟截碉拷锟斤拷锟斤拷
	}
    public static int dianzan(String cid1,String cid2){
    	
    	String sql6="SELECT * FROM comment WHERE useraccount1='"+cid1+"' and CommentDatetime='"+cid2+"'";
		int dzcount = 0;
		try {
			DatabaseConnection c = new DatabaseConnection();
			Connection connection = c.openConnection();
			Statement s = connection.createStatement();
			ResultSet rs6=s.executeQuery(sql6);
			if(rs6.next()){
			dzcount= rs6.getInt(3);
			connection.close();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dzcount;
	}


}
