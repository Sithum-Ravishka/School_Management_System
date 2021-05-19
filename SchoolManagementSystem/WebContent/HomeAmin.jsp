<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administrator view student management</title>
<link rel="stylesheet" type="text/css" href="CSS/home.css">
</head>
<body>
<div class= "header">
<img src="images/Picture1.png" class="logo" width="100px" height="120px"/>
<h1>Viddyadarsha Maha Vidyalaya</h1>
</div>

<div class = "side-navbar">
<a href = "#">Student Management</a>
<a href ="#">Class Management</a>
<a href ="#">Result Management</a>
<a href ="#">Attendance Management</a>
<a href ="#">Fees Management</a>
<a href ="#">Staff Management</a>
<a href="parent.jsp">Parent Management</a>
<a href ="#">Library Management</a>
</div>

<div class="displayMain">
<img src="images/student.png" class="student" width="200px" height="150px"/><a href = "ViewStudent.jsp" class="i">Student Profile</a>
<img src="images/registration-icon.png" class="class" width="200px" height="150px"/><a href ="InsertStudent.jsp" class="b">Student Registration</a>
<img src="images/images.png" class="res" width="200px" height="150px"/><a href ="Msg3.jsp" class="c">Search Student</a>
<img src="images/email-open.png" class="att" width="200px" height="150px"/><a href ="NewFile.jsp" class="d">Student Request</a>
</div>
</body>
</html>