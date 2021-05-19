package com.school;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/adavanceLevelStudentRegServlet")
public class adavanceLevelStudentRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 private static final int BUFFER_SIZE = 4096;
	    // database connection settings
	    private String dbURL = "jdbc:mysql://localhost:3306/student";
	    private String dbUser = "root";
	    private String dbPass = "12345";

	    //naive way to obtain a connection to database
	    //this MUST be improved, shown for 
	    private Connection getConnection() {
	        Connection conn = null;
	        try {
	            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
	        } catch (Exception e) {
	            //wrapping any exception and rethrowing it
	            //inside a RuntimeException
	            //so the method is silent to exceptions
	            throw new RuntimeException("Failed to obtain database connection.", e);
	        }
	        return conn;
	    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstName = request.getParameter("first");
        String middleName = request.getParameter("middle");
        String lastName = request.getParameter("last");
        String bdate = request.getParameter("date");
        String gen = request.getParameter("gender");
        String olIndex = request.getParameter("olindex");
        String olyear = request.getParameter("olyear");
        String alYear = request.getParameter("alyear");
        String alStream = request.getParameter("exstream");
        String lan = request.getParameter("results1");
        String eng = request.getParameter("results2");
        String math = request.getParameter("results3");
        String his = request.getParameter("results4");
        String science = request.getParameter("results5");
        String budd = request.getParameter("results6");
        String s1 = request.getParameter("results7");
        String s2 = request.getParameter("results8");
        String s3 = request.getParameter("results9");
        String noStreet = request.getParameter("nostreet");
        String street2 = request.getParameter("street2");
        String city = request.getParameter("city");
        String stPro = request.getParameter("stpro");
        String pcode = request.getParameter("pcode");
        String emai1 = request.getParameter("email");
        String c1 = request.getParameter("c1");
        String c2 = request.getParameter("c2");
	
        
        Connection conn = null; // connection to the database
        String message = null; // message will be sent back to client
        try {
            // connects to the database
            conn = getConnection();
            
            // constructs SQL statement
            String sql = "INSERT INTO advancelevelreg (first, middle, last, bdate, gen, olIndex, olYear, stream, lang, eng, math, history, sciense, Buddhism, Subject_1, Subject_2, Subject_3, noStreet, street2, city, statePro, pcode, email, c1, c2, alYear) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            
            //Using a PreparedStatement to save the file
            PreparedStatement pstmtSave = conn.prepareStatement(sql);
            pstmtSave.setString(1, firstName);
            pstmtSave.setString(2, middleName);
            pstmtSave.setString(3, lastName);
            pstmtSave.setString(4, bdate);
            pstmtSave.setString(5, gen);
            pstmtSave.setString(6, olIndex);
            pstmtSave.setString(7, olyear);
            pstmtSave.setString(8, alStream);
            pstmtSave.setString(9, lan);
            pstmtSave.setString(10, eng);
            pstmtSave.setString(11, math);
            pstmtSave.setString(12,his);
            pstmtSave.setString(13,science);
            pstmtSave.setString(14,budd);
            pstmtSave.setString(15,s1);
            pstmtSave.setString(16, s2);
            pstmtSave.setString(17,s3);
            pstmtSave.setString(18, noStreet);
            pstmtSave.setString(19, street2);
            pstmtSave.setString(20, city);
            pstmtSave.setString(21,stPro);
            pstmtSave.setString(22,pcode);
            pstmtSave.setString(23,emai1);
            pstmtSave.setString(24,c1);
            pstmtSave.setString(25, c2);
            pstmtSave.setString(26,alYear);
            
            
            //sends the statement to the database server
            int row = pstmtSave.executeUpdate();
            if (row > 0) {
                message = "Data saved into database";
            } 
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    //silent
                }
            }
            // sets the message in request scope
            request.setAttribute("message", message);

            // forwards to the message page
            getServletContext().getRequestDispatcher("/Message2.jsp")
                .include(request, response);
        }
	}

}
