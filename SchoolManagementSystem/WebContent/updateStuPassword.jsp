<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link rel = "stylesheet" type = "text/css" href = "CSS/StudentLogin.css">

	<script>
          
            // Function to check Whether both passwords
            // is same or not.
            function checkPassword(form) {
            	
                password1 = form.password1.value;
                password2 = form.password2.value;
  
                // If password not entered
                if (password1 == '')
                    alert ("Please enter Password");
                      
                // If confirm password not entered
                else if (password2 == '')
                    alert ("Please enter confirm password");
                      
                // If Not same return False.    
                else if (password1 != password2) {
                    alert ("\Password did not match: Please try again.")
                    return false;
                    
                }
  
                // If same return True.
                else{
                    alert("Password Match !!!")
                    return true;
                }
            }
        </script>
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
<%
			
			String password = request.getParameter("add");	

%>
<div class="Change-Password" >
<center><h2>Update Student Password</h2></center>
	<form action="changePswd" method="post" onSubmit = "return checkPassword(this)">
		<table width="576" align="center">
    <tbody>
      <tr>
        <td width="201"><p>
          <label class="lable"for="textfield">Admission No</label>
        </p></td>
        <td width="199"><p>
          <label class="lable" for="textfield2"></label>
          <input type="text" name="add" id="textfield2" value=<%=password%>>
        </p></td>
      </tr>
      <tr>
        <td><label class="lable" for="textfield3">New Password
        </label></td>
        <td><p>
          <label for="textfield4"></label>
          <input type="password" name="password1" id="pswd1">
        </p></td>
      </tr>
      <tr>
        <td><label class="lable" for="textfield5">Confirm Password
        </label></td>
        <td><p>
          <label for="textfield6"></label>
          <input type="password" name="password2" id="pswd2">
        </p></td>
      </tr>
    </tbody>
  	<table width="200" align="center">
    <tbody>
      <tr>
        <td><center><input type="submit" name="button" value="Change Password"></center></td>
      </tr>
      <tr>
        <td><center><input type="submit" name="button" value="Clear  Password"></center></td>
      </tr>
    </tbody>
  </table>
  </table>
	
	</form>
	</div>
</body>
</html>