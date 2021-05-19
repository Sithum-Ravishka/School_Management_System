<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href = "CSS/Message.css">
<script>
          
            // Function to check Whether both passwords
            // is same or not.
            function checkAddn(form) {
            	
            	addNo = form.addNo.value;
  
                // If password not entered
                if (addNo == ''){
                    alert ("Please enter Admission Number");
                     return false;
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
<div class="view" >
<center><h3>Successfully registered: ${message}</h3></center>
	<form action="tom" method="post" onSubmit = "return checkAddn(this)">
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
		          </tbody>
  	  </table>
  	  <table width="200" align="center">
    	<tbody>
      		<tr>
       		 <td><center><input type="submit" name="submit" value="Search"></center></td>
      	    </tr>
    	</tbody>
  	  </table>
  	</tbody>
</form>
</div>
</body>
</html>
</body>
</html>