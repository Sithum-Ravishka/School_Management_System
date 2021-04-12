<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>test</title>
</head>
<body>

	<c:forEach var="stu" items="${sturDetails}">
	
		${stu.id}
		${stu.studentName}
		${stu.admissionNo}
		${stu.year}
		${stu.classRoom}
		${stu.semester}
		${stu.sinhalaMarks}
		${stu.buddhismMarks}
		${stu.mathsMarks}
		${stu.scinceMarks}
		${stu.englishMarks}
		${stu.historyMarks}
		${stu.citizenEducationMarks}
		${stu.tamilMarks}
		${stu.geographyMarks}
		${stu.healthandPhysicalEducationMarks}
		${stu.homeEconomicsMarks}
		${stu.aestheticSubjects}
		${stu.aestheticsubjectMarks}
	
	</c:forEach>
</body>
</html>