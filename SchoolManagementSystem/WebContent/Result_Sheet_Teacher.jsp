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
				<c:set var="classRoom" value="${stu.classRoom}"/>
				<c:set var="semester" value="${stu.semester}"/>
				<c:set var = "admissionNo" value ="${stu.admissionNo}"/>
				<c:set var = "year" value ="${stu.year}"/>
				<c:set var = "sinhalaMarks" value ="${stu.sinhalaMarks}"/>
				<c:set var = "buddhismMarks" value ="${stu.buddhismMarks}"/>
				<c:set var = "mathsMarks" value ="${stu.mathsMarks}"/>
				<c:set var = "scinceMarks" value ="${stu.scinceMarks}"/>
				<c:set var = "englishMarks" value ="${stu.englishMarks}"/>
				<c:set var = "historyMarks" value ="${stu.historyMarks}"/>
				<c:set var = "citizenEducationMarks" value ="${stu.citizenEducationMarks}"/>
				<c:set var = "tamilMarks" value ="${stu.tamilMarks}"/>
				<c:set var = "geographyMarks" value ="${stu.geographyMarks}"/>
				<c:set var = "healthandPhysicalEducationMarks" value ="${stu.healthandPhysicalEducationMarks}"/>
				<c:set var = "homeEconomicsMarks" value ="${stu.homeEconomicsMarks}"/>
				<c:set var = "aestheticSubjects" value ="${stu.aestheticSubjects}"/>
				<c:set var = "aestheticsubjectMarks" value ="${stu.aestheticsubjectMarks}"/>
				<c:set var = "totalMark" value ="${stu.totalMark}"/>
				<c:set var = "average" value ="${stu.average}"/>



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
								<td align="center">${stu.healthandPhysicalEducationMarks}</td>
						</tr>
						<tr>
								<td align="center">Home Economics</td>
								<td align="center">${stu.homeEconomicsMarks}</td>
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
				
				<c:url value="Result_Update.jsp" var="stuupdate">
			
				<c:param name="studentName" value="${stu.studentName}"/>
				<c:param name="classRoom" value="${stu.classRoom}"/>
				<c:param name="semester" value="${stu.semester}"/>
				<c:param name="admissionNo" value ="${stu.admissionNo}"/>
				<c:param name="year" value ="${stu.year}"/>
				<c:param name="sinhalaMarks" value ="${stu.sinhalaMarks}"/>
				<c:param name="buddhismMarks" value ="${stu.buddhismMarks}"/>
				<c:param name="mathsMarks" value ="${stu.mathsMarks}"/>
				<c:param name="scinceMarks" value ="${stu.scinceMarks}"/>
				<c:param name="englishMarks" value ="${stu.englishMarks}"/>
				<c:param name="historyMarks" value ="${stu.historyMarks}"/>
				<c:param name="citizenEducationMarks" value ="${stu.citizenEducationMarks}"/>
				<c:param name="tamilMarks" value ="${stu.tamilMarks}"/>
				<c:param name="geographyMarks" value ="${stu.geographyMarks}"/>
				<c:param name="healthandPhysicalEducationMarks" value ="${stu.healthandPhysicalEducationMarks}"/>
				<c:param name="homeEconomicsMarks" value ="${stu.homeEconomicsMarks}"/>
				<c:param name="aestheticSubjects" value ="${stu.aestheticSubjects}"/>
				<c:param name="aestheticsubjectMarks" value ="${stu.aestheticsubjectMarks}"/>
				<c:param name="totalMark" value ="${stu.totalMark}"/>
				<c:param name="average" value ="${stu.average}"/>

			</c:url>
			
			<table><tr>
			<td>
			<div class="bt">
			<a href ="${stuupdate}">
			<input type ="button" name="update" value="UpdateData" class="btn">
			</a>
			</div>
			</td>
			
			
				<td>			
				<c:url value="deletepassenger.jsp" var="passDelete">
				
				<c:param name="studentName" value ="${stu.studentName}"/>
				<c:param name="classRoom" value ="${stu.classRoom}"/>
				<c:param name="semester" value ="${stu.semester}"/>
				<c:param name="admissionNo" value ="${stu.admissionNo}"/>
				<c:param name="year" value ="${stu.year}"/>
				<c:param name="sinhalaMarks" value ="${stu.sinhalaMarks}"/>
				<c:param name="buddhismMarks" value ="${stu.buddhismMarks}"/>
				<c:param name="mathsMarks" value ="${stu.mathsMarks}"/>
				<c:param name="scinceMarks" value ="${stu.scinceMarks}"/>
				<c:param name="englishMarks" value ="${stu.englishMarks}"/>
				<c:param name="historyMarks" value ="${stu.historyMarks}"/>
				<c:param name="citizenEducationMarks" value ="${stu.citizenEducationMarks}"/>
				<c:param name="tamilMarks" value ="${stu.tamilMarks}"/>
				<c:param name="geographyMarks" value ="${stu.geographyMarks}"/>
				<c:param name="healthandPhysicalEducationMarks" value ="${stu.healthandPhysicalEducationMarks}"/>
				<c:param name="homeEconomicsMarks" value ="${stu.homeEconomicsMarks}"/>
				<c:param name="aestheticSubjects" value ="${stu.aestheticSubjects}"/>
				<c:param name="aestheticsubjectMarks" value ="${stu.aestheticsubjectMarks}"/>
				<c:param name="totalMark" value ="${stu.totalMark}"/>
				<c:param name="average" value ="${stu.average}"/>
				
				</c:url>
					<div class="dbt">
					<a href ="${passDelete}"> 
					<input type ="button" name="delete" value="Delete Profile" class="btnd">
					</a>
					</div>
				</tbody>
		</table>
	 </c:forEach>
</form>
</body>
</html>