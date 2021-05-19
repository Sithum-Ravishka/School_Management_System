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


public class StudentDButil1 {
	private static boolean isSuccess;
    
	   
	public static List<Student> validate(String addNo) {
		
		ArrayList<Student> cus = new ArrayList<>();
		
		//Create database connection
		 String dbURL = "jdbc:mysql://localhost:3306/school_management_systems";
	     String dbUser = "root";
	     String dbPass = "199808";
	     
	     Connection con = null;
		
	     try {
	    	 Class.forName("com.mysql.jdbc.Driver");
	    	    con = DriverManager.getConnection(dbURL, dbUser, dbPass);
	    	    
	    	    PreparedStatement ps = con.prepareStatement("select * from contacts1 where addno=?");
	    	    ps.setString(1, addNo);
	    	    ResultSet rs = ps.executeQuery();
	    	 
	    	 
	    	 if(rs.next()) {
	    		 String fname = rs.getString(1);
	    		 String lname = rs.getString(2);
	    		 String mname = rs.getString(3);
	    		 String bdate = rs.getString(4);
	    		 String gen = rs.getString(5);
	    		 String add = rs.getString(6);
	    		 String gard = rs.getString(7);
	    		 String nostreet = rs.getString(8);
	    		 String street = rs.getString(9);
	    		 String cty = rs.getString(10);
	    		 String stpro = rs.getString(11);
	    		 String pcode = rs.getString(12);
	    		 String email = rs.getString(13);
	    		 String con1 = rs.getString(14);
	    		 String con2 = rs.getString(15);
	    		 String password = rs.getString(16);

	    	       
	    		 Student s = new Student(fname,lname,mname,bdate,gen,add,gard,nostreet,street,cty,stpro,pcode,email,con1,con2,password);
	    		 cus.add(s);
	    	 }
	     }catch(Exception e) {
	    	 e.printStackTrace();
	     }
		
		return cus;
		
	}
	public static boolean updateCustomer(String fnm, String mnm, String lnm, String bdt, String ggn, String adNum, String grd, String nst,
			String strt, String city, String stprov, String p_code, String emaill, String con_1, String con_2) {
		
		//Create database connection
		String dbURL = "jdbc:mysql://localhost:3306/school_management_systems";
	     String dbUser = "root";
	     String dbPass = "199808";
	     
	     
	     Connection con = null;
	     
 		
	     
		try {
			 Class.forName("com.mysql.jdbc.Driver");
	    	 con = DriverManager.getConnection(dbURL, dbUser, dbPass);
	    	 Statement stmt = con.createStatement();
	    	 String sql = "update contacts1 set fname ='"+fnm+"', mname='"+mnm+"', lname='"+lnm+"', bdate='"+bdt+"', gen='"+ggn+"',grade='"+grd+"', noStree='"+nst+"', street2='"+strt+"', city='"+city+"', "
	    	 		+ "statePro='"+stprov+"', pcode='"+p_code+"', email='"+emaill+"', con1='"+con_1+"',con2='"+con_2+"' where addno='"+adNum+"'";
	    	 
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
	
	public static List<Student> getStudentDetails(String adNum){
		
		ArrayList<Student> stu = new ArrayList<>();
		
		//Create database connection
		String dbURL = "jdbc:mysql://localhost:3306/school_management_systems";
	     String dbUser = "root";
	     String dbPass = "199808";
	     
	     
	     Connection con = null;
		try {
			 Class.forName("com.mysql.jdbc.Driver");
	    	 con = DriverManager.getConnection(dbURL, dbUser, dbPass);
	    	 Statement stmt = con.createStatement();
	    	 String sql = "Select * from contacts1 where addno ='"+adNum+"'";
	    	 ResultSet rs  = stmt.executeQuery(sql);
	    	 
	    	 while(rs.next()) {
	    		 String fname = rs.getString(1);
	    		 String lname = rs.getString(2);
	    		 String mname = rs.getString(3);
	    		 String bdate = rs.getString(4);
	    		 String gen = rs.getString(5);
	    		 String add = rs.getString(6);
	    		 String gard = rs.getString(7);
	    		 String nostreet = rs.getString(8);
	    		 String street = rs.getString(9);
	    		 String cty = rs.getString(10);
	    		 String stpro = rs.getString(11);
	    		 String pcode = rs.getString(12);
	    		 String email = rs.getString(13);
	    		 String con1 = rs.getString(14);
	    		 String con2 = rs.getString(15);
	    		 String password = rs.getString(17);
	    		 
	    		 Student s2 = new Student(fname,lname,mname,bdate,gen,add,gard,nostreet,street,cty,stpro,pcode,email,con1,con2,password);
	    		 stu.add(s2);
	    	 }
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return stu;
	}
	
	public static boolean deletStudent(String addNumB) {
		
		//Create database connection
		String dbURL = "jdbc:mysql://localhost:3306/school_management_systems";
	     String dbUser = "root";
	     String dbPass = "199808";
	     
	     
	     Connection con = null;
		try {
			 Class.forName("com.mysql.jdbc.Driver");
	    	 con = DriverManager.getConnection(dbURL, dbUser, dbPass);
	    	 Statement stmt = con.createStatement();
	    	 String sql = "delete from contacts1 where addno ='"+addNumB+"'";
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
	
	public static List<Student> validateLogin(String addNo,String password){
		
		ArrayList<Student> stu = new ArrayList<>();
		
		//Create database connection
		String dbURL = "jdbc:mysql://localhost:3306/school_management_systems";
	     String dbUser = "root";
	     String dbPass = "199808";
	     
	     
	     Connection con = null;
	     
	     try {
	    	 Class.forName("com.mysql.jdbc.Driver");
	    	    con = DriverManager.getConnection(dbURL, dbUser, dbPass);
	    	    
	    	    PreparedStatement ps = con.prepareStatement("select * from contacts1 where addno='"+addNo+"' and password='"+password+"'");
	    	    ResultSet rs = ps.executeQuery();
	    	 
	    	 
	    	 if(rs.next()) {
	    		 String fname = rs.getString(1);
	    		 String lname = rs.getString(2);
	    		 String mname = rs.getString(3);
	    		 String bdate = rs.getString(4);
	    		 String gen = rs.getString(5);
	    		 String add = rs.getString(6);
	    		 String gard = rs.getString(7);
	    		 String nostreet = rs.getString(8);
	    		 String street = rs.getString(9);
	    		 String cty = rs.getString(10);
	    		 String stpro = rs.getString(11);
	    		 String pcode = rs.getString(12);
	    		 String email = rs.getString(13);
	    		 String con1 = rs.getString(14);
	    		 String con2 = rs.getString(15);
	    		 String fileName = "image.png";
	    		 
	    		 try (FileOutputStream fos = new FileOutputStream(fileName)) {

	                    Blob blob = rs.getBlob("Data");
	                    int len = (int) blob.length();

	                    byte[] buf = blob.getBytes(1, len);

	                    fos.write(buf, 0, len);

	                } catch (Exception ex) {

	                    Logger lgr = Logger.getLogger(StudentDButil.class.getName());
	                    lgr.log(Level.SEVERE, ex.getMessage(), ex);
	                }
	    	       
	    		 Student s1 = new Student(fname,lname,mname,bdate,gen,add,gard,nostreet,street,cty,stpro,pcode,email,con1,con2,fileName);
	    		 stu.add(s1);
	    	 }
	     }catch(Exception e) {
	    	 e.printStackTrace();
	     }
		
		return stu;
	}
	
	public static boolean updateStuSide(String adNum,String emaill, String con_1, String con_2) {
		
		//Create database connection
		String dbURL = "jdbc:mysql://localhost:3306/school_management_systems";
	     String dbUser = "root";
	     String dbPass = "199808";
	     
	     
	     Connection con = null;
	      
		try {
			 Class.forName("com.mysql.jdbc.Driver");
	    	 con = DriverManager.getConnection(dbURL, dbUser, dbPass);
	    	 Statement stmt = con.createStatement();
	    	 String sql = "update contacts1 set email='"+emaill+"', con1='"+con_1+"',con2='"+con_2+"' where addno='"+adNum+"'";
	    	 
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
	
public static boolean updatePassword(String addn,String pswd) {
		
		//Create database connection
	String dbURL = "jdbc:mysql://localhost:3306/school_management_systems";
    String dbUser = "root";
    String dbPass = "199808";
    
	     
	     Connection con = null;
	      
		try {
			 Class.forName("com.mysql.jdbc.Driver");
	    	 con = DriverManager.getConnection(dbURL, dbUser, dbPass);
	    	 Statement stmt = con.createStatement();
	    	 String sql = "update contacts1 set password='"+pswd+"'where addno='"+addn+"'";
	    	 
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
public static List<Student> SearchByName(String fnm, String mnm, String lnm) {
	
	ArrayList<Student> cus = new ArrayList<>();
	
	//Create database connection
	String dbURL = "jdbc:mysql://localhost:3306/school_management_systems";
    String dbUser = "root";
    String dbPass = "199808";
    
     
     Connection con = null;
	
     try {
    	 Class.forName("com.mysql.jdbc.Driver");
    	    con = DriverManager.getConnection(dbURL, dbUser, dbPass);
    	    PreparedStatement ps = con.prepareStatement("select * from contacts1 where fname='"+fnm+"' and mname='"+mnm+"' and lname='"+lnm+"'");
    	    ResultSet rs = ps.executeQuery();
 
    	 if(rs.next()) {
    		 String fname = rs.getString(1);
    		 String lname = rs.getString(2);
    		 String mname = rs.getString(3);
    		 String bdate = rs.getString(4);
    		 String gen = rs.getString(5);
    		 String add = rs.getString(6);
    		 String gard = rs.getString(7);
    		 String nostreet = rs.getString(8);
    		 String street = rs.getString(9);
    		 String cty = rs.getString(10);
    		 String stpro = rs.getString(11);
    		 String pcode = rs.getString(12);
    		 String email = rs.getString(13);
    		 String con1 = rs.getString(14);
    		 String con2 = rs.getString(15);
    		 String fileName = "image.png";
    		 
    		 try (FileOutputStream fos = new FileOutputStream(fileName)) {

                    Blob blob = rs.getBlob("Data");
                    int len = (int) blob.length();

                    byte[] buf = blob.getBytes(1, len);

                    fos.write(buf, 0, len);

                } catch (Exception ex) {

                    Logger lgr = Logger.getLogger(StudentDButil.class.getName());
                    lgr.log(Level.SEVERE, ex.getMessage(), ex);
                }
    	       
    		 Student s = new Student(fname,lname,mname,bdate,gen,add,gard,nostreet,street,cty,stpro,pcode,email,con1,con2,fileName);
    		 cus.add(s);
    	 }
     }catch(Exception e) {
    	 e.printStackTrace();
     }
	
	return cus;
	
}
}
