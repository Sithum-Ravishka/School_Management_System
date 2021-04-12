package com.school;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Result_Insert extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;

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
		
		isTrue = ResultDBUtil.studentresult(studentName,admissionNo,year,classRoom,semester,sinhalaMarks,buddhismMarks,mathsMarks,scinceMarks,
				englishMarks,historyMarks,citizenEducationMarks,tamilMarks,geographyMarks,healthandphysicaleducationMarks,homeEconomicsMarks,aestheticsubjects,aestheticsubjectsMarks,totalMark,average);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Result_Insert.jsp");//Connect home page
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");//Connect home page
			dis2.forward(request, response);
		}
		
		
		
	}

}