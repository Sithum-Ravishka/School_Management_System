<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result Sheet</title>

	<link rel = "stylesheet" type = "text/css" href = "CSS/Result_Sheet.css">



</head>
<body>
<form id="form1" class="form1" name="form1" method="post">


<c:forEach var="stu" items="${sturDetails}">

				<c:set var="studentName" value="${stu.studentName}"/>
				<c:set var="admissionNo" value ="${stu.admissionNo}"/>
				<c:set var="year" value ="${stu.year}"/>
				<c:set var="classRoom" value="${stu.classRoom}"/>
				<c:set var="semester" value="${stu.semester}"/>
				<c:set var="sinhalaMarks" value="${stu.sinhalaMarks}"/>
				<c:set var="buddhismMarks" value="${stu.buddhismMarks}"/>
				<c:set var="mathsMarks" value ="${stu.mathsMarks}"/>
				<c:set var="scinceMarks" value="${stu.scinceMarks}"/>
				<c:set var="englishMarks" value="${stu.englishMarks}"/>
				<c:set var="historyMarks" value="${stu.historyMarks}"/>
				<c:set var="citizenEducationMarks" value="${stu.citizenEducationMarks}"/>
				<c:set var="tamilMarks" value="${stu.tamilMarks}"/>
				<c:set var="geographyMarks" value="${stu.geographyMarks}"/>
				<c:set var="healthandphysicaleducationMarks" value="${stu.healthandphysicaleducationMarks}"/>
				<c:set var="homeeconomicsMarks" value ="${stu.homeeconomicsMarks}"/>
				<c:set var="aestheticSubjects" value="${stu.aestheticSubjects}"/>
				<c:set var="aestheticsubjectMarks" value="${stu.aestheticsubjectMarks}"/>
				<c:set var="totalMark" value="${stu.totalMark}"/>
				<c:set var="average" value="${stu.average}"/>

		<table width="28" border="0" align="right">
				<tbody>
						<tr>
								<td width="22" align="right" bgcolor="#FFFFFF"><input name="imageField" type="image" id="imageField" src="Image/Print.png" width="25" height="25"></td>
						</tr>
				</tbody>
		</table>
		<p>&nbsp;</p>
		<table width="401" border="0" align="center">
				<tbody>
						<tr>
								<td width="395" align="center" class="nam1">Your Exam Result</td>
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
								<td>Ananda Shashtralaya - matugama</td>
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
		<table width="176" border="0" align="right">
				<tbody>
						<tr align="right">
								<td width="170"><input name="Re-Check Request" type="button" class="ButtonC" id="Re-Check Request" value="Re-Check Request"></td>
						</tr>
				</tbody>
		</table>
			</c:forEach>
			</form>
			<c:url value="Result_Update.jsp" var="stuupdate">
			
				<c:param name="studentName" value="${studentName}"/>
				<c:param name="admissionNo" value ="${admissionNo}"/>
				<c:param name="year" value="${year}"/>
				<c:param name="classRoom" value="${classRoom}"/>
				<c:param name="semester" value="${semester}"/>
				<c:param name="sinhalaMarks" value="${sinhalaMarks}"/>
				<c:param name="buddhismMarks" value="${buddhismMarks}"/>
				<c:param name="mathsMarks" value="${mathsMarks}"/>
				<c:param name="scinceMarks" value="${scinceMarks}"/>
				<c:param name="englishMarks" value="${englishMarks}"/>
				<c:param name="historyMarks" value="${historyMarks}"/>
				<c:param name="citizenEducationMarks" value="${citizenEducationMarks}"/>
				<c:param name="tamilMarks" value="${tamilMarks}"/>
				<c:param name="geographyMarks" value="${geographyMarks}"/>
				<c:param name="healthandphysicaleducationMarks" value="${healthandphysicaleducationMarks}"/>
				<c:param name="homeeconomicsMarks" value="${homeeconomicsMarks}"/>
				<c:param name="aestheticSubjects" value="${aestheticSubjects}"/>
				<c:param name="aestheticsubjectMarks" value="${aestheticsubjectMarks}"/>
				<c:param name="totalMark" value="${totalMark}"/>
				<c:param name="average" value="${average}"/>

			</c:url>


			<a href="${stuupdate}">
			<input type ="button" name="update" value="UpdateData">
			</a>

</body>
</html>

