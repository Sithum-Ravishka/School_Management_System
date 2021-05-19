<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Student Profile - Administration</title>
<link rel = "stylesheet" type = "text/css" href = "CSS/view.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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


	<c:forEach var="cus" items="${search}">
	
		<c:set var="fnm" value="${cus.fnm}"/>
		<c:set var="mnm" value="${cus.mnm}"/>
		<c:set var="lnm" value="${cus.lnm}"/>
		<c:set var="bdt" value="${cus.bdt}"/>
		<c:set var="ggn" value="${cus.ggn}"/>
		<c:set var="adnum" value="${cus.adNum}"/>
		<c:set var="grd" value="${cus.grd}"/>
		<c:set var="nst" value="${cus.nst}"/>
		<c:set var="strt" value="${cus.strt}"/>
		<c:set var="city" value="${cus.city}"/>
		<c:set var="stateprov" value="${cus.stprov}"/>
		<c:set var="pcode" value="${cus.p_code}"/>
		<c:set var="email" value="${cus.emaill}"/>
		<c:set var="c1" value="${cus.con_1}"/>
		<c:set var="c2" value="${cus.con_2}"/>
		
		
		<c:url value="updatestudent.jsp" var="stuupdate">
		<c:param name="fnm" value="${fnm }"/>
		<c:param name="mnm" value="${mnm }"/>
		<c:param name="lnm" value="${lnm }"/>
		<c:param name="bdt" value="${bdt }"/>
		<c:param name="gen" value="${ggn }"/>
		<c:param name="add" value="${adnum }"/>
		<c:param name="grd" value="${grd }"/>
		<c:param name="no" value="${nst }"/>
		<c:param name="strt" value="${strt }"/>
		<c:param name="cty" value="${city }"/>
		<c:param name="statprov" value="${stateprov }"/>
		<c:param name="pcode" value="${pcode }"/>
		<c:param name="email" value="${email }"/>
		<c:param name="c1" value="${c1 }"/>
		<c:param name="c2" value="${c2 }"/>
		</c:url>
		
		<c:url value="deletestudent.jsp" var="studelete">
		<c:param name="fnm" value="${fnm }"/>
		<c:param name="mnm" value="${mnm }"/>
		<c:param name="lnm" value="${lnm }"/>
		<c:param name="bdt" value="${bdt }"/>
		<c:param name="gen" value="${ggn }"/>
		<c:param name="add" value="${adnum }"/>
		<c:param name="grd" value="${grd }"/>
		<c:param name="no" value="${nst }"/>
		<c:param name="strt" value="${strt }"/>
		<c:param name="cty" value="${city }"/>
		<c:param name="statprov" value="${stateprov }"/>
		<c:param name="pcode" value="${pcode }"/>
		<c:param name="email" value="${email }"/>
		<c:param name="c1" value="${c1 }"/>
		<c:param name="c2" value="${c2 }"/>
		</c:url>
				<%
				String one = request.getParameter("one");
				String two = request.getParameter("two");
				String three = request.getParameter("three");
				%>
