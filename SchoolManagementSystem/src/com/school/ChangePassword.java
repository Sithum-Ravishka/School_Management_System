package com.school;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String password = request.getParameter("password2");
		String addNo = request.getParameter("add");
		
					boolean isTrue;
				 
					isTrue = StudentDButil1.updatePassword(addNo, password);
			 
			 		
					if(isTrue == true) {	
			        	
			        	RequestDispatcher d11 = request.getRequestDispatcher("updateSuccess.jsp");
			        	d11.forward(request, response);
					}else {
		        	
			        	RequestDispatcher d22 = request.getRequestDispatcher("updateNotSuccess.jsp");
			        	d22.forward(request, response);
		        }
		}
}
 