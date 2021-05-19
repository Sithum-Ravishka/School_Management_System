package com.school;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ViewResultTeacherServlet")
public class ViewResultTeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String admissionno = request.getParameter("admissionNo");
		String classroom = request.getParameter("classRoom");
		String Semester = request.getParameter("semester");
		
		boolean isTrue;
		
		isTrue = ResultDBUtil.validate(admissionno, classroom, Semester);
		
		if (isTrue == true) {
			List<studentresult> sturDetails = ResultDBUtil.getstudentresult(admissionno);
			request.setAttribute("sturDetails", sturDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Result_Sheet_Teacher.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your Entered Details Are Wrong');");
			out.println("location='View_Result_Teacher.jsp'");
			out.println("</script>");
		}

}

}