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
 * Servlet implementation class ResultUpdateServlet
 */
@WebServlet("/ResultUpdateServlet")
public class ResultUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String studentName = request.getParameter("studentName");
		String admissionNo = request.getParameter("admissionNo");
		String year = request.getParameter("year");
		String classRoom = request.getParameter("classRoom");
		String semester = request.getParameter("semester");
		String sinhalaMarks = request.getParameter("sinhalaMarks");
		String buddhismMarks = request.getParameter("buddhismMarks");
		String mathsMarks = request.getParameter("mathsMarks");
		String scinceMarks = request.getParameter("scinceMarks");
		String englishMarks = request.getParameter("englishMarks");
		String historyMarks = request.getParameter("historyMarks");
		String citizenEducationMarks = request.getParameter("citizenEducationMarks");
		String tamilMarks = request.getParameter("tamilMarks");
		String geographyMarks = request.getParameter("geographyMarks");
		String healthandphysicaleducationMarks = request.getParameter("healthandphysicaleducationMarks");
		String homeeconomicsMarks = request.getParameter("homeeconomicsMarks");
		String aestheticSubjects = request.getParameter("aestheticSubjects");
		String aestheticsubjectMarks = request.getParameter("aestheticsubjectMarks");
		String totalMark = request.getParameter("totalMark");
		String average = request.getParameter("average");
		
		boolean isTrue;

		isTrue = ResultDBUtil.updatestudentresult(studentName,admissionNo,year,classRoom,semester,sinhalaMarks,buddhismMarks,mathsMarks,scinceMarks,englishMarks,historyMarks,citizenEducationMarks,tamilMarks,geographyMarks,healthandphysicaleducationMarks,homeeconomicsMarks,aestheticSubjects,aestheticsubjectMarks,totalMark,average);
		
		if(isTrue == true) {
			
			List<studentresult> sturDetails = ResultDBUtil.getStudentResultDetails(admissionNo);
			request.setAttribute("sturDetails", sturDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Result_Sheet_Teacher.jsp");
			dis.forward(request, response);
		}else
		{
			List<studentresult> sturDetails = ResultDBUtil.getStudentResultDetails(admissionNo);
			request.setAttribute("sturDetails", sturDetails);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("Result_Sheet_Teacher.jsp");
			dis1.forward(request, response);
		}
	}

}
