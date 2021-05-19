package com.school;

import java.io.FileOutputStream;

import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class StudentDButil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet sr = null;

	    	 
	    	 
	  public static boolean validateLogin(String addNo,String password){
	    			
	    			//Validate
	    			try {
	    				con = DBConnect.getConnection();
	    				stmt = con.createStatement();
	    				String sql = "select * from contacts1 where addno='"+addNo+"' and password='"+password+"'";
	    				sr  = stmt.executeQuery(sql);
	    				
	    				if (sr.next()) {
	    					isSuccess = true;
	    				} else {
	    					isSuccess = false;
	    				}
	    				
	    			} catch (Exception e) {
	    				e.printStackTrace();
	    			}
	    			
	    			return isSuccess;
	    		}
}