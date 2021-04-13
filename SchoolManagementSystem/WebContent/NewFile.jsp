<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.sql.DriverManager"%>
					<%@page import="java.sql.ResultSet"%>
					<%@page import="java.sql.Statement"%>
					<%@page import="java.sql.Connection"%>
					
					
					<%
					
					String driverName = "com.mysql.jdbc.Driver";
					String url = "jdbc:mysql://localhost:3306/school_management_systems";
					String dbName = "auctionsystem";
					String user = "root";
					String pas = "199808";
					
					try {
						
							Class.forName(driverName);
					
						}catch(ClassNotFoundException e) 
						{
							e.printStackTrace();
						}
					
						Connection connection = null;
						Statement statement = null;
						ResultSet resultSet = null;
					%>
					<div class="deleteSearch">
						<form action="pDelete" method ="post">
								<table>
								<tr>
									<td>Enter User ID : <input type="text" class="input" name="uid"> <br></td>
								</tr>
								<tr> 
									<td class="btn1"><input type="submit" name="submit" class="btn" value="Delete User Account"></td>
									</tr>
								</table>
						</form>
					</div>
					
				<div class="tabl">
					<div class="us">USERS ACCOUNT</div>
					
					<table align="center" cellpadding="10" cellspacing="5" border="1">
					<tr>
					
					</tr>
					<tr bgcolor="#00ff00">
					<td padding="10"><b>Passenger ID</b></td>
					<td><b>User Name</b></td>
					<td><b>First Name</b></td>
					<td><b>Last Name</b></td>
					<td><b>Email</b></td>
					<td><b>Password</b></td>
					<td><b>Language</b></td>
					<td><b>District</b></td>
					<td><b>City</b></td>
					<td><b>LoginMode</b></td>
					</tr>
					<%
					try{ 
					connection = DriverManager.getConnection(url, user, pas);
					
					statement=connection.createStatement();
					
					String sql ="SELECT * FROM studentresult";
					
					resultSet = statement.executeQuery(sql);
					
					while(resultSet.next()){
					%>
					<tr bgcolor="#ffffff">
					
					<td><%=resultSet.getString("admissionNo") %></td>
					<td><%=resultSet.getString("studentName") %></td>
					<td><%=resultSet.getString("classRoom") %></td>
					<td><%=resultSet.getString("year") %></td>
					<td><%=resultSet.getString("semester") %></td>

					
					</tr>
					
					<% 
					}
					
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
		</table>
</body>
</html>