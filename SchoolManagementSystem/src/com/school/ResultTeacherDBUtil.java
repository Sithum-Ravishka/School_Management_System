package com.school;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class ResultTeacherDBUtil{

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet sr = null;
	
	
	public static boolean studentresult(String studnetName, String admissionNo, String year, String classRoom,
			String semester, String sinhlaMarks, String buddhismMarks,String mathsMarks,String scinceMarks,
			String englishMarks,String historyMarks,String citizenEducationMarks,String tamilMarks,String geographyMarks,String healthandphysicaleducationMarks,String homeEconomicsMarks,String aestheticsubjects,String aestheticsubjectsMarks, int totalMark, double average) {
			
		boolean isSuccess = false;
				
		try {
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
			String sql = "insert into studentresult values (0,'"+studnetName+"', '"+admissionNo+"', '"+year+"', '"+classRoom+"','"+semester+"', '"+sinhlaMarks+"','"+buddhismMarks+"', '"+mathsMarks+"','"+scinceMarks+"','"+englishMarks+"','"+historyMarks+"','"+citizenEducationMarks+"','"+tamilMarks+"','"+geographyMarks+"','"+healthandphysicaleducationMarks+"','"+homeEconomicsMarks+"','"+aestheticsubjects+"','"+aestheticsubjectsMarks+"','"+totalMark+"','"+average+"')";
			int sr = stmt.executeUpdate(sql);
					
					if(sr > 0) {
						isSuccess = true;
					}else
					{
						isSuccess = false;
					}
					
				}catch(Exception e) {
					e.printStackTrace();
				}
		return isSuccess;			
	}
	
	
	
public static boolean validate(String admissionNo, String classRoom, String semester){
		
		//Validate
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from studentresult where admissionNo='"+admissionNo+"' and classRoom='"+classRoom+"' and semester='"+semester+"'";
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
	
public static List<studentresult> getstudentresult(String admissionno){
		
		ArrayList<studentresult> studentResult =  new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
					String sql = "select * from studentresult where admissionNo='"+admissionno+"'";
					sr = stmt.executeQuery(sql);
					
					while (sr.next()) 
					{
						int id = sr.getInt(1);
						String studentName = sr.getString(2);
						String admissionNo = sr.getString(3);
						String year = sr.getString(4);
						String classRoom = sr.getString(5);
						String semester = sr.getString(6);
						String sinhalaMarks = sr.getString(7);
						String buddhismMarks = sr.getString(8);
						String mathsMarks = sr.getString(9);
						String scinceMarks = sr.getString(10);
						String englishMarks = sr.getString(11);
						String historyMarks = sr.getString(12);
						String citizenEducationMarks = sr.getString(13);
						String tamilMarks = sr.getString(14);
						String geographyMarks = sr.getString(15);
						String healthandPhysicalEducationMarks = sr.getString(16);
						String homeEconomicsMarks = sr.getString(17);
						String aestheticSubjects = sr.getString(18);
						String aestheticsubjectMarks = sr.getString(19);
						int totalMark = sr.getInt(20);
						double average = sr.getInt(21);
						
						studentresult stu = new studentresult(id,studentName,admissionNo,year,classRoom,semester,sinhalaMarks,buddhismMarks,mathsMarks,scinceMarks,englishMarks,historyMarks,citizenEducationMarks,tamilMarks,geographyMarks,healthandPhysicalEducationMarks,homeEconomicsMarks,aestheticSubjects,aestheticsubjectMarks,totalMark,average);
						studentResult.add(stu);
					}	
					
				}catch(Exception e) 
					{
					
					}
		return studentResult;
		
	}

public static boolean updatestudentresult(String studnetName, String admissionNo, String year, String classRoom,
		String semester, String sinhlaMarks, String buddhismMarks,String mathsMarks,String scinceMarks,
		String englishMarks,String historyMarks,String citizenEducationMarks,String tamilMarks,String geographyMarks,String healthandphysicaleducationMarks,String homeEconomicsMarks,String aestheticsubjects,String aestheticsubjectsMarks, int totalMark, double average) {
		
	//create database connection
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "update studentresult set(0,'"+studnetName+"', '"+admissionNo+"', '"+year+"', '"+classRoom+"','"+semester+"', '"+sinhlaMarks+"','"+buddhismMarks+"', '"+mathsMarks+"','"+scinceMarks+"','"+englishMarks+"','"+historyMarks+"','"+citizenEducationMarks+"','"+tamilMarks+"','"+geographyMarks+"','"+healthandphysicaleducationMarks+"','"+homeEconomicsMarks+"','"+aestheticsubjects+"','"+aestheticsubjectsMarks+"','"+totalMark+"','"+average+"')" + "where admissionNo ='"+admissionNo+"'";
				
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else
				{
					isSuccess = false;
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
	
	return isSuccess;
}

public static List<studentresult> getStudentResultDetails(String admissionno){
	
	int converteadmissionno = Integer.parseInt(admissionno);
	
	ArrayList<studentresult> studentResult = new ArrayList<>();
	
	//create database connection
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql ="select * from studentresult where admissionNo='"+converteadmissionno+"'";
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = sr.getInt(1);
			String studentName = sr.getString(2);
			String admissionNo = sr.getString(3);
			String year = sr.getString(4);
			String classRoom = sr.getString(5);
			String semester = sr.getString(6);
			String sinhalaMarks = sr.getString(7);
			String buddhismMarks = sr.getString(8);
			String mathsMarks = sr.getString(9);
			String scinceMarks = sr.getString(10);
			String englishMarks = sr.getString(11);
			String historyMarks = sr.getString(12);
			String citizenEducationMarks = sr.getString(13);
			String tamilMarks = sr.getString(14);
			String geographyMarks = sr.getString(15);
			String healthandPhysicalEducationMarks = sr.getString(16);
			String homeEconomicsMarks = sr.getString(17);
			String aestheticSubjects = sr.getString(18);
			String aestheticsubjectMarks = sr.getString(19);
			int totalMark = sr.getInt(20);
			double average = sr.getInt(21);
			
			studentresult stu = new studentresult(id,studentName,admissionNo,year,classRoom,semester,sinhalaMarks,buddhismMarks,mathsMarks,scinceMarks,englishMarks,historyMarks,citizenEducationMarks,tamilMarks,geographyMarks,healthandPhysicalEducationMarks,homeEconomicsMarks,aestheticSubjects,aestheticsubjectMarks,totalMark,average);
			studentResult.add(stu);
			
		}
		
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return studentResult;
}


}
