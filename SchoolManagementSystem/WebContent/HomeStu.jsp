<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student view student management</title>
<link rel="stylesheet" type="text/css" href="CSS/home.css">
</head>
<body>
<div class= "header">
<img src="images/Picture1.png" class="logo" width="100px" height="120px"/>
<h1>Viddyadarsha Maha Vidyalaya</h1>
</div>

<div class = "side-navbar">
<a href = "HomeStu.jsp">Student Profile</a>
<a href ="#">Class Information</a>
<a href ="View_Result.jsp">Exam Results</a>
<a href ="#">Attendance Marks</a>
<a href ="#">Fees Details</a>
<a href ="#">Staff Details</a>
<a href="parent.jsp">Parent Details</a>
<a href ="#">Library Information</a>


</div>

<div class="displayMain">
<img src="images/student.png" class="student" width="200px" height="150px"/><a href = "getProfile.jsp" class="i">Student Profile</a>
<img src="images/registration-icon.png" class="class" width="200px" height="150px"/><a href ="AdvanceLevelStudentsRegistration.jsp" class="b">A/L Registration</a>
<img src="images/email-open.png" class="res" width="200px" height="150px"/><a href ="NewFile.jsp" class="c">Student Requests</a>

</div>
</body>
</html>