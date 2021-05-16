<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Exam Result Update</title>

	<link rel = "stylesheet" type = "text/css" href = "CSS/Result_Update.css">

</head>
<body>
<% 
		String studentName = request.getParameter("studentName");
		String admissionNo = request.getParameter("admissionNo");
		String year = request.getParameter("year");
		String classRoom = request.getParameter("classRoom");
		String semester = request.getParameter("semester");
		String sinhalaMarks = request.getParameter("sinhalaMarks");
		String buddhismMarks = request.getParameter("buddhismMarks");
		String mathsMarks = request.getParameter("mathsMarks");
		String scinceMarks = request.getParameter("scinceMarks");
		String englishMarks = request.getParameter("englishMarks");
		String historyMarks = request.getParameter("historyMarks");
		String citizenEducationMarks = request.getParameter("citizenEducationMarks");
		String tamilMarks = request.getParameter("tamilMarks");
		String geographyMarks = request.getParameter("geographyMarks");
		String healthandphysicaleducationMarks = request.getParameter("healthandphysicaleducationMarks");
		String homeeconomicsMarks = request.getParameter("homeeconomicsMarks");
		String aestheticSubjects = request.getParameter("aestheticSubjects");
		String aestheticsubjectMarks = request.getParameter("aestheticsubjectMarks");
		String totalMark = request.getParameter("totalMark");
		String average = request.getParameter("average");
%>
<form action="update" class="form1" id="form1" name="form1" method="post">
<table width="409" border="0" align="center" class= "header"cellpadding="0" cellspacing="10">
				<tbody>
						<tr >
								<td width="258" align="right" class="nam1">Vidyadharsha Maha Vidyalaya</td>
								<td width="141" align="center"><img src="Image/Picture1.png" class="logo" width="100px" height="120px"/></td>
								<td width="15" align="center" bgcolor="#FFFFFF" class="LogOut"><p><a href ="MainHome.jsp">Log Out</a></p></td>
						</tr>
				</tbody>
	</table>

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
	<div class="img">
		<center><p class="nam"> Insert Exam Results Of Student</p></center>
		<table width="1095" border="0" align="center" cellpadding="0" cellspacing="10">
				<tbody>
						<tr>
								<td width="360">  <input type="text" name="studentName" value="<%= studentName %>" required="required" class="form-input"></td>
								<td width="360"><input type="text" name="admissionNo" value="<%= admissionNo %>" required="required" class="form-input" ></td>
								<td width="360"><input type="number" name="year" value="<%= year %>" required="required" class="form-input" max="2020" min="2002"></td>
						</tr>
						<tr>
								<td><select name="classRoom"  required="required" class="form-input">
										<option ><%= classRoom %></option>
										<option value="6A">6A</option>
										<option value="6B">6B</option>
								</select></td>
								<td>&nbsp;</td>
								<td><select name="semester"  required="required" class="form-input">
										<option ><%= semester %></option>
										<option value="1st Semester">1st Semester</option>
										<option value="2st Semester">2st Semester</option>
										<option value="3st Semester">3st Semester</option>
								</select></td>
						</tr>
				</tbody>
		</table>
		<p>&nbsp;</p>
		<table width="602" height="371" border="0" align="center" cellspacing="5">
				<tbody>
						<tr>
								<td width="358" align="center">
									    <p><strong>Subject</strong></p>
								</td>
								<td width="225" align="center">
										<p><strong>Marks</strong></p>
								</td>
						</tr>
						<tr>
								<td align="center">Sinhala</td>
								<td align="center"><input name="sinhalaMarks" value="<%= sinhalaMarks %>" type="number" step="any" class="marks-input" id="SinhalaMarks" required="required"  max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Buddhism</td>
								<td align="center"><input name="buddhismMarks" value="<%= buddhismMarks %>" type="number" class="marks-input" id="BuddhismMarks" required="required"  max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Maths</td>
								<td align="center"><input name="mathsMarks" value="<%= mathsMarks %>" type="number" class="marks-input" id="MathsMarks" required="required"  max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Scince</td>
								<td align="center"><input name="scinceMarks" value="<%= scinceMarks %>" type="number" class="marks-input" id="ScinceMarks" required="required"  max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">English</td>
								<td align="center"><input name="englishMarks" value="<%= englishMarks %>" type="number" class="marks-input" id="EnglishMarks" required="required"  max="100" min="0" ></td>
						</tr>
						<tr>
								<td align="center">History</td>
								<td align="center"><input name="historyMarks" value="<%= historyMarks %>" type="number" class="marks-input" id="HistoryMarks" required="required"  max="100" min="0" ></td>
						</tr>
						<tr>
								<td align="center">Citizen Education</td>
								<td align="center"><input name="citizenEducationMarks" value="<%= citizenEducationMarks %>" type="number" id="CitizenEducationMarks" class="marks-input" required="required" max="100" min="0" ></td>
						</tr>
						<tr>
								<td align="center">Tamil</td>
								<td align="center"><input name="tamilMarks" value="<%= tamilMarks %>" type="number" class="marks-input" id="TamilMarks" required="required" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Geography</td>
								<td align="center"><input name="geographyMarks" value="<%= geographyMarks %>" type="number" class="marks-input" id="GeographyMarks" required="required" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Health and physical education</td>
								<td align="center"><input name="healthandphysicaleducationMarks" value="<%= healthandphysicaleducationMarks %>" type="number" id="HealthandphysicaleducationMarks" class="marks-input" required="required" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Home Economics</td>
								<td align="center"><input name="homeeconomicsMarks" value="<%= homeeconomicsMarks %>" type="number" id="HomeEconomicsMarks" class="marks-input" required="required"  max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center"><select name="aestheticSubjects" id="Aestheticsubjects" class="form-input1" required="required" >
										<option><%= aestheticSubjects %></option>
										<option value="Art">Art</option>
										<option value="Dance">Dance</option>
										<option value="Music">Music</option>
								</select></td>
								<td align="center"><input name="aestheticsubjectMarks" value="<%= aestheticsubjectMarks %>" type="number" id="AestheticsubjectsMarks" class="marks-input" required="required" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Total Mark</td>
								<td align="center"><input name="totalMark" value="<%= totalMark %>" type="text" id="totalMark" required="required" class="marks-input"readonly="readonly" /></td>
						</tr>
						<tr>
								<td align="center">Average Mark</td>
								<td align="center"><input name="average" value="<%= average %>" type="text" id="average" required="required" class="marks-input" step="0.01" pattern="^\d+(?:\.\d{1,2})?$" readonly="readonly"/></td>
						</tr>
				</tbody>
		</table>
		<table width="260" border="0" align="center">
				<tbody>
						<tr>
								<td width="254" height="84" align="center"><input name="Sumbit" type="button" class="ButtonC" onClick="javascript:addNumbers()" value="Calculate"/></td>
						</tr>
				</tbody>
		</table>
		<table width="420" border="0" align="center">
				<tbody>
						<tr>
								<td width="140" align="center"><input type="submit" class="ButtonC" name="submit" value="Update My Data"></td>
								<td width="170" align="center"><button class="ButtonC"><a href ="Result_Sheet_Teacher.jsp"></a>Back</button></td>
						</tr>
				</tbody>
		</table>
		<p>&nbsp;</p>
</form>
</div>
</body>
<script src="JS/Result_Insert.js"></script>
</html>