<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Login</title>
<link rel = "stylesheet" type = "text/css" href = "CSS/StudentLoginPage.css">
<script>
          
            // Function to check Whether both passwords
            // is same or not.
            function checkPassword(form) {
            	
            	pwd = form.pwd.value;
  
                // If password not entered
                if (pwd == ''){
                    alert ("Please enter Password");
                     return false;
                }
            }
        </script>
</head>
<body >
<div class= "header">
<img src="images/Picture1.png" class="logo" width="100px" height="120px"/>
<h1>Viddyadarsha Maha Vidyalaya</h1>
</div>

<div class = "side-navbar">
<a href = "#">Student Profile</a>
<a href ="#">Class Information</a>
<a href ="View_Result.jsp">Exam Results</a>
<a href ="#">Attendance Marks</a>
<a href ="#">Fees Details</a>
<a href ="#">Staff Details</a>
<a href="parent.jsp">Parent Details</a>
<a href ="#">Library Information</a>
</div>
<div class="StudentLoginPage" >
	<center><h2>Get Student Profile</h2></center>
		<form action="log" method="post" onSubmit = "return checkPassword(this)">
		<table width="576" align="center">
		    <tbody>
		      <tr>
		        <td width="201"><p>
		          <label class="lable"for="textfield">Admission No</label>
		          </p></td>
		        <td width="199"><p>
		          <label class="lable" for="textfield2"></label>
		          	<input type="text" name="addNo"><br>
		          	</p></td>
		      </tr>
		      <tr>
		        <td><label class="lable" for="textfield3">Password
		        </label></td>
		        <td><p>
		          <label for="textfield4"></label>
					    <input type="password" name="pwd"><br>
					    </p></td>
		      </tr>
      <table width="200" align="center">
    	<tbody>
      		<tr>
       		 <td><center><input type="submit" name="button" value="View"></center></td>
      	    </tr>
    	</tbody>
  	  </table>
  	</tbody>
</form>
</div>
</body>
</html>