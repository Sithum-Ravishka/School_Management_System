<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student Data</title>
<link rel = "stylesheet" type = "text/css" href = "css/StudentUpdate1.css">
</head>
<body>

<%
			String fname = request.getParameter("fnm");
			String mname = request.getParameter("mnm");
			String lname = request.getParameter("lnm");
			String bdt = request.getParameter("bdt");
			String gen = request.getParameter("gen");
			String addNo = request.getParameter("add");
			String grd = request.getParameter("grd");
			String email = request.getParameter("email");
			String c1 = request.getParameter("c1");
			String c2 = request.getParameter("c2");	

%>
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
<div class="Stu-Side">
<form action="update1" method="post">
<center><h2>Update Student Profile</h2></center>
  <table width="1162">
    <tbody>
      <tr>
	    <td width="578" height="425"><center><h3>Profile Picture</h3></center>
          <table width="200" align="center">
            <tbody>
              <tr>
                <td width="636" height="156"><img src="getImage.jsp?addNo=<%=addNo%>" width="181" height="125" alt=""/></td>
              </tr>
            </tbody>
          </table>
          <p>&nbsp;</p>
          <table width="425" align="center">
            <tbody>
              <tr>
                <td width="207"><label for="textfield4" class="lable">Admission No
                </label></td>
                <td width="206"><p>
                  <label for="textfield6"></label>
                  <input type="text" name="Admission" value=<%=addNo %> readonly>
                </p></td>
              </tr>
              <tr>
                <td><label for="textfield9" class="lable">Grade
                </label></td>
                <td><p>
                  <label for="textfield11"></label>
                  <input type="text" name="textfield11" id="textfield11" value=<%=grd%> readonly>
                </p></td>
              </tr>
            </tbody>
          </table>
          <p>&nbsp;</p></td>
        <td width="572"><center><h3>Student Name
			</h3></center>
          <table width="200" align="center">
            <tbody>
              <tr>
                <td><p>
                  <label for="textfield" class="lable">First</label>
                  <input type="text" value=<%=fname%> readonly>
                </p></td>
                <td><p>
                  <label for="textfield2" class="lable">Middle</label>
                  <input type="text" value=<%=lname%>readonly>
                </p></td>
                <td><p>
                  <label for="textfield3" class="lable">Last</label>
                  <input type="text" value=<%=mname%> readonly>
                </p></td>
              </tr>
            </tbody>
          </table>
          <table width="449" align="center">
            <tbody>
              <tr>
                <td width="118"><label for="textfield4" class="lable">Birth Date
                </label></td>
                <td width="319"><p>
                  <label for="textfield5"></label>
                  <input type="text" value=<%=bdt%> readonly>
                </p></td>
              </tr>
              <tr>
                <td><label for="textfield7" class="lable">Gender
                </label></td>
                <td><p>
                  <label for="textfield8"></label>
                  <input type="text" value=<%=gen%> readonly>
                </p></td>
              </tr>
              <tr>
                <td><label for="textfield9" class="lable">Email
                </label></td>
                <td><p>
                  <label for="textfield10"></label>
                  <input type="text" name="email" value=<%=email%>>
                </p></td>
              </tr>
              <tr>
                <td><label for="textfield11" class="lable">Contact No 1
                </label></td>
                <td><p>
                  <label for="textfield12"></label>
                  <input type="text" name="con1" value=<%=c1%>>
                </p></td>
              </tr>
              <tr>
                <td><label for="textfield13" class="lable">Contact No 2
                </label></td>
                <td><p>
                  <label for="textfield14"></label>
                  <input type="text" name="con2" value=<%=c2%>>
                </p></td>
              </tr>
            </tbody>
          </table></td>
      </tr>
    </tbody>
  </table>
  <table width="200" align="center">
    <tbody>
      <tr>
        <td><center><input type="submit" name="button" id="button" value=" Update Student Now"></center></td>
      </tr>
		
      <tr>
        <td><center><input type="submit" name="button2" id="button2" value="Update Password"></center></td>
      </tr>
    </tbody>
  </table>
  <p>&nbsp;</p>
</form>
</div>
</body>
</html>