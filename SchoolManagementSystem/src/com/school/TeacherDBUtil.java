package com.school;

import java.io.FileOutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class TeacherDBUtil {
	private static boolean isSuccess;
	
	public static List<Teacher>validate(String tId){
		
		ArrayList<Teacher> cus = new ArrayList<>();
		
		//Create database connection
		String dbURL = "jdbc:mysql://localhost:3306/school_management_systems";
	     String dbUser = "root";
	     String dbPass = "199808";
	     
	     Connection con = null;
		
	     try {
	    	 Class.forName("com.mysql.jdbc.Driver");
	    	   con = DriverManager.getConnection(dbURL, dbUser, dbPass);
	    
	    	    PreparedStatement ps = con.prepareStatement("select * from teacher where tId=?");
	    	    ps.setString(1, tId);
	    	    ResultSet rs = ps.executeQuery();
	    	 
	    	 
	    	 if(rs.next()) {
	    		 String fname = rs.getString(1);
	    		 String lname = rs.getString(2);
	    		 String mname = rs.getString(3);
	    		 String bdate = rs.getString(4);
	    		 String gen = rs.getString(5);
	    		 String tIdNo = rs.getString(6);
	    		 String nostreet = rs.getString(7);
	    		 String street2 = rs.getString(8);
	    		 String city = rs.getString(9);
	    		 String streetPro = rs.getString(10);
	    		 String pcode = rs.getString(11);
	    		 String email = rs.getString(12);
	    		 String con1 = rs.getString(13);
	    		 String con2 = rs.getString(14);
	    		 String fileName = "image.png";
	    		 String password = rs.getString(16);
	    		 String prosican = rs.getString(17);
	    		 
	    		 try (FileOutputStream fos = new FileOutputStream(fileName)) {

	                    Blob blob = rs.getBlob("Data");
	                    int len = (int) blob.length();

	                    byte[] buf = blob.getBytes(1, len);

	                    fos.write(buf, 0, len);

	                } catch (Exception ex) {

	                    Logger lgr = Logger.getLogger(TeacherDBUtil.class.getName());
	                    lgr.log(Level.SEVERE, ex.getMessage(), ex);
	                }
	    	       
	    		 Teacher s = new Teacher(fname,lname,mname,bdate,gen,tIdNo,nostreet,street2,city,streetPro,pcode,email,con1,con2,fileName,password,prosican);
	    		 cus.add(s);
	    	 }
	     }catch(Exception e) {
	    	 e.printStackTrace();
	     }
		
		return cus;
		
	}
	public static boolean updateCustomer(String fname, String mname, String lname, String bdate, String gen, String tId, String noStreet, String street2 ,
			String city, String streetPro, String pcode, String email,  String con1, String con2, String password, String prosican) {
		
		//Create database connection
		String dbURL = "jdbc:mysql://localhost:3306/school_management_systems";
	     String dbUser = "root";
	     String dbPass = "199808";
	     
	     Connection con = null;
	     
 		
	     
		try {
			 Class.forName("com.mysql.jdbc.Driver");
	    	 con = DriverManager.getConnection(dbURL, dbUser, dbPass);
	    	 Statement stmt = con.createStatement();
	    	 String sql = "update teacher set fname ='"+fname+"', mname='"+mname+"', lname='"+lname+"', bdate='"+bdate+"', gen='"+gen+"',tId='"+tId+"', noStreet='"+noStreet+"', street2='"+street2+"', city='"+city+"', "
	    	 		+ "streetPro='"+streetPro+"', pcode='"+pcode+"', email='"+email+"', con1='"+con1+"',con2='"+con2+"',password='"+password+"', prosican='"+prosican+"' where tId='"+tId+"'";
	    	 
	    	 int rs  = stmt.executeUpdate(sql);
	    	 if(rs > 0) {
	    		 isSuccess = true;
	    	 }else {
	    		 isSuccess = false;
	    	 }
	    	 
	    }catch(Exception e) {
	    	 e.printStackTrace();
	    }
		
		
		return isSuccess;	
	  }
	
	public static List<Teacher> getTeacherDetails(String tId){
		
		ArrayList<Teacher> stu = new ArrayList<>();
		
		//Create database connection
		String dbURL = "jdbc:mysql://localhost:3306/school_management_systems";
	     String dbUser = "root";
	     String dbPass = "199808";
	     
	     Connection con = null;
		
	     try {
	    	 Class.forName("com.mysql.jdbc.Driver");
	    	   con = DriverManager.getConnection(dbURL, dbUser, dbPass);
	    
	    	    PreparedStatement ps = con.prepareStatement("select * from teacher where tId=?");
	    	    ps.setString(1, tId);
	    	    ResultSet rs = ps.executeQuery();
	    	 
	    	 
	    	 if(rs.next()) {
	    		 String fname = rs.getString(1);
	    		 String lname = rs.getString(2);
	    		 String mname = rs.getString(3);
	    		 String bdate = rs.getString(4);
	    		 String gen = rs.getString(5);
	    		 String tIdNo = rs.getString(6);
	    		 String nostreet = rs.getString(7);
	    		 String street2 = rs.getString(8);
	    		 String city = rs.getString(9);
	    		 String streetPro = rs.getString(10);
	    		 String pcode = rs.getString(11);
	    		 String email = rs.getString(12);
	    		 String con1 = rs.getString(13);
	    		 String con2 = rs.getString(14);
	    		 String fileName = "image.png";
	    		 String password = rs.getString(16);
	    		 String prosican = rs.getString(17);
	    		 
	    		 try (FileOutputStream fos = new FileOutputStream(fileName)) {

	                    Blob blob = rs.getBlob("Data");
	                    int len = (int) blob.length();

	                    byte[] buf = blob.getBytes(1, len);

	                    fos.write(buf, 0, len);

	                } catch (Exception ex) {

	                    Logger lgr = Logger.getLogger(TeacherDBUtil.class.getName());
	                    lgr.log(Level.SEVERE, ex.getMessage(), ex);
	                }
	    	       
	    		 Teacher s = new Teacher(fname,lname,mname,bdate,gen,tIdNo,nostreet,street2,city,streetPro,pcode,email,con1,con2,fileName,password,prosican);
	    		 stu.add(s);
	    	 }
	     }catch(Exception e) {
	    	 e.printStackTrace();
	     }
		
		return stu;
	}
	public static boolean DeletTeacher(String tId) {
		

		//Create database connection
		String dbURL = "jdbc:mysql://localhost:3306/school_management_systems";
	     String dbUser = "root";
	     String dbPass = "199808";
	     
	     Connection con = null;
	     
	     //validate
		try {
			 Class.forName("com.mysql.jdbc.Driver");
	    	 con = DriverManager.getConnection(dbURL, dbUser, dbPass);
	    	 Statement stmt = con.createStatement();
	    	 String sql = "delete from teacher where tId ='"+tId+"'";
	    	 int r  = stmt.executeUpdate(sql);
	    	 
	    	 if(r > 0) {
	    		 isSuccess = true;
	    	 }else {
	    		 isSuccess = false; 
	    	 }
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//Password Validate
	
		public static List<Teacher> validate(String tId, String password){
				
				ArrayList<Teacher> stu = new ArrayList<>();
				
				//Create database connection
				
				String dbURL = "jdbc:mysql://localhost:3306/school_management_systems";
			     String dbUser = "root";
			     String dbPass = "199808";
			     
			     //validate
			     
			     Connection con = null;
			     
			     try {
			    	 Class.forName("com.mysql.jdbc.Driver");
			    	    con = DriverManager.getConnection(dbURL, dbUser, dbPass);
			    	    
			    	    PreparedStatement ps = con.prepareStatement("select * from teacher where tId='"+tId+"' and password='"+password+"'");
			    	    ResultSet rs = ps.executeQuery();
			    	 
			    	 
			    	 if(rs.next()) {
			    		 String fname = rs.getString(1);
			    		 String lname = rs.getString(2);
			    		 String mname = rs.getString(3);
			    		 String bdate = rs.getString(4);
			    		 String gen = rs.getString(5);
			    		 String tIdNo = rs.getString(6);
			    		 String nostreet = rs.getString(7);
			    		 String street2 = rs.getString(8);
			    		 String city = rs.getString(9);
			    		 String streetPro = rs.getString(10);
			    		 String pcode = rs.getString(11);
			    		 String email = rs.getString(12);
			    		 String con1 = rs.getString(13);
			    		 String con2 = rs.getString(14);
			    		 String fileName = "image.png";
			    		 String password1 = rs.getString(16);
			    		 String prosican = rs.getString(17);
			    		 
			    		 try (FileOutputStream fos = new FileOutputStream(fileName)) {

			                    Blob blob = rs.getBlob("Data");
			                    int len = (int) blob.length();

			                    byte[] buf = blob.getBytes(1, len);

			                    fos.write(buf, 0, len);

			                } catch (Exception ex) {

			                    Logger lgr = Logger.getLogger(TeacherDBUtil.class.getName());
			                    lgr.log(Level.SEVERE, ex.getMessage(), ex);
			                }
			    	       
			    		 Teacher s1 = new Teacher(fname,lname,mname,bdate,gen,tIdNo,nostreet,street2,city,streetPro,pcode,email,con1,con2,fileName,password1,prosican);
			    		 stu.add(s1);
			    	 }
			     }catch(Exception e) {
			    	 e.printStackTrace();
			     }
				
				return stu;
			}
		public static List<Teacher> SearchByName(String fnm, String mnm, String lnm) {
			// TODO Auto-generated method stub
			
			
			ArrayList<Teacher> cus = new ArrayList<>();

			//Create database connection
			String dbURL = "jdbc:mysql://localhost:3306/school_management_systems";
		     String dbUser = "root";
		     String dbPass = "199808";
		     
		     Connection con = null;
		     
		     try {
		    	 Class.forName("com.mysql.jdbc.Driver");
		    	 con = DriverManager.getConnection(dbURL, dbUser, dbPass);
		    	 PreparedStatement ps = con.prepareStatement("select * from teacher where fname='"+fnm+"' and mname='"+mnm+"' and lname='"+lnm+"'");
		    	 ResultSet rs = ps.executeQuery();
		    	 
		    	 if(rs.next()) {
		    		 String fname = rs.getString(1);
		    		 String lname = rs.getString(2);
		    		 String mname = rs.getString(3);
		    		 String bdate = rs.getString(4);
		    		 String gen = rs.getString(5);
		    		 String tIdNo = rs.getString(6);
		    		 String nostreet = rs.getString(7);
		    		 String street2 = rs.getString(8);
		    		 String city = rs.getString(9);
		    		 String streetPro = rs.getString(10);
		    		 String pcode = rs.getString(11);
		    		 String email = rs.getString(12);
		    		 String con1 = rs.getString(13);
		    		 String con2 = rs.getString(14);
		    		 String fileName = "image.png";
		    		 String password1 = rs.getString(16);
		    		 String prosican = rs.getString(17);
		    		 
		    		 try (FileOutputStream fos = new FileOutputStream(fileName)) {



		    			 Blob blob = rs.getBlob("Data");
		    			 int len = (int) blob.length();



		    			 byte[] buf = blob.getBytes(1, len);



		    			 fos.write(buf, 0, len);


		    			 } catch (Exception ex) {



		    			 Logger lgr = Logger.getLogger(TeacherDBUtil.class.getName());
		    			 lgr.log(Level.SEVERE, ex.getMessage(), ex);
		    			 }

		    		 Teacher h1 = new Teacher(fname,lname,mname,bdate,gen,tIdNo,nostreet,street2,city,streetPro,pcode,email,con1,con2,fileName,password1,prosican);
		    		 cus.add(h1);
		    			 }
		    			 }catch(Exception e) {
		    			 e.printStackTrace();
		    			 }

		    			 return cus;
		    			 
		}

 }
