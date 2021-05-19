package com.school;

import java.io.IOException;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;



@MultipartConfig(maxFileSize = 16177215)
public class StuDataUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 private static final int BUFFER_SIZE = 4096;
	    // database connection settings
	    private String dbURL = "jdbc:mysql://localhost:3306/world";
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
		//get values of text fields
        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String bdate = request.getParameter("bdate");
        String gen = request.getParameter("gender");
        String add = request.getParameter("ad_Num");
        String grd = request.getParameter("grade");
        String no = request.getParameter("no");
        String street = request.getParameter("street2");
        String city = request.getParameter("city");
        String statPro = request.getParameter("state_p");
        String pcode = request.getParameter("pcode");
        String email = request.getParameter("email");
        String con1 = request.getParameter("cno1");
        String con2 = request.getParameter("cno2");
        String pwd = request.getParameter("cnPwd");
        InputStream inputStream = null; // input stream of the upload file
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo");
        inputStream = filePart.getInputStream();
        
        Connection conn = null; // connection to the database
        String message = null; // message will be sent back to client
        try {
            // connects to the database
            conn = getConnection();
            
            // constructs SQL statement
            String sql = "INSERT INTO contacts1 (fname, mname, lname,bdate,gen,addno,grade,noStree,street2,city,statePro,pcode,email,con1,con2,photo,password) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            
            //Using a PreparedStatement to save the file
            PreparedStatement pstmtSave = conn.prepareStatement(sql);
            pstmtSave.setString(1, firstName);
            pstmtSave.setString(2, middleName);
            pstmtSave.setString(3, lastName);
            pstmtSave.setString(4, bdate);
            pstmtSave.setString(5, gen);
            pstmtSave.setString(6, add);
            pstmtSave.setString(7, grd);
            pstmtSave.setString(8, no);
            pstmtSave.setString(9, street);
            pstmtSave.setString(10, city);
            pstmtSave.setString(11, statPro);
            pstmtSave.setString(12,pcode);
            pstmtSave.setString(13,email);
            pstmtSave.setString(14,con1);
            pstmtSave.setString(15,con2);
            pstmtSave.setBlob(16, inputStream);
            pstmtSave.setString(17,pwd);
            
            
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
            getServletContext().getRequestDispatcher("/Message.jsp")
                .include(request, response);
        }
    }
	
	
}
