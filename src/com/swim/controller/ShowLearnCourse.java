package com.swim.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.swim.domain.Course;
import com.swim.domain.User;
import com.swim.iservice.ilearncourseservice;
import com.swim.service.learncourseservice;

/**
 * Servlet implementation class ShowLearnCourse
 */
@WebServlet("/ShowLearnCourse")
public class ShowLearnCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowLearnCourse() {
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		ilearncourseservice ilc=new learncourseservice();
		List<Course>course2=new ArrayList<Course>();		
		int ctid=Integer.parseInt(request.getParameter("ctid")); 
		User u=(User)session.getAttribute("User");
		if(u==null){
			System.out.println("Äú»¹Î´µÇÂ¼£¡");
			response.sendRedirect("Login.jsp");
			return;
		}
		try {
			course2=ilc.showcoursebyctid(ctid);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("ÏÔÊ¾learnCourseÊ§°Ü");
			return;
			
		}
		if(course2!=null)
		{
			request.setAttribute("LearnCourseList", course2);
			request.getRequestDispatcher("LearnCourse.jsp").forward(request,response);
		}
		else{
			System.out.println("·µ»ØlearnCourseÊ§°Ü");
		}
		return;
	}

}
