package com.school;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/HomeTeacherServlet")
public class HomeTeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
			String tId = request.getParameter("tId");
			String password = request.getParameter("password");

			try {
			List<Teacher> stu = TeacherDBUtil.validate(tId, password);
			request.setAttribute("stu",stu);

			}catch(Exception e) {
			e.printStackTrace();
			}


			RequestDispatcher dis = request.getRequestDispatcher("HomePage.jsp");
			dis.forward(request, response);
			}
	}
