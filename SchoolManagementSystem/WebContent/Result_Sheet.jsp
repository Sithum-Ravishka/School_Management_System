<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result Sheet</title>

	<link rel = "stylesheet" type = "text/css" href = "CSS/Result_Sheet.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<script type="text/javascript"></script>


<form id="form1" class="fo" name="form1" method="post">



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
									<td align="center"><a href = "HomeStu.jsp">Student Management</a></td>
							</tr>
							<tr>
									<td align="center"><a href ="#">Class Management</a></td>
							</tr>
							<tr>
									<td align="center"><a href ="View_Result.jsp">Result Management</a></td>
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

<c:forEach var="stu" items="${sturDetails}">

		<table width="28" border="0" align="right">
				<tbody>
						<tr>
								<td width="22" align="right" bgcolor="#FFFFFF"></td>
						</tr>
				</tbody>
		</table>
		<p>&nbsp;</p>
		<table width="401" border="0" align="center">
				<tbody>
						<tr>
								<td width="395" align="center" class="nam11">Your Exam Result</td>
						</tr>
				</tbody>
		</table>
		<p>&nbsp;</p>
		<table width="1150" border="1" align="center" class="table1">
				<tbody>
						<tr>
								<td width="148">Student Name :</td>
								<td width="256">${stu.studentName}</td>
								<td width="148">Class :</td>
								<td width="231">${stu.classRoom}</td>
								<td width="148">Semester :</td>
								<td width="179">${stu.semester}</td>
						</tr>
						<tr>
								<td>School Name :</td>
								<td>A/ Vidyadharsha Central College</td>
								<td>Admission No :</td>
								<td>${stu.admissionNo}</td>
								<td>Year :</td>
								<td>${stu.year}</td>
						</tr>
				</tbody>
		</table>
		<p>&nbsp;</p>
		<table class="table2" width="602" height="371" border="1" align="center" cellspacing="0.5">
				<tbody>
						<tr>
								<td width="365" align="center" bgcolor="#000000"><p class="nam">Subject</p></td>
								<td width="227" align="center" bgcolor="#000000"><p class="nam">Marks</p></td>
						</tr>
						<tr>
								<td align="center">Sinhala</td>
								<td align="center">${stu.sinhalaMarks}</td>
						</tr>
						<tr>
								<td align="center">Buddhism</td>
								<td align="center">${stu.buddhismMarks}</td>
						</tr>		
						<tr>
								<td align="center">Maths</td>
								<td align="center">${stu.mathsMarks}</td>
						</tr>
						<tr>
								<td align="center">Scince</td>
								<td align="center">${stu.scinceMarks}</td>
						</tr>
						<tr>
								<td align="center">English</td>
								<td align="center">${stu.englishMarks}</td>
						</tr>
						<tr>
								<td align="center">History</td>
								<td align="center">${stu.historyMarks}</td>
						</tr>
						<tr>
								<td align="center">Citizen Education</td>
								<td align="center">${stu.citizenEducationMarks}</td>
						</tr>
						<tr>
								<td align="center">Tamil</td>
								<td align="center">${stu.tamilMarks}</td>
						</tr>
						<tr>
								<td align="center">Geography</td>
								<td align="center">${stu.geographyMarks}</td>
						</tr>
						<tr>
								<td align="center">Health & physical education</td>
								<td align="center">${stu.healthandphysicaleducationMarks}</td>
						</tr>
						<tr>
								<td align="center">Home Economics</td>
								<td align="center">${stu.homeeconomicsMarks}</td>
						</tr>
						<tr>
								<td align="center">${stu.aestheticSubjects}</td>
								<td align="center">${stu.aestheticsubjectMarks}</td>
						</tr>
						<tr>
								<td align="center" bgcolor="#000000" class="nam">Total Marks</td>
								<td align="center">${stu.totalMark}</td>
						</tr>
						<tr>
								<td align="center" bgcolor="#000000" class="nam">Average</td>
								<td align="center">${stu.average}</td>
						</tr>
				</tbody>
		</table>
		<p>&nbsp;</p>
		
			</c:forEach>
		</div>
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.0.272/jspdf.debug.js"></script>
<script src="JS/Result_Sheet.js"></script>

<table width="200" border="0" align="center"class="img2">
		<tbody>
				<tr>
						<td align="center"><button class="ButtonC" id="btn"><i class="fa fa-print"></i></button></td>
						<td align="center"><a href ="ResultRecheck.jsp">Re-Check Request</a></td>
				</tr>
								
				</tbody>
</table>
</body>
</html>