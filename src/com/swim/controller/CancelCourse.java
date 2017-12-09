package com.swim.controller;
/**
 * 取消订阅课程
 */
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.swim.domain.CourseTotal;
import com.swim.domain.User;
import com.swim.iservice.icourseservice;
import com.swim.service.courseservice;

/**
 * Servlet implementation class CancelCourse
 */
@WebServlet("/CancelCourse")
public class CancelCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
	icourseservice cs=new courseservice();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CancelCourse() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		User user=(User) session.getAttribute("User");
		CourseTotal ct=(CourseTotal)request.getAttribute("CourseTotal");
		int uid=user.getUid();
		int ctid=ct.getCtid();
		boolean flag=false;
		try {
			flag=cs.cancelCoursebyuser(uid, ctid);
		} catch (Exception e) {
			// TODO: handle exception
		}
		if(flag) {
			ct.setSubscribe(0);
			request.setAttribute("CourseTotal", ct);
			response.getWriter().print(new Gson().toJson(ct));
		}else {
			 response.getWriter().print("取消课程失败");
			
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	
	}

}
