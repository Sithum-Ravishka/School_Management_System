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
 * Servlet implementation class SearchByNameServlet
 */
@WebServlet("/SearchByNameServlet")
public class SearchByNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fnm = request.getParameter("fname");
		String mnm = request.getParameter("mname");
		String lnm = request.getParameter("lname");
		
		try {
			List<Student> search = StudentDButil1.SearchByName(fnm, mnm, lnm);
			request.setAttribute("search",search);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("SuccessNameSearch.jsp");
		dis.forward(request, response);
	}

}
