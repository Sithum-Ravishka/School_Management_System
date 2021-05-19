<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Student Profile</title>
<link rel = "stylesheet" type = "text/css" href = "CSS/StudentView.css">
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
<form id="form1" action="name" method="post">
  <center><h3>Search Student </h3></center>
 <center> <p>By Name </p>
  <table width="703">
     <tbody>
       <tr>
         <td width="180"><p>
           <label for="textfield"></label>
           <input type="text" name="fname" id="textfield" placeholder="First">
         </p></td>
         <td width="180"><p>
           <label for="textfield2"></label>
           <input type="text" name="mname" id="textfield2" placeholder="Middle">
         </p></td>
         <td width="180"><p>
           <label for="textfield3"></label>
             <input type="text" name="lname" id="textfield3" placeholder="Last">
         </p></td>
       </tr>
     </tbody>
   </table>
   <table width="200" align="center">
     <tbody>
       <tr>
         <td><center><input type="submit" name="button" id="button" value="Search"></center></td>
       </tr>
     </tbody>
   </table> 
 </center>
</form>
	<br>
	<form action="tom" method="post" onSubmit = "return checkAddn(this)">
	<center><p>By Admission Number</p></center>
		<br>
	<table width="240" align="center">
	  <tbody>
	    <tr>
	      <td><label for="textfield4"></label>
          <center><input type="text" name="addNo" id="textfield4" placeholder="  Enter Admission No"></center></td>
        </tr>
      </tbody>
	  </table>
		<br>
	<table width="200" align="center">
	  <tbody>
	    <tr>
	      <td><center><input width="200"type="submit" name="button2" id="button2" value="Search"></center></td>
        </tr>
      </tbody>
	  </table>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	</form>
</div>
</body>
</html>