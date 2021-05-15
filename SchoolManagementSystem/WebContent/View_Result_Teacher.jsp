<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Term Test Marks</title>

	<link rel = "stylesheet" type = "text/css" href = "CSS/View_Result.css">

</head>
<body>
<div class="img">
<form action="viewTeacher" class="form1" method="post">
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
	<div class="img1">
		<table width="559" border="0" align="center">
				<tbody>
						<tr>
								<td width="553" height="41" align="center"><label><span class="nam">Student Term Exam Marks</span><br>
								</label></td>
						</tr>
				</tbody>
		</table>
		<table width="900" border="0" align="center">
				<tbody>
						<tr>
								<td width="286" height="57" align="center"><input type="number" id="admissionNo" name="admissionNo" required="required" class="form-input1" placeholder="Student Admission No*"></td>
								<td width="300" align="center"><select id="classRoom" name="classRoom"  required="required" class="form-input1">
										<option selected hidden value="">Select (Class)</option>
										<option value="6A">6A</option>
										<option value="6B">6B</option>
								</select></td>
								<td width="300" align="center"><select id="semester" name="semester" required="required" class="form-input1">
										<option selected hidden value="">Select (Semester)</option>
										<option value="1st Semester">1st Semester</option>
										<option value="2st Semester">2st Semester</option>
										<option value="3st Semester">3st Semester</option>
								</select></td>
						</tr>
				</tbody>
		</table>
		<table width="200" border="0" align="center">
				<tbody>
						<tr>
								<td height="78" align="center"><input name="submit" type="submit" class="ButtonC" id="submit" value="Check Result"></td>
						</tr>
				</tbody>
		</table>
		</div>
</form>
</div>
</body>
</html>