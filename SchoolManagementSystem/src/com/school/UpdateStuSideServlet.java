package com.school;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateStuSideServlet")
public class UpdateStuSideServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String con1 = request.getParameter("con1");
        String con2 = request.getParameter("con2");
        String adNum = request.getParameter("Admission");
        
        boolean isTrue;
        
        isTrue = StudentDButil1.updateStuSide(adNum, email, con1, con2);
        
        if(isTrue == true) {
        	
        	List<Student> stu = StudentDButil1.getStudentDetails(adNum);
        	request.setAttribute("stu", stu);
        	
        	RequestDispatcher d11 = request.getRequestDispatcher("successStuPro.jsp");
        	d11.forward(request, response);
        }else {
        	
        	List<Student> stu = StudentDButil1.getStudentDetails(adNum);
        	request.setAttribute("stu", stu);
        	
        	RequestDispatcher d22 = request.getRequestDispatcher("successStuPro.jsp");
        	d22.forward(request, response);
        }
	}

}
