<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Data</title>
<link rel = "stylesheet" type = "text/css" href = "css/view1.css">
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
			String fname = request.getParameter("fnm");
			String mname = request.getParameter("mnm");
			String lname = request.getParameter("lnm");
			String bdt = request.getParameter("bdt");
			String gen = request.getParameter("gen");
			String addNo = request.getParameter("add");
			String grd = request.getParameter("grd");
			String nst = request.getParameter("no");
			String strt = request.getParameter("strt");
			String city = request.getParameter("cty");
			String stapro = request.getParameter("statprov");
			String pcode = request.getParameter("pcode");
			String email = request.getParameter("email");
			String c1 = request.getParameter("c1");
			String c2 = request.getParameter("c2");	
		%>
<form method="post" action="uploadStudentData">
<center>
<div class = "wrapper">
<h3>Update Student Profile - Administration side</h3>	
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
                  <input name="f" type="text" required="required" id="textfield" value=<%=fname%>></td>
                <td width="194"><p>
                  <label for="textfield2" class="lable">Middle</label>
                  <input name="m" type="text" required="required" id="textfield2" value=<%=lname%>>
                  </p></td>
                <td width="181"><label for="textfield3" class="lable">Last</label>
                  <input type="text" name="l" id="textfield3" value=<%=mname%>></td>				   
              </tr>
              <tr>
                <td><label for="b" class="lable">Birth Date
                </label></td>
                <td><p>
                  <label for="textfield5"></label>
                  <input type="text" name="b" id="textfield5" value=<%=bdt%>>
                </p></td>
                <td>&nbsp;</td> 
              </tr>
              <tr>
                <td><label for="select" class="lable">Gender
                </label></td>
                <td><p>
                  <label for="select2"></label>
                  <select name="gn" id="select2">
					    <option selected="selected" class="lable" value=<%=gen%>><%=gen%></option>
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
                  <label for="textfield6" class="lable"></label>
                  <input type="text" name="adn" id="textfield6" value=<%=addNo%> readonly>
                </p></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><label for="textfield4" class="lable">Grade
                </label></td>
                <td><p>
                  <label for="textfield7"></label>
                  <input type="text" name="gd" id="textfield7" value=<%=grd%>>
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
                <td width="377" height="172"><p><img src="getImage.jsp?addNo=<%=addNo%>" width="200" height="200" alt=""/></p>
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
                  <input type="text" name="n" id="textfield4" value=<%=nst%>>
                </p></td>
                <td width="185"><p>
                  <label for="textfield8" class="lable">Email </label>
                  <input type="text" name="e" id="textfield8" value=<%=email%>>
                </p></td>
              </tr>
              <tr>
                <td><p>
                  <label for="textfield9" class="lable">Street 2</label>
                  <input type="text" name="s" id="textfield9" value=<%=strt%>>
                </p></td>
                <td><p>
                  <label for="textfield10" class="lable">Contact No 1</label>
                  <input type="text" name="c1" id="textfield10" value=<%=c1%>>
                </p></td>
              </tr>
              <tr>
                <td><p>
                  <label for="textfield11" class="lable">City  <br>
                  </label>
                  <input type="text" name="textfield11" id="textfield11" value=<%=city %>>
                </p></td>
                <td><p>
                  <label for="textfield12" class="lable">Contact No 2</label>
                  <input type="text" name="c2" id="textfield12" value=<%=c2%>>
                </p></td>
              </tr>
              <tr>
                <td><p>
                  <label for="textfield13" class="lable">State / Province</label>
                  <input type="text" name="sp" id="textfield13" value=<%=stapro%>>
                </p></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><p>
                  <label for="textfield14">Postal Code</label>
                  <input type="text" name="pc" id="textfield14" value=<%=pcode%>>
                </p></td>
                <td>&nbsp;</td>
              </tr>
            </tbody>
          </table>
        </fieldset></td>
        <td><table width="200" align="center">
          <tbody>
            <tr>
              <td height="53"><input type="submit" value="Update my data"></td>
            </tr>
            <tr>
              <td height="56"><input type="submit" value="Back"></td>
            </tr>
          </tbody>
        </table></td>
      </tr>
    </tbody>
  </table>
</div>
 </form>  
</body>
</html>