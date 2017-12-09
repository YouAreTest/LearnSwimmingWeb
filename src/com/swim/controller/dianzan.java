package com.swim.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.swim.domain.dianzanorfandui;
import com.swim.iservice.icommentservice;
import com.swim.service.commentservice;


@WebServlet("/dianzan")
public class dianzan extends HttpServlet {
	private static final long serialVersionUID = 1L;       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dianzan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		if(session.getAttribute("user")==null){
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
			}
		else {
			int uid=(int) session.getAttribute("user");
			int ccid=(int) session.getAttribute("commentid");
			icommentservice dz=new commentservice();
			dianzanorfandui dz2=new dianzanorfandui();
			try {
				dz2 = dz.goodComment(uid, ccid);
			} catch (ClassNotFoundException e) {
				
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(dz2.getJudge()==1) 
			{
				System.out.println("�����޳ɹ�servlet");
			}
			else if(dz2.getJudge()==0) {
				System.out.println("����ȡ������servlet");
			}
			else {
				System.out.println("���޲���δ�ɹ�servlet");
			}
				
		}
		
		return;
	}

}
