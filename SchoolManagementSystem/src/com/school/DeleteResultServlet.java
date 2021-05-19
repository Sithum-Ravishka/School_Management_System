package com.school;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class DeleteResultServlet
 */
@WebServlet("/DeleteResultServlet")
public class DeleteResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String admissionNo = request.getParameter("admissionNo");
		
		boolean isTrue;

		isTrue = ResultDBUtil.deleteResult(admissionNo);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("Result_Select.jsp");
			dis.forward(request, response);
		}else
		{
			List<studentresult> sturDetails = ResultDBUtil.getStudentResultDetails(admissionNo);
			request.setAttribute("sturDetails", sturDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Result_Sheet_Teacher.jsp");
			dis.forward(request, response);
		}
	}


}

