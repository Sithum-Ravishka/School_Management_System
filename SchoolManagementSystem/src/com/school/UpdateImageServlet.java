package com.school;


import java.io.FileInputStream;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@MultipartConfig(maxFileSize = 16177215)
public class UpdateImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/world";
    private String dbUser = "root";
    private String dbPass = "12345";

   
    private Connection getConnection() {
        Connection conn = null;
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
        } catch (Exception e) {
            throw new RuntimeException("Failed to obtain database connection.", e);
        }
        
       
        return conn;
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String addNo = request.getParameter("addNo");
		InputStream inputStream = null;
        Part filePart = request.getPart("photo");
        inputStream = filePart.getInputStream(); 
        
        Connection conn = null; // connection to the database
        String message = null; // message will be sent back to client
        
        try {
            // connects to the database
            conn = getConnection();
            // constructs SQL statement
            String sql = "UPDATE contacts1 SET photo=? Where addno='"+addNo+"'";
            
            //Using a PreparedStatement to save the file
            PreparedStatement pstmtSave = conn.prepareStatement(sql);
            pstmtSave.setBlob(1, inputStream);
            
            int row = pstmtSave.executeUpdate();
            if (row > 0) {
                message = "Image updated into database";
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
            getServletContext().getRequestDispatcher("/ViewStudent.jsp")
                .include(request, response);
        }
        
    }


}
