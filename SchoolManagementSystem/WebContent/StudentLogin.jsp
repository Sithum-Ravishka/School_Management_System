<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Login</title>
<link rel = "stylesheet" type = "text/css" href = "css/StudentLoginPage.css">
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
<img id="background" src="img/SchoolSuppliesDarkGreyBackground.jpg ">
<div class="StudentLoginPage" >
	<center><h1>Student Login</h1></center>
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
       		 <td><center><input type="submit" name="button" value="Login"></center></td>
      	    </tr>
    	</tbody>
  	  </table>
  	</tbody>
</form>
</div>
</body>
</html>