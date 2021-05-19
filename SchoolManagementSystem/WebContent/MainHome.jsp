<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>login page</title>
<link rel="stylesheet" type="text/css" href="CSS/login.css">
</head>
<body>
<div class = "side-navbar">
<a href = "MainHome.jsp">Home</a>
<a href ="#">About School</a>
<a href ="#">Administration</a>
<a href ="#">Co-Curicular</a>
<a href ="#">News</a>
<a href ="#">Contacts</a>
</div>
<div class= "header">
<img src="images/Picture1.png" class="logo" width="100px" height="120px"/>
<h1 class="namescl">Viddyadarsha Maha Vidyalaya</h1>
</div>


<h2 class="logTopic">. . . . Login . .  . .</h2>
<div class="login">
<form method="post" action="#">
<img src="images/addmin.png" class="addmin2" width="80px" height="80px"/>
	
	<label>User Name : </label><br>
	<input type="text" name="user" id="Uname"><br>
	
	<label>Password : </label><br>
	<input type="password" name="pass" id="pass"><br><br>
 
 <input type="submit" value="Login as Admin" id="log" class="admin"><br>
 
</form>
</div>



<div class="parantLog">
<form method="post" action="#">
<img src="images/perent.png" class="addmin" width="80px" height="80px"/>
	
	<label>User Name : </label>
	<input type="text" name="nic" id="nic"><br>
	
	<label>Password : </label>
	<input type="password" name="sid" id="sid"><br><br>
 
 <input type="submit" value="Login as Parent" id="log"><br>
</form>
</div>

<div class="StaffLog">
<form method="post" action="TeaLogin">
<img src="images/tech.png" class="addmin" width="80px" height="80px"/>
	
	<label>Teacher ID : </label>
	<input type="text" name="tId" id="tId" required="required"><br>
	
	<label>Password : </label>
	<input type="password" name="password" id="password" required="required"><br><br>
 
 <input type="submit" value="Login as Teacher" id="log"><br>
</form>
</div>



<div class="StudentLog">
<form method="post" action="add">
<img src="images/stu.png" class="addmin" width="80px" height="80px"/>
	
	<label>Admission No : </label>
<input type="text" name="addNo" id="addNo" required="required"><br>

<label>Password : </label>
<input type="password" name="pwd" id="pwd" required="required"><br><br>

<input type="submit" value="Login as Student" id="log"><br>
</form>
</div>
<img src="images/school.png" class="school" width="40%" height="50%"/>



<div class="footer-main-div">
<div class="footer-social-icons">
<ul>
	<li><a href="#" target="blank"><i class="fa fa-facebook"></i></a></li>
	<li><a href="#" target="blank"><i class="fa fa-youtube"></i></a></li>
	<li><a href="#" target="blank"><i class="fa fa-email"></i></a></li>
	
</ul>


</div>
</div>
</body>
</html>