<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Exam Result Insert</title>

	<link rel = "stylesheet" type = "text/css" href = "CSS/Result_Insert.css">

</head>
<body>

<form action="reinsert" class="form1" id="form1" name="form1" method="post">
<table width="409" border="0" align="center" class= "header">
				<tbody>
						<tr >
								<td width="258" align="right" class="nam1">Vidyadharsha Maha Vidyalaya</td>
								<td width="141" align="center"><img src="Image/Picture1.png" class="logo" width="100px" height="120px"/></td>
						</tr>
				</tbody>
		</table>
		<div class="img">
		<center><p class="nam"> Insert Exam Results Of Student</p></center>
		<table width="1095" border="0" align="center" cellpadding="0" cellspacing="10">
				<tbody>
						<tr>
								<td width="360">  <input type="text" name="StudentName" required="required" class="form-input" placeholder="Student Name *"></td>
								<td width="360"><input type="text" name="AdmissionNo" required="required" class="form-input" form="form1" placeholder="Admission No *"></td>
								<td width="360"><input name="Year" type="number" required="required" class="form-input" id="Year" placeholder="Year" max="2020" min="2002"></td>
						</tr>
						<tr>
								<td><select name="classroom" required="required" class="form-input" id="classroom">
										<option selected hidden value="">Select (Class)</option>
										<option value="6A">6A</option>
										<option value="6B">6B</option>
								</select></td>
								<td>&nbsp;</td>
								<td><select name="Semester" required="required" class="form-input" id="Semester">
										<option selected hidden value="">Select (Semester)</option>
										<option value="1st Semester">1st Semester</option>
										<option value="2st Semester">2st Semester</option>
										<option value="3st Semester">3st Semester</option>
								</select></td>
						</tr>
				</tbody>
		</table>
		<p>&nbsp;</p>
		<table width="602" height="371" border="0" align="center" cellspacing="5">
				<tbody>
						<tr>
								<td width="358" align="center">
									    <p><strong>Subject</strong></p>
								</td>
								<td width="225" align="center">
										<p><strong>Marks</strong></p>
								</td>
						</tr>
						<tr>
								<td align="center">Sinhala</td>
								<td align="center"><input name="SinhalaMarks" type="number" step="any" class="marks-input" required="required" id="SinhalaMarks" placeholder="000" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Buddhism</td>
								<td align="center"><input name="BuddhismMarks" type="number" class="marks-input" required="required" id="BuddhismMarks" placeholder="000" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Maths</td>
								<td align="center"><input name="MathsMarks" type="number" class="marks-input" required="required" id="MathsMarks" placeholder="000" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Scince</td>
								<td align="center"><input name="ScinceMarks" type="number" class="marks-input" required="required" id="ScinceMarks" placeholder="000" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">English</td>
								<td align="center"><input name="EnglishMarks" type="number" class="marks-input" required="required" id="EnglishMarks" placeholder="000" max="100" min="0" ></td>
						</tr>
						<tr>
								<td align="center">History</td>
								<td align="center"><input name="HistoryMarks" type="number" class="marks-input" required="required" id="HistoryMarks" placeholder="000" max="100" min="0" ></td>
						</tr>
						<tr>
								<td align="center">Citizen Education</td>
								<td align="center"><input name="CitizenEducationMarks" type="number" class="marks-input" required="required" id="CitizenEducationMarks" placeholder="000" max="100" min="0" ></td>
						</tr>
						<tr>
								<td align="center">Tamil</td>
								<td align="center"><input name="TamilMarks" type="number" class="marks-input" required="required" id="TamilMarks" placeholder="000" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Geography</td>
								<td align="center"><input name="GeographyMarks" type="number" class="marks-input" required="required" id="GeographyMarks" placeholder="000" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Health and physical education</td>
								<td align="center"><input name="HealthandphysicaleducationMarks" type="number" class="marks-input" required="required" id="HealthandphysicaleducationMarks" placeholder="000" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Home Economics</td>
								<td align="center"><input name="HomeEconomicsMarks" type="number" class="marks-input" required="required" id="HomeEconomicsMarks" placeholder="000" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center"><select name="Aestheticsubjects" class="form-input1" required="required" id="Aestheticsubjects" title="Aesthetic subjects">
										<option selected hidden value="">Aesthetic subjects</option>
										<option value="Art">Art</option>
										<option value="Dance">Dance</option>
										<option value="Music">Music</option>
								</select></td>
								<td align="center"><input name="AestheticsubjectsMarks" type="number" class="marks-input" required="required" id="AestheticsubjectsMarks" placeholder="000" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Total Mark</td>
								<td align="center"><input name="totalMark" type="text" required="required" class="marks-input" id="totalMark" readonly="readonly" /></td>
						</tr>
						<tr>
								<td align="center">Average Mark</td>
								<td align="center"><input name="average" type="text" required="required" class="marks-input" id="average" step="0.01" pattern="^\d+(?:\.\d{1,2})?$" readonly="readonly"/></td>
						</tr>
				</tbody>
		</table>
		<table width="260" border="0" align="center">
				<tbody>
						<tr>
								<td width="254" height="84" align="center"><input name="Sumbit" type="button" class="ButtonC" onClick="javascript:addNumbers()" value="Calculate"/></td>
						</tr>
				</tbody>
		</table>
		<table width="420" border="0" align="center">
				<tbody>
						<tr>
								<td width="140" align="center"><button type="reset" class="ButtonR" name="reset" id="reset" value="Reset">Reset</button></td>
								<td width="140" align="center"><button type="submit" name="submit" value="Result_Insert" onclick="pass();"   id="txt" class="ButtonS" >Add</button></td>
						</tr>
				</tbody>
		</table>
		<p>&nbsp;</p>
</form>
</div>
</body>
<script src="JS/Result_Insert.js"></script>
</html>