<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="javascript:genPDF()">Download PDF</a>
<script type="text/javascript">
function genPDF() {
	
	var doc = new jsPDF();
	
	doc.text(20,20,'TEST Message!!');
	doc.addPage();
	doc.text(20,20,'TEST Page 2!');
	doc.save('Test.pdf');
	
}
</script>
</body>
</html>