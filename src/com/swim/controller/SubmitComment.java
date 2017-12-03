package com.swim.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.swim.domain.CourseComment;
import com.swim.domain.User;
import com.swim.iservice.icommentservice;
import com.swim.service.commentservice;

/**
 * Servlet implementation class SubmitComment
 */
@WebServlet("/SubmitComment")
public class SubmitComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitComment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("index");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		icommentservice ics=new commentservice();
		String content=request.getParameter("content");
		String ctid=request.getParameter("ctid");
		User u=(User)session.getAttribute("user");
		if(u==null){
			System.out.println("Äú»¹Î´µÇÂ¼£¡");
			response.sendRedirect("Login.jsp");
			return;
		}
		CourseComment cc=new CourseComment();
		cc.setUid(u.getUid());
		int ctid2=Integer.parseInt("ctid");
		cc.setCtid(ctid2);
		cc.setContent("content");
		CourseComment comment=null;
		try{
			comment=ics.submitComment(cc);
		}catch(ClassNotFoundException | SQLException e){
			response.sendRedirect("  ");
			System.out.println("Ê§°Ü");
			e.printStackTrace();
			return;
		}
		if(comment!=null){
			System.out.println("ÁôÑÔ³É¹¦");
			response.sendRedirect("    ?ctid="+ctid);
			return;
		}
		
	}

}
