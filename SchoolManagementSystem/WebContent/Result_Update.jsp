<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result Insert</title>

	<link rel = "stylesheet" type = "text/css" href = "CSS/Result_Insert.css">

</head>
<body>
<% 
		String studentName = request.getParameter("studentName");
		String admissionNo = request.getParameter("admissionNo");
		String year = request.getParameter("year");
		String classRoom = request.getParameter("classroom");
		String semester = request.getParameter("semester");
		String sinhalaMarks = request.getParameter("sinhalaMarks");
		String buddhismMarks = request.getParameter("buddhismMarks");
		String mathsMarks = request.getParameter("mathsMarks");
		String scinceMarks = request.getParameter("scinceMarks");
		String englishMarks = request.getParameter("englishMarks");
		String historyMarks = request.getParameter("historyMarks");
		String citizenEducationMarks = request.getParameter("citizenEducationMarks");
		String tamilMarks = request.getParameter("tamilMarks");
		String geographyMarks = request.getParameter("geographyMarks");
		String healthandPhysicalEducationMarks = request.getParameter("healthandPhysicalEducationMarks");
		String homeEconomicsMarks = request.getParameter("homeEconomicsMarks");
		String aestheticsubjects = request.getParameter("aestheticsubjects");
		String aestheticsubjectMarks = request.getParameter("aestheticsubjectMarks");
		int totalMark = Integer.parseInt(request.getParameter("totalMark"));
		double average = Double.parseDouble(request.getParameter("average"));
%>
		
<form action="update" method="post">
		<center><p class="nam"> Insert Exam Results Of Student</p></center>
		<table width="1095" border="0" align="center" cellpadding="0" cellspacing="10">
				<tbody>
						<tr>
								<td width="360">  <input type="text" name="studentName" id="StudentName" class="form-input" value= "<%= studentName %>"></td>
								<td width="360"><input type="text" name="admissionNo" id="AdmissionNo" class="form-input" value= "<%= admissionNo %>"></td>
								<td width="360"><input type="number" class="form-input" id="Year" name="year"  value= "<%= year %>"></td>
						</tr>
						<tr>
								<td><select name="classRoom"  class="form-input" value= "<%= classRoom %>">
										<option value="6A">6A</option>
								</select></td>
								<td>&nbsp;</td>
								<td><select name="semester" id="Semester" required="required" class="form-input" value= "<%= semester %>">
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
								<td align="center"><input name="SinhalaMarks" id="SinhalaMarks" type="number" step="any" class="marks-input" required="required" value= "<%= sinhalaMarks %>" placeholder="000" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Buddhism</td>
								<td align="center"><input name="BuddhismMarks" value= "<%= buddhismMarks %>" type="number" class="marks-input" required="required" id="BuddhismMarks" placeholder="000" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Maths</td>
								<td align="center"><input name="MathsMarks" value= "<%= mathsMarks %>" type="number" class="marks-input" required="required" id="MathsMarks" placeholder="000" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Scince</td>
								<td align="center"><input name="ScinceMarks" value= "<%= scinceMarks %>" type="number" class="marks-input" required="required" id="ScinceMarks" placeholder="000" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">English</td>
								<td align="center"><input name="EnglishMarks" value= "<%= englishMarks %>" type="number" class="marks-input" required="required" id="EnglishMarks" placeholder="000" max="100" min="0" ></td>
						</tr>
						<tr>
								<td align="center">History</td>
								<td align="center"><input name="HistoryMarks" value= "<%= historyMarks %>" type="number" class="marks-input" required="required" id="HistoryMarks" placeholder="000" max="100" min="0" ></td>
						</tr>
						<tr>
								<td align="center">Citizen Education</td>
								<td align="center"><input name="CitizenEducationMarks" value= "<%= citizenEducationMarks %>" type="number" class="marks-input" required="required" id="CitizenEducationMarks" placeholder="000" max="100" min="0" ></td>
						</tr>
						<tr>
								<td align="center">Tamil</td>
								<td align="center"><input name="TamilMarks" value= "<%= tamilMarks %>" type="number" class="marks-input" required="required" id="TamilMarks" placeholder="000" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Geography</td>
								<td align="center"><input name="GeographyMarks" value= "<%= geographyMarks %>" type="number" class="marks-input" required="required" id="GeographyMarks" placeholder="000" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Health and physical education</td>
								<td align="center"><input name="HealthandPhysicalEducationMarks" value= "<%= healthandPhysicalEducationMarks %>" type="number" class="marks-input" required="required" id="HealthandphysicaleducationMarks" placeholder="000" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Home Economics</td>
								<td align="center"><input name="HomeEconomicsMarks" value= "<%= homeEconomicsMarks %>" type="number" class="marks-input" required="required" id="HomeEconomicsMarks" placeholder="000" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center"><select name="Aestheticsubjects" value= "<%= aestheticsubjects %>" class="form-input1" required="required" id="Aestheticsubjects" title="Aesthetic subjects">
										<option selected hidden value="">Aesthetic subjects</option>
										<option value="Art">Art</option>
										<option value="Dance">Dance</option>
										<option value="Music">Music</option>
								</select></td>
								<td align="center"><input name="AestheticsubjectMarks" value= "<%= aestheticsubjectMarks %>" type="number" class="marks-input" required="required" id="AestheticsubjectsMarks" placeholder="000" max="100" min="0" autocomplete="off"></td>
						</tr>
						<tr>
								<td align="center">Total Mark</td>
								<td align="center"><input name="totalMark" value= "<%= totalMark %>" type="text" required="required" class="marks-input" id="totalMark" readonly="readonly" /></td>
						</tr>
						<tr>
								<td align="center">Average Mark</td>
								<td align="center"><input name="average" value= "<%= average %>" type="text" required="required" class="marks-input" id="average" step="0.01" pattern="^\d+(?:\.\d{1,2})?$" readonly="readonly"/></td>
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
								<td width="140" align="center"><button type="submit" name="submit" value="Result_Insert" onclick="pass();"   id="txt" class="ButtonR" >Add</button></td>
						</tr>
				</tbody>
		</table>
		<p>&nbsp;</p>
</form>
</body>
<script src="JS/Result_Insert.js"></script>
</html>