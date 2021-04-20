package com.school;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ResultDBUtil{

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet sr = null;
//Insert Passenger Register Details
	
	public static boolean studentresult(String studnetName, String admissionNo, String year, String classRoom,
			String semester, String sinhlaMarks, String buddhismMarks,String mathsMarks,String scinceMarks,
			String englishMarks,String historyMarks,String citizenEducationMarks,String tamilMarks,String geographyMarks,String healthandphysicaleducationMarks,String homeEconomicsMarks,String aestheticsubjects,String aestheticsubjectsMarks, String totalMark, String average) {
			
		boolean isSuccess = false;
				
		try {
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
			String sql = "insert into studentresult values ('"+studnetName+"', '"+admissionNo+"', '"+year+"', '"+classRoom+"','"+semester+"', '"+sinhlaMarks+"','"+buddhismMarks+"', '"+mathsMarks+"','"+scinceMarks+"','"+englishMarks+"','"+historyMarks+"','"+citizenEducationMarks+"','"+tamilMarks+"','"+geographyMarks+"','"+healthandphysicaleducationMarks+"','"+homeEconomicsMarks+"','"+aestheticsubjects+"','"+aestheticsubjectsMarks+"','"+totalMark+"','"+average+"')";
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
					String studentName = sr.getString(1);
					String admissionNo = sr.getString(2);
					String year = sr.getString(3);
					String classRoom = sr.getString(4);
					String semester = sr.getString(5);
					String sinhalaMarks = sr.getString(6);
					String buddhismMarks = sr.getString(7);
					String mathsMarks = sr.getString(8);
					String scinceMarks = sr.getString(9);
					String englishMarks = sr.getString(10);
					String historyMarks = sr.getString(11);
					String citizenEducationMarks = sr.getString(12);
					String tamilMarks = sr.getString(13);
					String geographyMarks = sr.getString(14);
					String healthandphysicaleducationMarks = sr.getString(15);
					String homeeconomicsMarks = sr.getString(16);
					String aestheticSubjects = sr.getString(17);
					String aestheticsubjectMarks = sr.getString(18);
					String totalMark = sr.getString(19);
					String average = sr.getString(20);

					
					studentresult stu = new studentresult(studentName,admissionNo,year,classRoom,semester,sinhalaMarks,buddhismMarks,mathsMarks,scinceMarks,englishMarks,historyMarks,citizenEducationMarks,tamilMarks,geographyMarks,healthandphysicaleducationMarks,homeeconomicsMarks,aestheticSubjects,aestheticsubjectMarks,totalMark,average);
					studentResult.add(stu);
				}	
				
			}catch(Exception e) 
				{
				
				}
	return studentResult;
	
}

public static boolean updatestudentresult(String studnetName, String admissionNo, String year, String classRoom, String semester, String sinhalaMarks, String buddhismMarks, String mathsMarks, String scinceMarks, String englishMarks, String historyMarks, String citizenEducationMarks, String tamilMarks, String geographyMarks, String healthandphysicaleducationMarks, String homeeconomicsMarks, String aestheticSubjects, String aestheticsubjectMarks, String totalMark, String average) {
	
//create database connection
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update studentresult set studentName='"+studnetName+"', admissionNo='"+admissionNo+"', year='"+year+"', classRoom='"+classRoom+"',semester='"+semester+"', sinhalaMarks='"+sinhalaMarks+"', buddhismMarks='"+buddhismMarks+"', mathsMarks='"+mathsMarks+"', scinceMarks='"+scinceMarks+"', englishMarks='"+englishMarks+"', historyMarks='"+historyMarks+"', citizenEducationMarks='"+citizenEducationMarks+"', tamilMarks='"+tamilMarks+"', geographyMarks='"+geographyMarks+"', healthandphysicaleducationMarks='"+healthandphysicaleducationMarks+"', homeeconomicsMarks='"+homeeconomicsMarks+"', aestheticSubjects='"+aestheticSubjects+"', aestheticsubjectMarks='"+aestheticsubjectMarks+"', totalMark='"+totalMark+"', average='"+average+"'" + "where admissionNo='"+admissionNo+"'";
			
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

public static List<studentresult> getStudentResultDetails(String admissionNo){

int convertedadmissionNo = Integer.parseInt(admissionNo);

ArrayList<studentresult> studentResult = new ArrayList<>();

//create database connection

try {
	
	con = DBConnect.getConnection();
	stmt = con.createStatement();
	
	String sql ="select * from studentresult where admissionNo='"+convertedadmissionNo+"'";
	ResultSet sr = stmt.executeQuery(sql);
	
	while(sr.next()) {
		String studentName = sr.getString(1);
		String admissionno = sr.getString(2);
		String year = sr.getString(3);
		String classRoom = sr.getString(4);
		String semester = sr.getString(5);
		String sinhalaMarks = sr.getString(6);
		String buddhismMarks = sr.getString(7);
		String mathsMarks = sr.getString(8);
		String scinceMarks = sr.getString(9);
		String englishMarks = sr.getString(10);
		String historyMarks = sr.getString(11);
		String citizenEducationMarks = sr.getString(12);
		String tamilMarks = sr.getString(13);
		String geographyMarks = sr.getString(14);
		String healthandphysicaleducationMarks = sr.getString(15);
		String homeeconomicsMarks = sr.getString(16);
		String aestheticSubjects = sr.getString(17);
		String aestheticsubjectMarks = sr.getString(18);
		String totalMark = sr.getString(19);
		String average = sr.getString(20);

		
		studentresult stu = new studentresult(studentName,admissionno,year,classRoom,semester,sinhalaMarks,buddhismMarks,mathsMarks,scinceMarks,englishMarks,historyMarks,citizenEducationMarks,tamilMarks,geographyMarks,healthandphysicaleducationMarks,homeeconomicsMarks,aestheticSubjects,aestheticsubjectMarks,totalMark,average);
		studentResult.add(stu);
		
	}
	
	
}catch(Exception e) {
	e.printStackTrace();
}

return studentResult;
}



}
