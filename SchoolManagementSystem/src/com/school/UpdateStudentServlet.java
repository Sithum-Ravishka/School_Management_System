package com.school;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/UpdateStudentServlet")
public class UpdateStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("f");
        String middleName = request.getParameter("m");
        String lastName = request.getParameter("l");
        String bdate = request.getParameter("b");
        String gen = request.getParameter("gn");
        String add = request.getParameter("adn");
        String grd = request.getParameter("gd");
        String no = request.getParameter("n");
        String street = request.getParameter("s");
        String city = request.getParameter("cty");
        String statPro = request.getParameter("sp");
        String pcode = request.getParameter("pc");
        String email = request.getParameter("e");
        String con1 = request.getParameter("c1");
        String con2 = request.getParameter("c2");
        
        
        
        boolean isTrue;
        
        isTrue = StudentDButil1.updateCustomer(firstName, middleName, lastName, bdate, gen, add, grd, no, street, city, statPro, pcode, email, con1, con2);
        
        if(isTrue == true) {
        	
        	List<Student> cusD = StudentDButil1.getStudentDetails(add);
        	request.setAttribute("cusD", cusD);
        	
        	RequestDispatcher d1 = request.getRequestDispatcher("success.jsp");
        	d1.forward(request, response);
        }else {
        	
        	List<Student> cusD = StudentDButil1.getStudentDetails(add);
        	request.setAttribute("cusD", cusD);
        	
        	RequestDispatcher d2 = request.getRequestDispatcher("success.jsp");
        	d2.forward(request, response);
        }
	}
}