<center>
<div class = "wrapper">
<h2>View Student Profile - Administration side</h2>	
  <table width="1156">
    <tbody>
      <tr>
        <td width="581"><fieldset>
          <legend>Personal Details</legend>
          <p>Student Name</p>
          <table width="574">
            <tbody>
              <tr>
                <td width="183"><label for="textfield" class="lable">First</label>
                  <input name="one" type="text" required="required" id="textfield" value="${cus.fnm}"></td>
                <td width="194"><p>
                  <label for="textfield2" class="lable">Middle</label>
                  <input name="two" type="text" required="required" id="textfield2" value="${cus.lnm}">
                  </p></td>
                <td width="181"><label for="textfield3" class="lable">Last</label>
                  <input type="text" name="three" id="textfield3" value="${cus.mnm}"></td>
				   
              </tr>
              <tr>
                <td><label for="textfield4" class="lable">Birth Date
                </label></td>
                <td><p>
                  <label for="textfield5"></label>
                  <input type="date" name="textfield5" id="textfield5" value="${cus.bdt}">
                </p></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><label for="select" class="lable">Gender
                </label></td>
                <td><p>
                  <label for="select2" ></label>
                  <select name="select2" id="select2">
					    <option selected="selected" value="">${cus.ggn}</option>
						<option value="Male">Male</option>
		  				<option value="Female">Female</option>
                  </select>
                </p></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><label for="textfield4" class="lable">Admission No
                </label></td>
                <td><p>
                  <label for="textfield6" ></label>
                  <input type="text" name="textfield6" id="textfield6" value="${cus.adNum}">
                </p></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><label for="textfield4"class="lable">Grade
                </label></td>
                <td><p>
                  <label for="textfield7"></label>
                  <input type="text" name="textfield7" id="textfield7" value="${cus.grd}">
                </p></td>
                <td>&nbsp;</td>
              </tr>
            </tbody>
      </table>
        </fieldset></td>
        <td width="563"><fieldset> 
          <legend>Profile Picture          </legend>
          <table width="164" height="178" align="center">
            <tbody>
              <tr>
				  <td>&nbsp;</td>
                <td width="377" height="172"><p><img src="getImageTwo.jsp?one=<%=one%>" width="200" height="200" alt=""/></p>
                 </td>
              </tr>
            </tbody>
</table>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
        </fieldset></td>
      </tr>
      <tr>
        <td><fieldset>
          <legend>Contact Details</legend>
          <p>Address</p>
          <table width="381">
            <tbody>
              <tr>
                <td width="184"><p>
                  <label for="textfield4" class="lable">No / Street</label>
                  <input type="text" name="textfield4" id="textfield4" value="${cus.nst}">
                </p></td>
                <td width="185"><p>
                  <label for="textfield8" class="lable">Email </label>
                  <input type="text" name="textfield8" id="textfield8" value="${cus.emaill}">
                </p></td>
              </tr>
              <tr>
                <td><p>
                  <label for="textfield9" class="lable">Street 2</label>
                  <input type="text" name="textfield9" id="textfield9" value="${cus.strt} ">
                </p></td>
                <td><p>
                  <label for="textfield10" class="lable">Contact No 1</label>
                  <input type="text" name="textfield10" id="textfield10" value="${cus.con_1}">
                </p></td>
              </tr>
              <tr>
                <td><p>
                  <label for="textfield11" class="lable">City  <br>
                  </label>
                  <input type="text" name="textfield11" id="textfield11" value="${cus.city }">
                </p></td>
                <td><p>
                  <label for="textfield12" class="lable">Contact No 2</label>
                  <input type="text" name="textfield12" id="textfield12" value="${cus.con_2}">
                </p></td>
              </tr>
              <tr>
                <td><p>
                  <label for="textfield13" class="lable">State / Province</label>
                  <input type="text" name="textfield13" id="textfield13" value="${cus.stprov}">
                </p></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><p>
                  <label for="textfield14" class="lable">Postal Code</label>
                  <input type="text" name="textfield14" id="textfield14" value="${cus.p_code}">
                </p></td>
                <td>&nbsp;</td>
              </tr>
            </tbody>
          </table>
        </fieldset></td>
        <td><table width="200" align="center">
          <tbody>
            <tr>
              <td height="53"><a href="${stuupdate}"><input name="button" type="button" id="button" value="Update Profile"></a></td>
            </tr>
            <tr>
              <td height="56"><a href="${studelete}"><input type="button" name="button2" id="button2" value="Delete  Profile"></a></td>
            </tr>
          </tbody>
        </table></td>
      </tr>
    </tbody>
  </table>
</div>
</c:forEach>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.0.272/jspdf.debug.js"></script>
<script src="JS/custom.js"></script>

<table width="200" border="0" align="center"class="img2">
		<tbody>
				<tr>
						<td align="center"><button class="ButtonC" id="btn"><i class="fa fa-print"></i></button></td>
						<td align="center"><a href ="#">Download Repoart</a></td>
				</tr>
								
				</tbody>
</body>
</html>