package com.school;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginStudentServlet")
public class LoginStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String addNo = request.getParameter("addNo");
		String pwd = request.getParameter("pwd");
		
		try {
			List<Student> stu = StudentDButil1.validateLogin(addNo,pwd);
			request.setAttribute("stu",stu);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("successStuPro.jsp");
		dis.forward(request, response);
	}

}
