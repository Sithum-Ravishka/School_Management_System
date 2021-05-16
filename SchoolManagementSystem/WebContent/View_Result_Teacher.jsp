<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Term Test Marks</title>

	<link rel = "stylesheet" type = "text/css" href = "CSS/View_Result.css">

</head>
<body>
<div class="img">
<form action="viewTeacher" class="form1" method="post">
		<table width="409" border="0" align="center" class= "header">
				<tbody>
						<tr >
								<td width="258" align="right" class="nam1">Vidyadharsha Maha Vidyalaya</td>
								<td width="60" align="center"><img src="Image/Picture1.png" class="logo" width="100px" height="120px"/></td>
								<td width="15" align="center" bgcolor="#FFFFFF" class="LogOut"><p><a href ="MainHome.jsp">Log Out</a></p></td>
						</tr>
				</tbody>
		</table>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
<div class = "side-navbar">		
		<table width="240" border="0" align="left">
					<tbody>
							<tr>
									<td align="center"><a href = "#">Student Management</a></td>
							</tr>
							<tr>
									<td align="center"><a href ="#">Class Management</a></td>
							</tr>
							<tr>
									<td align="center"><a href ="Result_Select.jsp">Result Management</a></td>
							</tr>
							<tr>
									<td align="center"><a href ="#">Attendance Management</a></td>
							</tr>
							<tr>
									<td align="center"><a href ="#">Fees Management</a></td>
							</tr>
							<tr>
									<td align="center"><a href ="#">Staff Management</a></td>
							</tr>
							<tr>
									<td align="center"><a href="parent.jsp">Parent Management</a></td>
							</tr>
							<tr>
									<td align="center"><a href ="#">Library Management</a></td>
							</tr>
					</tbody>
			</table>
	</div>		
	<div class="img1">
		<table width="559" border="0" align="center">
				<tbody>
						<tr>
								<td width="553" height="41" align="center"><label><span class="nam">Student Term Exam Marks</span><br>
								</label></td>
						</tr>
				</tbody>
		</table>
		<table width="900" border="0" align="center">
				<tbody>
						<tr>
								<td width="286" height="57" align="center"><input type="number" id="admissionNo" name="admissionNo" required="required" class="form-input1" placeholder="Student Admission No*"></td>
								<td width="300" align="center"><select id="classRoom" name="classRoom"  required="required" class="form-input1">
										<option selected hidden value="">Select (Class)</option>
										<option value="6A">6A</option>
										<option value="6B">6B</option>
								</select></td>
								<td width="300" align="center"><select id="semester" name="semester" required="required" class="form-input1">
										<option selected hidden value="">Select (Semester)</option>
										<option value="1st Semester">1st Semester</option>
										<option value="2st Semester">2st Semester</option>
										<option value="3st Semester">3st Semester</option>
								</select></td>
						</tr>
				</tbody>
		</table>
		<table width="200" border="0" align="center">
				<tbody>
						<tr>
								<td height="78" align="center"><input name="submit" type="submit" class="ButtonC" id="submit" value="Check Result"></td>
						</tr>
				</tbody>
		</table>
		</div>
</form>
</div>
</body>
</html>