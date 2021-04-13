<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

	<link rel = "stylesheet" type = "text/css" href = "CSS/ResultRecheck.css">

</head>
<body>
<form action=”mailto:sithumravishka20@gmail.com” id="form1" name="form1" method="post" enctype=”multipart/form-data” name=”EmailForm”>
		<table width="619" border="0" align="center">
				<tbody>
						<tr>
								<td width="613" align="left"><label for="email">Email:</label>
								<input name=”ContactName” type="email" required="required" class="form-input" id="email"></td>
						</tr>
						<tr>
								<td height="412" align="center"><textarea name=”ContactCommentt” required="required" class="form-input1" id="textarea"></textarea></td>
						</tr>
						<tr>
								<td height="25" align="center"><input name="submit" type="submit" class="ButtonC" id="submit" value="Send"></td>
						</tr>
				</tbody>
		</table>
</form>
</body>
</html>