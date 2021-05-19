<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Profile</title>
<link rel = "stylesheet" type = "text/css" href = "CSS/StudentUpdate.css">
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

	<c:forEach var="stu" items="${stu}">
	
		<c:set var="fnm" value="${stu.fnm}"/>
		<c:set var="mnm" value="${stu.mnm}"/>
		<c:set var="lnm" value="${stu.lnm}"/>
		<c:set var="bdt" value="${stu.bdt}"/>
		<c:set var="ggn" value="${stu.ggn}"/>
		<c:set var="adnum" value="${stu.adNum}"/>
		<c:set var="grd" value="${stu.grd}"/>
		<c:set var="email" value="${stu.emaill}"/>
		<c:set var="c1" value="${stu.con_1}"/>
		<c:set var="c2" value="${stu.con_2}"/>
		<c:set var="password" value="${stu.password}"/>
		
		
		<c:url value="updatestudentSide.jsp" var="stuupdate">
		<c:param name="fnm" value="${fnm }"/>
		<c:param name="mnm" value="${mnm }"/>
		<c:param name="lnm" value="${lnm }"/>
		<c:param name="bdt" value="${bdt }"/>
		<c:param name="gen" value="${ggn }"/>
		<c:param name="add" value="${adnum }"/>
		<c:param name="grd" value="${grd }"/>
		<c:param name="email" value="${email }"/>
		<c:param name="c1" value="${c1 }"/>
		<c:param name="c2" value="${c2 }"/>
		</c:url>
		
		<c:url value="updateStuPassword.jsp" var="password">
			<c:param name="add" value="${adnum }"/>
		</c:url>
		
			<%
				String addNo = request.getParameter("addNo");
			%>
<center>
<div class="Stu-Side">
<center><h2>Student Profile</h2></center>
<form id="form1" name="form1" method="post">
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
                  <input type="text" name="textfield6" id="textfield6" value="${stu.adNum}"readonly>
                </p></td>
              </tr>
              <tr>
                <td><label for="textfield9" class="lable">Grade
                </label></td>
                <td><p>
                  <label for="textfield11"></label>
                  <input type="text" name="textfield11" id="textfield11" value="${stu.grd}" readonly>
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
                  <input type="text" name="textfield" id="textfield" value="${stu.fnm}" readonly>
                </p></td>
                <td><p>
                  <label for="textfield2" class="lable">Middle</label>
                  <input type="text" name="textfield2" id="textfield2" value="${stu.lnm}" readonly>
                </p></td>
                <td><p>
                  <label for="textfield3" class="lable">Last</label>
                  <input type="text" name="textfield3" id="textfield3" value="${stu.mnm}" readonly>
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
                  <input type="text" name="textfield5" id="textfield5" value="${stu.bdt}"readonly>
                </p></td>
              </tr>
              <tr>
                <td><label for="textfield7" class="lable">Gender
                </label></td>
                <td><p>
                  <label for="textfield8"></label>
                  <input type="text" name="textfield8" id="textfield8" value="${stu.ggn}" readonly>
                </p></td>
              </tr>
              <tr>
                <td><label for="textfield9" class="lable">Email
                </label></td>
                <td><p>
                  <label for="textfield10"></label>
                  <input type="text" name="textfield10" id="textfield10" value="${stu.emaill}" readonly>
                </p></td>
              </tr>
              <tr>
                <td><label for="textfield11" class="lable">Contact No 1
                </label></td>
                <td><p>
                  <label for="textfield12"></label>
                  <input type="text" name="textfield12" id="textfield12" value="${stu.con_1}" readonly>
                </p></td>
              </tr>
              <tr>
                <td><label for="textfield13" class="lable">Contact No 2
                </label></td>
                <td><p>
                  <label for="textfield14"></label>
                  <input type="text" name="textfield14" id="textfield14" value="${stu.con_2}" readonly>
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
        <td><center><a href="${stuupdate}"><input type="button" name="button" id="button" value=" Update   Student"></a></center></td>
      </tr>
		<br>
		<br>
      <tr>
        <td><center><a href="${password}"><input type="button" name="button2" id="button2" value="Update Password"></a></center></td>
      </tr>
    </tbody>
  </table>
  <p>&nbsp;</p>
</form>
</div>
</div>
</c:forEach>
	

</body>
</html>