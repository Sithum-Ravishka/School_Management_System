<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Data Upload to Database</title>
<link rel = "stylesheet" type = "text/css" href = "CSS/StudentInsert.css">
	
		<script>
          
            // Function to check Whether both passwords
            // is same or not.
            function checkPassword(form) {
            	
            	enPwd = form.enPwd.value;
            	cnPwd = form.cnPwd.value;
  
                // If password not entered
                if (enPwd == '')
                    alert ("Please enter Password");
                      
                // If confirm password not entered
                else if (cnPwd == '')
                    alert ("Please enter confirm password");
                      
                // If Not same return False.    
                else if (enPwd != cnPwd) {
                    alert ("\Password did not match: Please try again.")
                    return false;
                }
  
                // If same return True.
                else{
                    alert("Password Match !!!")
                    return true;
                }
            }
            
            //Phone number validation
            function check()
            {

                var mobile = document.getElementById('cno1');
               
                
                var message = document.getElementById('message');

               var goodColor = "";
                var badColor = "";
              
                if(mobile.value.length!=10){
                   
                    mobile.style.backgroundColor = badColor;
                    message.style.color = badColor;
                    message.innerHTML = "  required 10 digits!"
                }}
            
            //Phone number validation
            function check1()
            {

                var mobile = document.getElementById('cno2');
               
                
                var message = document.getElementById('message1');

               var goodColor = "";
                var badColor = "";
              
                if(mobile.value.length!=10){
                   
                    mobile.style.backgroundColor = badColor;
                    message.style.color = badColor;
                    message.innerHTML = "  required 10 digits!"
                }}
            
            //Email validation
            function ValidateEmail(input) {

  				var validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

				  if (input.value.match(validRegex)) {
				
						    alert("Valid email address!");
						
						    document.form1.text1.focus();
						
						    return true;
				
				  } else {
				
						    alert("Invalid email address!");
						
						    document.form1.text1.focus();
						
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
<center>
<div class = "wrapper">
<div class = "wrapper1"> 
<div class="StudentRegi"><h2>New Student Registration</h2></div>
<form name="fileform" method="post" action="uploadServlet" enctype="multipart/form-data" onSubmit = "return checkPassword(this)">
<div id = "TimeTableID">
<fieldset>
<legend>Personal Details</legend>
<h3>Student Name</h3>
<table width="533" height="68">
<tbody>
<tr>
<td width="180"><label for="textfield" class="lable">First</label>
<input class="fnm"type="text" name="firstName" required="required"></td>
<td width="180"><label for="textfield2" class="lable">Middle</label>
<input class="fnm"type="text" name="middleName" required="required"></td>
<td width="180"><label for="textfield3" class="lable">Last</label>
<input class="fnm"type="text" name="lastName" required="required"></td>
</tr>
</tbody>
</table>
<table width="538">
<tbody>
<tr>
<td width="264" height="35"><label for="textfield" class="lable">Birth Date

</label></td>
<td width="262"><p>
<label for="textfield2"></label>
<input class="fnm" type="date" name="bdate" required="required">
</p>
</tr>
<tr>
<td height="35"><label for="textfield3" class="lable">Gender

</label></td>
<td><p>
<label for="select2"></label>
<select class="fnm" name="gender" id="select" required="required">
<option selected = "selected" class="lable">Select(Gender)</option>
<option value="Male">Male</option>
<option value="Female">Female</option>
</select>
</p></td>
</tr>
<tr>
<td height="36"><label for="textfield4" class="lable">Admission Number

</label></td>
<td><p>
<label for="textfield5"></label>
<input class="fnm" type="text" name="ad_Num" required="required">
</p>
</tr>
<tr>
<td height="44"><label for="textfield6" class="lable">Grade

</label></td>
<td><p>
<label for="textfield7"></label>
<input class="fnm" type="text" name="grade" required="required">
</p>
</tr>
<tr>
<td><p>
<label for="textfield8" class="lable">Profile picture

</label>
</p></td>
<td> <p>
<input name="photo" type="file" required="required" >
</p></td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
</fieldset>
<br>
<fieldset>
<legend>Contact Details</legend>
<h3>Address</h3> 
<table width="378">
<tbody>
<tr>
<td width="190" height="80"><p>
<label for="textfield7" class="lable">No/Street </label>
<input class="fnm" type="text" name="no" required="required">
</p></td>
<td width="176" height="80"><p>
<label for="textfield" class="lable">Email<br>
</label>
<input class="fnm" type="text" name="email" required="required" >
</p></td>
</tr>
<tr>
<td height="80"><p>
<label for="textfield9" class="lable">Street 2 </label>
<input class="fnm" type="text" name="street2" required="required">
</p></td>
<td height="80"><p>
<label for="textfield10"class="lable" >Contact Number 1</label>
<input class="fnm"  id="cno1" type="number" name="cno1" required="required" required onkeyup="check(); return false;" ><span id="message"></span>
</p></td>
</tr>
<tr>
<td height="80"><p>
<label for="textfield11" class="lable">City<br>
</label>
<input class="fnm" type="text" name="city" required="required">
</p></td>
<td height="80"><p>
<label for="textfield12" class="lable">Contact Number 2</label>
<input class="fnm"  id="cno2" type="number" name="cno2" required="required"  required onkeyup="check1(); return false;" ><span id="message1"></span>
</p></td>
</tr>
</tbody>
</table>
<table width="242">
<tbody>
<tr>
<td width="234" height="80"><p>
<label for="textfield13" class="lable">State/Province</label>
<input class="fnm" type="text" name="state_p" required="required">
</p></td>
</tr>
<tr>
<td height="80"><p>
<label for="textfield" class="lable">Postal Code<br>
</label>
<input class="fnm" type="text" name="pcode" required="required">
</p></td>
</tr>
</tbody>
</table>
</fieldset>
<br>
<fieldset>
<legend>Password</legend>
<table width="242">
<tbody>
<tr>
<td height="80"><p>
<input class="fnm" type="password" name="enPwd" placeholder="Enter Password" id="enPwd" required="required">
</p></td>
</tr>
<tr>
<td height="80"><p>
<input class="fnm" type="password" name="cnPwd" placeholder="Confirm Password" id="cnPwd" required="required">
</p></td>
</tr>
</tbody>
</table>
</fieldset>
<br>
<center> <input type="submit" value="Submit"></center>
<br>
<center><input type="reset" value="Clear"></center>
</div>
</form>
</div>
</div> 
</body>
</html>


