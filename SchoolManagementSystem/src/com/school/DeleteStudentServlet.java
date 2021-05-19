package com.school;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteStudentServlet")
public class DeleteStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String addNumB = request.getParameter("adn");
		
		boolean tru;
		
		tru = StudentDButil1.deletStudent(addNumB);
		
		if(tru == true) {
			RequestDispatcher d1 = request.getRequestDispatcher("InsertStudent.jsp");
        	d1.forward(request, response);
		}
		else {
			List<Student> stuDetails = StudentDButil1.getStudentDetails(addNumB);
			request.setAttribute("stuDetails", stuDetails);
			
			RequestDispatcher d1 = request.getRequestDispatcher("success.jsp");
        	d1.forward(request, response);
			
		}
	}

}
