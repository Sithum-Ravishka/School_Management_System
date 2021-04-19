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
		
		
		String studentName = request.getParameter("StudentName");
		String admissionNo = request.getParameter("AdmissionNo");
		String year = request.getParameter("Year");
		String classRoom = request.getParameter("classroom");
		String semester = request.getParameter("Semester");
		String sinhalaMarks = request.getParameter("SinhalaMarks");
		String buddhismMarks = request.getParameter("BuddhismMarks");
		String mathsMarks = request.getParameter("MathsMarks");
		String scinceMarks = request.getParameter("ScinceMarks");
		String englishMarks = request.getParameter("EnglishMarks");
		String historyMarks = request.getParameter("HistoryMarks");
		String citizenEducationMarks = request.getParameter("CitizenEducationMarks");
		String tamilMarks = request.getParameter("TamilMarks");
		String geographyMarks = request.getParameter("GeographyMarks");
		String healthandphysicaleducationMarks = request.getParameter("HealthandphysicaleducationMarks");
		String homeEconomicsMarks = request.getParameter("HomeEconomicsMarks");
		String aestheticsubjects = request.getParameter("Aestheticsubjects");
		String aestheticsubjectsMarks = request.getParameter("AestheticsubjectsMarks");
		int totalMark = Integer.parseInt(request.getParameter("totalMark"));
		double average = Double.parseDouble(request.getParameter("average"));

		
		boolean isTrue;

		isTrue = ResultDBUtil.updatestudentresult(studentName,admissionNo,year,classRoom,semester,sinhalaMarks,buddhismMarks,mathsMarks,scinceMarks,
				englishMarks,historyMarks,citizenEducationMarks,tamilMarks,geographyMarks,healthandphysicaleducationMarks,homeEconomicsMarks,aestheticsubjects,aestheticsubjectsMarks,totalMark,average);
		
		if(isTrue == true) {
			
			List<studentresult> sturDetails = ResultDBUtil.getStudentResultDetails(admissionNo);
			request.setAttribute("sturDetails", sturDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("R.jsp");
			dis.forward(request, response);
		}else
		{
			List<studentresult> sturDetails = ResultDBUtil.getStudentResultDetails(admissionNo);
			request.setAttribute("sturDetails", sturDetails);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("unsuccess.jsp");
			dis1.forward(request, response);
		}
	}

}
